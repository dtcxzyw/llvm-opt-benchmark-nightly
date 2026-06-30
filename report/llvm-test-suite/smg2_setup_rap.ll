loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.hypre_SMG2CreateRAPOp.RAP_num_ghost = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 0, i32 0], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @hypre_SMG2CreateRAPOp(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.hypre_SMG2CreateRAPOp.RAP_num_ghost, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %.loopexit.loopexit59

.preheader:                                       ; preds = %bb.a
  %i.d = tail call ptr @hypre_CAlloc(i32 noundef 9, i32 noundef 12) #6 ; 9 uses
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.d, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 -1>, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 -1, ptr %i.g, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1, i32 0, i32 0, i32 -1>, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.j, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  store <4 x i32> <i32 0, i32 1, i32 1, i32 0>, ptr %i.k, align 4, !tbaa !4
  br label %.loopexit

.loopexit.loopexit59:                             ; preds = %bb.a
  %i.l = tail call ptr @hypre_CAlloc(i32 noundef 5, i32 noundef 12) #6 ; 6 uses
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 -1>, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 0, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 -1, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit59, %.preheader
  %.047 = phi i32 [ 9, %.preheader ], [ 5, %.loopexit.loopexit59 ]
  %.046 = phi ptr [ %i.d, %.preheader ], [ %i.l, %.loopexit.loopexit59 ]
  %i.q = tail call ptr @hypre_StructStencilCreate(i32 noundef 2, i32 noundef %.047, ptr noundef nonnull %.046) #6 ; 2 uses
  %i.r = load i32, ptr %1, align 8, !tbaa !19
  %i.s = tail call ptr @hypre_StructMatrixCreate(i32 noundef %i.r, ptr noundef %3, ptr noundef %i.q) #6 ; 3 uses
  %i.t = tail call i32 @hypre_StructStencilDestroy(ptr noundef %i.q) #6 ; 0 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i32 %i.u, ptr %i.v, align 8, !tbaa !8
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %i.y = call i32 @hypre_StructMatrixSetNumGhost(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @hypre_CAlloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hypre_StructStencilCreate(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixCreate(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructStencilDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixSetNumGhost(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG2BuildRAPSym(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 40 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader959.lr.ph, label %._crit_edge

.preheader959.lr.ph:                              ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 19 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 19 uses
  %i.aa = icmp sgt i32 %i.t, 5
  %cond = icmp eq i32 %i.t, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.preheader959

.preheader959:                                    ; preds = %.preheader959.lr.ph, %.loopexit957
  %indvars.iv1127 = phi i64 [ 0, %.preheader959.lr.ph ], [ %indvars.iv.next1128, %.loopexit957 ] ; 5 uses
  %.08081054 = phi i64 [ 0, %.preheader959.lr.ph ], [ %indvars.iv, %.loopexit957 ]
  %.08251052 = phi ptr [ undef, %.preheader959.lr.ph ], [ %.1826, %.loopexit957 ]
  %.08271051 = phi ptr [ undef, %.preheader959.lr.ph ], [ %.1828, %.loopexit957 ]
  %.08291050 = phi ptr [ undef, %.preheader959.lr.ph ], [ %.1830, %.loopexit957 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1127
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %sext = shl i64 %.08081054, 32
  %i.aj = ashr exact i64 %sext, 32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader959
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.aj, %.preheader959 ] ; 7 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %.not = icmp eq i32 %i.al, %i.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !31

bb.c:                                             ; preds = %bb.b
  %i.am = trunc nsw i64 %indvars.iv to i32        ; 12 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv1127 ; 5 uses
  %i.ap = call i32 @hypre_StructMapCoarseToFine(ptr noundef %i.ao, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.as = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds [24 x i8], ptr %i.au, i64 %indvars.iv ; 7 uses
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv ; 10 uses
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv1127 ; 10 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 13 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.be = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bf = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 15 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bh = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 15 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 15 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 10 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bn = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1830 = phi ptr [ %i.bn, %bb.d ], [ %.08291050, %bb.c ] ; 3 uses
  %.1828 = phi ptr [ %i.bm, %bb.d ], [ %.08271051, %bb.c ] ; 3 uses
  %.1826 = phi ptr [ %i.bl, %bb.d ], [ %.08251052, %bb.c ] ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bo = trunc nuw nsw i64 %indvars.iv1127 to i32 ; 5 uses
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.br = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bs = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bt = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bo, ptr noundef nonnull %i.a) #6 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.by = load i32, ptr %i.as, align 4, !tbaa !4
  %i.bz = sub i32 %i.bx, %i.by
  %i.ca = call i32 @llvm.smax.i32(i32 %i.bz, i32 -1)
  %i.cb = add i32 %i.ca, 1                        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.cg = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = call i32 @llvm.smax.i32(i32 %i.ch, i32 -1)
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ck = call i32 @hypre_BoxGetSize(ptr noundef %i.ao, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.cl = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.cm = load i32, ptr %i.av, align 4, !tbaa !4  ; 3 uses
  %i.cn = sub i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4  ; 5 uses
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !4  ; 2 uses
  %i.cr = sub i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.ct = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cu = sub nsw i32 %i.ct, %i.cq                ; 5 uses
  %i.cv = icmp sgt i32 %i.cu, -1                  ; 4 uses
  br i1 %cond, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = sub nsw i32 %i.cw, %i.cy
  %i.da = add nuw nsw i32 %i.cu, 1
  %i.db = mul nsw i32 %i.cz, %i.da
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dc = phi i32 [ %i.db, %bb.g ], [ 0, %bb.f ]
  %i.dd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.de = sub i32 %i.dd, %i.cm                    ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1                  ; 2 uses
  %i.dg = add nsw i32 %i.cr, %i.dc
  %i.dh = add i32 %i.de, 1                        ; 2 uses
  %i.di = mul nsw i32 %i.dh, %i.dg
  %i.dj = select i1 %i.df, i32 %i.di, i32 0
  %i.dk = add nsw i32 %i.cn, %i.dj
  %i.dl = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.dm = sub i32 %i.cl, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4  ; 2 uses
  %i.dp = sub i32 %i.cp, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = sub nsw i32 %i.ds, %i.do                ; 3 uses
  %i.du = icmp sgt i32 %i.dt, -1                  ; 2 uses
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dv = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  %i.dy = sub nsw i32 %i.dv, %i.dx
  %i.dz = add nuw nsw i32 %i.dt, 1
  %i.ea = mul nsw i32 %i.dy, %i.dz
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.eb = phi i32 [ %i.ea, %bb.i ], [ 0, %bb.h ]
  %i.ec = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ed = sub i32 %i.ec, %i.dl                    ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ef = add nsw i32 %i.dp, %i.eb
  %i.eg = add i32 %i.ed, 1                        ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.ef
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 0
  %i.ej = add nsw i32 %i.dm, %i.ei
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !4
  %i.el = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.em = sub i32 %i.ek, %i.el
  %i.en = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.eo = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.ep = sub i32 %i.en, %i.eo
  %i.eq = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.er = sub nsw i32 %i.eq, %i.eo                ; 3 uses
  %i.es = icmp sgt i32 %i.er, -1                  ; 2 uses
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.et = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ew = sub nsw i32 %i.et, %i.ev
  %i.ex = add nuw nsw i32 %i.er, 1
  %i.ey = mul nsw i32 %i.ew, %i.ex
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ez = phi i32 [ %i.ey, %bb.k ], [ 0, %bb.j ]
  %i.fa = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.fb = sub nsw i32 %i.fa, %i.el                ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, -1                  ; 2 uses
  %i.fd = add nsw i32 %i.ep, %i.ez
  %i.fe = add nuw nsw i32 %i.fb, 1                ; 3 uses
  %i.ff = mul nsw i32 %i.fe, %i.fd
  %i.fg = select i1 %i.fc, i32 %i.ff, i32 0
  %i.fh = add nsw i32 %i.em, %i.fg
  %i.fi = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.fj = sub i32 %i.cl, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = sub i32 %i.cp, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = sub nsw i32 %i.fp, %i.fl                ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, -1                  ; 2 uses
  br i1 %i.fr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fs = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = add nuw nsw i32 %i.fq, 1
  %i.fx = mul nsw i32 %i.fv, %i.fw
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fy = phi i32 [ %i.fx, %bb.m ], [ 0, %bb.l ]
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.ga = sub i32 %i.fz, %i.fi                    ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1                  ; 2 uses
  %i.gc = add nsw i32 %i.fm, %i.fy
  %i.gd = add i32 %i.ga, 1                        ; 2 uses
  %i.ge = mul nsw i32 %i.gd, %i.gc
  %i.gf = select i1 %i.gb, i32 %i.ge, i32 0
  %i.gg = add nsw i32 %i.fj, %i.gf
  %i.gh = select i1 %i.df, i32 %i.dh, i32 0       ; 3 uses
  %i.gi = add nuw nsw i32 %i.cu, 1
  %i.gj = mul nsw i32 %i.gh, %i.gi
  %i.gk = select i1 %i.cv, i32 %i.gj, i32 0
  %i.gl = select i1 %i.ee, i32 %i.eg, i32 0       ; 3 uses
  %i.gm = add nuw nsw i32 %i.dt, 1
  %i.gn = mul nsw i32 %i.gl, %i.gm
  %i.go = select i1 %i.du, i32 %i.gn, i32 0
  %i.gp = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  br i1 %i.fc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gq = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gr = mul nsw i32 %i.gq, %i.fe
  %i.gs = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gt = mul nsw i32 %i.gs, %i.fe
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gu = phi i32 [ %i.gr, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gv = phi i32 [ %i.gt, %bb.o ], [ 0, %bb.n ]
  %i.gw = load i32, ptr %i.c, align 4, !tbaa !4   ; 10 uses
  %i.gx = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.gy = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0866 = call i32 @llvm.smax.i32(i32 %i.gx, i32 %i.gw)
  %.1867 = call i32 @llvm.smax.i32(i32 %i.gy, i32 %.0866)
  %i.gz = icmp sgt i32 %.1867, 0
  br i1 %i.gz, label %.preheader954.lr.ph, label %.loopexit957

.preheader954.lr.ph:                              ; preds = %bb.p
  %i.ha = select i1 %i.gb, i32 %i.gd, i32 0       ; 3 uses
  %factor.op.mul1044 = mul i32 %i.gx, %i.ha
  %factor.op.mul1043 = mul i32 %i.gx, %i.gu
  %factor.op.mul1042 = mul i32 %i.gx, %i.gl
  %factor.op.mul1041 = mul i32 %i.gx, %i.gh
  %i.hb = add nuw nsw i32 %i.fq, 1
  %i.hc = mul nsw i32 %i.ha, %i.hb
  %i.hd = select i1 %i.fr, i32 %i.hc, i32 0
  %i.he = add nuw nsw i32 %i.er, 1
  %i.hf = mul nsw i32 %i.gv, %i.he
  %i.hg = select i1 %i.es, i32 %i.hf, i32 0
  %i.hh = mul i32 %i.gw, %i.gp
  %i.hi = icmp sgt i32 %i.gy, 0
  %i.hj = icmp sgt i32 %i.gx, 0
  %i.hk = sub i32 %i.gh, %i.gw
  %i.hl = sub i32 %i.gl, %i.gw
  %i.hm = sub i32 %i.gu, %i.hh
  %i.hn = sub i32 %i.ha, %i.gw
  %i.ho = sub i32 %i.gk, %factor.op.mul1041
  %i.hp = sub i32 %i.go, %factor.op.mul1042
  %i.hq = sub i32 %i.hg, %factor.op.mul1043
  %i.hr = sub i32 %i.hd, %factor.op.mul1044
  %brmerge.not1161 = and i1 %i.hi, %i.hj
  %i.hs = icmp sgt i32 %i.gw, 0
  %or.cond = and i1 %brmerge.not1161, %i.hs
  br i1 %or.cond, label %.preheader952.us.us.preheader, label %.loopexit957

.preheader952.us.us.preheader:                    ; preds = %.preheader954.lr.ph
  %i.ht = sext i32 %i.gp to i64
  %i.hu = zext i32 %i.cb to i64                   ; 7 uses
  %i.hv = zext i32 %i.cj to i64                   ; 4 uses
  %scevgep1170 = getelementptr i8, ptr %i.bs, i64 8
  %i.hw = add nsw i32 %i.gw, -1
  %i.hx = zext i32 %i.hw to i64                   ; 3 uses
  %i.hy = shl nuw nsw i64 %i.hx, 3                ; 16 uses
  %scevgep1171 = getelementptr i8, ptr %scevgep1170, i64 %i.hy
  %scevgep1174 = getelementptr i8, ptr %i.br, i64 8
  %scevgep1175 = getelementptr i8, ptr %scevgep1174, i64 %i.hy
  %scevgep1178 = getelementptr i8, ptr %i.bt, i64 8
  %scevgep1179 = getelementptr i8, ptr %scevgep1178, i64 %i.hy
  %scevgep1182 = getelementptr i8, ptr %i.bq, i64 8
  %scevgep1183 = getelementptr i8, ptr %scevgep1182, i64 %i.hy
  %scevgep1186 = getelementptr i8, ptr %i.bp, i64 8
end_hunk_0
begin_hunk_1_@hypre_SMG2BuildRAPSym:bb.a
  %factor.op.mul997 = mul i32 %i.sp, %i.rz
  %i.st = add nuw nsw i32 %i.ri, 1
  %i.su = mul nsw i32 %i.ss, %i.st
  %i.sv = select i1 %i.rj, i32 %i.su, i32 0
  %i.sw = add nuw nsw i32 %i.qj, 1
  %i.sx = mul nsw i32 %i.sn, %i.sw
  %i.sy = select i1 %i.qk, i32 %i.sx, i32 0
  %i.sz = mul i32 %i.so, %i.sh
  %i.ta = icmp sgt i32 %i.sq, 0
  %i.tb = icmp sgt i32 %i.sp, 0
  %i.tc = sub i32 %i.rz, %i.so
  %i.td = sub i32 %i.sd, %i.so
  %i.te = sub i32 %i.sm, %i.sz
  %i.tf = sub i32 %i.ss, %i.so
  %i.tg = sub i32 %i.sc, %factor.op.mul997
  %i.th = sub i32 %i.sg, %factor.op.mul
  %i.ti = sub i32 %i.sy, %factor.op.mul998
  %i.tj = sub i32 %i.sv, %factor.op.mul999
  %brmerge1059.not1158 = and i1 %i.ta, %i.tb
  %i.tk = icmp sgt i32 %i.so, 0
  %or.cond1155 = and i1 %brmerge1059.not1158, %i.tk
  br i1 %or.cond1155, label %.preheader953.us.us.preheader, label %.loopexit957

.preheader953.us.us.preheader:                    ; preds = %.preheader955.lr.ph
  %i.tl = sext i32 %i.sh to i64
  %i.tm = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.tn = zext nneg i32 %i.cj to i64
  br label %.preheader953.us.us

.preheader953.us.us:                              ; preds = %.preheader953.us.us.preheader, %._crit_edge974.split.us.us.us
  %.3824993.us.us = phi i32 [ %i.ye, %._crit_edge974.split.us.us.us ], [ 0, %.preheader953.us.us.preheader ]
  %.3834992.us.us = phi i32 [ %i.yc, %._crit_edge974.split.us.us.us ], [ %i.qz, %.preheader953.us.us.preheader ]
  %.3838991.us.us = phi i32 [ %i.yd, %._crit_edge974.split.us.us.us ], [ %i.ry, %.preheader953.us.us.preheader ]
  %.3844990.us.us = phi i32 [ %i.ya, %._crit_edge974.split.us.us.us ], [ %i.pc, %.preheader953.us.us.preheader ]
  %.3850989.us.us = phi i32 [ %i.yb, %._crit_edge974.split.us.us.us ], [ %i.qb, %.preheader953.us.us.preheader ]
  br label %.preheader951.us.us.us

.preheader951.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader953.us.us
  %.3820973.us.us.us = phi i32 [ 0, %.preheader953.us.us ], [ %i.xz, %._crit_edge.us.us.us ]
  %.4972.us.us.us = phi i32 [ %.3834992.us.us, %.preheader953.us.us ], [ %i.xx, %._crit_edge.us.us.us ]
  %.4839971.us.us.us = phi i32 [ %.3838991.us.us, %.preheader953.us.us ], [ %i.xy, %._crit_edge.us.us.us ]
  %.4845970.us.us.us = phi i32 [ %.3844990.us.us, %.preheader953.us.us ], [ %i.xv, %._crit_edge.us.us.us ]
  %.4851969.us.us.us = phi i32 [ %.3850989.us.us, %.preheader953.us.us ], [ %i.xw, %._crit_edge.us.us.us ]
  %i.to = sext i32 %.4972.us.us.us to i64
  %i.tp = sext i32 %.4839971.us.us.us to i64
  %i.tq = sext i32 %.4845970.us.us.us to i64
  %i.tr = sext i32 %.4851969.us.us.us to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader951.us.us.us
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %bb.ab ], [ %i.tr, %.preheader951.us.us.us ] ; 3 uses
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %bb.ab ], [ %i.tq, %.preheader951.us.us.us ] ; 5 uses
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %bb.ab ], [ %i.tp, %.preheader951.us.us.us ] ; 6 uses
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %bb.ab ], [ %i.to, %.preheader951.us.us.us ] ; 10 uses
  %.3965.us.us.us = phi i32 [ %i.xq, %bb.ab ], [ 0, %.preheader951.us.us.us ]
  %i.ts = sub nsw i64 %indvars.iv1090, %i.tm      ; 8 uses
  %i.tt = add nsw i64 %indvars.iv1090, %i.tm      ; 4 uses
  %i.tu = sub nsw i64 %indvars.iv1094, %i.tn
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv1096 ; 5 uses
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !35 ; 2 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ts ; 2 uses
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !35
  %i.tz = fmul double %i.tw, %i.ty
  %i.ua = getelementptr [8 x i8], ptr %i.bc, i64 %i.tu ; 3 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 -8
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !35 ; 2 uses
  %i.ud = getelementptr inbounds [8 x i8], ptr %.1826, i64 %i.ts
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !35
  %i.uf = fmul double %i.tw, %i.ue
  %i.ug = call double @llvm.fmuladd.f64(double %i.tz, double %i.uc, double %i.uf)
  %i.uh = getelementptr inbounds [8 x i8], ptr %.1826, i64 %indvars.iv1090 ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !35
  %i.uj = call double @llvm.fmuladd.f64(double %i.ui, double %i.uc, double %i.ug)
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv1092
  store double %i.uj, ptr %i.uk, align 8, !tbaa !35
  %i.ul = load double, ptr %i.tv, align 8, !tbaa !35 ; 2 uses
  %i.um = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.ts ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !35
  %i.uo = fmul double %i.ul, %i.un
  %i.up = load double, ptr %i.ua, align 8, !tbaa !35 ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ts
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !35
  %i.us = fmul double %i.ul, %i.ur
  %i.ut = call double @llvm.fmuladd.f64(double %i.uo, double %i.up, double %i.us)
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv1090 ; 2 uses
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !35
  %i.uw = call double @llvm.fmuladd.f64(double %i.uv, double %i.up, double %i.ut)
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv1092
  store double %i.uw, ptr %i.ux, align 8, !tbaa !35
  %i.uy = load double, ptr %i.tv, align 8, !tbaa !35 ; 2 uses
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ts
  %i.va = load double, ptr %i.uz, align 8, !tbaa !35
  %i.vb = fmul double %i.uy, %i.va
  %i.vc = getelementptr i8, ptr %i.ua, i64 8
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !35 ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %.1828, i64 %i.ts
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !35
  %i.vg = fmul double %i.uy, %i.vf
  %i.vh = call double @llvm.fmuladd.f64(double %i.vb, double %i.vd, double %i.vg)
  %i.vi = getelementptr inbounds [8 x i8], ptr %.1828, i64 %indvars.iv1090
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !35
  %i.vk = call double @llvm.fmuladd.f64(double %i.vj, double %i.vd, double %i.vh)
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %indvars.iv1092
  store double %i.vk, ptr %i.vl, align 8, !tbaa !35
  %i.vm = add nsw i64 %indvars.iv1094, -1         ; 2 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv1090
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !35
  %i.vp = load double, ptr %i.tv, align 8, !tbaa !35 ; 2 uses
  %i.vq = load double, ptr %i.tx, align 8, !tbaa !35
  %i.vr = fmul double %i.vp, %i.vq
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.vm
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !35 ; 2 uses
  %i.vu = call double @llvm.fmuladd.f64(double %i.vr, double %i.vt, double %i.vo)
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv1096 ; 2 uses
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !35 ; 2 uses
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.tt
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !35
  %i.vz = fmul double %i.vw, %i.vy
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.vm
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !35 ; 2 uses
  %i.wc = call double @llvm.fmuladd.f64(double %i.vz, double %i.wb, double %i.vu)
  %i.wd = getelementptr inbounds [8 x i8], ptr %.1830, i64 %i.ts
  %i.we = load double, ptr %i.wd, align 8, !tbaa !35
  %i.wf = call double @llvm.fmuladd.f64(double %i.vp, double %i.we, double %i.wc)
  %i.wg = getelementptr inbounds [8 x i8], ptr %.1826, i64 %i.tt
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !35
  %i.wi = call double @llvm.fmuladd.f64(double %i.vw, double %i.wh, double %i.wf)
  %i.wj = load double, ptr %i.uh, align 8, !tbaa !35
  %i.wk = call double @llvm.fmuladd.f64(double %i.wj, double %i.vt, double %i.wi)
  %i.wl = getelementptr inbounds [8 x i8], ptr %.1830, i64 %indvars.iv1090
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !35
  %i.wn = call double @llvm.fmuladd.f64(double %i.wm, double %i.wb, double %i.wk)
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv1092
  store double %i.wn, ptr %i.wo, align 8, !tbaa !35
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv1090
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !35
  %i.wr = load double, ptr %i.tv, align 8, !tbaa !35 ; 2 uses
  %i.ws = load double, ptr %i.um, align 8, !tbaa !35
  %i.wt = fmul double %i.wr, %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv1094
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !35 ; 2 uses
  %i.ww = call double @llvm.fmuladd.f64(double %i.wt, double %i.wv, double %i.wq)
  %i.wx = load double, ptr %i.vv, align 8, !tbaa !35 ; 2 uses
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.tt
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !35
  %i.xa = fmul double %i.wx, %i.wz
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv1094
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !35 ; 2 uses
  %i.xd = call double @llvm.fmuladd.f64(double %i.xa, double %i.xc, double %i.ww)
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ts
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !35
  %i.xg = call double @llvm.fmuladd.f64(double %i.wr, double %i.xf, double %i.xd)
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.tt
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !35
  %i.xj = call double @llvm.fmuladd.f64(double %i.wx, double %i.xi, double %i.xg)
  %i.xk = load double, ptr %i.uu, align 8, !tbaa !35
  %i.xl = call double @llvm.fmuladd.f64(double %i.xk, double %i.wv, double %i.xj)
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv1090
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !35
  %i.xo = call double @llvm.fmuladd.f64(double %i.xn, double %i.xc, double %i.xl)
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv1092
  store double %i.xo, ptr %i.xp, align 8, !tbaa !35
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, 1 ; 2 uses
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, 1 ; 2 uses
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, %i.tl ; 2 uses
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, 1 ; 2 uses
  %i.xq = add nuw nsw i32 %.3965.us.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.xq, %i.so
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.ab, !llvm.loop !93

._crit_edge.us.us.us:                             ; preds = %bb.ab
  %i.xr = trunc nsw i64 %indvars.iv.next1097 to i32
  %i.xs = trunc nsw i64 %indvars.iv.next1095 to i32
  %i.xt = trunc nsw i64 %indvars.iv.next1093 to i32
  %i.xu = trunc nsw i64 %indvars.iv.next1091 to i32
  %i.xv = add nsw i32 %i.tc, %i.xs                ; 2 uses
  %i.xw = add nsw i32 %i.td, %i.xr                ; 2 uses
  %i.xx = add nsw i32 %i.te, %i.xu                ; 2 uses
  %i.xy = add nsw i32 %i.tf, %i.xt                ; 2 uses
  %i.xz = add nuw nsw i32 %.3820973.us.us.us, 1   ; 2 uses
  %exitcond1105.not = icmp eq i32 %i.xz, %i.sp
  br i1 %exitcond1105.not, label %._crit_edge974.split.us.us.us, label %.preheader951.us.us.us, !llvm.loop !94

._crit_edge974.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ya = add nsw i32 %i.tg, %i.xv
  %i.yb = add nsw i32 %i.th, %i.xw
  %i.yc = add nsw i32 %i.ti, %i.xx
  %i.yd = add nsw i32 %i.tj, %i.xy
  %i.ye = add nuw nsw i32 %.3824993.us.us, 1      ; 2 uses
  %exitcond1106.not = icmp eq i32 %i.ye, %i.sq
  br i1 %exitcond1106.not, label %.loopexit957, label %.preheader953.us.us, !llvm.loop !95

.loopexit957:                                     ; preds = %._crit_edge974.split.us.us.us, %._crit_edge1017.split.us.us.us, %.preheader955.lr.ph, %.preheader954.lr.ph, %bb.aa, %bb.p
  %indvars.iv.next1128 = add nuw nsw i64 %indvars.iv1127, 1 ; 2 uses
  %i.yf = load i32, ptr %i.n, align 8, !tbaa !26
  %i.yg = sext i32 %i.yf to i64
  %i.yh = icmp slt i64 %indvars.iv.next1128, %i.yg
  br i1 %i.yh, label %.preheader959, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit957, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG2BuildRAPNoSym(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 36 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader891.lr.ph, label %._crit_edge

.preheader891.lr.ph:                              ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 17 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 17 uses
  %i.aa = icmp sgt i32 %i.t, 5
  %cond = icmp eq i32 %i.t, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.preheader891

.preheader891:                                    ; preds = %.preheader891.lr.ph, %.loopexit889
  %indvars.iv1059 = phi i64 [ 0, %.preheader891.lr.ph ], [ %indvars.iv.next1060, %.loopexit889 ] ; 5 uses
  %.0740986 = phi i64 [ 0, %.preheader891.lr.ph ], [ %indvars.iv, %.loopexit889 ]
  %.0757984 = phi ptr [ undef, %.preheader891.lr.ph ], [ %.1758, %.loopexit889 ]
  %.0759983 = phi ptr [ undef, %.preheader891.lr.ph ], [ %.1760, %.loopexit889 ]
  %.0761982 = phi ptr [ undef, %.preheader891.lr.ph ], [ %.1762, %.loopexit889 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1059
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %sext = shl i64 %.0740986, 32
  %i.aj = ashr exact i64 %sext, 32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader891
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.aj, %.preheader891 ] ; 7 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %.not = icmp eq i32 %i.al, %i.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !97

bb.c:                                             ; preds = %bb.b
  %i.am = trunc nsw i64 %indvars.iv to i32        ; 11 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv1059 ; 5 uses
  %i.ap = call i32 @hypre_StructMapCoarseToFine(ptr noundef %i.ao, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.as = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds [24 x i8], ptr %i.au, i64 %indvars.iv ; 7 uses
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv ; 10 uses
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %indvars.iv1059 ; 10 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bc = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bd = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 14 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.be = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bf = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %2, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bg = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bh = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bi = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 24 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bj = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6 ; 16 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bk = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bl = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bm = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1762 = phi ptr [ %i.bm, %bb.d ], [ %.0761982, %bb.c ] ; 13 uses
  %.1760 = phi ptr [ %i.bl, %bb.d ], [ %.0759983, %bb.c ] ; 9 uses
  %.1758 = phi ptr [ %i.bk, %bb.d ], [ %.0757984, %bb.c ] ; 9 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bn = trunc nuw nsw i64 %indvars.iv1059 to i32 ; 4 uses
  %i.bo = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bn, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bp = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bn, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bq = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bn, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.br = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %3, i32 noundef %i.bn, ptr noundef nonnull %i.a) #6 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bw = load i32, ptr %i.as, align 4, !tbaa !4
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = call i32 @llvm.smax.i32(i32 %i.bx, i32 -1)
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !4
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = call i32 @llvm.smax.i32(i32 %i.cf, i32 -1)
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ci = call i32 @hypre_BoxGetSize(ptr noundef %i.ao, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.cj = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !4  ; 3 uses
  %i.cl = sub i32 %i.cj, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 5 uses
  %i.co = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.cp = sub i32 %i.cn, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.cr = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cs = sub nsw i32 %i.cr, %i.co                ; 5 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 4 uses
  br i1 %cond, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = add nuw nsw i32 %i.cs, 1
  %i.cz = mul nsw i32 %i.cx, %i.cy
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.da = phi i32 [ %i.cz, %bb.g ], [ 0, %bb.f ]
  %i.db = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.dc = sub i32 %i.db, %i.ck                    ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1                  ; 2 uses
  %i.de = add nsw i32 %i.cp, %i.da
  %i.df = add i32 %i.dc, 1                        ; 2 uses
  %i.dg = mul nsw i32 %i.df, %i.de
  %i.dh = select i1 %i.dd, i32 %i.dg, i32 0
  %i.di = add nsw i32 %i.cl, %i.dh
  %i.dj = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.dk = sub i32 %i.cj, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.dn = sub i32 %i.cn, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = sub nsw i32 %i.dq, %i.dm                ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -1                  ; 2 uses
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = sub nsw i32 %i.dt, %i.dv
  %i.dx = add nuw nsw i32 %i.dr, 1
  %i.dy = mul nsw i32 %i.dw, %i.dx
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dz = phi i32 [ %i.dy, %bb.i ], [ 0, %bb.h ]
  %i.ea = load i32, ptr %i.do, align 4, !tbaa !4
  %i.eb = sub i32 %i.ea, %i.dj                    ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1                  ; 2 uses
  %i.ed = add nsw i32 %i.dn, %i.dz
  %i.ee = add i32 %i.eb, 1                        ; 2 uses
  %i.ef = mul nsw i32 %i.ee, %i.ed
  %i.eg = select i1 %i.ec, i32 %i.ef, i32 0
  %i.eh = add nsw i32 %i.dk, %i.eg
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ej = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej
  %i.el = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.em = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.en = sub i32 %i.el, %i.em
  %i.eo = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.ep = sub nsw i32 %i.eo, %i.em                ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, -1                  ; 2 uses
  br i1 %i.eq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.er = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = sub nsw i32 %i.er, %i.et
  %i.ev = add nuw nsw i32 %i.ep, 1
  %i.ew = mul nsw i32 %i.eu, %i.ev
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ex = phi i32 [ %i.ew, %bb.k ], [ 0, %bb.j ]
  %i.ey = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.ez = sub nsw i32 %i.ey, %i.ej                ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, -1                  ; 2 uses
  %i.fb = add nsw i32 %i.en, %i.ex
  %i.fc = add nuw nsw i32 %i.ez, 1                ; 3 uses
  %i.fd = mul nsw i32 %i.fc, %i.fb
  %i.fe = select i1 %i.fa, i32 %i.fd, i32 0
  %i.ff = add nsw i32 %i.ek, %i.fe
  %i.fg = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.fh = sub i32 %i.cj, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4  ; 2 uses
  %i.fk = sub i32 %i.cn, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = sub nsw i32 %i.fn, %i.fj                ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, -1                  ; 2 uses
  br i1 %i.fp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fq = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = sub nsw i32 %i.fq, %i.fs
  %i.fu = add nuw nsw i32 %i.fo, 1
  %i.fv = mul nsw i32 %i.ft, %i.fu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fw = phi i32 [ %i.fv, %bb.m ], [ 0, %bb.l ]
  %i.fx = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fy = sub i32 %i.fx, %i.fg                    ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1                  ; 2 uses
  %i.ga = add nsw i32 %i.fk, %i.fw
  %i.gb = add i32 %i.fy, 1                        ; 2 uses
  %i.gc = mul nsw i32 %i.gb, %i.ga
  %i.gd = select i1 %i.fz, i32 %i.gc, i32 0
  %i.ge = add nsw i32 %i.fh, %i.gd
  %i.gf = select i1 %i.dd, i32 %i.df, i32 0       ; 3 uses
  %i.gg = add nuw nsw i32 %i.cs, 1
  %i.gh = mul nsw i32 %i.gf, %i.gg
  %i.gi = select i1 %i.ct, i32 %i.gh, i32 0
  %i.gj = select i1 %i.ec, i32 %i.ee, i32 0       ; 3 uses
  %i.gk = add nuw nsw i32 %i.dr, 1
  %i.gl = mul nsw i32 %i.gj, %i.gk
  %i.gm = select i1 %i.ds, i32 %i.gl, i32 0
  %i.gn = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  br i1 %i.fa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.go = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gp = mul nsw i32 %i.go, %i.fc
  %i.gq = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gr = mul nsw i32 %i.gq, %i.fc
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gs = phi i32 [ %i.gp, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gt = phi i32 [ %i.gr, %bb.o ], [ 0, %bb.n ]
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !4   ; 10 uses
  %i.gv = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.gw = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0798 = call i32 @llvm.smax.i32(i32 %i.gv, i32 %i.gu)
  %.1799 = call i32 @llvm.smax.i32(i32 %i.gw, i32 %.0798)
  %i.gx = icmp sgt i32 %.1799, 0
  br i1 %i.gx, label %.preheader886.lr.ph, label %.loopexit889

.preheader886.lr.ph:                              ; preds = %bb.p
  %i.gy = select i1 %i.fz, i32 %i.gb, i32 0       ; 3 uses
  %factor.op.mul976 = mul i32 %i.gv, %i.gy
  %factor.op.mul975 = mul i32 %i.gv, %i.gs
  %factor.op.mul974 = mul i32 %i.gv, %i.gj
  %factor.op.mul973 = mul i32 %i.gv, %i.gf
  %i.gz = add nuw nsw i32 %i.fo, 1
  %i.ha = mul nsw i32 %i.gy, %i.gz
  %i.hb = select i1 %i.fp, i32 %i.ha, i32 0
  %i.hc = add nuw nsw i32 %i.ep, 1
  %i.hd = mul nsw i32 %i.gt, %i.hc
  %i.he = select i1 %i.eq, i32 %i.hd, i32 0
  %i.hf = mul i32 %i.gu, %i.gn
  %i.hg = icmp sgt i32 %i.gw, 0
  %i.hh = icmp sgt i32 %i.gv, 0
  %i.hi = sub i32 %i.gf, %i.gu
  %i.hj = sub i32 %i.gj, %i.gu
  %i.hk = sub i32 %i.gs, %i.hf
  %i.hl = sub i32 %i.gy, %i.gu
  %i.hm = sub i32 %i.gi, %factor.op.mul973
  %i.hn = sub i32 %i.gm, %factor.op.mul974
  %i.ho = sub i32 %i.he, %factor.op.mul975
  %i.hp = sub i32 %i.hb, %factor.op.mul976
  %brmerge.not1095 = and i1 %i.hg, %i.hh
  %i.hq = icmp sgt i32 %i.gu, 0
  %or.cond = and i1 %brmerge.not1095, %i.hq
  br i1 %or.cond, label %.preheader884.us.us.preheader, label %.loopexit889

.preheader884.us.us.preheader:                    ; preds = %.preheader886.lr.ph
  %i.hr = sext i32 %i.gn to i64
  %i.hs = zext i32 %i.bz to i64                   ; 7 uses
  %i.ht = zext i32 %i.ch to i64                   ; 2 uses
  %invariant.gep1087 = getelementptr [8 x i8], ptr %i.bd, i64 %i.ht ; 2 uses
  %scevgep1104 = getelementptr i8, ptr %i.bq, i64 8
  %i.hu = add nsw i32 %i.gu, -1
  %i.hv = zext i32 %i.hu to i64                   ; 2 uses
  %i.hw = shl nuw nsw i64 %i.hv, 3                ; 15 uses
  %scevgep1105 = getelementptr i8, ptr %scevgep1104, i64 %i.hw
  %scevgep1108 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep1109 = getelementptr i8, ptr %scevgep1108, i64 %i.hw
  %scevgep1112 = getelementptr i8, ptr %i.br, i64 8
  %scevgep1113 = getelementptr i8, ptr %scevgep1112, i64 %i.hw
  %scevgep1116 = getelementptr i8, ptr %i.bo, i64 8
  %scevgep1117 = getelementptr i8, ptr %scevgep1116, i64 %i.hw
end_hunk_1
begin_hunk_2_@hypre_SMG2BuildRAPNoSym:bb.a
  store <2 x double> %i.td, ptr %i.te, align 8, !tbaa !35, !alias.scope !150, !noalias !152
  %wide.load1844 = load <2 x double>, ptr %i.su, align 8, !tbaa !35, !alias.scope !139 ; 2 uses
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.st
  %wide.load1845 = load <2 x double>, ptr %i.tf, align 8, !tbaa !35, !alias.scope !170
  %i.tg = fmul <2 x double> %wide.load1844, %wide.load1845
  %wide.load1846 = load <2 x double>, ptr %i.sx, align 8, !tbaa !35, !alias.scope !144 ; 2 uses
  %i.th = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.st
  %wide.load1847 = load <2 x double>, ptr %i.th, align 8, !tbaa !35, !alias.scope !171
  %i.ti = fmul <2 x double> %wide.load1844, %wide.load1847
  %i.tj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> %wide.load1846, <2 x double> %i.ti)
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.sr
  %wide.load1848 = load <2 x double>, ptr %i.tk, align 8, !tbaa !35, !alias.scope !172
  %i.tl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1848, <2 x double> %wide.load1846, <2 x double> %i.tj)
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.sq
  store <2 x double> %i.tl, ptr %i.tm, align 8, !tbaa !35, !alias.scope !173, !noalias !174
  %wide.load1849 = load <2 x double>, ptr %i.su, align 8, !tbaa !35, !alias.scope !139 ; 2 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.st
  %wide.load1850 = load <2 x double>, ptr %i.tn, align 8, !tbaa !35, !alias.scope !175
  %i.to = fmul <2 x double> %wide.load1849, %wide.load1850
  %i.tp = getelementptr i8, ptr %i.sx, i64 -8
  %wide.load1851 = load <2 x double>, ptr %i.tp, align 8, !tbaa !35, !alias.scope !144 ; 2 uses
  %i.tq = getelementptr inbounds [8 x i8], ptr %.1760, i64 %i.st
  %wide.load1852 = load <2 x double>, ptr %i.tq, align 8, !tbaa !35, !alias.scope !176
  %i.tr = fmul <2 x double> %wide.load1849, %wide.load1852
  %i.ts = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %wide.load1851, <2 x double> %i.tr)
  %i.tt = getelementptr inbounds [8 x i8], ptr %.1760, i64 %i.sr
  %wide.load1853 = load <2 x double>, ptr %i.tt, align 8, !tbaa !35, !alias.scope !177
  %i.tu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1853, <2 x double> %wide.load1851, <2 x double> %i.ts)
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.sq
  store <2 x double> %i.tu, ptr %i.tv, align 8, !tbaa !35, !alias.scope !178, !noalias !179
  %i.tw = add nsw i64 %i.sp, 1                    ; 2 uses
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.sr
  %wide.load1854 = load <2 x double>, ptr %i.tx, align 8, !tbaa !35, !alias.scope !180
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.so
  %wide.load1855 = load <2 x double>, ptr %i.ty, align 8, !tbaa !35, !alias.scope !181 ; 2 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ss
  %wide.load1856 = load <2 x double>, ptr %i.tz, align 8, !tbaa !35, !alias.scope !182
  %i.ua = fmul <2 x double> %wide.load1855, %wide.load1856
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.tw
  %wide.load1857 = load <2 x double>, ptr %i.ub, align 8, !tbaa !35, !alias.scope !183 ; 2 uses
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %wide.load1857, <2 x double> %wide.load1854)
  %wide.load1858 = load <2 x double>, ptr %i.su, align 8, !tbaa !35, !alias.scope !139 ; 2 uses
  %wide.load1859 = load <2 x double>, ptr %i.sv, align 8, !tbaa !35, !alias.scope !142
  %i.ud = fmul <2 x double> %wide.load1858, %wide.load1859
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.tw
  %wide.load1860 = load <2 x double>, ptr %i.ue, align 8, !tbaa !35, !alias.scope !184 ; 2 uses
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ud, <2 x double> %wide.load1860, <2 x double> %i.uc)
  %i.ug = getelementptr inbounds [8 x i8], ptr %.1762, i64 %i.ss
  %wide.load1861 = load <2 x double>, ptr %i.ug, align 8, !tbaa !35, !alias.scope !185
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1855, <2 x double> %wide.load1861, <2 x double> %i.uf)
  %i.ui = getelementptr inbounds [8 x i8], ptr %.1758, i64 %i.st
  %wide.load1862 = load <2 x double>, ptr %i.ui, align 8, !tbaa !35, !alias.scope !186
  %i.uj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1858, <2 x double> %wide.load1862, <2 x double> %i.uh)
  %i.uk = getelementptr inbounds [8 x i8], ptr %.1758, i64 %i.sr
  %wide.load1863 = load <2 x double>, ptr %i.uk, align 8, !tbaa !35, !alias.scope !187
  %i.ul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1863, <2 x double> %wide.load1857, <2 x double> %i.uj)
  %wide.load1864 = load <2 x double>, ptr %i.tc, align 8, !tbaa !35, !alias.scope !148
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1864, <2 x double> %wide.load1860, <2 x double> %i.ul)
  %i.un = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.sq
  store <2 x double> %i.um, ptr %i.un, align 8, !tbaa !35, !alias.scope !188, !noalias !189
  %index.next1865 = add nuw i64 %index1838, 2     ; 2 uses
  %i.uo = icmp eq i64 %index.next1865, %n.vec1836
  br i1 %i.uo, label %middle.block1866, label %vector.body1837, !llvm.loop !190

