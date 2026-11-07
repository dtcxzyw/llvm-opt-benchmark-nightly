Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/putcolu?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"writing to compressed image is not supported\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Null value string for ASCII table column is not defined (FTPCLU).\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Null value for integer table column is not defined (FTPCLU).\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Cannot write null value to column %d which has format %s\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Error writing %.0f thru %.0f of null values (ffpclu).\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ffppru(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @fits_is_compressed_image(ptr noundef %0, ptr noundef %4) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str) #10
  store i32 413, ptr %4, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @llvm.smax.i64(i64 %1, i64 1)
  %i.c = tail call i32 @ffpclu(ptr noundef %0, i32 noundef 2, i64 noundef %i.b, i64 noundef %2, i64 noundef %3, ptr noundef %4) ; 0 uses
  %i.d = load i32, ptr %4, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 413, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @fits_is_compressed_image(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ffpmsg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpclu(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 7 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca double, align 8                   ; 3 uses
  %i.o = alloca double, align 8                   ; 3 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca [20 x i8], align 16               ; 4 uses
  %i.s = alloca [81 x i8], align 16               ; 6 uses
  %i.t = alloca [20 x i8], align 16               ; 6 uses
  %i.u = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  store i8 0, ptr %i.q, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  %i.v = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = call i32 @ffgtcl(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #10 ; 0 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %spec.select = select i1 %i.z, i32 0, i32 2
  %i.aa = add i32 %i.y, -83
  %i.ab = icmp ult i32 %i.aa, -165                ; 2 uses
  %i.ac = shl i64 %3, 1
  %i.ad = add i64 %i.ac, -1
  %.0105 = select i1 %i.ab, i64 %i.ad, i64 %3
  %i.ae = zext i1 %i.ab to i64
  %.0104 = shl nsw i64 %4, %i.ae                  ; 2 uses
  %i.af = call i32 @ffgcprll(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %.0105, i64 noundef %.0104, i32 noundef %spec.select, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #10
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %6 = icmp eq i32 %i.ai, 16
  br i1 %6, label %bb.e, label %7

bb.e:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.t, align 16, !tbaa !10
  %i.ak = icmp eq i8 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ffpmsg(ptr noundef nonnull @.str.1) #10
  store i32 314, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.f, align 8, !tbaa !12
  %i.am = call i64 @llvm.smax.i64(i64 %i.al, i64 20) ; 2 uses
  %i.an = call noalias ptr @malloc(i64 noundef %i.am) #11 ; 4 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 113, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i8 32, i64 %i.am, i1 false)
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #12
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !9
  %i.aq = icmp eq i32 %i.ap, 2
  %i.ar = zext i1 %i.aq to i64
  %spec.select119 = add i64 %i.ao, %i.ar
  %sext = shl i64 %spec.select119, 32
  %i.as = ashr exact i64 %sext, 32
  %i.at = call ptr @strncpy(ptr noundef nonnull %i.an, ptr noundef nonnull %i.t, i64 noundef %i.as) #10 ; 0 uses
  br label %bb.q

7:                                                ; preds = %bb.d
  %8 = add i32 %i.ai, -11                         ; 2 uses
  %9 = call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 31)
  switch i32 %9, label %bb.q [
    i32 35, label %bb.j
    i32 15, label %bb.j
    i32 5, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %7, %7, %7, %7
  %i.au = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.av = icmp eq i64 %i.au, 1234554321
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ffpmsg(ptr noundef nonnull @.str.2) #10
  store i32 314, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  switch i32 %i.ai, label %bb.p [
    i32 11, label %bb.m
    i32 21, label %bb.n
    i32 41, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = trunc i64 %i.au to i8
  store i8 %i.aw, ptr %i.p, align 1, !tbaa !10
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ax = trunc i64 %i.au to i16
  store i16 %i.ax, ptr %i.d, align 2, !tbaa !16
  call void @ffswap2(ptr noundef nonnull %i.d, i64 noundef 1) #10
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ay = trunc i64 %i.au to i32
  store i32 %i.ay, ptr %i.e, align 4, !tbaa !9
  call void @ffswap4(ptr noundef nonnull %i.e, i64 noundef 1) #10
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  store i64 %i.au, ptr %i.i, align 8, !tbaa !14
  call void @ffswap8(ptr noundef nonnull %i.i, i64 noundef 1) #10
  br label %bb.q

bb.q:                                             ; preds = %7, %bb.n, %bb.p, %bb.o, %bb.m, %bb.i
  %.0 = phi ptr [ %i.an, %bb.i ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %7 ] ; 5 uses
  %.not115148 = icmp eq i64 %4, 0
  br i1 %.not115148, label %._crit_edge, label %.lr.ph152.outer

.lr.ph152.outer:                                  ; preds = %bb.q, %bb.y
  %.099151.ph = phi i64 [ %i.ct, %bb.y ], [ %.0104, %bb.q ]
  %.0100150.ph = phi i64 [ %i.cu, %bb.y ], [ 0, %bb.q ]
  %.0102149.ph = phi i64 [ %i.cz, %bb.y ], [ 0, %bb.q ] ; 2 uses
  br label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.outer, %bb.x
  %.099151 = phi i64 [ %i.ct, %bb.x ], [ %.099151.ph, %.lr.ph152.outer ] ; 2 uses
  %.0100150 = phi i64 [ %i.cu, %bb.x ], [ %.0100150.ph, %.lr.ph152.outer ] ; 3 uses
  %i.az = load i64, ptr %i.j, align 8, !tbaa !14
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = call i64 @llvm.smin.i64(i64 %.099151, i64 %i.bb) ; 18 uses
  %i.bd = load i64, ptr %i.k, align 8, !tbaa !14
  %i.be = load i64, ptr %i.m, align 8, !tbaa !14
  %i.bf = mul nsw i64 %i.be, %.0102149.ph
  %i.bg = add nsw i64 %i.bf, %i.bd
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !12
  %i.bi = mul nsw i64 %i.bh, %i.ba
  %i.bj = add nsw i64 %i.bg, %i.bi
  %i.bk = call i32 @ffmbyt(ptr noundef %0, i64 noundef %i.bj, i32 noundef 1, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !9
  switch i32 %i.bl, label %bb.s [
    i32 11, label %.preheader
    i32 21, label %.preheader120
    i32 41, label %.preheader122
    i32 81, label %.preheader124
    i32 42, label %.preheader126
    i32 82, label %.preheader128
    i32 14, label %.preheader130
    i32 16, label %bb.r
  ]

.preheader130:                                    ; preds = %.lr.ph152
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.preheader128:                                    ; preds = %.lr.ph152
  %i.bn = icmp sgt i64 %i.bc, 0
  br i1 %i.bn, label %.lr.ph137, label %.loopexit

.preheader126:                                    ; preds = %.lr.ph152
  %i.bo = icmp sgt i64 %i.bc, 0
  br i1 %i.bo, label %.lr.ph139, label %.loopexit

.preheader124:                                    ; preds = %.lr.ph152
  %i.bp = icmp sgt i64 %i.bc, 0
  br i1 %i.bp, label %.lr.ph141, label %.loopexit

.preheader122:                                    ; preds = %.lr.ph152
  %i.bq = icmp sgt i64 %i.bc, 0
  br i1 %i.bq, label %.lr.ph143, label %.loopexit

.preheader120:                                    ; preds = %.lr.ph152
  %i.br = icmp sgt i64 %i.bc, 0
  br i1 %i.br, label %.lr.ph145, label %.loopexit

.preheader:                                       ; preds = %.lr.ph152
  %i.bs = icmp sgt i64 %i.bc, 0
  br i1 %i.bs, label %.lr.ph147, label %.loopexit

.lr.ph147:                                        ; preds = %.preheader, %.lr.ph147
  %.0106146 = phi i64 [ %i.bu, %.lr.ph147 ], [ 0, %.preheader ]
  %i.bt = call i32 @ffpbyt(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.p, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bu = add nuw nsw i64 %.0106146, 1            ; 2 uses
  %exitcond168.not = icmp eq i64 %i.bu, %i.bc
  br i1 %exitcond168.not, label %.loopexit, label %.lr.ph147, !llvm.loop !18

.lr.ph145:                                        ; preds = %.preheader120, %.lr.ph145
  %.1107144 = phi i64 [ %i.bw, %.lr.ph145 ], [ 0, %.preheader120 ]
  %i.bv = call i32 @ffpbyt(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bw = add nuw nsw i64 %.1107144, 1            ; 2 uses
  %exitcond167.not = icmp eq i64 %i.bw, %i.bc
  br i1 %exitcond167.not, label %.loopexit, label %.lr.ph145, !llvm.loop !19

.lr.ph143:                                        ; preds = %.preheader122, %.lr.ph143
  %.2142 = phi i64 [ %i.by, %.lr.ph143 ], [ 0, %.preheader122 ]
  %i.bx = call i32 @ffpbyt(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %i.e, ptr noundef nonnull %5) #10 ; 0 uses
  %i.by = add nuw nsw i64 %.2142, 1               ; 2 uses
  %exitcond166.not = icmp eq i64 %i.by, %i.bc
  br i1 %exitcond166.not, label %.loopexit, label %.lr.ph143, !llvm.loop !20

.lr.ph141:                                        ; preds = %.preheader124, %.lr.ph141
  %.3140 = phi i64 [ %i.ca, %.lr.ph141 ], [ 0, %.preheader124 ]
  %i.bz = call i32 @ffpbyt(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.i, ptr noundef nonnull %5) #10 ; 0 uses
  %i.ca = add nuw nsw i64 %.3140, 1               ; 2 uses
  %exitcond165.not = icmp eq i64 %i.ca, %i.bc
  br i1 %exitcond165.not, label %.loopexit, label %.lr.ph141, !llvm.loop !21

.lr.ph139:                                        ; preds = %.preheader126, %.lr.ph139
  %.4138 = phi i64 [ %i.cc, %.lr.ph139 ], [ 0, %.preheader126 ]
  %i.cb = call i32 @ffpbyt(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %i.u, ptr noundef nonnull %5) #10 ; 0 uses
  %i.cc = add nuw nsw i64 %.4138, 1               ; 2 uses
  %exitcond164.not = icmp eq i64 %i.cc, %i.bc
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph139, !llvm.loop !22

.lr.ph137:                                        ; preds = %.preheader128, %.lr.ph137
  %.5136 = phi i64 [ %i.ce, %.lr.ph137 ], [ 0, %.preheader128 ]
  %i.cd = call i32 @ffpbyt(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.u, ptr noundef nonnull %5) #10 ; 0 uses
  %i.ce = add nuw nsw i64 %.5136, 1               ; 2 uses
  %exitcond163.not = icmp eq i64 %i.ce, %i.bc
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph137, !llvm.loop !23

.lr.ph:                                           ; preds = %.preheader130, %.lr.ph
  %.6135 = phi i64 [ %i.cg, %.lr.ph ], [ 0, %.preheader130 ]
  %i.cf = call i32 @ffpbyt(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.q, ptr noundef nonnull %5) #10 ; 0 uses
  %i.cg = add nuw nsw i64 %.6135, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.bc
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !24

bb.r:                                             ; preds = %.lr.ph152
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !12
  %i.ci = call i32 @ffpbyt(ptr noundef %0, i64 noundef %i.ch, ptr noundef %.0, ptr noundef nonnull %5) #10 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph152
  %i.cj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 81, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef nonnull %i.r) #10 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.s) #10
  %i.ck = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph137, %.lr.ph139, %.lr.ph141, %.lr.ph143, %.lr.ph145, %.lr.ph147, %.preheader130, %.preheader128, %.preheader126, %.preheader124, %.preheader122, %.preheader120, %.preheader, %bb.r
  %i.cl = load i32, ptr %5, align 4, !tbaa !9
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.loopexit
  %i.cn = add nsw i64 %.0100150, 1
  %i.co = sitofp i64 %i.cn to double
  %i.cp = add nsw i64 %i.bc, %.0100150
  %i.cq = sitofp i64 %i.cp to double
  %i.cr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 81, ptr noundef nonnull @.str.4, double noundef %i.co, double noundef %i.cq) #10 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.s) #10
  %.not118 = icmp eq ptr %.0, null
  br i1 %.not118, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %.0) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cs = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.w:                                             ; preds = %.loopexit
  %i.ct = sub nsw i64 %.099151, %i.bc             ; 3 uses
  %.not117 = icmp eq i64 %i.ct, 0
  br i1 %.not117, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = add nsw i64 %i.bc, %.0100150            ; 2 uses
  %i.cv = load i64, ptr %i.l, align 8, !tbaa !14
  %i.cw = add nsw i64 %i.cv, %i.bc                ; 2 uses
  store i64 %i.cw, ptr %i.l, align 8, !tbaa !14
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !14
  %i.cy = icmp eq i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.y, label %.lr.ph152, !llvm.loop !25

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.l, align 8, !tbaa !14
  %i.cz = add nuw nsw i64 %.0102149.ph, 1
  br label %.lr.ph152.outer, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.w, %bb.q
  %.not116 = icmp eq ptr %.0, null
  br i1 %.not116, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.0) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.da = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.v, %bb.s, %bb.k, %bb.h, %bb.f, %bb.c
  %.0110 = phi i32 [ 314, %bb.k ], [ %i.ah, %bb.c ], [ 314, %bb.f ], [ %i.ck, %bb.s ], [ %i.cs, %bb.v ], [ %i.da, %bb.aa ], [ 113, %bb.h ], [ %i.v, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpprn(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @fits_is_compressed_image(ptr noundef %0, ptr noundef %3) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str) #10
  store i32 413, ptr %3, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @ffpclu(ptr noundef %0, i32 noundef 2, i64 noundef 1, i64 noundef %1, i64 noundef %2, ptr noundef %3) ; 0 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 413, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

declare i32 @ffgtcl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcprll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare void @ffswap2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ffswap4(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ffswap8(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ffmbyt(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffpbyt(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ffpcluc(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 7 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca double, align 8                   ; 3 uses
  %i.o = alloca double, align 8                   ; 3 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca [20 x i8], align 16               ; 4 uses
  %i.s = alloca [81 x i8], align 16               ; 6 uses
  %i.t = alloca [20 x i8], align 16               ; 6 uses
  %i.u = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #10
  store i8 0, ptr %i.q, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  %i.v = load i32, ptr %5, align 4, !tbaa !9      ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = call i32 @ffgtcl(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %5) #10 ; 0 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !9
  %i.z = icmp slt i32 %i.y, 0
  %spec.select = select i1 %i.z, i32 0, i32 2
  %i.aa = call i32 @ffgcprll(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %spec.select, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #10
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %6 = icmp eq i32 %i.ad, 16
  br i1 %6, label %bb.e, label %7

bb.e:                                             ; preds = %bb.d
  %i.ae = load i8, ptr %i.t, align 16, !tbaa !10
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ffpmsg(ptr noundef nonnull @.str.1) #10
  store i32 314, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !12
  %i.ah = call i64 @llvm.smax.i64(i64 %i.ag, i64 20) ; 2 uses
  %i.ai = call noalias ptr @malloc(i64 noundef %i.ah) #11 ; 4 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 113, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 32, i64 %i.ah, i1 false)
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #12
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !9
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = zext i1 %i.al to i64
  %spec.select113 = add i64 %i.aj, %i.am
  %sext = shl i64 %spec.select113, 32
  %i.an = ashr exact i64 %sext, 32
  %i.ao = call ptr @strncpy(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.t, i64 noundef %i.an) #10 ; 0 uses
  br label %bb.q

7:                                                ; preds = %bb.d
  %8 = add i32 %i.ad, -11                         ; 2 uses
  %9 = call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 31)
  switch i32 %9, label %bb.q [
    i32 35, label %bb.j
    i32 15, label %bb.j
    i32 5, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %7, %7, %7, %7
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !14  ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 1234554321
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ffpmsg(ptr noundef nonnull @.str.2) #10
  store i32 314, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  switch i32 %i.ad, label %bb.p [
    i32 11, label %bb.m
    i32 21, label %bb.n
    i32 41, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = trunc i64 %i.ap to i8
  store i8 %i.ar, ptr %i.p, align 1, !tbaa !10
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.as = trunc i64 %i.ap to i16
  store i16 %i.as, ptr %i.d, align 2, !tbaa !16
  call void @ffswap2(ptr noundef nonnull %i.d, i64 noundef 1) #10
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.at = trunc i64 %i.ap to i32
  store i32 %i.at, ptr %i.e, align 4, !tbaa !9
  call void @ffswap4(ptr noundef nonnull %i.e, i64 noundef 1) #10
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !14
  call void @ffswap8(ptr noundef nonnull %i.i, i64 noundef 1) #10
  br label %bb.q

bb.q:                                             ; preds = %7, %bb.n, %bb.p, %bb.o, %bb.m, %bb.i
  %.0 = phi ptr [ %i.ai, %bb.i ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %7 ] ; 5 uses
  %.not109142 = icmp eq i64 %4, 0
  br i1 %.not109142, label %._crit_edge, label %.lr.ph146.outer

.lr.ph146.outer:                                  ; preds = %bb.q, %bb.y
  %.095145.ph = phi i64 [ %i.co, %bb.y ], [ %4, %bb.q ]
  %.096144.ph = phi i64 [ %i.cp, %bb.y ], [ 0, %bb.q ]
  %.098143.ph = phi i64 [ %i.cu, %bb.y ], [ 0, %bb.q ] ; 2 uses
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.outer, %bb.x
  %.095145 = phi i64 [ %i.co, %bb.x ], [ %.095145.ph, %.lr.ph146.outer ] ; 2 uses
  %.096144 = phi i64 [ %i.cp, %bb.x ], [ %.096144.ph, %.lr.ph146.outer ] ; 3 uses
  %i.au = load i64, ptr %i.j, align 8, !tbaa !14
  %i.av = load i64, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = call i64 @llvm.smin.i64(i64 %.095145, i64 %i.aw) ; 18 uses
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !14
  %i.az = load i64, ptr %i.m, align 8, !tbaa !14
  %i.ba = mul nsw i64 %i.az, %.098143.ph
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !12
  %i.bd = mul nsw i64 %i.bc, %i.av
  %i.be = add nsw i64 %i.bb, %i.bd
  %i.bf = call i32 @ffmbyt(ptr noundef %0, i64 noundef %i.be, i32 noundef 1, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !9
  switch i32 %i.bg, label %bb.s [
    i32 11, label %.preheader
    i32 21, label %.preheader114
    i32 41, label %.preheader116
    i32 81, label %.preheader118
    i32 42, label %.preheader120
    i32 82, label %.preheader122
    i32 14, label %.preheader124
    i32 16, label %bb.r
  ]

.preheader124:                                    ; preds = %.lr.ph146
  %i.bh = icmp sgt i64 %i.ax, 0
  br i1 %i.bh, label %.lr.ph, label %.loopexit

.preheader122:                                    ; preds = %.lr.ph146
  %i.bi = icmp sgt i64 %i.ax, 0
  br i1 %i.bi, label %.lr.ph131, label %.loopexit

.preheader120:                                    ; preds = %.lr.ph146
  %i.bj = icmp sgt i64 %i.ax, 0
  br i1 %i.bj, label %.lr.ph133, label %.loopexit

.preheader118:                                    ; preds = %.lr.ph146
  %i.bk = icmp sgt i64 %i.ax, 0
  br i1 %i.bk, label %.lr.ph135, label %.loopexit

.preheader116:                                    ; preds = %.lr.ph146
  %i.bl = icmp sgt i64 %i.ax, 0
  br i1 %i.bl, label %.lr.ph137, label %.loopexit

.preheader114:                                    ; preds = %.lr.ph146
  %i.bm = icmp sgt i64 %i.ax, 0
  br i1 %i.bm, label %.lr.ph139, label %.loopexit

.preheader:                                       ; preds = %.lr.ph146
  %i.bn = icmp sgt i64 %i.ax, 0
  br i1 %i.bn, label %.lr.ph141, label %.loopexit

.lr.ph141:                                        ; preds = %.preheader, %.lr.ph141
  %.0100140 = phi i64 [ %i.bp, %.lr.ph141 ], [ 0, %.preheader ]
  %i.bo = call i32 @ffpbyt(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.p, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bp = add nuw nsw i64 %.0100140, 1            ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bp, %i.ax
  br i1 %exitcond162.not, label %.loopexit, label %.lr.ph141, !llvm.loop !26

.lr.ph139:                                        ; preds = %.preheader114, %.lr.ph139
  %.1101138 = phi i64 [ %i.br, %.lr.ph139 ], [ 0, %.preheader114 ]
  %i.bq = call i32 @ffpbyt(ptr noundef %0, i64 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %5) #10 ; 0 uses
  %i.br = add nuw nsw i64 %.1101138, 1            ; 2 uses
  %exitcond161.not = icmp eq i64 %i.br, %i.ax
  br i1 %exitcond161.not, label %.loopexit, label %.lr.ph139, !llvm.loop !27

.lr.ph137:                                        ; preds = %.preheader116, %.lr.ph137
  %.2136 = phi i64 [ %i.bt, %.lr.ph137 ], [ 0, %.preheader116 ]
  %i.bs = call i32 @ffpbyt(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %i.e, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bt = add nuw nsw i64 %.2136, 1               ; 2 uses
  %exitcond160.not = icmp eq i64 %i.bt, %i.ax
  br i1 %exitcond160.not, label %.loopexit, label %.lr.ph137, !llvm.loop !28

.lr.ph135:                                        ; preds = %.preheader118, %.lr.ph135
  %.3134 = phi i64 [ %i.bv, %.lr.ph135 ], [ 0, %.preheader118 ]
  %i.bu = call i32 @ffpbyt(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.i, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bv = add nuw nsw i64 %.3134, 1               ; 2 uses
  %exitcond159.not = icmp eq i64 %i.bv, %i.ax
  br i1 %exitcond159.not, label %.loopexit, label %.lr.ph135, !llvm.loop !29

.lr.ph133:                                        ; preds = %.preheader120, %.lr.ph133
  %.4132 = phi i64 [ %i.bx, %.lr.ph133 ], [ 0, %.preheader120 ]
  %i.bw = call i32 @ffpbyt(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %i.u, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bx = add nuw nsw i64 %.4132, 1               ; 2 uses
  %exitcond158.not = icmp eq i64 %i.bx, %i.ax
  br i1 %exitcond158.not, label %.loopexit, label %.lr.ph133, !llvm.loop !30

.lr.ph131:                                        ; preds = %.preheader122, %.lr.ph131
  %.5130 = phi i64 [ %i.bz, %.lr.ph131 ], [ 0, %.preheader122 ]
  %i.by = call i32 @ffpbyt(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.u, ptr noundef nonnull %5) #10 ; 0 uses
  %i.bz = add nuw nsw i64 %.5130, 1               ; 2 uses
  %exitcond157.not = icmp eq i64 %i.bz, %i.ax
  br i1 %exitcond157.not, label %.loopexit, label %.lr.ph131, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader124, %.lr.ph
  %.6129 = phi i64 [ %i.cb, %.lr.ph ], [ 0, %.preheader124 ]
  %i.ca = call i32 @ffpbyt(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.q, ptr noundef nonnull %5) #10 ; 0 uses
  %i.cb = add nuw nsw i64 %.6129, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.ax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !32

bb.r:                                             ; preds = %.lr.ph146
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !12
  %i.cd = call i32 @ffpbyt(ptr noundef %0, i64 noundef %i.cc, ptr noundef %.0, ptr noundef nonnull %5) #10 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph146
  %i.ce = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 81, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef nonnull %i.r) #10 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.s) #10
  %i.cf = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph131, %.lr.ph133, %.lr.ph135, %.lr.ph137, %.lr.ph139, %.lr.ph141, %.preheader124, %.preheader122, %.preheader120, %.preheader118, %.preheader116, %.preheader114, %.preheader, %bb.r
  %i.cg = load i32, ptr %5, align 4, !tbaa !9
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.loopexit
  %i.ci = add nsw i64 %.096144, 1
  %i.cj = sitofp i64 %i.ci to double
  %i.ck = add nsw i64 %i.ax, %.096144
  %i.cl = sitofp i64 %i.ck to double
  %i.cm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 81, ptr noundef nonnull @.str.4, double noundef %i.cj, double noundef %i.cl) #10 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.s) #10
  %.not112 = icmp eq ptr %.0, null
  br i1 %.not112, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %.0) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.w:                                             ; preds = %.loopexit
  %i.co = sub nsw i64 %.095145, %i.ax             ; 3 uses
  %.not111 = icmp eq i64 %i.co, 0
  br i1 %.not111, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = add nsw i64 %i.ax, %.096144             ; 2 uses
  %i.cq = load i64, ptr %i.l, align 8, !tbaa !14
  %i.cr = add nsw i64 %i.cq, %i.ax                ; 2 uses
  store i64 %i.cr, ptr %i.l, align 8, !tbaa !14
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !14
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.y, label %.lr.ph146, !llvm.loop !33

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.l, align 8, !tbaa !14
  %i.cu = add nuw nsw i64 %.098143.ph, 1
  br label %.lr.ph146.outer, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.w, %bb.q
  %.not110 = icmp eq ptr %.0, null
  br i1 %.not110, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.0) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.cv = load i32, ptr %5, align 4, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.v, %bb.s, %bb.k, %bb.h, %bb.f, %bb.c
  %.0104 = phi i32 [ 314, %bb.k ], [ %i.ac, %bb.c ], [ 314, %bb.f ], [ %i.cf, %bb.s ], [ %i.cn, %bb.v ], [ %i.cv, %bb.aa ], [ 113, %bb.h ], [ %i.v, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0104
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ffprwu(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.g = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %1, 1
  %i.j = icmp slt i64 %2, 1
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 307, ptr %3, align 4, !tbaa !9
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.k = call i32 @ffgnrwll(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %3) #10 ; 0 uses
  %i.l = add nsw i64 %1, -1
  %i.m = add nuw i64 %i.l, %2
  %i.n = load i64, ptr %i.a, align 8, !tbaa !14
  %i.o = icmp sgt i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 307, ptr %3, align 4, !tbaa !9
  br label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.p = call i32 @ffgncl(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #10 ; 0 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.f
  %i.r = load i32, ptr %i.b, align 4, !tbaa !9
  %.not3537 = icmp slt i32 %i.r, 1
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.038 = phi i32 [ %i.ac, %bb.k ], [ 1, %.preheader ] ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !14
  store i32 0, ptr %i.c, align 4, !tbaa !9
  store i64 0, ptr %i.e, align 8, !tbaa !14
  %i.s = call i32 @ffgtclll(ptr noundef %0, i32 noundef %.038, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %3) #10 ; 0 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !9      ; 2 uses
  %.not36 = icmp eq i32 %i.t, 0
  br i1 %.not36, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr %i.c, align 4, !tbaa !9
  %i.v = icmp eq i32 %i.u, 16
  %.pre = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !tbaa !14
  %i.x = sdiv i64 %.pre, %i.w                     ; 2 uses
  store i64 %i.x, ptr %i.d, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi i64 [ %i.x, %bb.h ], [ %.pre, %bb.g ]
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.z = mul nsw i64 %i.y, %2
  %i.aa = call i32 @ffpclu(ptr noundef %0, i32 noundef %.038, i64 noundef %1, i64 noundef 1, i64 noundef %i.z, ptr noundef nonnull %i.f) ; 0 uses
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !9   ; 3 uses
  switch i32 %i.ab, label %bb.j [
    i32 314, label %bb.k
    i32 0, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  store i32 %i.ab, ptr %3, align 4, !tbaa !9
  br label %._crit_edge

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.ac = add nuw nsw i32 %.038, 1
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !9
  %.not35.not = icmp slt i32 %.038, %i.ad
  br i1 %.not35.not, label %.lr.ph, label %.._crit_edge.loopexit_crit_edge, !llvm.loop !34

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.k
  %.pre40.pre = load i32, ptr %3, align 4, !tbaa !9
  br label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %.._crit_edge.loopexit_crit_edge, %bb.f, %bb.a, %bb.j, %bb.e, %bb.c
  %.029 = phi i32 [ %i.ab, %bb.j ], [ 307, %bb.c ], [ 307, %bb.e ], [ %i.g, %bb.a ], [ %i.q, %bb.f ], [ 0, %.preheader ], [ %.pre40.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.t, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.029
}

declare i32 @ffgnrwll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgncl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgtclll(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
end_hunk_0
