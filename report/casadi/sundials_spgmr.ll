Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_spgmr?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef ptr @SpgmrMalloc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %0, 1                        ; 9 uses
  %i.c = tail call ptr @N_VCloneVectorArray(i32 noundef %i.b, ptr noundef %1) #7 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #8 ; 15 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = zext nneg i32 %0 to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv164 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next165, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #8 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !10
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.preheader127, label %bb.f

.preheader127:                                    ; preds = %bb.e
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge134, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader127
  %wide.trip.count167 = zext i32 %indvars.iv164 to i64
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %indvars.iv161 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next162, %.lr.ph133 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv161 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.o) #7
  store ptr null, ptr %i.n, align 8, !tbaa !10
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge134, label %.lr.ph133, !llvm.loop !24

._crit_edge134:                                   ; preds = %.lr.ph133, %.preheader127
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  %indvars.iv.next165 = add nuw i32 %indvars.iv164, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.f
  %i.p = shl nuw nsw i32 %0, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #8 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph157.preheader, label %bb.g

.lr.ph157.preheader:                              ; preds = %._crit_edge
  %2 = add nuw i32 %0, 1
  %wide.trip.count196 = zext i32 %2 to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %indvars.iv192 = phi i64 [ 0, %.lr.ph157.preheader ], [ %indvars.iv.next193, %.lr.ph157 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.v) #7
  store ptr null, ptr %i.u, align 8, !tbaa !10
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next193, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge158, label %.lr.ph157, !llvm.loop !26

._crit_edge158:                                   ; preds = %.lr.ph157
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.w = tail call ptr @N_VClone(ptr noundef %1) #7 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.lr.ph153.preheader, label %bb.h

.lr.ph153.preheader:                              ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.s) #7
  %3 = add nuw i32 %0, 1
  %wide.trip.count190 = zext i32 %3 to i64
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %.lr.ph153
  %indvars.iv186 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next187, %.lr.ph153 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv186 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.z) #7
  store ptr null, ptr %i.y, align 8, !tbaa !10
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count190
  br i1 %exitcond191.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !27

._crit_edge154:                                   ; preds = %.lr.ph153
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.f) #8 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.lr.ph148.preheader, label %bb.i

.lr.ph148.preheader:                              ; preds = %bb.h
  tail call void @N_VDestroy(ptr noundef nonnull %i.w) #7
  tail call void @free(ptr noundef nonnull %i.s) #7
  %4 = add nuw i32 %0, 1
  %wide.trip.count184 = zext i32 %4 to i64
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %.lr.ph148
  %indvars.iv180 = phi i64 [ 0, %.lr.ph148.preheader ], [ %indvars.iv.next181, %.lr.ph148 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv180 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.ad) #7
  store ptr null, ptr %i.ac, align 8, !tbaa !10
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !28

._crit_edge149:                                   ; preds = %.lr.ph148
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call ptr @N_VClone(ptr noundef %1) #7 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph143.preheader, label %bb.j

.lr.ph143.preheader:                              ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.aa) #7
  tail call void @N_VDestroy(ptr noundef nonnull %i.w) #7
  tail call void @free(ptr noundef nonnull %i.s) #7
  %5 = add nuw i32 %0, 1
  %wide.trip.count178 = zext i32 %5 to i64
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.lr.ph143
  %indvars.iv174 = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next175, %.lr.ph143 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv174 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.ah) #7
  store ptr null, ptr %i.ag, align 8, !tbaa !10
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count178
  br i1 %exitcond179.not, label %._crit_edge144, label %.lr.ph143, !llvm.loop !29

._crit_edge144:                                   ; preds = %.lr.ph143
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #8 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.lr.ph138.preheader, label %bb.k

.lr.ph138.preheader:                              ; preds = %bb.j
  tail call void @N_VDestroy(ptr noundef nonnull %i.ae) #7
  tail call void @free(ptr noundef nonnull %i.aa) #7
  tail call void @N_VDestroy(ptr noundef nonnull %i.w) #7
  tail call void @free(ptr noundef nonnull %i.s) #7
  %6 = add nuw i32 %0, 1
  %wide.trip.count172 = zext i32 %6 to i64
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.lr.ph138
  %indvars.iv169 = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next170, %.lr.ph138 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv169 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.al) #7
  store ptr null, ptr %i.ak, align 8, !tbaa !10
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !30