middle.block1866:                                 ; preds = %vector.body1837
  br i1 %cmp.n1867, label %._crit_edge.us.us.us, label %scalar.ph1832.preheader

scalar.ph1832.preheader:                          ; preds = %vector.memcheck1406, %.preheader883.us.us.us, %middle.block1866
  %indvars.iv1028.ph = phi i64 [ %i.sd, %vector.memcheck1406 ], [ %i.sd, %.preheader883.us.us.us ], [ %i.sk, %middle.block1866 ]
  %indvars.iv1026.ph = phi i64 [ %i.sc, %vector.memcheck1406 ], [ %i.sc, %.preheader883.us.us.us ], [ %i.sl, %middle.block1866 ]
  %indvars.iv1024.ph = phi i64 [ %i.sb, %vector.memcheck1406 ], [ %i.sb, %.preheader883.us.us.us ], [ %i.sm, %middle.block1866 ]
  %indvars.iv1022.ph = phi i64 [ %i.sa, %vector.memcheck1406 ], [ %i.sa, %.preheader883.us.us.us ], [ %i.sn, %middle.block1866 ]
  %.3897.us.us.us.ph = phi i32 [ 0, %vector.memcheck1406 ], [ 0, %.preheader883.us.us.us ], [ %i.rz, %middle.block1866 ]
  br label %scalar.ph1832

