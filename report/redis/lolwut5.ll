inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"\0AGeorg Nees - schotter, plotter on paper, 1968. Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"8.6.1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lwTranslatePixelsGroup(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 3)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 10240                    ; 2 uses
  %i.b = lshr i32 %i.a, 12
  %i.c = trunc i32 %i.b to i8
  %i.d = or i8 %i.c, -32
  store i8 %i.d, ptr %1, align 1, !tbaa !13
  %i.e = lshr i32 %i.a, 6
  %i.f = trunc i32 %i.e to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !13
  %i.j = trunc i32 %0 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lwDrawSchotter(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nsw i32 %0, 1                        ; 2 uses
  %i.b = icmp sgt i32 %0, 2
  %i.c = select i1 %i.b, i32 2, i32 0             ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.e = sub nsw i32 %i.a, %i.d
  %i.f = sitofp i32 %i.e to float
  %i.g = sitofp i32 %1 to float
  %i.h = fdiv float %i.f, %i.g                    ; 8 uses
  %i.i = sitofp i32 %2 to float                   ; 3 uses
  %i.j = uitofp nneg i32 %i.d to float
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.j)
  %i.l = fptosi float %i.k to i32
  %i.m = tail call ptr @lwCreateCanvas(i32 noundef %i.a, i32 noundef %i.l, i32 noundef 0) #6 ; 3 uses
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge57.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.o = icmp sgt i32 %1, 0
  %i.p = fmul float %i.h, 5.000000e-01            ; 3 uses
  %i.q = uitofp nneg i32 %i.c to float            ; 3 uses
  br i1 %i.o, label %.preheader.preheader, label %._crit_edge57.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.r = insertelement <2 x float> poison, float %i.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05256 = phi i32 [ %i.bk, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.v = uitofp nneg i32 %.05256 to float         ; 3 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.h, float %i.p)
  %i.x = fadd float %i.w, %i.q
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %i.z = icmp samesign ugt i32 %.05256, 1
  %i.aa = sitofp i32 %i.y to float
  br i1 %i.z, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.preheader
  %i.ab = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.05155.us = phi i32 [ %i.bj, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.ad = uitofp nneg i32 %.05155.us to float
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.h, float %i.p)
  %i.af = fadd float %i.ae, %i.q
  %i.ag = fptosi float %i.af to i32
  %i.ah = tail call i32 @rand() #6
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul nnan float %i.ai, f0x30000000
  %i.ak = fdiv float %i.aj, %i.i
  %i.al = fmul float %i.ak, %i.v                  ; 2 uses
  %i.am = tail call i32 @rand() #6
  %i.an = tail call i32 @rand() #6
  %i.ao = tail call i32 @rand() #6
  %i.ap = and i32 %i.ao, 1
  %.not.us = icmp eq i32 %i.ap, 0
  %i.aq = fneg float %i.al
  %.047.us = select i1 %.not.us, float %i.al, float %i.aq
  %i.ar = tail call i32 @rand() #6
  %i.as = tail call i32 @rand() #6
  %i.at = sitofp i32 %i.ag to float
  %i.au = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %i.an, i64 1
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  %i.ax = fmul nnan <2 x float> %i.aw, splat (float f0x30000000)
  %i.ay = fdiv <2 x float> %i.ax, %i.s
  %i.az = fmul <2 x float> %i.ay, %i.ac           ; 2 uses
  %i.ba = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.bb = insertelement <2 x i32> %i.ba, i32 %i.as, i64 1
  %i.bc = and <2 x i32> %i.bb, splat (i32 1)
  %i.bd = icmp eq <2 x i32> %i.bc, zeroinitializer
  %i.be = fneg <2 x float> %i.az
  %i.bf = select <2 x i1> %i.bd, <2 x float> %i.az, <2 x float> %i.be
  %i.bg = fmul <2 x float> %i.u, %i.bf
  %i.bh = fdiv <2 x float> %i.bg, splat (float 3.000000e+00) ; 2 uses
  %3 = extractelement <2 x float> %i.bh, i64 0
  %4 = fadd float %3, %i.at
  %5 = fptosi float %4 to i32
  %6 = extractelement <2 x float> %i.bh, i64 1
  %7 = fadd float %6, %i.aa
  %i.bi = fptosi float %7 to i32
  tail call void @lwDrawSquare(ptr noundef %i.m, i32 noundef %5, i32 noundef %i.bi, float noundef %i.h, float noundef %.047.us, i32 noundef 1) #6
  %i.bj = add nuw nsw i32 %.05155.us, 1           ; 2 uses
  %exitcond59.not = icmp eq i32 %i.bj, %1
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !14

._crit_edge57.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret ptr %i.m

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.bk = add nuw nsw i32 %.05256, 1              ; 2 uses
  %exitcond60.not = icmp eq i32 %i.bk, %2
  br i1 %exitcond60.not, label %._crit_edge57.split, label %.preheader, !llvm.loop !16

.lr.ph.split:                                     ; preds = %.preheader, %.lr.ph.split
  %.05155 = phi i32 [ %i.bp, %.lr.ph.split ], [ 0, %.preheader ] ; 2 uses
  %i.bl = uitofp nneg i32 %.05155 to float
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.h, float %i.p)
  %i.bn = fadd float %i.bm, %i.q
  %i.bo = fptosi float %i.bn to i32
  tail call void @lwDrawSquare(ptr noundef %i.m, i32 noundef %i.bo, i32 noundef %i.y, float noundef %i.h, float noundef 0.000000e+00, i32 noundef 1) #6
  %i.bp = add nuw nsw i32 %.05155, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bp, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !14
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare ptr @lwCreateCanvas(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

declare void @lwDrawSquare(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @lolwut5Command(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 66, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 8, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i64 12, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.thread22

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef nonnull %i.b, ptr noundef null) #6
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %.pr = load i32, ptr %i.e, align 8, !tbaa !19
  %i.m = icmp sgt i32 %.pr, 2
  br i1 %i.m, label %bb.d, label %.thread22

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.q = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef nonnull %i.c, ptr noundef null) #6
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %.pr21 = load i32, ptr %i.e, align 8, !tbaa !19
  %i.r = icmp sgt i32 %.pr21, 3
  br i1 %i.r, label %bb.f, label %.thread22

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull %i.d, ptr noundef null) #6
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %.thread22, label %bb.u