._crit_edge139:                                   ; preds = %.lr.ph138
  tail call void @free(ptr noundef nonnull %i.g) #7
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.c, i32 noundef %i.b) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %0, ptr %i.ai, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.c, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.g, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.s, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.w, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.aa, ptr %i.aq, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %i.ae, ptr %i.ar, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k, %._crit_edge139, %._crit_edge144, %._crit_edge149, %._crit_edge154, %._crit_edge158, %._crit_edge134, %bb.d
  %.0113 = phi ptr [ %i.ai, %bb.k ], [ null, %bb.a ], [ null, %bb.d ], [ null, %._crit_edge134 ], [ null, %._crit_edge158 ], [ null, %._crit_edge154 ], [ null, %._crit_edge149 ], [ null, %._crit_edge144 ], [ null, %._crit_edge139 ], [ null, %bb.b ]
  ret ptr %.0113
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #1

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -5, 6) i32 @SpgmrSolve(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(none) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !17     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 25 uses
  store i32 0, ptr %15, align 4, !tbaa !39
  store i32 0, ptr %14, align 4, !tbaa !39
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %i.o = add i32 %4, -4
  %or.cond3 = icmp ult i32 %i.o, -3
  %spec.store.select4 = select i1 %or.cond3, i32 0, i32 %4 ; 2 uses
  %i.p = and i32 %spec.store.select4, 1
  %.not295 = icmp eq i32 %i.p, 0                  ; 2 uses
  %.not = icmp samesign ult i32 %spec.store.select4, 2 ; 3 uses
  %.not296 = icmp eq ptr %9, null                 ; 2 uses
  %.not297 = icmp eq ptr %10, null                ; 3 uses
  %i.q = tail call double @N_VDotProd(ptr noundef %2, ptr noundef %2) #7
  %i.r = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.n) #7
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i32 %11(ptr noundef %1, ptr noundef %2, ptr noundef %i.n) #7 ; 2 uses
  %.not298 = icmp eq i32 %i.s, 0
  br i1 %.not298, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp slt i32 %i.s, 0
  %i.u = select i1 %i.t, i32 -2, i32 5
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %i.n, ptr noundef %i.n) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !40
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef %i.v) #7
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  br i1 %.not295, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 %12(ptr noundef %8, ptr noundef %i.w, ptr noundef %i.n, i32 noundef 1) #7 ; 2 uses
  %i.y = load i32, ptr %15, align 4, !tbaa !39
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %15, align 4, !tbaa !39
  %.not299 = icmp eq i32 %i.x, 0
  br i1 %.not299, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp slt i32 %i.x, 0
  %i.ab = select i1 %i.aa, i32 -3, i32 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.n) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  br i1 %.not296, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @N_VProd(ptr noundef nonnull %9, ptr noundef %i.n, ptr noundef %i.ac) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef %i.ac) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ae = tail call double @N_VDotProd(ptr noundef %i.ad, ptr noundef %i.ad) #7
  %i.af = tail call double @SUNRsqrt(double noundef %i.ae) #7 ; 5 uses
  store double %i.af, ptr %13, align 8, !tbaa !42
  %i.ag = fcmp ugt double %i.af, %6
  br i1 %i.ag, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.j) #7
  %i.ah = icmp slt i32 %i.b, 1
  %i.ai = icmp eq i32 %5, 2
  %i.aj = zext i32 %i.b to i64                    ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 9 uses
  %i.al = add i32 %i.b, 1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 8
  %wide.trip.count = zext i32 %i.al to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.am = icmp ult i32 %i.al, 8
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod469 = icmp ne i64 %xtraiter, 0
  br label %.preheader318

.preheader318:                                    ; preds = %._crit_edge366, %bb.o
  %.0370 = phi i32 [ 0, %bb.o ], [ %i.fq, %._crit_edge366 ] ; 2 uses
  %.0258369 = phi i32 [ 0, %bb.o ], [ %.2, %._crit_edge366 ]
  %.0268368 = phi double [ %i.af, %bb.o ], [ %.2270, %._crit_edge366 ]
  %.0273367 = phi double [ %i.af, %bb.o ], [ %i.fh, %._crit_edge366 ] ; 7 uses
  br i1 %i.ah, label %._crit_edge331.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader318
  br i1 %i.am, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader ], [ 0, %.preheader.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader ], [ 0, %.preheader.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.au, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.ak, i1 false), !tbaa !42
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
end_hunk_0
