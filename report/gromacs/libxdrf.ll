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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
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
  %i.d = alloca [3 x i32], align 4                ; 12 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca [3 x i32], align 4                ; 12 uses
  %i.g = alloca [3 x i32], align 4                ; 13 uses
  %i.h = alloca i32, align 4                      ; 19 uses
  %i.i = alloca [30 x i32], align 16              ; 7 uses
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
  %i.k = load i32, ptr %0, align 8, !tbaa !12
  %i.l = icmp eq i32 %i.k, 1
  switch i32 %4, label %bb.b [
    i32 2023, label %bb.c
    i32 1995, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef 1995, i32 noundef 2023) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.o = icmp ne i32 %4, 2023
  %i.p = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 298261617
  %or.cond3 = and i1 %i.o, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.7, i32 noundef %i.p, i32 noundef 2023) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i8 0, i64 192, i1 false), !tbaa !18
  store i32 48, ptr %i.h, align 4, !tbaa !18
  br i1 %i.l, label %bb.ff, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.hf, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = mul nsw i64 %i.w, 3                      ; 3 uses
  %i.y = icmp slt i32 %i.v, 10
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc i64 %i.x to i32
  %i.aa = tail call noundef i32 @_Z10xdr_vectorP3XDRPcjjPFiS0_PvzE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.z, i32 noundef 4, ptr noundef nonnull @_Z9xdr_floatP3XDRPf)
  br label %bb.hf

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef nonnull %0, ptr noundef %3)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.hf, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult i64 %i.x, 49                   ; 5 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !19
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
  store ptr %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = icmp eq ptr %i.aj, null
  %i.ao = icmp eq ptr %i.al, null
  %or.cond6 = or i1 %i.an, %i.ao
  br i1 %or.cond6, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.aq = tail call i64 @fwrite(ptr nonnull @.str.8, i64 14, i64 1, ptr %i.ap) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.k, %bb.l
  %.idx642.pre-phi = phi i64 [ %i.ai, %bb.l ], [ %.pre, %bb.k ]
  %.0422 = phi ptr [ %i.aj, %bb.l ], [ %i.a, %bb.k ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  store i32 2147483647, ptr %i.au, align 4, !tbaa !18
  store i32 2147483647, ptr %i.c, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !18
  store i32 -2147483648, ptr %i.d, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %.idx642.pre-phi
  %i.ay = load float, ptr %3, align 4, !tbaa !22  ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.0377600 = phi i32 [ %.3, %bb.y ], [ 1, %.lr.ph.preheader ]
  %.0385599 = phi ptr [ %i.ct, %bb.y ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.0414598 = phi i32 [ %i.cn, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0415597 = phi i32 [ %i.bz, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0416596 = phi i32 [ %i.bl, %bb.y ], [ 0, %.lr.ph.preheader ]
  %.0417595 = phi ptr [ %i.cs, %bb.y ], [ %.0422, %.lr.ph.preheader ] ; 4 uses
  %.0418594 = phi i32 [ %.1419, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bn, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.bp, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi i32 [ %i.cb, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i32 [ %i.cd, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi i32 [ %i.cp, %bb.y ], [ 2147483647, %.lr.ph.preheader ] ; 2 uses
  %i.be = phi i32 [ %i.cr, %bb.y ], [ -2147483648, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load float, ptr %.0385599, align 4, !tbaa !22 ; 2 uses
  %i.bg = fcmp ult float %i.bf, 0.000000e+00
  %i.bh = fmul float %i.bf, %i.ay
  %. = select i1 %i.bg, float -5.000000e-01, float 5.000000e-01
  %i.bi = fadd float %i.bh, %.                    ; 2 uses
  %i.bj = call noundef float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp ogt float %i.bj, f0x4EFFFFFF
  %i.bl = fptosi float %i.bi to i32               ; 9 uses
  %i.bm = icmp sgt i32 %i.az, %i.bl
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  store i32 %i.bl, ptr %i.c, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.bn = phi i32 [ %i.bl, %bb.n ], [ %i.az, %.lr.ph ]
  %i.bo = icmp slt i32 %i.ba, %i.bl
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bl, ptr %i.d, align 4, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bp = phi i32 [ %i.bl, %bb.p ], [ %i.ba, %bb.o ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0417595, i64 4
  store i32 %i.bl, ptr %.0417595, align 4, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.0385599, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !22 ; 2 uses
  %i.bt = fcmp ult float %i.bs, 0.000000e+00
  %i.bu = fmul float %i.bs, %i.ay
  %.786 = select i1 %i.bt, float -5.000000e-01, float 5.000000e-01
  %i.bv = fadd float %i.bu, %.786                 ; 2 uses
  %i.bw = call noundef float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp ogt float %i.bw, f0x4EFFFFFF
  %i.by = or i1 %i.bk, %i.bx
  %i.bz = fptosi float %i.bv to i32               ; 9 uses
  %i.ca = icmp sgt i32 %i.bb, %i.bz
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.bz, ptr %i.au, align 4, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi i32 [ %i.bz, %bb.r ], [ %i.bb, %bb.q ]
  %i.cc = icmp slt i32 %i.bc, %i.bz
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bz, ptr %i.aw, align 4, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = phi i32 [ %i.bz, %bb.t ], [ %i.bc, %bb.s ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0417595, i64 8
  store i32 %i.bz, ptr %i.bq, align 4, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.0385599, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !22 ; 2 uses
  %i.ch = fcmp ult float %i.cg, 0.000000e+00
  %i.ci = fmul float %i.cg, %i.ay
  %.787 = select i1 %i.ch, float -5.000000e-01, float 5.000000e-01
  %i.cj = fadd float %i.ci, %.787                 ; 2 uses
  %i.ck = call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ogt float %i.ck, f0x4EFFFFFF
  %i.cm = or i1 %i.by, %i.cl
  %.3 = select i1 %i.cm, i32 0, i32 %.0377600     ; 2 uses
  %i.cn = fptosi float %i.cj to i32               ; 9 uses
  %i.co = icmp sgt i32 %i.bd, %i.cn
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.cn, ptr %i.at, align 8, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cp = phi i32 [ %i.cn, %bb.v ], [ %i.bd, %bb.u ]
  %i.cq = icmp slt i32 %i.be, %i.cn
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.cn, ptr %i.av, align 4, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cr = phi i32 [ %i.cn, %bb.x ], [ %i.be, %bb.w ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0417595, i64 12
  store i32 %i.cn, ptr %i.ce, align 4, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.0385599, i64 12 ; 2 uses
  %i.cu = sub nsw i32 %.0416596, %i.bl
  %i.cv = call i32 @llvm.abs.i32(i32 %i.cu, i1 true)
  %i.cw = sub nsw i32 %.0415597, %i.bz
  %i.cx = call i32 @llvm.abs.i32(i32 %i.cw, i1 true)
  %i.cy = add nuw nsw i32 %i.cx, %i.cv
  %i.cz = sub nsw i32 %.0414598, %i.cn
  %i.da = call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = add nuw nsw i32 %i.cy, %i.da
  %i.dc = icmp ugt ptr %.0385599, %1
  %i.dd = call i32 @llvm.smin.i32(i32 %i.db, i32 %.0418594)
  %.1419 = select i1 %i.dc, i32 %i.dd, i32 %.0418594 ; 65 uses
  %i.de = icmp ult ptr %i.ct, %i.ax
  br i1 %i.de, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.y
  %i.df = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.dh = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.at)
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.aw)
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.av)
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %._crit_edge
  br i1 %i.ad, label %bb.hf, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %.0422) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !19
  call void @free(ptr noundef %i.ds) #16
  br label %bb.hf

bb.ag:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !18  ; 2 uses
  %i.du = sitofp i32 %i.dt to float
  %i.dv = load i32, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %i.dw = sitofp i32 %i.dv to float
  %i.dx = fsub float %i.du, %i.dw
  %i.dy = fcmp ult float %i.dx, f0x4EFFFFFF
  %.pre.pre = load i32, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %.pre672.pre = load i32, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  br i1 %i.dy, label %bb.ah, label %._crit_edge694

._crit_edge694:                                   ; preds = %bb.ag
  %.pre673.pre = load i32, ptr %i.av, align 4, !tbaa !18
  %.pre674.pre = load i32, ptr %i.at, align 8, !tbaa !18
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dz = sitofp i32 %.pre.pre to float
  %i.ea = sitofp i32 %.pre672.pre to float
  %i.eb = fsub float %i.dz, %i.ea
  %i.ec = fcmp ult float %i.eb, f0x4EFFFFFF
  %.pre673.pre695 = load i32, ptr %i.av, align 4, !tbaa !18 ; 4 uses
  %.pre674.pre697 = load i32, ptr %i.at, align 8, !tbaa !18 ; 4 uses
  br i1 %i.ec, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ed = sitofp i32 %.pre673.pre695 to float
  %i.ee = sitofp i32 %.pre674.pre697 to float
  %i.ef = fsub float %i.ed, %i.ee
  %i.eg = fcmp ult float %i.ef, f0x4EFFFFFF
  br i1 %i.eg, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %._crit_edge694, %bb.aj, %bb.ai
  %i.eh = phi i32 [ %.pre674.pre697, %bb.ai ], [ %.pre674.pre, %._crit_edge694 ], [ %.pre674.pre697, %bb.ah ], [ %.pre674.pre697, %bb.aj ]
  %i.ei = phi i32 [ %.pre673.pre695, %bb.ai ], [ %.pre673.pre, %._crit_edge694 ], [ %.pre673.pre695, %bb.ah ], [ %.pre673.pre695, %bb.aj ]
  %.4 = phi i32 [ %.3, %bb.ai ], [ 0, %._crit_edge694 ], [ 0, %bb.ah ], [ 0, %bb.aj ]
  %i.ej = sub nsw i32 %i.dt, %i.dv                ; 2 uses
  %i.ek = add nsw i32 %i.ej, 1                    ; 3 uses
  store i32 %i.ek, ptr %i.f, align 4, !tbaa !18
  %i.el = sub nsw i32 %.pre.pre, %.pre672.pre     ; 2 uses
  %i.em = add nsw i32 %i.el, 1                    ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !18
  %i.eo = sub nsw i32 %i.ei, %i.eh                ; 2 uses
  %i.ep = add nsw i32 %i.eo, 1                    ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !18
  %i.er = or i32 %i.em, %i.ek
  %i.es = or i32 %i.er, %i.ep
  %i.et = icmp ugt i32 %i.es, 16777215
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eu = icmp sgt i32 %i.ej, -1
  br i1 %i.eu, label %.lr.ph.i, label %_ZL9sizeofinti.exit

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %.08.i = phi i32 [ %i.ev, %.lr.ph.i ], [ 0, %bb.al ] ; 2 uses
  %.067.i = phi i32 [ %i.ew, %.lr.ph.i ], [ 1, %bb.al ]
  %i.ev = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.ew = shl i32 %.067.i, 1                      ; 2 uses
  %i.ex = icmp sge i32 %i.ek, %i.ew
  %i.ey = icmp samesign ult i32 %.08.i, 31
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %i.ez, label %.lr.ph.i, label %_ZL9sizeofinti.exit, !llvm.loop !26

_ZL9sizeofinti.exit:                              ; preds = %.lr.ph.i, %bb.al
  %.0.lcssa.i = phi i32 [ 0, %bb.al ], [ %i.ev, %.lr.ph.i ] ; 2 uses
  %i.fa = icmp sgt i32 %i.el, -1
  br i1 %i.fa, label %.lr.ph.i465, label %_ZL9sizeofinti.exit468

.lr.ph.i465:                                      ; preds = %_ZL9sizeofinti.exit, %.lr.ph.i465
  %.08.i466 = phi i32 [ %i.fb, %.lr.ph.i465 ], [ 0, %_ZL9sizeofinti.exit ] ; 2 uses
  %.067.i467 = phi i32 [ %i.fc, %.lr.ph.i465 ], [ 1, %_ZL9sizeofinti.exit ]
  %i.fb = add nuw nsw i32 %.08.i466, 1            ; 2 uses
  %i.fc = shl i32 %.067.i467, 1                   ; 2 uses
  %i.fd = icmp sge i32 %i.em, %i.fc
  %i.fe = icmp samesign ult i32 %.08.i466, 31
  %i.ff = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %i.ff, label %.lr.ph.i465, label %_ZL9sizeofinti.exit468, !llvm.loop !26

_ZL9sizeofinti.exit468:                           ; preds = %.lr.ph.i465, %_ZL9sizeofinti.exit
  %.0.lcssa.i464 = phi i32 [ 0, %_ZL9sizeofinti.exit ], [ %i.fb, %.lr.ph.i465 ] ; 2 uses
  %i.fg = icmp sgt i32 %i.eo, -1
  br i1 %i.fg, label %.lr.ph.i470, label %_ZL9sizeofinti.exit473

.lr.ph.i470:                                      ; preds = %_ZL9sizeofinti.exit468, %.lr.ph.i470
  %.08.i471 = phi i32 [ %i.fh, %.lr.ph.i470 ], [ 0, %_ZL9sizeofinti.exit468 ] ; 2 uses
  %.067.i472 = phi i32 [ %i.fi, %.lr.ph.i470 ], [ 1, %_ZL9sizeofinti.exit468 ]
  %i.fh = add nuw nsw i32 %.08.i471, 1            ; 2 uses
  %i.fi = shl i32 %.067.i472, 1                   ; 2 uses
  %i.fj = icmp sge i32 %i.ep, %i.fi
  %i.fk = icmp samesign ult i32 %.08.i471, 31
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %i.fl, label %.lr.ph.i470, label %_ZL9sizeofinti.exit473, !llvm.loop !26

bb.am:                                            ; preds = %bb.ak
  %i.fm = call fastcc noundef i32 @_ZL10sizeofintsiPKj(ptr noundef %i.f)
  br label %_ZL9sizeofinti.exit473

_ZL9sizeofinti.exit473:                           ; preds = %.lr.ph.i470, %_ZL9sizeofinti.exit468, %bb.am
  %.sroa.12.0 = phi i32 [ 0, %bb.am ], [ 0, %_ZL9sizeofinti.exit468 ], [ %i.fh, %.lr.ph.i470 ] ; 3 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.am ], [ %.0.lcssa.i464, %_ZL9sizeofinti.exit468 ], [ %.0.lcssa.i464, %.lr.ph.i470 ] ; 3 uses
  %.sroa.0244.0 = phi i32 [ 0, %bb.am ], [ %.0.lcssa.i, %_ZL9sizeofinti.exit468 ], [ %.0.lcssa.i, %.lr.ph.i470 ] ; 3 uses
  %.0379 = phi i32 [ %i.fm, %bb.am ], [ 0, %_ZL9sizeofinti.exit468 ], [ 0, %.lr.ph.i470 ] ; 2 uses
  %i.fn = icmp sgt i32 %.1419, 8
  br i1 %i.fn, label %bb.an, label %.critedge

bb.an:                                            ; preds = %_ZL9sizeofinti.exit473
  %i.fo = icmp samesign ugt i32 %.1419, 10
  br i1 %i.fo, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.fp = icmp samesign ugt i32 %.1419, 12
  br i1 %i.fp, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %i.fq = icmp samesign ugt i32 %.1419, 16
  br i1 %i.fq, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.fr = icmp samesign ugt i32 %.1419, 20
  br i1 %i.fr, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.fs = icmp samesign ugt i32 %.1419, 25
  br i1 %i.fs, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.ft = icmp samesign ugt i32 %.1419, 32
  br i1 %i.ft, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.fu = icmp samesign ugt i32 %.1419, 40
  br i1 %i.fu, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.fv = icmp samesign ugt i32 %.1419, 50
  br i1 %i.fv, label %bb.av, label %.critedge

bb.av:                                            ; preds = %bb.au
  %i.fw = icmp samesign ugt i32 %.1419, 64
  br i1 %i.fw, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %bb.av
  %i.fx = icmp samesign ugt i32 %.1419, 80
  br i1 %i.fx, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.fy = icmp samesign ugt i32 %.1419, 101
  br i1 %i.fy, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.fz = icmp samesign ugt i32 %.1419, 128
  br i1 %i.fz, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  %i.ga = icmp samesign ugt i32 %.1419, 161
  br i1 %i.ga, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %bb.az
  %i.gb = icmp samesign ugt i32 %.1419, 203
  br i1 %i.gb, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %i.gc = icmp samesign ugt i32 %.1419, 256
  br i1 %i.gc, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %bb.bb
  %i.gd = icmp samesign ugt i32 %.1419, 322
  br i1 %i.gd, label %bb.bd, label %.critedge

bb.bd:                                            ; preds = %bb.bc
  %i.ge = icmp samesign ugt i32 %.1419, 406
  br i1 %i.ge, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %i.gf = icmp samesign ugt i32 %.1419, 512
  br i1 %i.gf, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %bb.be
  %i.gg = icmp samesign ugt i32 %.1419, 645
  br i1 %i.gg, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %bb.bf
  %i.gh = icmp samesign ugt i32 %.1419, 812
  br i1 %i.gh, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %bb.bg
  %i.gi = icmp samesign ugt i32 %.1419, 1024
  br i1 %i.gi, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  %i.gj = icmp samesign ugt i32 %.1419, 1290
  br i1 %i.gj, label %bb.bj, label %.critedge

bb.bj:                                            ; preds = %bb.bi
  %i.gk = icmp samesign ugt i32 %.1419, 1625
  br i1 %i.gk, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %bb.bj
  %i.gl = icmp samesign ugt i32 %.1419, 2048
  br i1 %i.gl, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk
  %i.gm = icmp samesign ugt i32 %.1419, 2580
  br i1 %i.gm, label %bb.bm, label %.critedge

bb.bm:                                            ; preds = %bb.bl
  %i.gn = icmp samesign ugt i32 %.1419, 3250
  br i1 %i.gn, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %bb.bm
  %i.go = icmp samesign ugt i32 %.1419, 4096
  br i1 %i.go, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %bb.bn
  %i.gp = icmp samesign ugt i32 %.1419, 5060
  br i1 %i.gp, label %bb.bp, label %.critedge

bb.bp:                                            ; preds = %bb.bo
  %i.gq = icmp samesign ugt i32 %.1419, 6501
  br i1 %i.gq, label %bb.bq, label %.critedge

bb.bq:                                            ; preds = %bb.bp
  %i.gr = icmp samesign ugt i32 %.1419, 8192
  br i1 %i.gr, label %bb.br, label %.critedge

bb.br:                                            ; preds = %bb.bq
  %i.gs = icmp samesign ugt i32 %.1419, 10321
  br i1 %i.gs, label %bb.bs, label %.critedge

bb.bs:                                            ; preds = %bb.br
  %i.gt = icmp samesign ugt i32 %.1419, 13003
  br i1 %i.gt, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %bb.bs
  %i.gu = icmp samesign ugt i32 %.1419, 16384
  br i1 %i.gu, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.gv = icmp samesign ugt i32 %.1419, 20642
  br i1 %i.gv, label %bb.bv, label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.gw = icmp samesign ugt i32 %.1419, 26007
  br i1 %i.gw, label %bb.bw, label %.critedge
end_hunk_0
begin_hunk_1_@_Z11xdr3dfcoordP3XDRPfPiS1_i:bb.a
  call fastcc void @_ZL8sendintsP10DataBufferiiPjS1_(ptr noundef %5, i32 noundef %i.tg, ptr noundef %i.g, ptr noundef %i.th)
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 3 ; 2 uses
  %i.ti = icmp samesign ult i64 %indvars.iv.next669, %i.tf
  br i1 %i.ti, label %.lr.ph619, label %._crit_edge620, !llvm.loop !33

._crit_edge620:                                   ; preds = %.lr.ph619, %_ZL8sendbitsP10DataBufferii.exit505
  br i1 %i.ra, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %._crit_edge620
  %i.tj = load i32, ptr %i.e, align 4, !tbaa !18
  %i.tk = add nsw i32 %i.tj, %.1396.lcssa         ; 2 uses
  store i32 %i.tk, ptr %i.e, align 4, !tbaa !18
  %i.tl = icmp slt i32 %.1396.lcssa, 0
  %i.tm = sext i32 %i.tk to i64
  %i.tn = getelementptr [4 x i8], ptr @_ZL9magicints, i64 %i.tm ; 3 uses
  br i1 %i.tl, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.to = getelementptr i8, ptr %i.tn, i64 -4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !18
  %i.tq = sdiv i32 %i.tp, 2
  %.pre687 = load i32, ptr %i.tn, align 4, !tbaa !18
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.tr = load i32, ptr %i.tn, align 4, !tbaa !18 ; 2 uses
  %i.ts = sdiv i32 %i.tr, 2
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.tt = phi i32 [ %i.tr, %bb.er ], [ %.pre687, %bb.eq ] ; 3 uses
  %.1408 = phi i32 [ %i.ts, %bb.er ], [ %.0402622, %bb.eq ]
  %.1403 = phi i32 [ %.0407621, %bb.er ], [ %i.tq, %bb.eq ]
  store i32 %i.tt, ptr %i.in, align 4, !tbaa !18
  store i32 %i.tt, ptr %i.io, align 4, !tbaa !18
  store i32 %i.tt, ptr %i.g, align 4, !tbaa !18
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %._crit_edge620
  %.2409 = phi i32 [ %.1408, %bb.es ], [ %.0407621, %._crit_edge620 ]
  %.2404 = phi i32 [ %.1403, %bb.es ], [ %.0402622, %._crit_edge620 ]
  %i.tu = load i32, ptr %i.h, align 4, !tbaa !18  ; 2 uses
  %i.tv = load i32, ptr %2, align 4, !tbaa !18    ; 2 uses
  %i.tw = icmp slt i32 %i.tu, %i.tv
  br i1 %i.tw, label %bb.db, label %._crit_edge629, !llvm.loop !34

._crit_edge629:                                   ; preds = %bb.et, %bb.da
  %i.tx = load i32, ptr %i.ar, align 8, !tbaa !27
  %.not = icmp eq i32 %i.tx, 0
  br i1 %.not, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %._crit_edge629
  %i.ty = load i64, ptr %5, align 8, !tbaa !29
  %i.tz = add i64 %i.ty, 1
  store i64 %i.tz, ptr %5, align 8, !tbaa !29
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %._crit_edge629
  %i.ua = icmp eq i32 %4, 2023
  br i1 %i.ua, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ub = call noundef i32 @_Z9xdr_int64P3XDRPl(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.uc = load i64, ptr %5, align 8, !tbaa !29
  %i.ud = trunc i64 %i.uc to i32
  store i32 %i.ud, ptr %i.h, align 4, !tbaa !18
  %i.ue = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.0375 = phi i32 [ %i.ub, %bb.ew ], [ %i.ue, %bb.ex ]
  %i.uf = icmp eq i32 %.0375, 0
  br i1 %i.uf, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  br i1 %i.ad, label %bb.hf, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @free(ptr noundef %.0422) #16
  %i.ug = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !19
  call void @free(ptr noundef %i.uh) #16
  br label %bb.hf

bb.fb:                                            ; preds = %bb.ey
  %i.ui = load i64, ptr %5, align 8, !tbaa !29
  %i.uj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %bb.fb
  %.0570 = phi i64 [ %i.ui, %bb.fb ], [ %i.up, %bb.fc ] ; 3 uses
  %.0 = phi i64 [ 0, %bb.fb ], [ %i.uo, %bb.fc ]  ; 2 uses
  %.sroa.speculated549 = call i64 @llvm.umin.i64(i64 %.0570, i64 2147483644) ; 3 uses
  %i.uk = trunc nuw nsw i64 %.sroa.speculated549 to i32
  %i.ul = load ptr, ptr %i.uj, align 8, !tbaa !19
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.0
  %i.un = call noundef i32 @_Z10xdr_opaqueP3XDRPcj(ptr noundef nonnull %0, ptr noundef %i.um, i32 noundef %i.uk) ; 2 uses
  %i.uo = add i64 %.0, %.sroa.speculated549
  %i.up = sub nuw i64 %.0570, %.sroa.speculated549
  %i.uq = icmp ne i32 %i.un, 0
  %i.ur = icmp ugt i64 %.0570, 2147483644
  %i.us = and i1 %i.ur, %i.uq
  br i1 %i.us, label %bb.fc, label %bb.fd, !llvm.loop !35

bb.fd:                                            ; preds = %bb.fc
  %i.ut = mul nuw nsw i32 %i.un, %.4              ; 2 uses
  br i1 %i.ad, label %bb.hf, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef %.0422) #16
  %i.uu = load ptr, ptr %i.uj, align 8, !tbaa !19
  call void @free(ptr noundef %i.uu) #16
  br label %bb.hf

bb.ff:                                            ; preds = %bb.e
  %i.uv = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.hf, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ux = load i32, ptr %2, align 4, !tbaa !18    ; 4 uses
  %.not453 = icmp eq i32 %i.ux, 0
  br i1 %.not453, label %thread-pre-split, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.uy = load i32, ptr %i.j, align 4, !tbaa !18  ; 2 uses
  %.not454 = icmp eq i32 %i.uy, %i.ux
  br i1 %.not454, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.uz = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.va = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.uz, ptr noundef nonnull @.str.9, i32 noundef %i.ux, i32 noundef %i.uy) #17 ; 0 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.fg, %bb.fi
  %.pr = load i32, ptr %i.j, align 4, !tbaa !18
  br label %bb.fj

bb.fj:                                            ; preds = %thread-pre-split, %bb.fh
  %i.vb = phi i32 [ %.pr, %thread-pre-split ], [ %i.ux, %bb.fh ] ; 3 uses
  store i32 %i.vb, ptr %2, align 4, !tbaa !18
  %i.vc = sext i32 %i.vb to i64                   ; 2 uses
  %i.vd = mul nsw i64 %i.vc, 3                    ; 3 uses
  %i.ve = icmp slt i32 %i.vb, 10
  br i1 %i.ve, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  store float -1.000000e+00, ptr %3, align 4, !tbaa !22
  %i.vf = trunc i64 %i.vd to i32
  %i.vg = call noundef i32 @_Z10xdr_vectorP3XDRPcjjPFiS0_PvzE(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.vf, i32 noundef 4, ptr noundef nonnull @_Z9xdr_floatP3XDRPf)
  br label %bb.hf

bb.fl:                                            ; preds = %bb.fj
  %i.vh = call noundef i32 @_Z9xdr_floatP3XDRPf(ptr noundef nonnull %0, ptr noundef %3)
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.hf, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.vj = icmp ult i64 %i.vd, 49                  ; 6 uses
  br i1 %i.vj, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.vk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.vk, align 8, !tbaa !19
  br label %bb.fq

bb.fo:                                            ; preds = %bb.fm
  %i.vl = uitofp i64 %i.vd to double
  %i.vm = fmul nnan double %i.vl, 1.200000e+00
  %i.vn = fptoui double %i.vm to i64
  %i.vo = mul nuw nsw i64 %i.vc, 12
  %i.vp = call noalias ptr @malloc(i64 noundef %i.vo) #19 ; 2 uses
  %i.vq = shl i64 %i.vn, 2
  %i.vr = call noalias ptr @malloc(i64 noundef %i.vq) #19 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.vr, ptr %i.vs, align 8, !tbaa !19
  %i.vt = icmp eq ptr %i.vp, null
  %i.vu = icmp eq ptr %i.vr, null
  %or.cond15 = or i1 %i.vt, %i.vu
  br i1 %or.cond15, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.vv = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.vw = call i64 @fwrite(ptr nonnull @.str.8, i64 14, i64 1, ptr %i.vv) #20 ; 0 uses
  call void @exit(i32 noundef 1) #18
  unreachable

bb.fq:                                            ; preds = %bb.fo, %bb.fn
  %.1423 = phi ptr [ %i.a, %bb.fn ], [ %i.vp, %bb.fo ] ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.vz = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.wc = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.wb)
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.wf = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.we)
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.wh = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %i.wi = icmp eq i32 %i.wh, 0
  br i1 %i.wi, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.wj = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.wk = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.wj)
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.wm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.wn = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.wm)
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq
  br i1 %i.vj, label %bb.hf, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @free(ptr noundef nonnull %.1423) #16
  %i.wp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !19
  call void @free(ptr noundef %i.wq) #16
  br label %bb.hf

bb.fy:                                            ; preds = %bb.fv
  %6 = load i32, ptr %i.d, align 4, !tbaa !18
  %7 = load i32, ptr %i.c, align 8, !tbaa !18
  %8 = sub nsw i32 %6, %7                         ; 2 uses
  %9 = add nsw i32 %8, 1                          ; 3 uses
  store i32 %9, ptr %i.f, align 4, !tbaa !18
  %i.wr = load i32, ptr %i.wj, align 4, !tbaa !18
  %i.ws = load i32, ptr %i.wb, align 4, !tbaa !18
  %i.wt = sub nsw i32 %i.wr, %i.ws                ; 2 uses
  %i.wu = add nsw i32 %i.wt, 1                    ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !18
  %10 = load i32, ptr %i.wm, align 4, !tbaa !18
  %11 = load i32, ptr %i.we, align 8, !tbaa !18
  %12 = sub nsw i32 %10, %11                      ; 2 uses
  %13 = add nsw i32 %12, 1                        ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %13, ptr %14, align 4, !tbaa !18
  %i.ww = or i32 %i.wu, %9
  %i.wx = or i32 %i.ww, %13
  %i.wy = icmp ugt i32 %i.wx, 16777215
  br i1 %i.wy, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.wz = icmp sgt i32 %8, -1
  br i1 %i.wz, label %.lr.ph.i515, label %_ZL9sizeofinti.exit518

.lr.ph.i515:                                      ; preds = %bb.fz, %.lr.ph.i515
  %.08.i516 = phi i32 [ %i.xa, %.lr.ph.i515 ], [ 0, %bb.fz ] ; 2 uses
  %.067.i517 = phi i32 [ %i.xb, %.lr.ph.i515 ], [ 1, %bb.fz ]
  %i.xa = add nuw nsw i32 %.08.i516, 1            ; 2 uses
  %i.xb = shl i32 %.067.i517, 1                   ; 2 uses
  %i.xc = icmp sge i32 %9, %i.xb
  %i.xd = icmp samesign ult i32 %.08.i516, 31
  %i.xe = select i1 %i.xc, i1 %i.xd, i1 false
  br i1 %i.xe, label %.lr.ph.i515, label %_ZL9sizeofinti.exit518, !llvm.loop !26

_ZL9sizeofinti.exit518:                           ; preds = %.lr.ph.i515, %bb.fz
  %.0.lcssa.i514 = phi i32 [ 0, %bb.fz ], [ %i.xa, %.lr.ph.i515 ] ; 2 uses
  %i.xf = icmp sgt i32 %i.wt, -1
  br i1 %i.xf, label %.lr.ph.i521, label %_ZL9sizeofinti.exit524

.lr.ph.i521:                                      ; preds = %_ZL9sizeofinti.exit518, %.lr.ph.i521
  %.08.i522 = phi i32 [ %i.xg, %.lr.ph.i521 ], [ 0, %_ZL9sizeofinti.exit518 ] ; 2 uses
  %.067.i523 = phi i32 [ %i.xh, %.lr.ph.i521 ], [ 1, %_ZL9sizeofinti.exit518 ]
  %i.xg = add nuw nsw i32 %.08.i522, 1            ; 2 uses
  %i.xh = shl i32 %.067.i523, 1                   ; 2 uses
  %i.xi = icmp sge i32 %i.wu, %i.xh
  %i.xj = icmp samesign ult i32 %.08.i522, 31
  %i.xk = select i1 %i.xi, i1 %i.xj, i1 false
  br i1 %i.xk, label %.lr.ph.i521, label %_ZL9sizeofinti.exit524, !llvm.loop !26

_ZL9sizeofinti.exit524:                           ; preds = %.lr.ph.i521, %_ZL9sizeofinti.exit518
  %.0.lcssa.i520 = phi i32 [ 0, %_ZL9sizeofinti.exit518 ], [ %i.xg, %.lr.ph.i521 ] ; 2 uses
  %i.xl = icmp sgt i32 %12, -1
  br i1 %i.xl, label %.lr.ph.i527, label %_ZL9sizeofinti.exit530

.lr.ph.i527:                                      ; preds = %_ZL9sizeofinti.exit524, %.lr.ph.i527
  %.08.i528 = phi i32 [ %i.xm, %.lr.ph.i527 ], [ 0, %_ZL9sizeofinti.exit524 ] ; 2 uses
  %.067.i529 = phi i32 [ %i.xn, %.lr.ph.i527 ], [ 1, %_ZL9sizeofinti.exit524 ]
  %i.xm = add nuw nsw i32 %.08.i528, 1            ; 2 uses
  %i.xn = shl i32 %.067.i529, 1                   ; 2 uses
  %i.xo = icmp sge i32 %13, %i.xn
  %i.xp = icmp samesign ult i32 %.08.i528, 31
  %i.xq = select i1 %i.xo, i1 %i.xp, i1 false
  br i1 %i.xq, label %.lr.ph.i527, label %_ZL9sizeofinti.exit530, !llvm.loop !26

bb.ga:                                            ; preds = %bb.fy
  %i.xr = call fastcc noundef i32 @_ZL10sizeofintsiPKj(ptr noundef %i.f)
  br label %_ZL9sizeofinti.exit530

_ZL9sizeofinti.exit530:                           ; preds = %.lr.ph.i527, %_ZL9sizeofinti.exit524, %bb.ga
  %.sroa.12.1 = phi i32 [ 0, %bb.ga ], [ 0, %_ZL9sizeofinti.exit524 ], [ %i.xm, %.lr.ph.i527 ]
  %.sroa.7.1 = phi i32 [ 0, %bb.ga ], [ %.0.lcssa.i520, %_ZL9sizeofinti.exit524 ], [ %.0.lcssa.i520, %.lr.ph.i527 ]
  %.sroa.0244.1 = phi i32 [ 0, %bb.ga ], [ %.0.lcssa.i514, %_ZL9sizeofinti.exit524 ], [ %.0.lcssa.i514, %.lr.ph.i527 ]
  %.1380 = phi i32 [ %i.xr, %bb.ga ], [ 0, %_ZL9sizeofinti.exit524 ], [ 0, %.lr.ph.i527 ] ; 2 uses
  %i.xs = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  %i.xt = icmp eq i32 %i.xs, 0
  br i1 %i.xt, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %_ZL9sizeofinti.exit530
  br i1 %i.vj, label %bb.hf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @free(ptr noundef nonnull %.1423) #16
  %i.xu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !19
  call void @free(ptr noundef %i.xv) #16
  br label %bb.hf

bb.gd:                                            ; preds = %_ZL9sizeofinti.exit530
  %i.xw = load i32, ptr %i.e, align 4, !tbaa !18  ; 2 uses
  %i.xx = call i32 @llvm.smax.i32(i32 %i.xw, i32 10)
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr @_ZL9magicints, i64 %i.xy
  %i.ya = getelementptr i8, ptr %i.xz, i64 -4
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !18
  %i.yc = sdiv i32 %i.yb, 2
  %i.yd = sext i32 %i.xw to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr @_ZL9magicints, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !18 ; 4 uses
  %i.yg = sdiv i32 %i.yf, 2
  %i.yh = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i32 %i.yf, ptr %i.yh, align 4, !tbaa !18
  %i.yi = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %i.yf, ptr %i.yi, align 4, !tbaa !18
  store i32 %i.yf, ptr %i.g, align 4, !tbaa !18
  %i.yj = icmp eq i32 %4, 2023
  br i1 %i.yj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.yk = call noundef i32 @_Z9xdr_int64P3XDRPl(ptr noundef nonnull %0, ptr noundef nonnull %5)
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  %i.yl = call noundef i32 @_Z7xdr_intP3XDRPi(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  %i.ym = load i32, ptr %i.h, align 4, !tbaa !18
  %i.yn = sext i32 %i.ym to i64
  store i64 %i.yn, ptr %5, align 8, !tbaa !29
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.1376 = phi i32 [ %i.yk, %bb.ge ], [ %i.yl, %bb.gf ]
  %i.yo = icmp eq i32 %.1376, 0
  br i1 %i.yo, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.vj, label %bb.hf, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @free(ptr noundef nonnull %.1423) #16
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !19
  call void @free(ptr noundef %i.yq) #16
  br label %bb.hf

bb.gj:                                            ; preds = %bb.gg
  %i.yr = load i64, ptr %5, align 8, !tbaa !29
  %i.ys = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.1571 = phi i64 [ %i.yr, %bb.gj ], [ %i.yy, %bb.gk ] ; 3 uses
  %.1 = phi i64 [ 0, %bb.gj ], [ %i.yx, %bb.gk ]  ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.1571, i64 2147483644) ; 3 uses
  %i.yt = trunc nuw nsw i64 %.sroa.speculated to i32
  %i.yu = load ptr, ptr %i.ys, align 8, !tbaa !19
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.1
  %i.yw = call noundef i32 @_Z10xdr_opaqueP3XDRPcj(ptr noundef nonnull %0, ptr noundef %i.yv, i32 noundef %i.yt) ; 2 uses
  %i.yx = add i64 %.1, %.sroa.speculated
  %i.yy = sub nuw i64 %.1571, %.sroa.speculated
  %i.yz = icmp ne i32 %i.yw, 0
  %i.za = icmp ugt i64 %.1571, 2147483644
  %i.zb = and i1 %i.za, %i.yz
  br i1 %i.zb, label %bb.gk, label %bb.gl, !llvm.loop !36

bb.gl:                                            ; preds = %bb.gk
  %i.zc = icmp eq i32 %i.yw, 0
  br i1 %i.zc, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  br i1 %i.vj, label %bb.hf, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @free(ptr noundef nonnull %.1423) #16
  %i.zd = load ptr, ptr %i.ys, align 8, !tbaa !19
  call void @free(ptr noundef %i.zd) #16
  br label %bb.hf

bb.go:                                            ; preds = %bb.gl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ze = load float, ptr %3, align 4, !tbaa !22
  %i.zf = fdiv float 1.000000e+00, %i.ze          ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !18
  %i.zg = load i32, ptr %i.j, align 4, !tbaa !18
  %i.zh = icmp sgt i32 %i.zg, 0
  br i1 %i.zh, label %.lr.ph640, label %._crit_edge641

.lr.ph640:                                        ; preds = %bb.go
  %i.zi = icmp eq i32 %.1380, 0
  %i.zj = insertelement <4 x float> poison, float %i.zf, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.gp

bb.gp:                                            ; preds = %.lr.ph640, %bb.hd
  %i.zn = phi i32 [ 0, %.lr.ph640 ], [ %i.adg, %bb.hd ] ; 2 uses
  %.1386638 = phi ptr [ %1, %.lr.ph640 ], [ %.4389, %bb.hd ] ; 6 uses
  %.1393637 = phi i32 [ 0, %.lr.ph640 ], [ %.2394, %bb.hd ]
  %.3405636 = phi i32 [ %i.yc, %.lr.ph640 ], [ %.4406, %bb.hd ] ; 3 uses
  %.3410635 = phi i32 [ %i.yg, %.lr.ph640 ], [ %.4411, %bb.hd ] ; 5 uses
  %i.zo = sext i32 %i.zn to i64
  %.idx456 = mul nsw i64 %i.zo, 12
  %i.zp = getelementptr inbounds nuw i8, ptr %.1423, i64 %.idx456 ; 9 uses
  br i1 %i.zi, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.zr = call fastcc noundef i32 @_ZL11receivebitsP10DataBufferi(ptr noundef %5, i32 noundef %.sroa.0244.1) ; 2 uses
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !18
  %i.zs = call fastcc noundef i32 @_ZL11receivebitsP10DataBufferi(ptr noundef %5, i32 noundef %.sroa.7.1) ; 2 uses
  store i32 %i.zs, ptr %i.zq, align 4, !tbaa !18
  %i.zt = call fastcc noundef i32 @_ZL11receivebitsP10DataBufferi(ptr noundef %5, i32 noundef %.sroa.12.1)
  %i.zu = insertelement <2 x i32> poison, i32 %i.zr, i64 0
  %i.zv = insertelement <2 x i32> %i.zu, i32 %i.zs, i64 1
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  call fastcc void @_ZL11receiveintsP10DataBufferiiPKjPi(ptr noundef %5, i32 noundef %.1380, ptr noundef %i.f, ptr noundef %i.zp)
  %.pre688 = load i32, ptr %i.h, align 4, !tbaa !18
  %i.zw = load <2 x i32>, ptr %i.zp, align 4, !tbaa !18
  %.phi.trans.insert692 = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %.pre693 = load i32, ptr %.phi.trans.insert692, align 4, !tbaa !18
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.zx = phi i32 [ %.pre693, %bb.gr ], [ %i.zt, %bb.gq ]
  %i.zy = phi i32 [ %.pre688, %bb.gr ], [ %i.zn, %bb.gq ]
  %i.zz = phi <2 x i32> [ %i.zw, %bb.gr ], [ %i.zv, %bb.gq ]
  %i.aaa = add nsw i32 %i.zy, 1                   ; 2 uses
  store i32 %i.aaa, ptr %i.h, align 4, !tbaa !18
  %i.aab = load <2 x i32>, ptr %i.c, align 8, !tbaa !18
  %i.aac = add nsw <2 x i32> %i.zz, %i.aab        ; 6 uses
  store <2 x i32> %i.aac, ptr %i.zp, align 4, !tbaa !18
  %i.aad = load i32, ptr %i.we, align 8, !tbaa !18
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.aaf = add nsw i32 %i.zx, %i.aad              ; 5 uses
  store i32 %i.aaf, ptr %i.aae, align 4, !tbaa !18
  %i.aag = load i32, ptr %i.vx, align 8, !tbaa !27 ; 3 uses
  %i.aah = load i32, ptr %i.vy, align 4, !tbaa !28 ; 2 uses
  %i.aai = icmp slt i32 %i.aag, 1
  br i1 %i.aai, label %bb.gt, label %_ZL11receivebitsP10DataBufferi.exit

bb.gt:                                            ; preds = %bb.gs
  %i.aaj = add nsw i32 %i.aag, 8
  %i.aak = shl i32 %i.aah, 8
  %i.aal = load ptr, ptr %i.ys, align 8, !tbaa !19
  %i.aam = load i64, ptr %5, align 8, !tbaa !29   ; 2 uses
  %i.aan = add i64 %i.aam, 1
  store i64 %i.aan, ptr %5, align 8, !tbaa !29
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aam
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !30
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = or disjoint i32 %i.aak, %i.aaq
  br label %_ZL11receivebitsP10DataBufferi.exit

_ZL11receivebitsP10DataBufferi.exit:              ; preds = %bb.gs, %bb.gt
  %.031.i = phi i32 [ %i.aaj, %bb.gt ], [ %i.aag, %bb.gs ] ; 3 uses
  %.1.i535 = phi i32 [ %i.aar, %bb.gt ], [ %i.aah, %bb.gs ] ; 4 uses
  %i.aas = add nsw i32 %.031.i, -1                ; 3 uses
  store i32 %i.aas, ptr %i.vx, align 8, !tbaa !27
  store i32 %.1.i535, ptr %i.vy, align 4, !tbaa !28
  %i.aat = shl nuw i32 1, %i.aas
  %i.aau = and i32 %i.aat, %.1.i535
  %.not572 = icmp eq i32 %i.aau, 0
  br i1 %.not572, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %_ZL11receivebitsP10DataBufferi.exit
  %i.aav = icmp slt i32 %.031.i, 6
  br i1 %i.aav, label %bb.gv, label %_ZL11receivebitsP10DataBufferi.exit540

bb.gv:                                            ; preds = %bb.gu
end_hunk_1
