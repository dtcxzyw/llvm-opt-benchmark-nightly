Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/libxdrf?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [6 x ptr] }
%struct.DataBuffer = type { i64, i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"large int\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@__const._Z17enumValueToString11XdrDataType.xdrDataTypeNames = private unnamed_addr constant %"struct.gmx::EnumerationArray" { [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5] }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"Invalid magic number (%d) requested (should be %d or %d).\0A\00", align 1
@.str.7 = private unnamed_addr constant [133 x i8] c"Inconsistent input or file format. Cannot read/write a system\0Awith %d atoms in a frame without using the new XTC magic number (%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@_ZL9magicints = internal unnamed_addr constant [73 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 10, i32 12, i32 16, i32 20, i32 25, i32 32, i32 40, i32 50, i32 64, i32 80, i32 101, i32 128, i32 161, i32 203, i32 256, i32 322, i32 406, i32 512, i32 645, i32 812, i32 1024, i32 1290, i32 1625, i32 2048, i32 2580, i32 3250, i32 4096, i32 5060, i32 6501, i32 8192, i32 10321, i32 13003, i32 16384, i32 20642, i32 26007, i32 32768, i32 41285, i32 52015, i32 65536, i32 82570, i32 104031, i32 131072, i32 165140, i32 208063, i32 262144, i32 330280, i32 416127, i32 524287, i32 660561, i32 832255, i32 1048576, i32 1321122, i32 1664510, i32 2097152, i32 2642245, i32 3329021, i32 4194304, i32 5284491, i32 6658042, i32 8388607, i32 10568983, i32 13316085, i32 16777216], align 16
@.str.9 = private unnamed_addr constant [65 x i8] c"wrong number of coordinates in xdr3dfcoord; %d arg vs %d in file\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"major breakdown in sendints num %u doesn't match size %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Cannot read trajectory, file possibly corrupted.\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_Z17enumValueToString11XdrDataType(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @__const._Z17enumValueToString11XdrDataType.xdrDataTypeNames, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  ret ptr %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z11xdr3dfcoordP3XDRPfPiS1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i32], align 16              ; 5 uses
  %i.b = alloca [60 x i32], align 16              ; 4 uses
  %i.c = alloca [3 x i32], align 8                ; 14 uses
  %i.d = alloca [3 x i32], align 8                ; 12 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca [3 x i32], align 8                ; 11 uses
  %i.g = alloca [3 x i32], align 4                ; 13 uses
  %i.h = alloca i32, align 4                      ; 19 uses
  %i.i = alloca [30 x i32], align 16              ; 8 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.DataBuffer, align 8         ; 65 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.k = load i32, ptr %0, align 8, !tbaa !43
  %i.l = icmp eq i32 %i.k, 1
  switch i32 %4, label %bb.b [
    i32 2023, label %bb.c
    i32 1995, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef 1995, i32 noundef 2023) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.o = icmp ne i32 %4, 2023
  %i.p = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 298261617
  %or.cond3 = and i1 %i.o, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.7, i32 noundef %i.p, i32 noundef 2023) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i8 0, i64 192, i1 false), !tbaa !14
  store i32 48, ptr %i.h, align 4, !tbaa !14
  br i1 %i.l, label %bb.fe, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.he, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = mul nsw i64 %i.w, 3                      ; 3 uses
  %i.y = icmp slt i32 %i.v, 10
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call noundef i32 @_Z10xdr_vectorP3XDRPcjjPFiS0_PvzE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.z, i32 noundef 4, ptr noundef nonnull @_Z9xdr_floatP3XDRPf)
  br label %bb.he

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef nonnull %0, ptr noundef %3)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.he, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult i64 %i.x, 49                   ; 5 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !17
  %.pre = mul nuw nsw i64 %i.w, 12
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.j
  %i.af = uitofp i64 %i.x to double
  %i.ag = fmul nnan double %i.af, 1.200000e+00
  %i.ah = fptoui double %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.w, 12                ; 2 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #19 ; 2 uses
  %i.ak = shl i64 %i.ah, 2
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #19 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !17
  %i.an = icmp eq ptr %i.aj, null
  %i.ao = icmp eq ptr %i.al, null
  %or.cond6 = or i1 %i.an, %i.ao
  br i1 %or.cond6, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.8, i64 14, i64 1, ptr %i.ap) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  %.idx646.pre-phi = phi i64 [ %i.ai, %bb.l ], [ %.pre, %bb.k ]
  %.0422 = phi ptr [ %i.aj, %bb.l ], [ %i.a, %bb.k ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  store i32 2147483647, ptr %i.at, align 4, !tbaa !14
  store i32 2147483647, ptr %i.c, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 -2147483648, ptr %i.au, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !14
  store i32 -2147483648, ptr %i.d, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx646.pre-phi
  %i.ax = load float, ptr %3, align 4, !tbaa !19  ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.0377604 = phi i32 [ %spec.select464, %bb.y ], [ 1, %.lr.ph.preheader ]
  %.0385603 = phi ptr [ %i.cs, %bb.y ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.0414602 = phi i32 [ %i.cm, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0415601 = phi i32 [ %i.by, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0416600 = phi i32 [ %i.bk, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0417599 = phi ptr [ %i.cr, %bb.y ], [ %.0422, %.lr.ph.preheader ] ; 4 uses
  %.0418598 = phi i32 [ %.1419, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.ay = phi i32 [ %i.bm, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bo, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.ca, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi i32 [ %i.cc, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i32 [ %i.co, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi i32 [ %i.cq, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.be = load float, ptr %.0385603, align 4, !tbaa !19 ; 2 uses
  %i.bf = fcmp ult float %i.be, 0.000000e+00
  %i.bg = fmul float %i.be, %i.ax
  %. = select i1 %i.bf, float -5.000000e-01, float 5.000000e-01
  %i.bh = fadd float %i.bg, %.                    ; 2 uses
  %i.bi = call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp ogt float %i.bi, f0x4EFFFFFF
  %i.bk = fptosi float %i.bh to i32               ; 9 uses
  %i.bl = icmp sgt i32 %i.ay, %i.bk
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  store i32 %i.bk, ptr %i.c, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.bm = phi i32 [ %i.bk, %bb.n ], [ %i.ay, %.lr.ph ]
  %i.bn = icmp slt i32 %i.az, %i.bk
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bo = phi i32 [ %i.bk, %bb.p ], [ %i.az, %bb.o ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0417599, i64 4
  store i32 %i.bk, ptr %.0417599, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %.0385603, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !19 ; 2 uses
  %i.bs = fcmp ult float %i.br, 0.000000e+00
  %i.bt = fmul float %i.br, %i.ax
  %.790 = select i1 %i.bs, float -5.000000e-01, float 5.000000e-01
  %i.bu = fadd float %i.bt, %.790                 ; 2 uses
  %i.bv = call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = fcmp ogt float %i.bv, f0x4EFFFFFF
  %i.bx = or i1 %i.bj, %i.bw
  %i.by = fptosi float %i.bu to i32               ; 9 uses
  %i.bz = icmp sgt i32 %i.ba, %i.by
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.by, ptr %i.at, align 4, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = phi i32 [ %i.by, %bb.r ], [ %i.ba, %bb.q ]
  %i.cb = icmp slt i32 %i.bb, %i.by
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.by, ptr %i.av, align 4, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = phi i32 [ %i.by, %bb.t ], [ %i.bb, %bb.s ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0417599, i64 8
  store i32 %i.by, ptr %i.bp, align 4, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %.0385603, i64 8
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !19 ; 2 uses
  %i.cg = fcmp ult float %i.cf, 0.000000e+00
  %i.ch = fmul float %i.cf, %i.ax
  %.791 = select i1 %i.cg, float -5.000000e-01, float 5.000000e-01
  %i.ci = fadd float %i.ch, %.791                 ; 2 uses
  %i.cj = call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp ogt float %i.cj, f0x4EFFFFFF
  %i.cl = or i1 %i.bx, %i.ck
  %spec.select464 = select i1 %i.cl, i32 0, i32 %.0377604 ; 2 uses
  %i.cm = fptosi float %i.ci to i32               ; 9 uses
  %i.cn = icmp sgt i32 %i.bc, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.cm, ptr %i.as, align 8, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = phi i32 [ %i.cm, %bb.v ], [ %i.bc, %bb.u ]
  %i.cp = icmp slt i32 %i.bd, %i.cm
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.cm, ptr %i.au, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cq = phi i32 [ %i.cm, %bb.x ], [ %i.bd, %bb.w ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0417599, i64 12
  store i32 %i.cm, ptr %i.cd, align 4, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.0385603, i64 12 ; 2 uses
  %i.ct = sub nsw i32 %.0416600, %i.bk
  %i.cu = call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = sub nsw i32 %.0415601, %i.by
  %i.cw = call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = add nuw nsw i32 %i.cw, %i.cu
  %i.cy = sub nsw i32 %.0414602, %i.cm
  %i.cz = call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = add nuw nsw i32 %i.cx, %i.cz
  %i.db = icmp ugt ptr %.0385603, %1
  %i.dc = call i32 @llvm.smin.i32(i32 %i.da, i32 %.0418598)
  %.1419 = select i1 %i.db, i32 %i.dc, i32 %.0418598 ; 65 uses
  %i.dd = icmp ult ptr %i.cs, %i.aw
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.y
  %i.de = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.dg = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.at)
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.as)
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.av)
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %._crit_edge
  br i1 %i.ad, label %bb.he, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %.0422) #16
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !17
  call void @free(ptr noundef %i.dr) #16
  br label %bb.he

bb.ag:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.dt = sitofp i32 %i.ds to float
  %i.du = load i32, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fsub float %i.dt, %i.dv
  %i.dx = fcmp ult float %i.dw, f0x4EFFFFFF
  %.pre.pre = load i32, ptr %i.av, align 4, !tbaa !14 ; 2 uses
  %.pre676.pre = load i32, ptr %i.at, align 4, !tbaa !14 ; 2 uses
  br i1 %i.dx, label %bb.ah, label %._crit_edge698

._crit_edge698:                                   ; preds = %bb.ag
  %.pre677.pre = load i32, ptr %i.au, align 8, !tbaa !14
  %.pre678.pre = load i32, ptr %i.as, align 8, !tbaa !14
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dy = sitofp i32 %.pre.pre to float
  %i.dz = sitofp i32 %.pre676.pre to float
  %i.ea = fsub float %i.dy, %i.dz
  %i.eb = fcmp ult float %i.ea, f0x4EFFFFFF
  %.pre677.pre699 = load i32, ptr %i.au, align 8, !tbaa !14 ; 3 uses
  %.pre678.pre701 = load i32, ptr %i.as, align 8, !tbaa !14 ; 3 uses
  br i1 %i.eb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ec = sitofp i32 %.pre677.pre699 to float
  %i.ed = sitofp i32 %.pre678.pre701 to float
end_hunk_0
begin_hunk_1_@_Z11xdr3dfcoordP3XDRPfPiS1_i:bb.a
bb.bl:                                            ; preds = %bb.bk
  %i.gm = icmp samesign ugt i32 %.1419, 3250
  br i1 %i.gm, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.gn = icmp samesign ugt i32 %.1419, 4096
  br i1 %i.gn, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.go = icmp samesign ugt i32 %.1419, 5060
  br i1 %i.go, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.gp = icmp samesign ugt i32 %.1419, 6501
  br i1 %i.gp, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.gq = icmp samesign ugt i32 %.1419, 8192
  br i1 %i.gq, label %bb.bq, label %.critedge

bb.bq:                                            ; preds = %bb.bp
  %i.gr = icmp samesign ugt i32 %.1419, 10321
  br i1 %i.gr, label %bb.br, label %.critedge

bb.br:                                            ; preds = %bb.bq
  %i.gs = icmp samesign ugt i32 %.1419, 13003
  br i1 %i.gs, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %i.gt = icmp samesign ugt i32 %.1419, 16384
  br i1 %i.gt, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %bb.bs
  %i.gu = icmp samesign ugt i32 %.1419, 20642
  br i1 %i.gu, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.gv = icmp samesign ugt i32 %.1419, 26007
  br i1 %i.gv, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.gw = icmp samesign ugt i32 %.1419, 32768
  br i1 %i.gw, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %bb.bv
  %i.gx = icmp samesign ugt i32 %.1419, 41285
  br i1 %i.gx, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %bb.bw
  %i.gy = icmp samesign ugt i32 %.1419, 52015
  br i1 %i.gy, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  %i.gz = icmp samesign ugt i32 %.1419, 65536
  br i1 %i.gz, label %bb.bz, label %.critedge

bb.bz:                                            ; preds = %bb.by
  %i.ha = icmp samesign ugt i32 %.1419, 82570
  br i1 %i.ha, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %bb.bz
  %i.hb = icmp samesign ugt i32 %.1419, 104031
  br i1 %i.hb, label %bb.cb, label %.critedge

bb.cb:                                            ; preds = %bb.ca
  %i.hc = icmp samesign ugt i32 %.1419, 131072
  br i1 %i.hc, label %bb.cc, label %.critedge

bb.cc:                                            ; preds = %bb.cb
  %i.hd = icmp samesign ugt i32 %.1419, 165140
  br i1 %i.hd, label %bb.cd, label %.critedge

bb.cd:                                            ; preds = %bb.cc
  %i.he = icmp samesign ugt i32 %.1419, 208063
  br i1 %i.he, label %bb.ce, label %.critedge

bb.ce:                                            ; preds = %bb.cd
  %i.hf = icmp samesign ugt i32 %.1419, 262144
  br i1 %i.hf, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.hg = icmp samesign ugt i32 %.1419, 330280
  br i1 %i.hg, label %bb.cg, label %.critedge

bb.cg:                                            ; preds = %bb.cf
  %i.hh = icmp samesign ugt i32 %.1419, 416127
  br i1 %i.hh, label %bb.ch, label %.critedge

bb.ch:                                            ; preds = %bb.cg
  %i.hi = icmp samesign ugt i32 %.1419, 524287
  br i1 %i.hi, label %bb.ci, label %.critedge

bb.ci:                                            ; preds = %bb.ch
  %i.hj = icmp samesign ugt i32 %.1419, 660561
  br i1 %i.hj, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %bb.ci
  %i.hk = icmp samesign ugt i32 %.1419, 832255
  br i1 %i.hk, label %bb.ck, label %.critedge

bb.ck:                                            ; preds = %bb.cj
  %i.hl = icmp samesign ugt i32 %.1419, 1048576
  br i1 %i.hl, label %bb.cl, label %.critedge

bb.cl:                                            ; preds = %bb.ck
  %i.hm = icmp samesign ugt i32 %.1419, 1321122
  br i1 %i.hm, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %bb.cl
  %i.hn = icmp samesign ugt i32 %.1419, 1664510
  br i1 %i.hn, label %bb.cn, label %.critedge

bb.cn:                                            ; preds = %bb.cm
  %i.ho = icmp samesign ugt i32 %.1419, 2097152
  br i1 %i.ho, label %bb.co, label %.critedge

bb.co:                                            ; preds = %bb.cn
  %i.hp = icmp samesign ugt i32 %.1419, 2642245
  br i1 %i.hp, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %bb.co
  %i.hq = icmp samesign ugt i32 %.1419, 3329021
  br i1 %i.hq, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %bb.cp
  %i.hr = icmp samesign ugt i32 %.1419, 4194304
  br i1 %i.hr, label %bb.cr, label %.critedge

bb.cr:                                            ; preds = %bb.cq
  %i.hs = icmp samesign ugt i32 %.1419, 5284491
  br i1 %i.hs, label %bb.cs, label %.critedge

bb.cs:                                            ; preds = %bb.cr
  %i.ht = icmp samesign ugt i32 %.1419, 6658042
  br i1 %i.ht, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %bb.cs
  %i.hu = icmp samesign ugt i32 %.1419, 8388607
  br i1 %i.hu, label %bb.cu, label %.critedge

bb.cu:                                            ; preds = %bb.ct
  %i.hv = icmp samesign ugt i32 %.1419, 10568983
  br i1 %i.hv, label %bb.cv, label %.critedge

bb.cv:                                            ; preds = %bb.cu
  %i.hw = icmp samesign ugt i32 %.1419, 13316085
  br i1 %i.hw, label %bb.cw, label %.critedge

bb.cw:                                            ; preds = %bb.cv
  %i.hx = icmp samesign ugt i32 %.1419, 16777216
  %spec.select782 = select i1 %i.hx, i32 73, i32 72
  br label %.critedge

.critedge:                                        ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %_ZL9sizeofinti.exit477
  %storemerge447.lcssa = phi i32 [ 41, %bb.br ], [ 9, %_ZL9sizeofinti.exit477 ], [ 10, %bb.am ], [ %spec.select782, %bb.cw ], [ 11, %bb.an ], [ 49, %bb.bz ], [ 12, %bb.ao ], [ 71, %bb.cv ], [ 13, %bb.ap ], [ 42, %bb.bs ], [ 14, %bb.aq ], [ 70, %bb.cu ], [ 15, %bb.ar ], [ 56, %bb.cg ], [ 16, %bb.as ], [ 69, %bb.ct ], [ 17, %bb.at ], [ 43, %bb.bt ], [ 18, %bb.au ], [ 68, %bb.cs ], [ 19, %bb.av ], [ 51, %bb.cb ], [ 20, %bb.aw ], [ 67, %bb.cr ], [ 21, %bb.ax ], [ 44, %bb.bu ], [ 22, %bb.ay ], [ 66, %bb.cq ], [ 23, %bb.az ], [ 55, %bb.cf ], [ 24, %bb.ba ], [ 65, %bb.cp ], [ 25, %bb.bb ], [ 45, %bb.bv ], [ 26, %bb.bc ], [ 64, %bb.co ], [ 27, %bb.bd ], [ 50, %bb.ca ], [ 28, %bb.be ], [ 63, %bb.cn ], [ 29, %bb.bf ], [ 46, %bb.bw ], [ 30, %bb.bg ], [ 62, %bb.cm ], [ 31, %bb.bh ], [ 54, %bb.ce ], [ 32, %bb.bi ], [ 61, %bb.cl ], [ 33, %bb.bj ], [ 47, %bb.bx ], [ 34, %bb.bk ], [ 60, %bb.ck ], [ 35, %bb.bl ], [ 52, %bb.cc ], [ 36, %bb.bm ], [ 59, %bb.cj ], [ 37, %bb.bn ], [ 48, %bb.by ], [ 38, %bb.bo ], [ 58, %bb.ci ], [ 39, %bb.bp ], [ 53, %bb.cd ], [ 40, %bb.bq ], [ 57, %bb.ch ]
  store i32 %storemerge447.lcssa, ptr %i.e, align 4, !tbaa !14
  %i.hy = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.critedge
  br i1 %i.ad, label %bb.he, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @free(ptr noundef %.0422) #16
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !17
  call void @free(ptr noundef %i.ib) #16
  br label %bb.he

bb.cz:                                            ; preds = %.critedge
  %i.ic = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %i.id = call i32 @llvm.smin.i32(i32 %i.ic, i32 65) ; 2 uses
  %.sroa.speculated563 = add nsw i32 %i.id, 8     ; 2 uses
  %i.ie = call i32 @llvm.smax.i32(i32 %i.ic, i32 10)
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr [4 x i8], ptr @_ZL9magicints, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !14
  %i.ij = sext i32 %i.ic to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr @_ZL9magicints, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !14 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i32 %i.il, ptr %i.im, align 4, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %i.il, ptr %i.in, align 4, !tbaa !14
  store i32 %i.il, ptr %i.g, align 4, !tbaa !14
  %i.io = sext i32 %.sroa.speculated563 to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr @_ZL9magicints, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !14
  %i.ir = sdiv i32 %i.iq, 2                       ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !14
  %i.is = load i32, ptr %2, align 4, !tbaa !14    ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %bb.cz
  %i.iu = sdiv i32 %i.il, 2
  %i.iv = sdiv i32 %i.ii, 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ix = icmp eq i32 %.0379, 0
  %i.iy = icmp samesign ugt i32 %.sroa.0244.0, 7
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  %i.ja = icmp samesign ugt i32 %.sroa.7.0, 7
  %i.jb = icmp samesign ugt i32 %.sroa.12.0, 7
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph632, %bb.es
  %i.jc = phi i32 [ %i.is, %.lr.ph632 ], [ %i.tk, %bb.es ]
  %i.jd = phi i32 [ 0, %.lr.ph632 ], [ %i.tj, %bb.es ] ; 3 uses
  %.sroa.0.0630 = phi i32 [ 0, %.lr.ph632 ], [ %.sroa.0.1.lcssa, %bb.es ]
  %.sroa.16.0629 = phi i32 [ 0, %.lr.ph632 ], [ %.sroa.16.1.lcssa, %bb.es ]
  %.sroa.30.0628 = phi i32 [ 0, %.lr.ph632 ], [ %.sroa.30.1.lcssa, %bb.es ]
  %.0390627 = phi i32 [ -1, %.lr.ph632 ], [ %.1391, %bb.es ] ; 3 uses
  %.0402626 = phi i32 [ %i.iv, %.lr.ph632 ], [ %.2404, %bb.es ] ; 4 uses
  %.0407625 = phi i32 [ %i.iu, %.lr.ph632 ], [ %.2409, %bb.es ] ; 11 uses
  %i.je = sext i32 %i.jd to i64
  %.idx = mul nsw i64 %i.je, 12
  %i.jf = getelementptr inbounds nuw i8, ptr %.0422, i64 %.idx ; 13 uses
  %i.jg = load i32, ptr %i.e, align 4, !tbaa !14  ; 2 uses
  %i.jh = icmp slt i32 %i.jg, %.sroa.speculated563
  %i.ji = icmp sgt i32 %i.jd, 0
  %or.cond8 = and i1 %i.ji, %i.jh
  %.pre679.pre.pre = load i32, ptr %i.jf, align 4, !tbaa !14 ; 7 uses
  br i1 %or.cond8, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.jj = sub nsw i32 %.pre679.pre.pre, %.sroa.0.0630
  %i.jk = call i32 @llvm.abs.i32(i32 %i.jj, i1 true)
  %i.jl = icmp slt i32 %i.jk, %i.ir
  br i1 %i.jl, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !14
  %i.jo = sub nsw i32 %i.jn, %.sroa.16.0629
  %i.jp = call i32 @llvm.abs.i32(i32 %i.jo, i1 true)
  %i.jq = icmp samesign ult i32 %i.jp, %i.ir
  br i1 %i.jq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !14
  %i.jt = sub nsw i32 %i.js, %.sroa.30.0628
  %i.ju = call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = icmp samesign ult i32 %i.ju, %i.ir
  br i1 %i.jv, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da
  %i.jw = icmp sgt i32 %i.jg, %i.id               ; 2 uses
  %.465 = sext i1 %i.jw to i32
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.jx = phi i1 [ false, %bb.dd ], [ %i.jw, %bb.de ] ; 4 uses
  %.0395 = phi i32 [ 1, %bb.dd ], [ %.465, %bb.de ]
  %i.jy = add nsw i32 %i.jd, 1
  %i.jz = icmp slt i32 %i.jy, %i.jc
  br i1 %i.jz, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !14 ; 3 uses
  %i.kc = sub nsw i32 %.pre679.pre.pre, %i.kb
  %i.kd = call i32 @llvm.abs.i32(i32 %i.kc, i1 true)
  %i.ke = icmp slt i32 %i.kd, %.0407625
  br i1 %i.ke, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !14 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !14 ; 2 uses
  %i.kj = sub nsw i32 %i.kg, %i.ki
  %i.kk = call i32 @llvm.abs.i32(i32 %i.kj, i1 true)
  %i.kl = icmp samesign ult i32 %i.kk, %.0407625
  br i1 %i.kl, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.km = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !14 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jf, i64 20 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !14 ; 2 uses
  %i.kq = sub nsw i32 %i.kn, %i.kp
  %i.kr = call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = icmp samesign ult i32 %i.kr, %.0407625
  br i1 %i.ks, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 %i.kb, ptr %i.jf, align 4, !tbaa !14
  store i32 %.pre679.pre.pre, ptr %i.ka, align 4, !tbaa !14
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !14
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !14
  store i32 %i.kp, ptr %i.km, align 4, !tbaa !14
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !14
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.df
  %i.kt = phi i32 [ %i.kb, %bb.dj ], [ %.pre679.pre.pre, %bb.di ], [ %.pre679.pre.pre, %bb.dh ], [ %.pre679.pre.pre, %bb.dg ], [ %.pre679.pre.pre, %bb.df ] ; 3 uses
  %or.cond10 = phi i1 [ false, %bb.dj ], [ %i.jx, %bb.di ], [ %i.jx, %bb.dh ], [ %i.jx, %bb.dg ], [ %i.jx, %bb.df ]
  %.not647 = phi i1 [ false, %bb.dj ], [ true, %bb.di ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.df ]
  %i.ku = load i32, ptr %i.c, align 8, !tbaa !14
  %i.kv = sub nsw i32 %i.kt, %i.ku                ; 3 uses
  store i32 %i.kv, ptr %i.i, align 16, !tbaa !14
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %7 = load i32, ptr %i.kw, align 4, !tbaa !14    ; 3 uses
  %8 = load i32, ptr %i.at, align 4, !tbaa !14
  %9 = sub nsw i32 %7, %8                         ; 3 uses
  store i32 %9, ptr %i.iw, align 4, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %10 = load i32, ptr %i.kx, align 4, !tbaa !14   ; 3 uses
  %11 = load i32, ptr %i.as, align 8, !tbaa !14
  %12 = sub nsw i32 %10, %11                      ; 3 uses
  store i32 %12, ptr %6, align 8, !tbaa !14
  br i1 %i.ix, label %bb.dl, label %bb.dy

bb.dl:                                            ; preds = %bb.dk
  %i.ky = load i32, ptr %i.aq, align 8, !tbaa !21 ; 3 uses
  %i.kz = load i32, ptr %i.ar, align 4, !tbaa !22 ; 2 uses
  br i1 %i.iy, label %.lr.ph.i479, label %._crit_edge.i

.lr.ph.i479:                                      ; preds = %bb.dl, %.lr.ph.i479
  %.03136.i = phi i32 [ %i.ld, %.lr.ph.i479 ], [ %i.kz, %bb.dl ]
  %.03235.i = phi i32 [ %i.lb, %.lr.ph.i479 ], [ %.sroa.0244.0, %bb.dl ] ; 2 uses
  %i.la = shl i32 %.03136.i, 8
  %i.lb = add nsw i32 %.03235.i, -8               ; 3 uses
  %i.lc = ashr i32 %i.kv, %i.lb
  %i.ld = or i32 %i.lc, %i.la                     ; 3 uses
  %i.le = lshr i32 %i.ld, %i.ky
  %i.lf = trunc i32 %i.le to i8
  %i.lg = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.lh = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.li = add i64 %i.lh, 1
  store i64 %i.li, ptr %5, align 8, !tbaa !23
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  store i8 %i.lf, ptr %i.lj, align 1, !tbaa !24
  %i.lk = icmp samesign ugt i32 %.03235.i, 15
  br i1 %i.lk, label %.lr.ph.i479, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i479, %bb.dl
  %.032.lcssa.i = phi i32 [ %.sroa.0244.0, %bb.dl ], [ %i.lb, %.lr.ph.i479 ] ; 3 uses
  %.031.lcssa.i = phi i32 [ %i.kz, %bb.dl ], [ %i.ld, %.lr.ph.i479 ] ; 2 uses
  %i.ll = icmp sgt i32 %.032.lcssa.i, 0
  br i1 %i.ll, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %._crit_edge.i
  %i.lm = shl i32 %.031.lcssa.i, %.032.lcssa.i
  %i.ln = or i32 %i.lm, %i.kv                     ; 3 uses
  %i.lo = add nsw i32 %.032.lcssa.i, %i.ky        ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, 7
  br i1 %i.lp, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.lq = add nsw i32 %i.lo, -8                   ; 2 uses
  %i.lr = lshr i32 %i.ln, %i.lq
  %i.ls = trunc i32 %i.lr to i8
  %i.lt = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.lu = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.lv = add i64 %i.lu, 1
  store i64 %i.lv, ptr %5, align 8, !tbaa !23
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu
  store i8 %i.ls, ptr %i.lw, align 1, !tbaa !24
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %._crit_edge.i
  %.1.i = phi i32 [ %i.ln, %bb.dn ], [ %i.ln, %bb.dm ], [ %.031.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0.i = phi i32 [ %i.lq, %bb.dn ], [ %i.lo, %bb.dm ], [ %i.ky, %._crit_edge.i ] ; 4 uses
  store i32 %.0.i, ptr %i.aq, align 8, !tbaa !21
  store i32 %.1.i, ptr %i.ar, align 4, !tbaa !22
  %i.lx = icmp sgt i32 %.0.i, 0
  br i1 %i.lx, label %bb.dp, label %_ZL8sendbitsP10DataBufferii.exit

bb.dp:                                            ; preds = %bb.do
  %i.ly = sub nsw i32 8, %.0.i
  %i.lz = shl i32 %.1.i, %i.ly
  %i.ma = trunc i32 %i.lz to i8
  %i.mb = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.mc = load i64, ptr %5, align 8, !tbaa !23
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mc
  store i8 %i.ma, ptr %i.md, align 1, !tbaa !24
  %.pre680 = load i32, ptr %i.aq, align 8, !tbaa !21
  %.pre681 = load i32, ptr %i.ar, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit

_ZL8sendbitsP10DataBufferii.exit:                 ; preds = %bb.do, %bb.dp
  %i.me = phi i32 [ %.1.i, %bb.do ], [ %.pre681, %bb.dp ] ; 2 uses
  %i.mf = phi i32 [ %.0.i, %bb.do ], [ %.pre680, %bb.dp ] ; 3 uses
  br i1 %i.ja, label %.lr.ph.i485, label %._crit_edge.i480

.lr.ph.i485:                                      ; preds = %_ZL8sendbitsP10DataBufferii.exit, %.lr.ph.i485
  %.03136.i486 = phi i32 [ %i.mj, %.lr.ph.i485 ], [ %i.me, %_ZL8sendbitsP10DataBufferii.exit ]
  %.03235.i487 = phi i32 [ %i.mh, %.lr.ph.i485 ], [ %.sroa.7.0, %_ZL8sendbitsP10DataBufferii.exit ] ; 2 uses
  %i.mg = shl i32 %.03136.i486, 8
  %i.mh = add nsw i32 %.03235.i487, -8            ; 3 uses
  %i.mi = ashr i32 %9, %i.mh
  %i.mj = or i32 %i.mi, %i.mg                     ; 3 uses
  %i.mk = lshr i32 %i.mj, %i.mf
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.mn = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.mo = add i64 %i.mn, 1
  store i64 %i.mo, ptr %5, align 8, !tbaa !23
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  store i8 %i.ml, ptr %i.mp, align 1, !tbaa !24
  %i.mq = icmp samesign ugt i32 %.03235.i487, 15
  br i1 %i.mq, label %.lr.ph.i485, label %._crit_edge.i480, !llvm.loop !0

._crit_edge.i480:                                 ; preds = %.lr.ph.i485, %_ZL8sendbitsP10DataBufferii.exit
  %.032.lcssa.i481 = phi i32 [ %.sroa.7.0, %_ZL8sendbitsP10DataBufferii.exit ], [ %i.mh, %.lr.ph.i485 ] ; 3 uses
  %.031.lcssa.i482 = phi i32 [ %i.me, %_ZL8sendbitsP10DataBufferii.exit ], [ %i.mj, %.lr.ph.i485 ] ; 2 uses
  %i.mr = icmp sgt i32 %.032.lcssa.i481, 0
  br i1 %i.mr, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %._crit_edge.i480
  %i.ms = shl i32 %.031.lcssa.i482, %.032.lcssa.i481
  %i.mt = or i32 %i.ms, %9                        ; 3 uses
  %i.mu = add nsw i32 %.032.lcssa.i481, %i.mf     ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 7
  br i1 %i.mv, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.mw = add nsw i32 %i.mu, -8                   ; 2 uses
  %i.mx = lshr i32 %i.mt, %i.mw
  %i.my = trunc i32 %i.mx to i8
  %i.mz = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.na = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.nb = add i64 %i.na, 1
  store i64 %i.nb, ptr %5, align 8, !tbaa !23
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na
  store i8 %i.my, ptr %i.nc, align 1, !tbaa !24
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %._crit_edge.i480
  %.1.i483 = phi i32 [ %i.mt, %bb.dr ], [ %i.mt, %bb.dq ], [ %.031.lcssa.i482, %._crit_edge.i480 ] ; 3 uses
  %.0.i484 = phi i32 [ %i.mw, %bb.dr ], [ %i.mu, %bb.dq ], [ %i.mf, %._crit_edge.i480 ] ; 4 uses
  store i32 %.0.i484, ptr %i.aq, align 8, !tbaa !21
  store i32 %.1.i483, ptr %i.ar, align 4, !tbaa !22
  %i.nd = icmp sgt i32 %.0.i484, 0
  br i1 %i.nd, label %bb.dt, label %_ZL8sendbitsP10DataBufferii.exit488

bb.dt:                                            ; preds = %bb.ds
  %i.ne = sub nsw i32 8, %.0.i484
  %i.nf = shl i32 %.1.i483, %i.ne
  %i.ng = trunc i32 %i.nf to i8
  %i.nh = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.ni = load i64, ptr %5, align 8, !tbaa !23
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni
  store i8 %i.ng, ptr %i.nj, align 1, !tbaa !24
  %.pre682 = load i32, ptr %i.aq, align 8, !tbaa !21
  %.pre683 = load i32, ptr %i.ar, align 4, !tbaa !22
  br label %_ZL8sendbitsP10DataBufferii.exit488

_ZL8sendbitsP10DataBufferii.exit488:              ; preds = %bb.ds, %bb.dt
  %i.nk = phi i32 [ %.1.i483, %bb.ds ], [ %.pre683, %bb.dt ] ; 2 uses
  %i.nl = phi i32 [ %.0.i484, %bb.ds ], [ %.pre682, %bb.dt ] ; 3 uses
  br i1 %i.jb, label %.lr.ph.i494, label %._crit_edge.i489

.lr.ph.i494:                                      ; preds = %_ZL8sendbitsP10DataBufferii.exit488, %.lr.ph.i494
  %.03136.i495 = phi i32 [ %i.np, %.lr.ph.i494 ], [ %i.nk, %_ZL8sendbitsP10DataBufferii.exit488 ]
  %.03235.i496 = phi i32 [ %i.nn, %.lr.ph.i494 ], [ %.sroa.12.0, %_ZL8sendbitsP10DataBufferii.exit488 ] ; 2 uses
  %i.nm = shl i32 %.03136.i495, 8
  %i.nn = add nsw i32 %.03235.i496, -8            ; 3 uses
  %i.no = ashr i32 %12, %i.nn
  %i.np = or i32 %i.no, %i.nm                     ; 3 uses
  %i.nq = lshr i32 %i.np, %i.nl
  %i.nr = trunc i32 %i.nq to i8
  %i.ns = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.nt = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.nu = add i64 %i.nt, 1
  store i64 %i.nu, ptr %5, align 8, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nt
  store i8 %i.nr, ptr %i.nv, align 1, !tbaa !24
  %i.nw = icmp samesign ugt i32 %.03235.i496, 15
  br i1 %i.nw, label %.lr.ph.i494, label %._crit_edge.i489, !llvm.loop !0

._crit_edge.i489:                                 ; preds = %.lr.ph.i494, %_ZL8sendbitsP10DataBufferii.exit488
  %.032.lcssa.i490 = phi i32 [ %.sroa.12.0, %_ZL8sendbitsP10DataBufferii.exit488 ], [ %i.nn, %.lr.ph.i494 ] ; 3 uses
  %.031.lcssa.i491 = phi i32 [ %i.nk, %_ZL8sendbitsP10DataBufferii.exit488 ], [ %i.np, %.lr.ph.i494 ] ; 2 uses
  %i.nx = icmp sgt i32 %.032.lcssa.i490, 0
  br i1 %i.nx, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %._crit_edge.i489
  %i.ny = shl i32 %.031.lcssa.i491, %.032.lcssa.i490
  %i.nz = or i32 %i.ny, %12                       ; 3 uses
  %i.oa = add nsw i32 %.032.lcssa.i490, %i.nl     ; 3 uses
  %i.ob = icmp sgt i32 %i.oa, 7
  br i1 %i.ob, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.oc = add nsw i32 %i.oa, -8                   ; 2 uses
  %i.od = lshr i32 %i.nz, %i.oc
  %i.oe = trunc i32 %i.od to i8
  %i.of = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.og = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.oh = add i64 %i.og, 1
  store i64 %i.oh, ptr %5, align 8, !tbaa !23
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  store i8 %i.oe, ptr %i.oi, align 1, !tbaa !24
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %._crit_edge.i489
  %.1.i492 = phi i32 [ %i.nz, %bb.dv ], [ %i.nz, %bb.du ], [ %.031.lcssa.i491, %._crit_edge.i489 ] ; 2 uses
  %.0.i493 = phi i32 [ %i.oc, %bb.dv ], [ %i.oa, %bb.du ], [ %i.nl, %._crit_edge.i489 ] ; 3 uses
  store i32 %.0.i493, ptr %i.aq, align 8, !tbaa !21
  store i32 %.1.i492, ptr %i.ar, align 4, !tbaa !22
  %i.oj = icmp sgt i32 %.0.i493, 0
  br i1 %i.oj, label %bb.dx, label %_ZL8sendbitsP10DataBufferii.exit497

bb.dx:                                            ; preds = %bb.dw
  %i.ok = sub nsw i32 8, %.0.i493
  %i.ol = shl i32 %.1.i492, %i.ok
  %i.om = trunc i32 %i.ol to i8
  %i.on = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.oo = load i64, ptr %5, align 8, !tbaa !23
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo
  store i8 %i.om, ptr %i.op, align 1, !tbaa !24
  br label %_ZL8sendbitsP10DataBufferii.exit497

bb.dy:                                            ; preds = %bb.dk
  call fastcc void @_ZL8sendintsP10DataBufferiiPjS1_(ptr noundef %5, i32 noundef %.0379, ptr noundef %i.f, ptr noundef %i.i)
  %.pre684 = load i32, ptr %i.jf, align 4, !tbaa !14
  %.pre685 = load i32, ptr %i.kw, align 4, !tbaa !14
  %.pre686 = load i32, ptr %i.kx, align 4, !tbaa !14
  br label %_ZL8sendbitsP10DataBufferii.exit497

_ZL8sendbitsP10DataBufferii.exit497:              ; preds = %bb.dx, %bb.dw, %bb.dy
  %13 = phi i32 [ %10, %bb.dx ], [ %10, %bb.dw ], [ %.pre686, %bb.dy ] ; 2 uses
  %14 = phi i32 [ %7, %bb.dx ], [ %7, %bb.dw ], [ %.pre685, %bb.dy ] ; 2 uses
  %15 = phi i32 [ %i.kt, %bb.dx ], [ %i.kt, %bb.dw ], [ %.pre684, %bb.dy ] ; 2 uses
  %i.oq = load i32, ptr %i.h, align 4, !tbaa !14
  %i.or = add nsw i32 %i.oq, 1                    ; 2 uses
  store i32 %i.or, ptr %i.h, align 4, !tbaa !14
  %spec.store.select = select i1 %or.cond10, i32 0, i32 %.0395 ; 2 uses
  br i1 %.not647, label %bb.ef, label %.lr.ph614

.lr.ph614:                                        ; preds = %_ZL8sendbitsP10DataBufferii.exit497
  %i.os = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.ot = mul nsw i32 %.0402626, %.0402626
  %i.ou = load i32, ptr %2, align 4, !tbaa !14
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph614, %bb.ee
  %indvars.iv = phi i64 [ 0, %.lr.ph614 ], [ %indvars.iv.next, %bb.ee ] ; 3 uses
  %.sroa.0.1613 = phi i32 [ %15, %.lr.ph614 ], [ %.pre684.a, %bb.ee ] ; 2 uses
  %.sroa.16.1612 = phi i32 [ %14, %.lr.ph614 ], [ %i.pk, %bb.ee ] ; 2 uses
  %.sroa.30.1611 = phi i32 [ %13, %.lr.ph614 ], [ %i.pj, %bb.ee ] ; 2 uses
  %.0381610 = phi ptr [ %i.os, %.lr.ph614 ], [ %i.pv, %bb.ee ] ; 8 uses
  %.1396608 = phi i32 [ %spec.store.select, %.lr.ph614 ], [ %.2397, %bb.ee ] ; 2 uses
  %i.ov = phi i32 [ %i.or, %.lr.ph614 ], [ %i.pu, %bb.ee ]
  %i.ow = icmp eq i32 %.1396608, -1
  %.pre684.a = load i32, ptr %.0381610, align 4, !tbaa !14 ; 5 uses
  br i1 %i.ow, label %bb.ea, label %._crit_edge685

._crit_edge685:                                   ; preds = %bb.dz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0381610, i64 4
  %.pre686.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert687 = getelementptr inbounds nuw i8, ptr %.0381610, i64 8
  %.pre688 = load i32, ptr %.phi.trans.insert687, align 4, !tbaa !14
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ox = sub nsw i32 %.pre684.a, %.sroa.0.1613   ; 2 uses
  %i.oy = mul nsw i32 %i.ox, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %.0381610, i64 4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !14 ; 2 uses
  %i.pb = sub nsw i32 %i.pa, %.sroa.16.1612       ; 2 uses
  %i.pc = mul nsw i32 %i.pb, %i.pb
  %i.pd = add nuw nsw i32 %i.pc, %i.oy
  %i.pe = getelementptr inbounds nuw i8, ptr %.0381610, i64 8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !14 ; 2 uses
  %i.pg = sub nsw i32 %i.pf, %.sroa.30.1611       ; 2 uses
  %i.ph = mul nsw i32 %i.pg, %i.pg
  %i.pi = add nuw nsw i32 %i.pd, %i.ph
  %.not450 = icmp samesign ult i32 %i.pi, %i.ot
  %spec.select466 = sext i1 %.not450 to i32
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge685, %bb.ea
  %i.pj = phi i32 [ %.pre688, %._crit_edge685 ], [ %i.pf, %bb.ea ] ; 4 uses
  %i.pk = phi i32 [ %.pre686.a, %._crit_edge685 ], [ %i.pa, %bb.ea ] ; 4 uses
  %.2397 = phi i32 [ %.1396608, %._crit_edge685 ], [ %spec.select466, %bb.ea ] ; 2 uses
  %i.pl = sub i32 %.0407625, %.sroa.0.1613
  %i.pm = add i32 %i.pl, %.pre684.a
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !14
  %i.po = sub i32 %.0407625, %.sroa.16.1612
  %i.pp = add i32 %i.po, %i.pk
  %i.pq = getelementptr i8, ptr %i.pn, i64 4
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !14
  %i.pr = sub i32 %.0407625, %.sroa.30.1611
  %i.ps = add i32 %i.pr, %i.pj
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !14
  %i.pu = add nsw i32 %i.ov, 1                    ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.0381610, i64 12 ; 2 uses
  %i.pw = icmp slt i32 %i.pu, %i.ou
  br i1 %i.pw, label %bb.ec, label %._crit_edge615

bb.ec:                                            ; preds = %bb.eb
  %i.px = load i32, ptr %i.pv, align 4, !tbaa !14
  %i.py = sub nsw i32 %i.px, %.pre684.a
  %i.pz = call i32 @llvm.abs.i32(i32 %i.py, i1 true)
  %i.qa = icmp slt i32 %i.pz, %.0407625
  br i1 %i.qa, label %bb.ed, label %._crit_edge615

bb.ed:                                            ; preds = %bb.ec
  %i.qb = getelementptr inbounds nuw i8, ptr %.0381610, i64 16
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !14
  %i.qd = sub nsw i32 %i.qc, %i.pk
  %i.qe = call i32 @llvm.abs.i32(i32 %i.qd, i1 true)
  %i.qf = icmp samesign ult i32 %i.qe, %.0407625
  br i1 %i.qf, label %bb.ee, label %._crit_edge615

bb.ee:                                            ; preds = %bb.ed
  %i.qg = getelementptr inbounds nuw i8, ptr %.0381610, i64 20
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !14
  %i.qi = sub nsw i32 %i.qh, %i.pj
  %i.qj = call i32 @llvm.abs.i32(i32 %i.qi, i1 true)
  %i.qk = icmp samesign ult i32 %i.qj, %.0407625
  %i.ql = icmp samesign ult i64 %indvars.iv, 21
  %i.qm = select i1 %i.qk, i1 %i.ql, i1 false
  br i1 %i.qm, label %bb.dz, label %._crit_edge615, !llvm.loop !33

._crit_edge615:                                   ; preds = %bb.ec, %bb.ed, %bb.eb, %bb.ee
  %i.qn = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.pu, ptr %i.h, align 4, !tbaa !14
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge615, %_ZL8sendbitsP10DataBufferii.exit497
  %.1396.lcssa = phi i32 [ %.2397, %._crit_edge615 ], [ %spec.store.select, %_ZL8sendbitsP10DataBufferii.exit497 ] ; 5 uses
  %.0392.lcssa = phi i32 [ %i.qn, %._crit_edge615 ], [ 0, %_ZL8sendbitsP10DataBufferii.exit497 ] ; 7 uses
  %.sroa.30.1.lcssa = phi i32 [ %i.pj, %._crit_edge615 ], [ %13, %_ZL8sendbitsP10DataBufferii.exit497 ]
  %.sroa.16.1.lcssa = phi i32 [ %i.pk, %._crit_edge615 ], [ %14, %_ZL8sendbitsP10DataBufferii.exit497 ]
  %.sroa.0.1.lcssa = phi i32 [ %.pre684.a, %._crit_edge615 ], [ %15, %_ZL8sendbitsP10DataBufferii.exit497 ]
  %i.qo = icmp ne i32 %.0392.lcssa, %.0390627
  %i.qp = icmp ne i32 %.1396.lcssa, 0             ; 2 uses
  %or.cond12 = select i1 %i.qo, i1 true, i1 %i.qp
  %i.qq = load i32, ptr %i.aq, align 8, !tbaa !21 ; 6 uses
  %i.qr = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.qs = shl i32 %i.qr, 1                        ; 4 uses
  br i1 %or.cond12, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.qt = or disjoint i32 %i.qs, 1                ; 4 uses
  %i.qu = add nsw i32 %i.qq, 1
  %i.qv = icmp sgt i32 %i.qq, 6
  br i1 %i.qv, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.qw = add nsw i32 %i.qq, -7                   ; 2 uses
  %i.qx = lshr i32 %i.qt, %i.qw
  %i.qy = trunc i32 %i.qx to i8
  %i.qz = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.ra = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.rb = add i64 %i.ra, 1
  store i64 %i.rb, ptr %5, align 8, !tbaa !23
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.ra
  store i8 %i.qy, ptr %i.rc, align 1, !tbaa !24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.0.i502 = phi i32 [ %i.qw, %bb.eh ], [ %i.qu, %bb.eg ] ; 4 uses
  store i32 %.0.i502, ptr %i.aq, align 8, !tbaa !21
  store i32 %i.qt, ptr %i.ar, align 4, !tbaa !22
  %i.rd = icmp sgt i32 %.0.i502, 0
  br i1 %i.rd, label %_ZL8sendbitsP10DataBufferii.exit503, label %_ZL8sendbitsP10DataBufferii.exit503.thread

_ZL8sendbitsP10DataBufferii.exit503.thread:       ; preds = %bb.ei
  %i.re = add nsw i32 %.1396.lcssa, 1
  %i.rf = add i32 %i.re, %.0392.lcssa
  %i.rg = shl i32 %i.qt, 5
  %i.rh = or i32 %i.rg, %i.rf
  %i.ri = add nsw i32 %.0.i502, 5
  br label %bb.ek

_ZL8sendbitsP10DataBufferii.exit503:              ; preds = %bb.ei
  %i.rj = sub nsw i32 8, %.0.i502
  %i.rk = shl i32 %i.qt, %i.rj
  %i.rl = trunc i32 %i.rk to i8
  %i.rm = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.rn = load i64, ptr %5, align 8, !tbaa !23
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rn
  store i8 %i.rl, ptr %i.ro, align 1, !tbaa !24
  %.pre689 = load i32, ptr %i.aq, align 8, !tbaa !21 ; 3 uses
  %.pre690 = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.rp = add nsw i32 %.1396.lcssa, 1
  %i.rq = add i32 %i.rp, %.0392.lcssa
  %i.rr = shl i32 %.pre690, 5
  %i.rs = or i32 %i.rr, %i.rq                     ; 3 uses
  %i.rt = add nsw i32 %.pre689, 5
  %i.ru = icmp sgt i32 %.pre689, 2
  br i1 %i.ru, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZL8sendbitsP10DataBufferii.exit503
  %i.rv = add nsw i32 %.pre689, -3                ; 2 uses
  %i.rw = lshr i32 %i.rs, %i.rv
  %i.rx = trunc i32 %i.rw to i8
  %i.ry = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.rz = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.sa = add i64 %i.rz, 1
  store i64 %i.sa, ptr %5, align 8, !tbaa !23
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rz
  store i8 %i.rx, ptr %i.sb, align 1, !tbaa !24
  br label %bb.ek

bb.ek:                                            ; preds = %_ZL8sendbitsP10DataBufferii.exit503.thread, %bb.ej, %_ZL8sendbitsP10DataBufferii.exit503
  %i.sc = phi i32 [ %i.rs, %bb.ej ], [ %i.rs, %_ZL8sendbitsP10DataBufferii.exit503 ], [ %i.rh, %_ZL8sendbitsP10DataBufferii.exit503.thread ] ; 2 uses
  %.0.i508 = phi i32 [ %i.rv, %bb.ej ], [ %i.rt, %_ZL8sendbitsP10DataBufferii.exit503 ], [ %i.ri, %_ZL8sendbitsP10DataBufferii.exit503.thread ] ; 3 uses
  store i32 %.0.i508, ptr %i.aq, align 8, !tbaa !21
  store i32 %i.sc, ptr %i.ar, align 4, !tbaa !22
  %i.sd = icmp sgt i32 %.0.i508, 0
  br i1 %i.sd, label %_ZL8sendbitsP10DataBufferii.exit509.sink.split, label %_ZL8sendbitsP10DataBufferii.exit509

bb.el:                                            ; preds = %bb.ef
  %i.se = add nsw i32 %i.qq, 1
  %i.sf = icmp sgt i32 %i.qq, 6
  br i1 %i.sf, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.sg = add nsw i32 %i.qq, -7                   ; 2 uses
  %i.sh = lshr i32 %i.qs, %i.sg
  %i.si = trunc i32 %i.sh to i8
  %i.sj = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.sk = load i64, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.sl = add i64 %i.sk, 1
  store i64 %i.sl, ptr %5, align 8, !tbaa !23
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sk
  store i8 %i.si, ptr %i.sm, align 1, !tbaa !24
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %.0.i514 = phi i32 [ %i.sg, %bb.em ], [ %i.se, %bb.el ] ; 3 uses
  store i32 %.0.i514, ptr %i.aq, align 8, !tbaa !21
  store i32 %i.qs, ptr %i.ar, align 4, !tbaa !22
  %i.sn = icmp sgt i32 %.0.i514, 0
  br i1 %i.sn, label %_ZL8sendbitsP10DataBufferii.exit509.sink.split, label %_ZL8sendbitsP10DataBufferii.exit509

_ZL8sendbitsP10DataBufferii.exit509.sink.split:   ; preds = %bb.en, %bb.ek
  %.0.i514.sink = phi i32 [ %.0.i508, %bb.ek ], [ %.0.i514, %bb.en ]
  %.sink788 = phi i32 [ %i.sc, %bb.ek ], [ %i.qs, %bb.en ]
  %.1391.ph = phi i32 [ %.0392.lcssa, %bb.ek ], [ %.0390627, %bb.en ]
  %i.so = sub nsw i32 8, %.0.i514.sink
  %i.sp = shl i32 %.sink788, %i.so
  %i.sq = trunc i32 %i.sp to i8
  %i.sr = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.ss = load i64, ptr %5, align 8, !tbaa !23
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.ss
  store i8 %i.sq, ptr %i.st, align 1, !tbaa !24
  br label %_ZL8sendbitsP10DataBufferii.exit509

_ZL8sendbitsP10DataBufferii.exit509:              ; preds = %_ZL8sendbitsP10DataBufferii.exit509.sink.split, %bb.en, %bb.ek
  %.1391 = phi i32 [ %.0390627, %bb.en ], [ %.0392.lcssa, %bb.ek ], [ %.1391.ph, %_ZL8sendbitsP10DataBufferii.exit509.sink.split ]
  %.not648 = icmp eq i32 %.0392.lcssa, 0
  br i1 %.not648, label %._crit_edge624, label %.lr.ph623.preheader

.lr.ph623.preheader:                              ; preds = %_ZL8sendbitsP10DataBufferii.exit509
  %i.su = zext i32 %.0392.lcssa to i64
  br label %.lr.ph623

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %.lr.ph623
  %indvars.iv672 = phi i64 [ 0, %.lr.ph623.preheader ], [ %indvars.iv.next673, %.lr.ph623 ] ; 2 uses
  %i.sv = load i32, ptr %i.e, align 4, !tbaa !14
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv672
  call fastcc void @_ZL8sendintsP10DataBufferiiPjS1_(ptr noundef %5, i32 noundef %i.sv, ptr noundef %i.g, ptr noundef %i.sw)
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 3 ; 2 uses
  %i.sx = icmp samesign ult i64 %indvars.iv.next673, %i.su
  br i1 %i.sx, label %.lr.ph623, label %._crit_edge624, !llvm.loop !34

._crit_edge624:                                   ; preds = %.lr.ph623, %_ZL8sendbitsP10DataBufferii.exit509
  br i1 %i.qp, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %._crit_edge624
  %i.sy = load i32, ptr %i.e, align 4, !tbaa !14
  %i.sz = add nsw i32 %i.sy, %.1396.lcssa         ; 2 uses
  store i32 %i.sz, ptr %i.e, align 4, !tbaa !14
  %i.ta = icmp slt i32 %.1396.lcssa, 0
  %i.tb = sext i32 %i.sz to i64
  %i.tc = getelementptr [4 x i8], ptr @_ZL9magicints, i64 %i.tb ; 3 uses
  br i1 %i.ta, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.td = getelementptr i8, ptr %i.tc, i64 -4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !14
  %i.tf = sdiv i32 %i.te, 2
  %.pre691 = load i32, ptr %i.tc, align 4, !tbaa !14
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.tg = load i32, ptr %i.tc, align 4, !tbaa !14 ; 2 uses
  %i.th = sdiv i32 %i.tg, 2
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.ti = phi i32 [ %i.tg, %bb.eq ], [ %.pre691, %bb.ep ] ; 3 uses
  %.1408 = phi i32 [ %i.th, %bb.eq ], [ %.0402626, %bb.ep ]
  %.1403 = phi i32 [ %.0407625, %bb.eq ], [ %i.tf, %bb.ep ]
  store i32 %i.ti, ptr %i.im, align 4, !tbaa !14
  store i32 %i.ti, ptr %i.in, align 4, !tbaa !14
  store i32 %i.ti, ptr %i.g, align 4, !tbaa !14
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge624
  %.2409 = phi i32 [ %.1408, %bb.er ], [ %.0407625, %._crit_edge624 ]
  %.2404 = phi i32 [ %.1403, %bb.er ], [ %.0402626, %._crit_edge624 ]
  %i.tj = load i32, ptr %i.h, align 4, !tbaa !14  ; 2 uses
  %i.tk = load i32, ptr %2, align 4, !tbaa !14    ; 2 uses
  %i.tl = icmp slt i32 %i.tj, %i.tk
  br i1 %i.tl, label %bb.da, label %._crit_edge633, !llvm.loop !35

._crit_edge633:                                   ; preds = %bb.es, %bb.cz
  %i.tm = load i32, ptr %i.aq, align 8, !tbaa !21
  %.not = icmp eq i32 %i.tm, 0
  br i1 %.not, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %._crit_edge633
  %i.tn = load i64, ptr %5, align 8, !tbaa !23
  %i.to = add i64 %i.tn, 1
  store i64 %i.to, ptr %5, align 8, !tbaa !23
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge633
  %i.tp = icmp eq i32 %4, 2023
  br i1 %i.tp, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.tq = call noundef i32 @_Z9xdr_int64P3XDRPl(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.tr = load i64, ptr %5, align 8, !tbaa !23
  %i.ts = trunc i64 %i.tr to i32
  store i32 %i.ts, ptr %i.h, align 4, !tbaa !14
  %i.tt = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  br label %bb.ex
end_hunk_1