scalar.ph1832:                                    ; preds = %scalar.ph1832.preheader, %scalar.ph1832
  %indvars.iv1028 = phi i64 [ %indvars.iv.next1029, %scalar.ph1832 ], [ %indvars.iv1028.ph, %scalar.ph1832.preheader ] ; 3 uses
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %scalar.ph1832 ], [ %indvars.iv1026.ph, %scalar.ph1832.preheader ] ; 2 uses
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %scalar.ph1832 ], [ %indvars.iv1024.ph, %scalar.ph1832.preheader ] ; 5 uses
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %scalar.ph1832 ], [ %indvars.iv1022.ph, %scalar.ph1832.preheader ] ; 8 uses
  %.3897.us.us.us = phi i32 [ %i.xj, %scalar.ph1832 ], [ %.3897.us.us.us.ph, %scalar.ph1832.preheader ]
  %i.up = sub nsw i64 %indvars.iv1022, %i.ro      ; 2 uses
  %i.uq = add nsw i64 %indvars.iv1022, %i.ro      ; 7 uses
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv1028 ; 4 uses
  %i.us = load double, ptr %i.ur, align 8, !tbaa !35 ; 2 uses
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.uq ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !35
  %i.uv = fmul double %i.us, %i.uu
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1026 ; 3 uses
  %i.uw = getelementptr i8, ptr %gep, i64 8
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !35 ; 2 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %.1762, i64 %i.uq
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !35
  %i.va = fmul double %i.us, %i.uz
  %i.vb = call double @llvm.fmuladd.f64(double %i.uv, double %i.ux, double %i.va)
  %i.vc = getelementptr inbounds [8 x i8], ptr %.1762, i64 %indvars.iv1022 ; 2 uses
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !35
  %i.ve = call double @llvm.fmuladd.f64(double %i.vd, double %i.ux, double %i.vb)
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv1024
  store double %i.ve, ptr %i.vf, align 8, !tbaa !35
  %i.vg = load double, ptr %i.ur, align 8, !tbaa !35 ; 2 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.uq
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !35
  %i.vj = fmul double %i.vg, %i.vi
  %i.vk = load double, ptr %gep, align 8, !tbaa !35 ; 2 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.uq
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !35
  %i.vn = fmul double %i.vg, %i.vm
  %i.vo = call double @llvm.fmuladd.f64(double %i.vj, double %i.vk, double %i.vn)
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv1022
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !35
  %i.vr = call double @llvm.fmuladd.f64(double %i.vq, double %i.vk, double %i.vo)
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv1024
  store double %i.vr, ptr %i.vs, align 8, !tbaa !35
  %i.vt = load double, ptr %i.ur, align 8, !tbaa !35 ; 2 uses
  %i.vu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.uq
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !35
  %i.vw = fmul double %i.vt, %i.vv
  %i.vx = getelementptr i8, ptr %gep, i64 -8
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !35 ; 2 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %.1760, i64 %i.uq
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !35
  %i.wb = fmul double %i.vt, %i.wa
  %i.wc = call double @llvm.fmuladd.f64(double %i.vw, double %i.vy, double %i.wb)
  %i.wd = getelementptr inbounds [8 x i8], ptr %.1760, i64 %indvars.iv1022
  %i.we = load double, ptr %i.wd, align 8, !tbaa !35
  %i.wf = call double @llvm.fmuladd.f64(double %i.we, double %i.vy, double %i.wc)
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv1024
  store double %i.wf, ptr %i.wg, align 8, !tbaa !35
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, 1 ; 4 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv1022
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !35
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv1028
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !35 ; 2 uses
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.up
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !35
  %i.wn = fmul double %i.wk, %i.wm
  %i.wo = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next1027
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !35 ; 2 uses
  %i.wq = call double @llvm.fmuladd.f64(double %i.wn, double %i.wp, double %i.wi)
  %i.wr = load double, ptr %i.ur, align 8, !tbaa !35 ; 2 uses
  %i.ws = load double, ptr %i.ut, align 8, !tbaa !35
  %i.wt = fmul double %i.wr, %i.ws
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv.next1027
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !35 ; 2 uses
  %i.ww = call double @llvm.fmuladd.f64(double %i.wt, double %i.wv, double %i.wq)
  %i.wx = getelementptr inbounds [8 x i8], ptr %.1762, i64 %i.up
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !35
  %i.wz = call double @llvm.fmuladd.f64(double %i.wk, double %i.wy, double %i.ww)
  %i.xa = getelementptr inbounds [8 x i8], ptr %.1758, i64 %i.uq
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !35
  %i.xc = call double @llvm.fmuladd.f64(double %i.wr, double %i.xb, double %i.wz)
  %i.xd = getelementptr inbounds [8 x i8], ptr %.1758, i64 %indvars.iv1022
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !35
  %i.xf = call double @llvm.fmuladd.f64(double %i.xe, double %i.wp, double %i.xc)
  %i.xg = load double, ptr %i.vc, align 8, !tbaa !35
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.wv, double %i.xf)
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv1024
  store double %i.xh, ptr %i.xi, align 8, !tbaa !35
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, 1 ; 2 uses
  %indvars.iv.next1023 = add nsw i64 %indvars.iv1022, %i.rn ; 2 uses
  %indvars.iv.next1025 = add nsw i64 %indvars.iv1024, 1 ; 2 uses
  %i.xj = add nuw nsw i32 %.3897.us.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.xj, %i.qq
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph1832, !llvm.loop !191