.thread22:                                        ; preds = %bb.a, %bb.c, %bb.f, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %.thread22
  %i.y = icmp samesign ugt i64 %i.w, 1000
  br i1 %i.y, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %.thread22
  %.sink = phi i64 [ 1, %.thread22 ], [ 1000, %bb.g ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.z = phi i64 [ %i.w, %bb.g ], [ %.sink, %.sink.split ]
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %.sink.split31, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp samesign ugt i64 %i.aa, 200
  br i1 %i.ac, label %.sink.split31, label %bb.j

.sink.split31:                                    ; preds = %bb.i, %bb.h
  %.sink33 = phi i64 [ 1, %bb.h ], [ 200, %bb.i ] ; 2 uses
  store i64 %.sink33, ptr %i.c, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.sink.split31, %bb.i
  %i.ad = phi i64 [ %i.aa, %bb.i ], [ %.sink33, %.sink.split31 ]
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %i.af = icmp slt i64 %i.ae, 1
  br i1 %i.af, label %.sink.split34, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp samesign ugt i64 %i.ae, 200
  br i1 %i.ag, label %.sink.split34, label %bb.l

.sink.split34:                                    ; preds = %bb.k, %bb.j
  %.sink36 = phi i64 [ 1, %bb.j ], [ 200, %bb.k ] ; 2 uses
  store i64 %.sink36, ptr %i.d, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %.sink.split34, %bb.k
  %i.ah = phi i64 [ %i.ae, %bb.k ], [ %.sink36, %.sink.split34 ]
  %i.ai = trunc nuw nsw i64 %i.z to i32
  %i.aj = trunc nuw nsw i64 %i.ad to i32
  %i.ak = trunc nuw nsw i64 %i.ah to i32
  %i.al = call ptr @lwDrawSchotter(i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) ; 12 uses
  %i.am = call ptr @sdsempty() #6                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.preheader.lr.ph.i, label %renderCanvas.exit

.preheader.lr.ph.i:                               ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %.preheader.lr.ph.i
  %i.as = phi i32 [ %i.ao, %.preheader.lr.ph.i ], [ %i.cb, %bb.o ]
  %.04459.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.cc, %bb.o ] ; 7 uses
  %.04558.i = phi ptr [ %i.am, %.preheader.lr.ph.i ], [ %.247.i, %bb.o ] ; 2 uses
  %i.at = load i32, ptr %i.al, align 8, !tbaa !48
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.av = or disjoint i32 %.04459.i, 1            ; 2 uses
  %i.aw = or disjoint i32 %.04459.i, 2            ; 2 uses
  %i.ax = or disjoint i32 %.04459.i, 3            ; 2 uses
  br label %bb.m

._crit_edge.loopexit.i:                           ; preds = %bb.m
  %.pre.i = load i32, ptr %i.an, align 4, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ay = phi i32 [ %i.as, %.preheader.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.146.lcssa.i = phi ptr [ %.04558.i, %.preheader.i ], [ %i.bw, %._crit_edge.loopexit.i ] ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  %.not.i = icmp eq i32 %.04459.i, %i.az
  br i1 %.not.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.04357.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bx, %bb.m ] ; 6 uses
  %.14656.i = phi ptr [ %.04558.i, %.lr.ph.i ], [ %i.bw, %bb.m ]
  %i.ba = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %.04357.i, i32 noundef %.04459.i) #6
  %.not48.i = icmp ne i32 %i.ba, 0
  %spec.select.i = zext i1 %.not48.i to i32       ; 2 uses
  %i.bb = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %.04357.i, i32 noundef %i.av) #6
  %.not49.i = icmp eq i32 %i.bb, 0
  %i.bc = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %.not49.i, i32 %spec.select.i, i32 %i.bc ; 2 uses
  %i.bd = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %.04357.i, i32 noundef %i.aw) #6
  %.not50.i = icmp eq i32 %i.bd, 0
  %i.be = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %.not50.i, i32 %.1.i, i32 %i.be ; 2 uses
  %i.bf = or disjoint i32 %.04357.i, 1            ; 4 uses
  %i.bg = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %i.bf, i32 noundef %.04459.i) #6
  %.not51.i = icmp eq i32 %i.bg, 0
  %i.bh = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %.not51.i, i32 %.2.i, i32 %i.bh ; 2 uses
  %i.bi = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %i.bf, i32 noundef %i.av) #6
  %.not52.i = icmp eq i32 %i.bi, 0
  %i.bj = or i32 %.3.i, 16
  %.4.i = select i1 %.not52.i, i32 %.3.i, i32 %i.bj ; 2 uses
  %i.bk = call i32 @lwGetPixel(ptr noundef nonnull %i.al, i32 noundef %i.bf, i32 noundef %i.aw) #6
  %.not53.i = icmp eq i32 %i.bk, 0
  %i.bl = or i32 %.4.i, 32
  %.5.i = select i1 %.not53.i, i32 %.4.i, i32 %i.bl ; 2 uses
end_hunk_0