._crit_edge.us.us.us:                             ; preds = %scalar.ph1832, %middle.block1866
  %indvars.iv.next1027.lcssa = phi i64 [ %i.sl, %middle.block1866 ], [ %indvars.iv.next1027, %scalar.ph1832 ]
  %indvars.iv.next1029.lcssa = phi i64 [ %i.sk, %middle.block1866 ], [ %indvars.iv.next1029, %scalar.ph1832 ]
  %indvars.iv.next1023.lcssa = phi i64 [ %i.sn, %middle.block1866 ], [ %indvars.iv.next1023, %scalar.ph1832 ]
  %indvars.iv.next1025.lcssa = phi i64 [ %i.sm, %middle.block1866 ], [ %indvars.iv.next1025, %scalar.ph1832 ]
  %i.xk = trunc nsw i64 %indvars.iv.next1029.lcssa to i32
  %i.xl = trunc nsw i64 %indvars.iv.next1027.lcssa to i32
  %i.xm = trunc nsw i64 %indvars.iv.next1025.lcssa to i32
  %i.xn = trunc nsw i64 %indvars.iv.next1023.lcssa to i32
  %i.xo = add nsw i32 %i.re, %i.xl                ; 2 uses
  %i.xp = add nsw i32 %i.rf, %i.xk                ; 2 uses
  %i.xq = add nsw i32 %i.rg, %i.xn                ; 2 uses
  %i.xr = add nsw i32 %i.rh, %i.xm                ; 2 uses
  %i.xs = add nuw nsw i32 %.3752905.us.us.us, 1   ; 2 uses
  %exitcond1037.not = icmp eq i32 %i.xs, %i.qr
  br i1 %exitcond1037.not, label %._crit_edge906.split.us.us.us, label %.preheader883.us.us.us, !llvm.loop !192

._crit_edge906.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.xt = add nsw i32 %i.ri, %i.xo
  %i.xu = add nsw i32 %i.rj, %i.xp
  %i.xv = add nsw i32 %i.rk, %i.xq
  %i.xw = add nsw i32 %i.rl, %i.xr
  %i.xx = add nuw nsw i32 %.3756925.us.us, 1      ; 2 uses
  %exitcond1038.not = icmp eq i32 %i.xx, %i.qs
  br i1 %exitcond1038.not, label %.loopexit889, label %.preheader885.us.us, !llvm.loop !193

.loopexit889:                                     ; preds = %._crit_edge906.split.us.us.us, %._crit_edge949.split.us.us.us, %.preheader887.lr.ph, %.preheader886.lr.ph, %bb.aa, %bb.p
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 2 uses
  %i.xy = load i32, ptr %i.n, align 8, !tbaa !26
  %i.xz = sext i32 %i.xy to i64
  %i.ya = icmp slt i64 %indvars.iv.next1060, %i.xz
  br i1 %i.ya, label %.preheader891, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %.loopexit889, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG2RAPPeriodicSym(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 14 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.loopexit335

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @hypre_StructMatrixAssemble(ptr noundef nonnull %0) #6 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit335

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge363.split
  %indvars.iv390 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next391, %._crit_edge363.split ] ; 4 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv390 ; 4 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv390 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = trunc nuw nsw i64 %indvars.iv390 to i32 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.ab = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.ac = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.o, align 4, !tbaa !4
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.ad = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.o, align 4, !tbaa !4
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.ae = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.a) #6 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.o, align 4, !tbaa !4
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.af = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef nonnull %0, i32 noundef %i.aa, ptr noundef nonnull %i.a) #6 ; 7 uses
  %i.ag = call i32 @hypre_BoxGetSize(ptr noundef %i.t, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ah = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !4   ; 2 uses
  %i.aj = sub nsw i32 %i.ah, %i.ai                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = load i32, ptr %i.z, align 4, !tbaa !4   ; 2 uses
  %i.an = sub nsw i32 %i.al, %i.am                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.y, align 4, !tbaa !4
  %i.ar = sub nsw i32 %i.aq, %i.am                ; 3 uses
  %i.as = icmp sgt i32 %i.ar, -1                  ; 3 uses
  br i1 %i.as, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = add nuw nsw i32 %i.ar, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.av = sub nsw i32 %i.at, %i.au
  %i.aw = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.ax = mul nsw i32 %i.av, %i.aw
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ay = phi i32 [ 0, %._crit_edge ], [ %i.ax, %bb.d ]
  %i.az = load i32, ptr %i.x, align 4, !tbaa !4
  %i.ba = sub i32 %i.az, %i.ai                    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1                  ; 3 uses
  %i.bc = add i32 %i.ba, 1                        ; 3 uses
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 0       ; 7 uses
  %i.be = mul nsw i32 %i.bd, %.pre-phi
  %i.bf = select i1 %i.as, i32 %i.be, i32 0       ; 2 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !4   ; 10 uses
  %i.bi = load i32, ptr %i.r, align 4, !tbaa !4   ; 5 uses
  %.0303 = call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bg)
  %.1304 = call i32 @llvm.smax.i32(i32 %i.bi, i32 %.0303)
  %i.bj = icmp sgt i32 %.1304, 0                  ; 2 uses
  br i1 %i.bj, label %.preheader333.lr.ph, label %._crit_edge.split

.preheader333.lr.ph:                              ; preds = %bb.e
  %factor.op.mul346 = mul i32 %i.bd, %i.bh
  %i.bk = icmp sgt i32 %i.bi, 0
  %i.bl = icmp sgt i32 %i.bh, 0
  %i.bm = sub i32 %i.bd, %i.bg
  %i.bn = sub i32 %i.bf, %factor.op.mul346
  %brmerge.not406 = and i1 %i.bk, %i.bl
  %i.bo = icmp sgt i32 %i.bg, 0
  %or.cond = and i1 %brmerge.not406, %i.bo
  br i1 %or.cond, label %.preheader331.us.us.preheader, label %._crit_edge.split

.preheader331.us.us.preheader:                    ; preds = %.preheader333.lr.ph
  %i.bp = add nsw i32 %i.ay, %i.an
  %i.bq = mul nsw i32 %i.bc, %i.bp
  %i.br = select i1 %i.bb, i32 %i.bq, i32 0
  %i.bs = add nsw i32 %i.br, %i.aj
  %scevgep415.a = getelementptr i8, ptr %i.ac, i64 8
  %i.bt = add nsw i32 %i.bg, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 5 uses
  %scevgep416.a = getelementptr i8, ptr %scevgep415.a, i64 %i.bv
  %scevgep419.a = getelementptr i8, ptr %i.ab, i64 8
  %scevgep420.a = getelementptr i8, ptr %scevgep419.a, i64 %i.bv
  %scevgep422.a = getelementptr i8, ptr %i.af, i64 -8
  %scevgep424.a = getelementptr i8, ptr %i.af, i64 %i.bv
  %scevgep427.a = getelementptr i8, ptr %i.ae, i64 8
  %scevgep428.a = getelementptr i8, ptr %scevgep427.a, i64 %i.bv
  %scevgep431 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep432 = getelementptr i8, ptr %scevgep431, i64 %i.bv
  %i.bw = zext nneg i32 %i.bg to i64              ; 2 uses
  %min.iters.check459 = icmp ult i32 %i.bg, 8
  %n.vec462 = and i64 %i.bw, 2147483646           ; 4 uses
  %i.bx = trunc nuw nsw i64 %n.vec462 to i32
  %cmp.n471 = icmp eq i64 %n.vec462, %i.bw
  br label %.preheader331.us.us

.preheader331.us.us:                              ; preds = %.preheader331.us.us.preheader, %._crit_edge340.split.us.us.us
  %.1288343.us.us = phi i32 [ %i.df, %._crit_edge340.split.us.us.us ], [ 0, %.preheader331.us.us.preheader ]
  %.0291342.us.us = phi i32 [ %i.de, %._crit_edge340.split.us.us.us ], [ %i.bs, %.preheader331.us.us.preheader ]
  br label %.preheader329.us.us.us

.preheader329.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader331.us.us
  %.1281339.us.us.us = phi i32 [ 0, %.preheader331.us.us ], [ %i.dd, %._crit_edge.us.us.us ]
  %.1292338.us.us.us = phi i32 [ %.0291342.us.us, %.preheader331.us.us ], [ %i.dc, %._crit_edge.us.us.us ]
  %i.by = sext i32 %.1292338.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check459, label %scalar.ph458.preheader, label %vector.memcheck414

vector.memcheck414:                               ; preds = %.preheader329.us.us.us
  %i.bz = shl nsw i64 %i.by, 3                    ; 10 uses
  %scevgep.a = getelementptr i8, ptr %i.ac, i64 %i.bz ; 4 uses
  %scevgep417 = getelementptr i8, ptr %scevgep416.a, i64 %i.bz ; 4 uses
  %scevgep418.a = getelementptr i8, ptr %i.ab, i64 %i.bz ; 4 uses
  %scevgep421 = getelementptr i8, ptr %scevgep420.a, i64 %i.bz ; 4 uses
  %scevgep423.a = getelementptr i8, ptr %scevgep422.a, i64 %i.bz ; 2 uses
  %scevgep425 = getelementptr i8, ptr %scevgep424.a, i64 %i.bz ; 2 uses
  %scevgep426.a = getelementptr i8, ptr %i.ae, i64 %i.bz ; 2 uses
  %scevgep429 = getelementptr i8, ptr %scevgep428.a, i64 %i.bz ; 2 uses
  %scevgep430.a = getelementptr i8, ptr %i.ad, i64 %i.bz ; 2 uses
  %scevgep433 = getelementptr i8, ptr %scevgep432, i64 %i.bz ; 2 uses
  %bound0 = icmp ult ptr %scevgep.a, %scevgep421
  %bound1 = icmp ult ptr %scevgep418.a, %scevgep417
  %found.conflict = and i1 %bound0, %bound1
  %bound0434.a = icmp ult ptr %scevgep.a, %scevgep425
  %bound1435.a = icmp ult ptr %scevgep423.a, %scevgep417
  %found.conflict436.a = and i1 %bound0434.a, %bound1435.a
  %conflict.rdx437.a = or i1 %found.conflict, %found.conflict436.a
  %bound0438.a = icmp ult ptr %scevgep.a, %scevgep429
  %bound1439.a = icmp ult ptr %scevgep426.a, %scevgep417
  %found.conflict440.a = and i1 %bound0438.a, %bound1439.a
  %conflict.rdx441.a = or i1 %conflict.rdx437.a, %found.conflict440.a
  %bound0442.a = icmp ult ptr %scevgep.a, %scevgep433
  %bound1443.a = icmp ult ptr %scevgep430.a, %scevgep417
  %found.conflict444.a = and i1 %bound0442.a, %bound1443.a
  %conflict.rdx445.a = or i1 %conflict.rdx441.a, %found.conflict444.a
  %bound0446.a = icmp ult ptr %scevgep418.a, %scevgep425
  %bound1447.a = icmp ult ptr %scevgep423.a, %scevgep421
  %found.conflict448.a = and i1 %bound0446.a, %bound1447.a
  %conflict.rdx449.a = or i1 %conflict.rdx445.a, %found.conflict448.a
  %bound0450.a = icmp ult ptr %scevgep418.a, %scevgep429
  %bound1451.a = icmp ult ptr %scevgep426.a, %scevgep421
  %found.conflict452.a = and i1 %bound0450.a, %bound1451.a
  %conflict.rdx453.a = or i1 %conflict.rdx449.a, %found.conflict452.a
  %bound0454 = icmp ult ptr %scevgep418.a, %scevgep433
  %bound1455 = icmp ult ptr %scevgep430.a, %scevgep421
  %found.conflict456 = and i1 %bound0454, %bound1455
  %conflict.rdx457 = or i1 %conflict.rdx453.a, %found.conflict456
  br i1 %conflict.rdx457, label %scalar.ph458.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %vector.memcheck414
  %i.ca = add nsw i64 %n.vec462, %i.by            ; 2 uses
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph460
  %index464 = phi i64 [ 0, %vector.ph460 ], [ %index.next469, %vector.body463 ] ; 2 uses
  %i.cb = add i64 %index464, %i.by                ; 5 uses
  %i.cc = getelementptr [8 x i8], ptr %i.af, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !35, !alias.scope !195
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cb
  %wide.load465 = load <2 x double>, ptr %i.ce, align 8, !tbaa !35, !alias.scope !198
  %i.cf = fadd <2 x double> %wide.load, %wide.load465
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cb ; 2 uses
  %wide.load466 = load <2 x double>, ptr %i.cg, align 8, !tbaa !35, !alias.scope !200, !noalias !202
  %i.ch = fadd <2 x double> %wide.load466, %i.cf
  store <2 x double> %i.ch, ptr %i.cg, align 8, !tbaa !35, !alias.scope !200, !noalias !202
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cb
  %wide.load467 = load <2 x double>, ptr %i.ci, align 8, !tbaa !35, !alias.scope !205
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cb ; 2 uses
  %wide.load468 = load <2 x double>, ptr %i.cj, align 8, !tbaa !35, !alias.scope !206, !noalias !207
  %i.ck = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load467, <2 x double> splat (double 2.000000e+00), <2 x double> %wide.load468)
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !35, !alias.scope !206, !noalias !207
  %index.next469 = add nuw i64 %index464, 2       ; 2 uses
  %i.cl = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.cl, label %middle.block470, label %vector.body463, !llvm.loop !208

middle.block470:                                  ; preds = %vector.body463
  br i1 %cmp.n471, label %._crit_edge.us.us.us, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %vector.memcheck414, %.preheader329.us.us.us, %middle.block470
  %indvars.iv.ph = phi i64 [ %i.by, %vector.memcheck414 ], [ %i.by, %.preheader329.us.us.us ], [ %i.ca, %middle.block470 ]
  %.1279337.us.us.us.ph = phi i32 [ 0, %vector.memcheck414 ], [ 0, %.preheader329.us.us.us ], [ %i.bx, %middle.block470 ]
  br label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.preheader, %scalar.ph458
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph458 ], [ %indvars.iv.ph, %scalar.ph458.preheader ] ; 6 uses
  %.1279337.us.us.us = phi i32 [ %i.da, %scalar.ph458 ], [ %.1279337.us.us.us.ph, %scalar.ph458.preheader ]
  %i.cm = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !35
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !35
  %i.cr = fadd double %i.co, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !35
  %i.cu = fadd double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !35
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !35
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !35
  %i.cz = call double @llvm.fmuladd.f64(double %i.cw, double 2.000000e+00, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.da = add nuw nsw i32 %.1279337.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.bg
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph458, !llvm.loop !209

._crit_edge.us.us.us:                             ; preds = %scalar.ph458, %middle.block470
  %indvars.iv.next.lcssa = phi i64 [ %i.ca, %middle.block470 ], [ %indvars.iv.next, %scalar.ph458 ]
  %i.db = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.dc = add nsw i32 %i.bm, %i.db                ; 2 uses
  %i.dd = add nuw nsw i32 %.1281339.us.us.us, 1   ; 2 uses
  %exitcond382.not = icmp eq i32 %i.dd, %i.bh
  br i1 %exitcond382.not, label %._crit_edge340.split.us.us.us, label %.preheader329.us.us.us, !llvm.loop !210

._crit_edge340.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.de = add nsw i32 %i.bn, %i.dc
  %i.df = add nuw nsw i32 %.1288343.us.us, 1      ; 2 uses
  %exitcond383.not = icmp eq i32 %i.df, %i.bi
  br i1 %exitcond383.not, label %._crit_edge.split, label %.preheader331.us.us, !llvm.loop !211

._crit_edge.split:                                ; preds = %._crit_edge340.split.us.us.us, %.preheader333.lr.ph, %bb.e
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.split
  %i.dg = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.dh = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = mul nsw i32 %i.di, %.pre-phi
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.split, %bb.f
  %i.dk = phi i32 [ %i.dj, %bb.f ], [ 0, %._crit_edge.split ]
  %3 = add nsw i32 %i.dk, %i.an
  %4 = mul nsw i32 %3, %i.bc
  %5 = select i1 %i.bb, i32 %4, i32 0
  %6 = add nsw i32 %5, %i.aj
  br i1 %i.bj, label %.preheader332.lr.ph, label %._crit_edge363.split

.preheader332.lr.ph:                              ; preds = %bb.g
  %factor.op.mul361 = mul i32 %i.bd, %i.bh
  %i.dl = icmp sgt i32 %i.bi, 0
  %i.dm = icmp sgt i32 %i.bh, 0
  %i.dn = sub i32 %i.bf, %factor.op.mul361
  %brmerge373.not408 = and i1 %i.dl, %i.dm
  %i.do = icmp sgt i32 %i.bg, 0
  %or.cond404 = and i1 %brmerge373.not408, %i.do
  br i1 %or.cond404, label %.preheader330.us.us.preheader, label %._crit_edge363.split

.preheader330.us.us.preheader:                    ; preds = %.preheader332.lr.ph
  %i.dp = zext nneg i32 %i.bg to i64
  %7 = shl nuw nsw i64 %i.dp, 3                   ; 9 uses
  %xtraiter = and i32 %i.bh, 1
  %8 = icmp eq i32 %i.bh, 1
  %unroll_iter = and i32 %i.bh, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod462 = trunc i32 %i.bh to i1
  br label %.preheader.us.us.us.a

.preheader.us.us.us.a:                            ; preds = %.preheader330.us.us.preheader, %._crit_edge352.us.us.us
  %.3283354.us.us.us = phi i32 [ %i.dw, %._crit_edge352.us.us.us ], [ 0, %.preheader330.us.us.preheader ]
  %.4353.us.us.us.a = phi i32 [ %i.dv, %._crit_edge352.us.us.us ], [ %6, %.preheader330.us.us.preheader ] ; 2 uses
  br i1 %8, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us.a, %vector.body
  %.4353.us.us.us = phi i32 [ %14, %vector.body ], [ %.4353.us.us.us.a, %.preheader.us.us.us.a ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %vector.body ], [ 0, %.preheader.us.us.us.a ]
  %9 = sext i32 %.4353.us.us.us to i64
  %10 = shl nsw i64 %9, 3                         ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %10
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %7, i1 false), !tbaa !35
  %scevgep384 = getelementptr i8, ptr %i.ad, i64 %10
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep384, i8 0, i64 %7, i1 false), !tbaa !35
  %i.dq = getelementptr i8, ptr %i.af, i64 %10
  call void @llvm.memset.p0.i64(ptr align 8 %i.dq, i8 0, i64 %7, i1 false), !tbaa !35
  %11 = add i32 %i.bd, %.4353.us.us.us            ; 2 uses
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3                        ; 3 uses
  %i.dr = getelementptr i8, ptr %i.ae, i64 %13
  call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %7, i1 false), !tbaa !35
  %scevgep384.1 = getelementptr i8, ptr %i.ad, i64 %13
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep384.1, i8 0, i64 %7, i1 false), !tbaa !35
  %i.ds = getelementptr i8, ptr %i.af, i64 %13
  call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %7, i1 false), !tbaa !35
  %14 = add i32 %i.bd, %11                        ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %i.dt = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %i.dt, label %scalar.ph.prol.loopexit, label %vector.body, !llvm.loop !212

scalar.ph.prol.loopexit:                          ; preds = %vector.body
  br i1 %lcmp.mod.not, label %._crit_edge352.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %.preheader.us.us.us.a
  %.3351.us.us.us = phi i32 [ %.4353.us.us.us.a, %.preheader.us.us.us.a ], [ %14, %scalar.ph.prol.loopexit ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod462)
  %15 = sext i32 %.3351.us.us.us to i64
  %16 = shl nsw i64 %15, 3                        ; 3 uses
  %scevgep.epil = getelementptr i8, ptr %i.ae, i64 %16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %7, i1 false), !tbaa !35
  %scevgep384.epil = getelementptr i8, ptr %i.ad, i64 %16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep384.epil, i8 0, i64 %7, i1 false), !tbaa !35
  %scevgep385.epil = getelementptr i8, ptr %i.af, i64 %16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep385.epil, i8 0, i64 %7, i1 false), !tbaa !35
  %i.du = add i32 %i.bd, %.3351.us.us.us
  br label %._crit_edge352.us.us.us

._crit_edge352.us.us.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.lcssa460 = phi i32 [ %14, %scalar.ph.prol.loopexit ], [ %i.du, %scalar.ph ]
  %i.dv = add nsw i32 %i.dn, %.lcssa460
  %i.dw = add nuw nsw i32 %.3283354.us.us.us, 1   ; 2 uses
  %exitcond388.not = icmp eq i32 %i.dw, %i.bi
  br i1 %exitcond388.not, label %._crit_edge363.split, label %.preheader.us.us.us.a, !llvm.loop !213

._crit_edge363.split:                             ; preds = %._crit_edge352.us.us.us, %.preheader332.lr.ph, %bb.g
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %i.dx = load i32, ptr %i.k, align 8, !tbaa !26
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next391, %i.dy
  br i1 %i.dz, label %bb.c, label %.loopexit335, !llvm.loop !214

.loopexit335:                                     ; preds = %._crit_edge363.split, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

declare i32 @hypre_StructMatrixAssemble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG2RAPPeriodicNoSym(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 22 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.preheader206, label %.loopexit207

.preheader206:                                    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit207

.lr.ph:                                           ; preds = %.preheader206
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv230 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next231, %._crit_edge.split ] ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv230 ; 4 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv230 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.w = trunc nuw nsw i64 %indvars.iv230 to i32  ; 9 uses
  %i.x = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.y = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.z = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.aa = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 -1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.ab = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.ac = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.ad = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.ae = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !4
  store i32 1, ptr %i.n, align 4, !tbaa !4
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %i.af = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) #6 ; 4 uses
  %i.ag = call i32 @hypre_BoxGetSize(ptr noundef %i.s, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.v, align 4, !tbaa !4   ; 2 uses
  %i.aj = sub i32 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %i.ao = sub i32 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sub nsw i32 %i.ar, %i.an                ; 3 uses
  %i.at = icmp sgt i32 %i.as, -1                  ; 2 uses
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sub nsw i32 %i.av, %i.ax
  %i.az = add nuw nsw i32 %i.as, 1
  %i.ba = mul nsw i32 %i.ay, %i.az
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bb = phi i32 [ %i.ba, %bb.c ], [ 0, %bb.b ]
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !4   ; 7 uses
  %i.bd = load i32, ptr %i.p, align 4, !tbaa !4   ; 4 uses
  %i.be = load i32, ptr %i.q, align 4, !tbaa !4   ; 3 uses
  %.0177 = call i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bc)
  %.1178 = call i32 @llvm.smax.i32(i32 %i.be, i32 %.0177)
  %i.bf = icmp sgt i32 %.1178, 0
  br i1 %i.bf, label %.preheader205.lr.ph, label %._crit_edge.split

.preheader205.lr.ph:                              ; preds = %bb.d
  %i.bg = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.bh = sub i32 %i.bg, %i.ai                    ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1                  ; 2 uses
  %i.bj = add i32 %i.bh, 1                        ; 2 uses
  %i.bk = select i1 %i.bi, i32 %i.bj, i32 0       ; 3 uses
  %factor.op.mul218 = mul i32 %i.bk, %i.bd
  %i.bl = add nuw nsw i32 %i.as, 1
  %i.bm = mul nsw i32 %i.bk, %i.bl
  %i.bn = select i1 %i.at, i32 %i.bm, i32 0
  %i.bo = icmp sgt i32 %i.be, 0
  %i.bp = icmp sgt i32 %i.bd, 0
  %i.bq = sub i32 %i.bk, %i.bc
  %i.br = sub i32 %i.bn, %factor.op.mul218
  %brmerge.not239 = and i1 %i.bo, %i.bp
  %i.bs = icmp sgt i32 %i.bc, 0
  %or.cond = and i1 %brmerge.not239, %i.bs
  br i1 %or.cond, label %.preheader204.us.us.preheader, label %._crit_edge.split

.preheader204.us.us.preheader:                    ; preds = %.preheader205.lr.ph
  %i.bt = add nsw i32 %i.ao, %i.bb
  %i.bu = mul nsw i32 %i.bj, %i.bt
  %i.bv = select i1 %i.bi, i32 %i.bu, i32 0
  %i.bw = add nsw i32 %i.aj, %i.bv
  %scevgep240 = getelementptr i8, ptr %i.y, i64 8
  %i.bx = add nsw i32 %i.bc, -1
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 3                ; 9 uses
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.bz
  %scevgep244 = getelementptr i8, ptr %i.af, i64 8
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.bz
  %scevgep248 = getelementptr i8, ptr %i.aa, i64 8
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.bz
  %scevgep252 = getelementptr i8, ptr %i.x, i64 8
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %i.bz
  %scevgep256 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.bz
  %scevgep260 = getelementptr i8, ptr %i.z, i64 8
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.bz
  %scevgep264 = getelementptr i8, ptr %i.ac, i64 8
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.bz
  %scevgep268 = getelementptr i8, ptr %i.ae, i64 8
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.bz
  %scevgep272 = getelementptr i8, ptr %i.ab, i64 8
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.bz
  %i.ca = zext nneg i32 %i.bc to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bc, 20
  %n.vec = and i64 %i.ca, 2147483646              ; 4 uses
  %i.cb = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ca
  br label %.preheader204.us.us

.preheader204.us.us:                              ; preds = %.preheader204.us.us.preheader, %._crit_edge212.split.us.us.us
  %.1190215.us.us = phi i32 [ %i.dz, %._crit_edge212.split.us.us.us ], [ 0, %.preheader204.us.us.preheader ]
  %.0191214.us.us = phi i32 [ %i.dy, %._crit_edge212.split.us.us.us ], [ %i.bw, %.preheader204.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader204.us.us
  %.1185211.us.us.us = phi i32 [ 0, %.preheader204.us.us ], [ %i.dx, %._crit_edge.us.us.us ]
  %.1192210.us.us.us = phi i32 [ %.0191214.us.us, %.preheader204.us.us ], [ %i.dw, %._crit_edge.us.us.us ]
  %i.cc = sext i32 %.1192210.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.cd = shl nsw i64 %i.cc, 3                    ; 18 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.cd ; 8 uses
  %scevgep242 = getelementptr i8, ptr %scevgep241, i64 %i.cd ; 8 uses
  %scevgep243 = getelementptr i8, ptr %i.af, i64 %i.cd ; 8 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.cd ; 8 uses
  %scevgep247 = getelementptr i8, ptr %i.aa, i64 %i.cd ; 8 uses
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.cd ; 8 uses
  %scevgep251 = getelementptr i8, ptr %i.x, i64 %i.cd ; 8 uses
  %scevgep254 = getelementptr i8, ptr %scevgep253, i64 %i.cd ; 8 uses
  %scevgep255 = getelementptr i8, ptr %i.ad, i64 %i.cd ; 8 uses
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.cd ; 8 uses
  %scevgep259 = getelementptr i8, ptr %i.z, i64 %i.cd ; 8 uses
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.cd ; 8 uses
  %scevgep263 = getelementptr i8, ptr %i.ac, i64 %i.cd ; 8 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.cd ; 8 uses
  %scevgep267 = getelementptr i8, ptr %i.ae, i64 %i.cd ; 8 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.cd ; 8 uses
  %scevgep271 = getelementptr i8, ptr %i.ab, i64 %i.cd ; 8 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.cd ; 8 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep246
  %bound1 = icmp ult ptr %scevgep243, %scevgep242
  %found.conflict = and i1 %bound0, %bound1
  %bound0275 = icmp ult ptr %scevgep, %scevgep250
  %bound1276 = icmp ult ptr %scevgep247, %scevgep242
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx = or i1 %found.conflict, %found.conflict277
  %bound0278 = icmp ult ptr %scevgep, %scevgep254
  %bound1279 = icmp ult ptr %scevgep251, %scevgep242
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx, %found.conflict280
  %bound0282 = icmp ult ptr %scevgep, %scevgep258
  %bound1283 = icmp ult ptr %scevgep255, %scevgep242
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %scevgep, %scevgep262
  %bound1287 = icmp ult ptr %scevgep259, %scevgep242
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %scevgep, %scevgep266
  %bound1291 = icmp ult ptr %scevgep263, %scevgep242
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %bound0294 = icmp ult ptr %scevgep, %scevgep270
  %bound1295 = icmp ult ptr %scevgep267, %scevgep242
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx293, %found.conflict296
  %bound0298 = icmp ult ptr %scevgep, %scevgep274
  %bound1299 = icmp ult ptr %scevgep271, %scevgep242
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx297, %found.conflict300
  %bound0302 = icmp ult ptr %scevgep243, %scevgep250
  %bound1303 = icmp ult ptr %scevgep247, %scevgep246
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %conflict.rdx301, %found.conflict304
  %bound0306 = icmp ult ptr %scevgep243, %scevgep254
  %bound1307 = icmp ult ptr %scevgep251, %scevgep246
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  %bound0310 = icmp ult ptr %scevgep243, %scevgep258
  %bound1311 = icmp ult ptr %scevgep255, %scevgep246
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  %bound0314 = icmp ult ptr %scevgep243, %scevgep262
  %bound1315 = icmp ult ptr %scevgep259, %scevgep246
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  %bound0318 = icmp ult ptr %scevgep243, %scevgep266
  %bound1319 = icmp ult ptr %scevgep263, %scevgep246
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx317, %found.conflict320
  %bound0322 = icmp ult ptr %scevgep243, %scevgep270
  %bound1323 = icmp ult ptr %scevgep267, %scevgep246
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  %bound0326 = icmp ult ptr %scevgep243, %scevgep274
  %bound1327 = icmp ult ptr %scevgep271, %scevgep246
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %scevgep247, %scevgep254
  %bound1331 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %bound0334 = icmp ult ptr %scevgep247, %scevgep258
  %bound1335 = icmp ult ptr %scevgep255, %scevgep250
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx337 = or i1 %conflict.rdx333, %found.conflict336
  %bound0338 = icmp ult ptr %scevgep247, %scevgep262
  %bound1339 = icmp ult ptr %scevgep259, %scevgep250
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %conflict.rdx337, %found.conflict340
  %bound0342 = icmp ult ptr %scevgep247, %scevgep266
  %bound1343 = icmp ult ptr %scevgep263, %scevgep250
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %conflict.rdx341, %found.conflict344
  %bound0346 = icmp ult ptr %scevgep247, %scevgep270
  %bound1347 = icmp ult ptr %scevgep267, %scevgep250
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %scevgep247, %scevgep274
  %bound1351 = icmp ult ptr %scevgep271, %scevgep250
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %scevgep251, %scevgep258
  %bound1355 = icmp ult ptr %scevgep255, %scevgep254
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  %bound0358 = icmp ult ptr %scevgep251, %scevgep262
  %bound1359 = icmp ult ptr %scevgep259, %scevgep254
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %scevgep251, %scevgep266
  %bound1363 = icmp ult ptr %scevgep263, %scevgep254
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  %bound0366 = icmp ult ptr %scevgep251, %scevgep270
  %bound1367 = icmp ult ptr %scevgep267, %scevgep254
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %scevgep251, %scevgep274
  %bound1371 = icmp ult ptr %scevgep271, %scevgep254
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %scevgep255, %scevgep262
  %bound1375 = icmp ult ptr %scevgep259, %scevgep258
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %scevgep255, %scevgep266
  %bound1379 = icmp ult ptr %scevgep263, %scevgep258
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  %bound0382 = icmp ult ptr %scevgep255, %scevgep270
  %bound1383 = icmp ult ptr %scevgep267, %scevgep258
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  %bound0386 = icmp ult ptr %scevgep255, %scevgep274
  %bound1387 = icmp ult ptr %scevgep271, %scevgep258
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %scevgep259, %scevgep266
  %bound1391 = icmp ult ptr %scevgep263, %scevgep262
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %scevgep259, %scevgep270
  %bound1395 = icmp ult ptr %scevgep267, %scevgep262
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %scevgep259, %scevgep274
  %bound1399 = icmp ult ptr %scevgep271, %scevgep262
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %scevgep263, %scevgep270
  %bound1403 = icmp ult ptr %scevgep267, %scevgep266
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  %bound0406 = icmp ult ptr %scevgep263, %scevgep274
  %bound1407 = icmp ult ptr %scevgep271, %scevgep266
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx405, %found.conflict408
  %bound0410 = icmp ult ptr %scevgep267, %scevgep274
  %bound1411 = icmp ult ptr %scevgep271, %scevgep270
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = add nsw i64 %n.vec, %i.cc               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = add i64 %index, %i.cc                   ; 9 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.cf ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !35, !alias.scope !215, !noalias !218
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cf ; 2 uses
  %wide.load414 = load <2 x double>, ptr %i.ch, align 8, !tbaa !35, !alias.scope !226, !noalias !227
  %i.ci = fadd <2 x double> %wide.load, %wide.load414
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cf ; 2 uses
  %wide.load415 = load <2 x double>, ptr %i.cj, align 8, !tbaa !35, !alias.scope !228, !noalias !230
  %i.ck = fadd <2 x double> %wide.load415, %i.ci
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !35, !alias.scope !228, !noalias !230
  store <2 x double> zeroinitializer, ptr %i.cg, align 8, !tbaa !35, !alias.scope !215, !noalias !218
  store <2 x double> zeroinitializer, ptr %i.ch, align 8, !tbaa !35, !alias.scope !226, !noalias !227
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cf ; 2 uses
  %wide.load416 = load <2 x double>, ptr %i.cl, align 8, !tbaa !35, !alias.scope !231, !noalias !232
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cf ; 2 uses
  %wide.load417 = load <2 x double>, ptr %i.cm, align 8, !tbaa !35, !alias.scope !233, !noalias !234
  %i.cn = fadd <2 x double> %wide.load416, %wide.load417
  %i.co = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cf ; 2 uses
  %wide.load418 = load <2 x double>, ptr %i.co, align 8, !tbaa !35, !alias.scope !235, !noalias !236
  %i.cp = fadd <2 x double> %wide.load418, %i.cn
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !35, !alias.scope !235, !noalias !236
  store <2 x double> zeroinitializer, ptr %i.cl, align 8, !tbaa !35, !alias.scope !231, !noalias !232
  store <2 x double> zeroinitializer, ptr %i.cm, align 8, !tbaa !35, !alias.scope !233, !noalias !234
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cf ; 2 uses
  %wide.load419 = load <2 x double>, ptr %i.cq, align 8, !tbaa !35, !alias.scope !237, !noalias !238
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cf ; 2 uses
  %wide.load420 = load <2 x double>, ptr %i.cr, align 8, !tbaa !35, !alias.scope !238
  %i.cs = fadd <2 x double> %wide.load419, %wide.load420
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cf ; 2 uses
  %wide.load421 = load <2 x double>, ptr %i.ct, align 8, !tbaa !35, !alias.scope !239, !noalias !240
  %i.cu = fadd <2 x double> %wide.load421, %i.cs
  store <2 x double> %i.cu, ptr %i.ct, align 8, !tbaa !35, !alias.scope !239, !noalias !240
  store <2 x double> zeroinitializer, ptr %i.cq, align 8, !tbaa !35, !alias.scope !237, !noalias !238
  store <2 x double> zeroinitializer, ptr %i.cr, align 8, !tbaa !35, !alias.scope !238
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cc, %vector.memcheck ], [ %i.cc, %.preheader.us.us.us ], [ %i.ce, %middle.block ]
  %.1183209.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.cb, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %.1183209.us.us.us = phi i32 [ %i.du, %scalar.ph ], [ %.1183209.us.us.us.ph, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !35
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !35
  %i.da = fadd double %i.cx, %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = fadd double %i.dc, %i.da
  store double %i.dd, ptr %i.db, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.cw, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.cy, align 8, !tbaa !35
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !35
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !35
  %i.di = fadd double %i.df, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !35
  %i.dl = fadd double %i.dk, %i.di
  store double %i.dl, ptr %i.dj, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.de, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.dg, align 8, !tbaa !35
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !35
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !35
  %i.dq = fadd double %i.dn, %i.dp
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !35
  %i.dt = fadd double %i.ds, %i.dq
  store double %i.dt, ptr %i.dr, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.do, align 8, !tbaa !35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.du = add nuw nsw i32 %.1183209.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.bc
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !242

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ce, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.dv = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.dw = add nsw i32 %i.bq, %i.dv                ; 2 uses
  %i.dx = add nuw nsw i32 %.1185211.us.us.us, 1   ; 2 uses
  %exitcond228.not = icmp eq i32 %i.dx, %i.bd
  br i1 %exitcond228.not, label %._crit_edge212.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !243

._crit_edge212.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.dy = add nsw i32 %i.br, %i.dw
  %i.dz = add nuw nsw i32 %.1190215.us.us, 1      ; 2 uses
  %exitcond229.not = icmp eq i32 %i.dz, %i.be
  br i1 %exitcond229.not, label %._crit_edge.split, label %.preheader204.us.us, !llvm.loop !244

._crit_edge.split:                                ; preds = %._crit_edge212.split.us.us.us, %.preheader205.lr.ph, %bb.d
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.ea = load i32, ptr %i.j, align 8, !tbaa !26
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next231, %i.eb
  br i1 %i.ec, label %bb.b, label %.loopexit207, !llvm.loop !245

.loopexit207:                                     ; preds = %._crit_edge.split, %.preheader206, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 72}
!9 = !{!"hypre_StructMatrix_struct", !5, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !15, i64 64, !5, i64 72, !17, i64 80, !6, i64 88, !5, i64 112, !18, i64 120, !5, i64 128}
!10 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!13 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p2 int", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!19 = !{!9, !5, i64 0}
!20 = !{!9, !10, i64 8}
!21 = !{!22, !17, i64 16}
!22 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !13, i64 8, !17, i64 16, !23, i64 24, !5, i64 32, !24, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!23 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!24 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!25 = !{!22, !13, i64 8}
!26 = !{!27, !5, i64 8}
!27 = !{!"hypre_BoxArray_struct", !24, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!9, !12, i64 24}
!29 = !{!30, !5, i64 8}
!30 = !{!"hypre_StructStencil_struct", !17, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!27, !24, i64 0}
!34 = !{!9, !13, i64 40}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !6, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43}
!43 = distinct !{!43, !39}
!44 = !{!45}
!45 = distinct !{!45, !39}
!46 = !{!47, !48, !49, !50, !38, !51, !52, !41, !53, !43, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !39}
!65 = !{!56}
!66 = !{!59}
!67 = !{!58}
!68 = !{!47}
!69 = !{!48, !49, !50, !38, !51, !52, !41, !53, !43, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!70 = !{!60}
!71 = !{!48}
!72 = !{!49, !50, !38, !51, !52, !41, !53, !43, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!73 = !{!52}
!74 = !{!61}
!75 = !{!62}
!76 = !{!51}
!77 = !{!53}
!78 = !{!49}
!79 = !{!50, !38, !51, !52, !41, !53, !43, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!80 = !{!55}
!81 = !{!54}
!82 = !{!64}
!83 = !{!57}
!84 = !{!63}
!85 = !{!50}
!86 = !{!38, !51, !52, !41, !53, !43, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!87 = distinct !{!87, !32, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = distinct !{!90, !32, !88}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102}
!102 = distinct !{!102, !100}
!103 = !{!104}
!104 = distinct !{!104, !100}
!105 = !{!106}
!106 = distinct !{!106, !100}
!107 = !{!108, !109, !110, !99, !111, !112, !102, !113, !104, !114, !115, !116, !117, !118, !119}
!108 = distinct !{!108, !100}
!109 = distinct !{!109, !100}
!110 = distinct !{!110, !100}
!111 = distinct !{!111, !100}
!112 = distinct !{!112, !100}
!113 = distinct !{!113, !100}
!114 = distinct !{!114, !100}
!115 = distinct !{!115, !100}
!116 = distinct !{!116, !100}
!117 = distinct !{!117, !100}
!118 = distinct !{!118, !100}
!119 = distinct !{!119, !100}
!120 = !{!114}
!121 = !{!116}
!122 = !{!115}
!123 = !{!108}
!124 = !{!109, !110, !99, !111, !112, !102, !113, !104, !114, !115, !116, !117, !118, !119}
!125 = !{!117}
!126 = !{!109}
!127 = !{!110, !99, !111, !112, !102, !113, !104, !114, !115, !116, !117, !118, !119}
!128 = !{!112}
!129 = !{!118}
!130 = !{!111}
!131 = !{!113}
!132 = !{!119}
!133 = !{!110}
!134 = !{!99, !111, !112, !102, !113, !104, !114, !115, !116, !117, !118, !119}
!135 = distinct !{!135, !32, !88, !89}
!136 = distinct !{!136, !32, !88}
!137 = distinct !{!137, !32}
!138 = distinct !{!138, !32}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!143}
!143 = distinct !{!143, !141}
!144 = !{!145}
!145 = distinct !{!145, !141}
!146 = !{!147}
!147 = distinct !{!147, !141}
!148 = !{!149}
!149 = distinct !{!149, !141}
!150 = !{!151}
!151 = distinct !{!151, !141}
!152 = !{!153, !154, !155, !140, !156, !157, !143, !158, !145, !159, !160, !161, !162, !163, !149, !147, !164, !165, !166, !167, !168, !169}
!153 = distinct !{!153, !141}
!154 = distinct !{!154, !141}
!155 = distinct !{!155, !141}
!156 = distinct !{!156, !141}
!157 = distinct !{!157, !141}
!158 = distinct !{!158, !141}
!159 = distinct !{!159, !141}
!160 = distinct !{!160, !141}
!161 = distinct !{!161, !141}
!162 = distinct !{!162, !141}
!163 = distinct !{!163, !141}
!164 = distinct !{!164, !141}
!165 = distinct !{!165, !141}
!166 = distinct !{!166, !141}
!167 = distinct !{!167, !141}
!168 = distinct !{!168, !141}
!169 = distinct !{!169, !141}
!170 = !{!164}
!171 = !{!166}
!172 = !{!165}
!173 = !{!153}
!174 = !{!154, !155, !140, !156, !157, !143, !158, !145, !159, !160, !161, !162, !163, !149, !147, !164, !165, !166, !167, !168, !169}
!175 = !{!167}
!176 = !{!163}
!177 = !{!162}
!178 = !{!154}
!179 = !{!155, !140, !156, !157, !143, !158, !145, !159, !160, !161, !162, !163, !149, !147, !164, !165, !166, !167, !168, !169}
!180 = !{!157}
!181 = !{!168}
!182 = !{!156}
!183 = !{!158}
!184 = !{!169}
!185 = !{!161}
!186 = !{!160}
!187 = !{!159}
!188 = !{!155}
!189 = !{!140, !156, !157, !143, !158, !145, !159, !160, !161, !162, !163, !149, !147, !164, !165, !166, !167, !168, !169}
!190 = distinct !{!190, !32, !88, !89}
!191 = distinct !{!191, !32, !88}
!192 = distinct !{!192, !32}
!193 = distinct !{!193, !32}
!194 = distinct !{!194, !32}
!195 = !{!196}
!196 = distinct !{!196, !197}
!197 = distinct !{!197, !"LVerDomain"}
!198 = !{!199}
!199 = distinct !{!199, !197}
!200 = !{!201}
!201 = distinct !{!201, !197}
!202 = !{!203, !196, !199, !204}
!203 = distinct !{!203, !197}
!204 = distinct !{!204, !197}
!205 = !{!204}
!206 = !{!203}
!207 = !{!196, !199, !204}
!208 = distinct !{!208, !32, !88, !89}
!209 = distinct !{!209, !32, !88}
!210 = distinct !{!210, !32}
!211 = distinct !{!211, !32}
!212 = distinct !{!212, !32}
!213 = distinct !{!213, !32}
!214 = distinct !{!214, !32}
!215 = !{!216}
!216 = distinct !{!216, !217}
!217 = distinct !{!217, !"LVerDomain"}
!218 = !{!219, !220, !221, !222, !223, !224, !225}
!219 = distinct !{!219, !217}
!220 = distinct !{!220, !217}
!221 = distinct !{!221, !217}
!222 = distinct !{!222, !217}
!223 = distinct !{!223, !217}
!224 = distinct !{!224, !217}
!225 = distinct !{!225, !217}
!226 = !{!219}
!227 = !{!220, !221, !222, !223, !224, !225}
!228 = !{!229}
!229 = distinct !{!229, !217}
!230 = !{!216, !219, !220, !221, !222, !223, !224, !225}
!231 = !{!221}
!232 = !{!222, !223, !224, !225}
!233 = !{!222}
!234 = !{!223, !224, !225}
!235 = !{!220}
!236 = !{!221, !222, !223, !224, !225}
!237 = !{!224}
!238 = !{!225}
!239 = !{!223}
!240 = !{!224, !225}
!241 = distinct !{!241, !32, !88, !89}
!242 = distinct !{!242, !32, !88}
!243 = distinct !{!243, !32}
!244 = distinct !{!244, !32}
!245 = distinct !{!245, !32}
end_hunk_2
