Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_sprk?download=true
inline.NumInlined: 18
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"ARKODE_SPRK_EULER_1_1\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ARKODE_SPRK_LEAPFROG_2_2\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ARKODE_SPRK_PSEUDO_LEAPFROG_2_2\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ARKODE_SPRK_RUTH_3_3\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ARKODE_SPRK_MCLACHLAN_2_2\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ARKODE_SPRK_MCLACHLAN_3_3\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ARKODE_SPRK_MCLACHLAN_4_4\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ARKODE_SPRK_CANDY_ROZMUS_4_4\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ARKODE_SPRK_MCLACHLAN_5_6\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"ARKODE_SPRK_YOSHIDA_6_8\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ARKODE_SPRK_SUZUKI_UMENO_8_16\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"ARKODE_SPRK_SOFRONIOU_10_36\00", align 1

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @ARKodeSPRKTable_Create(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %ARKodeSPRKTable_Alloc.exit.thread

bb.b:                                             ; preds = %bb.a
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %0 to i64                  ; 4 uses
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #13 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.f, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Alloc.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.e) #13 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.h, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %.lr.ph

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread.sink.split

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %0, ptr %i.j, align 4, !tbaa !13
  store i32 %1, ptr %calloc.i, align 8, !tbaa !14
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.d, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !16
  %wide.load37 = load <2 x double>, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !tbaa !16
  store <2 x double> %wide.load37, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load38 = load <2 x double>, ptr %i.o, align 8, !tbaa !16
  %wide.load39 = load <2 x double>, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load38, ptr %i.q, align 8, !tbaa !16
  store <2 x double> %wide.load39, ptr %i.r, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %ARKodeSPRKTable_Alloc.exit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.u = load double, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.u, ptr %i.v, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.x, ptr %i.y, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %ARKodeSPRKTable_Alloc.exit.thread, label %scalar.ph, !llvm.loop !22

ARKodeSPRKTable_Alloc.exit.thread.sink.split:     ; preds = %bb.c, %ARKodeSPRKTable_Free.exit19.i
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %scalar.ph, %middle.block, %ARKodeSPRKTable_Alloc.exit.thread.sink.split, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %ARKodeSPRKTable_Alloc.exit.thread.sink.split ], [ %calloc.i, %middle.block ], [ %calloc.i, %scalar.ph ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define noalias noundef ptr @ARKodeSPRKTable_Alloc(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 7 uses
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 3                      ; 2 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %ARKodeSPRKTable_Free.exit, label %bb.c

ARKodeSPRKTable_Free.exit:                        ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !12
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %ARKodeSPRKTable_Free.exit19, label %bb.d

ARKodeSPRKTable_Free.exit19:                      ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #14
  tail call void @free(ptr noundef nonnull %calloc) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %0, ptr %i.g, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %ARKodeSPRKTable_Free.exit19, %ARKodeSPRKTable_Free.exit
  %.0 = phi ptr [ %calloc, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19 ], [ null, %ARKodeSPRKTable_Free.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @ARKodeSPRKTable_Free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @ARKodeSPRKTable_Load(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  switch i32 %0, label %arkodeSymplecticEuler.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 7, label %bb.k
    i32 6, label %bb.l
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %calloc.i.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i.i = icmp eq ptr %calloc.i.i, null
  br i1 %.not.i.i, label %arkodeSymplecticEuler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i, label %ARKodeSPRKTable_Free.exit.i.i, label %bb.d

ARKodeSPRKTable_Free.exit.i.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i.i = icmp eq ptr %i.c, null
  br i1 %.not15.i.i, label %ARKodeSPRKTable_Free.exit19.i.i, label %bb.e

ARKodeSPRKTable_Free.exit19.i.i:                  ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 1, ptr %calloc.i.i, align 8, !tbaa !14
  store i32 1, ptr %i.e, align 4, !tbaa !13
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !16
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !16
  br label %arkodeSymplecticEuler.exit

bb.f:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @arkodeSymplecticLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.g:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @arkodeSymplecticPseudoLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.h:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @arkodeSymplecticRuth3()
  br label %arkodeSymplecticEuler.exit

bb.i:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @arkodeSymplecticMcLachlan2()
  br label %arkodeSymplecticEuler.exit

bb.j:                                             ; preds = %bb.a
  %i.j = tail call fastcc ptr @arkodeSymplecticMcLachlan3()
  br label %arkodeSymplecticEuler.exit

bb.k:                                             ; preds = %bb.a
  %i.k = tail call fastcc ptr @arkodeSymplecticMcLachlan4()
  br label %arkodeSymplecticEuler.exit

bb.l:                                             ; preds = %bb.a
  %i.l = tail call fastcc ptr @arkodeSymplecticCandyRozmus4()
  br label %arkodeSymplecticEuler.exit

bb.m:                                             ; preds = %bb.a
  %i.m = tail call fastcc ptr @arkodeSymplecticMcLachlan5()
  br label %arkodeSymplecticEuler.exit

bb.n:                                             ; preds = %bb.a
  %i.n = tail call fastcc ptr @arkodeSymplecticYoshida6()
  br label %arkodeSymplecticEuler.exit

bb.o:                                             ; preds = %bb.a
  %i.o = tail call fastcc ptr @arkodeSymplecticSuzukiUmeno816()
  br label %arkodeSymplecticEuler.exit

bb.p:                                             ; preds = %bb.a
  %i.p = tail call fastcc ptr @arkodeSymplecticSofroniou10()
  br label %arkodeSymplecticEuler.exit

arkodeSymplecticEuler.exit:                       ; preds = %bb.e, %ARKodeSPRKTable_Free.exit19.i.i, %ARKodeSPRKTable_Free.exit.i.i, %bb.b, %bb.a, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi ptr [ %i.p, %bb.p ], [ null, %bb.a ], [ %i.f, %bb.f ], [ %i.g, %bb.g ], [ %i.h, %bb.h ], [ %i.i, %bb.i ], [ %i.j, %bb.j ], [ %i.k, %bb.k ], [ %i.l, %bb.l ], [ %i.m, %bb.m ], [ %i.n, %bb.n ], [ %i.o, %bb.o ], [ %calloc.i.i, %bb.e ], [ null, %ARKodeSPRKTable_Free.exit19.i.i ], [ null, %ARKodeSPRKTable_Free.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticLeapfrog2() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 2, ptr %calloc.i, align 8, !tbaa !14
  store i32 2, ptr %i.e, align 4, !tbaa !13
  store <2 x double> splat (double 5.000000e-01), ptr %i.c, align 8, !tbaa !16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.a, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticPseudoLeapfrog2() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 2, ptr %calloc.i, align 8, !tbaa !14
  store i32 2, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.c, align 8, !tbaa !16
  store <2 x double> splat (double 5.000000e-01), ptr %i.a, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticRuth3() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 3, ptr %calloc.i, align 8, !tbaa !14
  store i32 3, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE5555555555555, double f0xBFE5555555555555>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !16
  store <2 x double> <double f0x3FD2AAAAAAAAAAAB, double 7.500000e-01>, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double f0xBFA5555555555555, ptr %i.g, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticMcLachlan2() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 2, ptr %calloc.i, align 8, !tbaa !14
  store i32 2, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE6A09E667F3BCD, double f0x3FD2BEC333018866>, ptr %i.c, align 8, !tbaa !16
  store <2 x double> <double f0x3FD2BEC333018868, double f0x3FE6A09E667F3BCC>, ptr %i.a, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticMcLachlan3() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 3, ptr %calloc.i, align 8, !tbaa !14
  store i32 3, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FED6DDE0097FA20, double f0xBFC8101BFF550DFE>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double f0x3FD12C51FE7A92BF, ptr %i.f, align 8, !tbaa !16
  store <2 x double> <double f0x3FD12C51FE7A92BF, double f0xBFC8101BFF550DFE>, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double f0x3FED6DDE0097FA20, ptr %i.g, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticMcLachlan4() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 4, ptr %calloc.i, align 8, !tbaa !14
  store i32 4, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE07DC53BD55BFA, double f0xBFB5F5CF77F6ABCC>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0x3FDC42E57139B27E, double f0x3FC07E07EA328101>, ptr %i.f, align 8, !tbaa !16
  store <2 x double> <double f0x3FC1372BE4AA9B55, double f0xBFCCC6E532DC111F>, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0x3FE833C60070D0E2, double f0x3FD56050A6371920>, ptr %i.g, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticCandyRozmus4() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 4, ptr %calloc.i, align 8, !tbaa !14
  store i32 4, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE59E8B6EB96339, double f0xBFC67A2DBAE58CE3>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0xBFC67A2DBAE58CE3, double f0x3FE59E8B6EB96339>, ptr %i.f, align 8, !tbaa !16
  store <2 x double> <double 0.000000e+00, double f0x3FF59E8B6EB96339>, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0xBFFB3D16DD72C672, double f0x3FF59E8B6EB96339>, ptr %i.g, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticMcLachlan5() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 5, ptr %calloc.i, align 8, !tbaa !14
  store i32 6, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FD5BFEEB3B74962, double f0xBFB6AE93C461609A>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0x3FE2BF561503C0D5, double f0xBFE34C193150CDC1>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x double> <double f0x3FD4B58C3AB43A42, double f0x3FDC4FB03B46EE5A>, ptr %i.g, align 8, !tbaa !16
  store <2 x double> <double f0x3FBE90584F423289, double f0x3FE65D9CEEC24DE8>, ptr %i.a, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0xBFC5ED903816AD31, double f0x3FD9AE664743500F>, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double f0x3F85EC8BC3836F1E, double f0xBFAE3293D549EB12>, ptr %i.i, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticYoshida6() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 6, ptr %calloc.i, align 8, !tbaa !14
  store i32 8, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE91ABC49889363, double f0x3FCE2743579895DD>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0xBFF2D7C6F7933B97, double f0x3FF50B00CFB7BE54>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x double> <double f0xBFF2D7C6F7933B97, double f0x3FCE2743579895DD>, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x double> <double f0x3FE91ABC49889363, double 0.000000e+00>, ptr %i.h, align 8, !tbaa !16
  store <2 x double> <double f0x3FD91ABC49889363, double f0x3FE052468FB75C6D>, ptr %i.a, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0xBFDE25BD194051B7, double f0x3FB199CEC12415E8>, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double f0x3FB199CEC12415E8, double f0xBFDE25BD194051B7>, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double f0x3FE052468FB75C6D, double f0x3FD91ABC49889363>, ptr %i.k, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticSuzukiUmeno816() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 8, ptr %calloc.i, align 8, !tbaa !14
  store i32 16, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FE7BBC37CE98B91, double f0xBFDA2EB53AE4F982>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0x3FC86AA67D23E0D1, double f0xBFE25D14D43B0CD8>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x double> <double f0x3FD323DE1786AB7D, double f0x3FD56A7EA212931E>, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x double> <double f0x3FD42DC3141FECA6, double f0xBFE9801B22C31F99>, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <2 x double> <double f0x3FD42DC3141FECA6, double f0x3FD56A7EA212931E>, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x double> <double f0x3FD323DE1786AB7D, double f0xBFE25D14D43B0CD8>, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <2 x double> <double f0x3FC86AA67D23E0D1, double f0xBFDA2EB53AE4F982>, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <2 x double> <double f0x3FE7BBC37CE98B91, double 0.000000e+00>, ptr %i.l, align 8, !tbaa !16
  store <2 x double> <double f0x3FD7BBC37CE98B91, double f0x3FC548D1BEEE1DA0>, ptr %i.a, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0xBFBBF2C3F8A61233, double f0xBFC884D669E42948>, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double f0xBFC1964B90EF6E33, double f0x3FD4472E5CCC9F4E>, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double f0x3FD4CC20DB193FE2, double f0xBFCED2733166528C>, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> <double f0xBFCED2733166528C, double f0x3FD4CC20DB193FE2>, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x double> <double f0x3FD4472E5CCC9F4E, double f0xBFC1964B90EF6E33>, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x double> <double f0xBFC884D669E42948, double f0xBFBBF2C3F8A61233>, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x double> <double f0x3FC548D1BEEE1DA0, double f0x3FD7BBC37CE98B91>, ptr %i.s, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @arkodeSymplecticSofroniou10() unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %ARKodeSPRKTable_Alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #13 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !11
  %.not14.i = icmp eq ptr %i.a, null
  br i1 %.not14.i, label %ARKodeSPRKTable_Free.exit.i, label %bb.c

ARKodeSPRKTable_Free.exit.i:                      ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #13 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %.not15.i = icmp eq ptr %i.c, null
  br i1 %.not15.i, label %ARKodeSPRKTable_Free.exit19.i, label %bb.d

ARKodeSPRKTable_Free.exit19.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #14
  tail call void @free(ptr noundef nonnull %calloc.i) #14
  br label %ARKodeSPRKTable_Alloc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 10, ptr %calloc.i, align 8, !tbaa !14
  store i32 36, ptr %i.e, align 4, !tbaa !13
  store <2 x double> <double f0x3FB42BF4DB4B9AFF, double f0x3FD409C43D2B1134>, ptr %i.c, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x double> <double f0x3F9C96A2FBCEB312, double f0xBFCD634C5905512A>, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x double> <double f0x3FC0C35D64ABED3F, double f0xBFD1434FE6FB3055>, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <2 x double> <double f0x3FB33173F8ED2490, double f0x3FBCAB99DD723D33>, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store <2 x double> <double f0x3FD76EBAFDF17414, double f0xBFD98AF257455C19>, ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x double> <double f0x3FBA63EF8D4E2209, double f0x3FDA54E2290D22C3>, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store <2 x double> <double f0xBF73EEBFB8E1BA6F, double f0xBFD917131047AAF2>, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <2 x double> <double f0x3FAA98352EFE0164, double f0x3FA9F0C657B9BA0A>, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store <2 x double> <double f0x3FA96EEB4AB1ACEC, double f0x3FA9402C9C668451>, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <2 x double> <double f0x3FA96EEB4AB1ACEC, double f0x3FA9F0C657B9BA0A>, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store <2 x double> <double f0x3FAA98352EFE0164, double f0xBFD917131047AAF2>, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store <2 x double> <double f0xBF73EEBFB8E1BA6F, double f0x3FDA54E2290D22C3>, ptr %i.p, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store <2 x double> <double f0x3FBA63EF8D4E2209, double f0xBFD98AF257455C19>, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <2 x double> <double f0x3FD76EBAFDF17414, double f0x3FBCAB99DD723D33>, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store <2 x double> <double f0x3FB33173F8ED2490, double f0xBFD1434FE6FB3055>, ptr %i.s, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <2 x double> <double f0x3FC0C35D64ABED3F, double f0xBFCD634C5905512A>, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store <2 x double> <double f0x3F9C96A2FBCEB312, double f0x3FD409C43D2B1134>, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <2 x double> <double f0x3FB42BF4DB4B9AFF, double 0.000000e+00>, ptr %i.v, align 8, !tbaa !16
  store <2 x double> <double f0x3FA42BF4DB4B9AFF, double f0x3FC914C173FDF7F4>, ptr %i.a, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0x3FC5D32E6CE7FC65, double f0xBFB9D077F98B7AC8>, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> <double f0xBFA93FDDE8B2C7D6, double f0xBFB1C342694A736B>, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> <double f0xBFB8EDE5D17FCE62, double f0x3FB7EE86EB2FB0E2>, ptr %i.y, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> <double f0x3FCE99A1754E0361, double f0xBF90E1BACA9F4028>, ptr %i.z, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x double> <double f0xBFC2F1F673F1D397, double f0x3FD076EF063055A3>, ptr %i.aa, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <2 x double> <double f0x3FCA05272A299BD9, double f0xBFC966CE0F2B31DC>, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x double> <double f0xBFC5C40C6A67EAC6, double f0x3FAA447DC35BDDB7>, ptr %i.ac, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <2 x double> <double f0x3FA9AFD8D135B37B, double f0x3FA9578BF38C189E>, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x double> <double f0x3FA9578BF38C189E, double f0x3FA9AFD8D135B37B>, ptr %i.ae, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <2 x double> <double f0x3FAA447DC35BDDB7, double f0xBFC5C40C6A67EAC6>, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x double> <double f0xBFC966CE0F2B31DC, double f0x3FCA05272A299BD9>, ptr %i.ag, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <2 x double> <double f0x3FD076EF063055A3, double f0xBFC2F1F673F1D397>, ptr %i.ah, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x double> <double f0xBF90E1BACA9F4028, double f0x3FCE99A1754E0361>, ptr %i.ai, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <2 x double> <double f0x3FB7EE86EB2FB0E2, double f0xBFB8EDE5D17FCE62>, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <2 x double> <double f0xBFB1C342694A736B, double f0xBFA93FDDE8B2C7D6>, ptr %i.ak, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <2 x double> <double f0xBFB9D077F98B7AC8, double f0x3FC5D32E6CE7FC65>, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <2 x double> <double f0x3FC914C173FDF7F4, double f0x3FA42BF4DB4B9AFF>, ptr %i.am, align 8, !tbaa !16
  br label %ARKodeSPRKTable_Alloc.exit.thread

ARKodeSPRKTable_Alloc.exit.thread:                ; preds = %bb.a, %ARKodeSPRKTable_Free.exit.i, %ARKodeSPRKTable_Free.exit19.i, %bb.d
  %.0 = phi ptr [ %calloc.i, %bb.d ], [ null, %ARKodeSPRKTable_Free.exit19.i ], [ null, %ARKodeSPRKTable_Free.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @ARKodeSPRKTable_LoadByName(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(22) @.str) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %calloc.i.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 8 uses
  %.not.i.i = icmp eq ptr %calloc.i.i, null
  br i1 %.not.i.i, label %arkodeSymplecticEuler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  %.not14.i.i = icmp eq ptr %i.b, null
  br i1 %.not14.i.i, label %ARKodeSPRKTable_Free.exit.i.i, label %bb.d

ARKodeSPRKTable_Free.exit.i.i:                    ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !12
  %.not15.i.i = icmp eq ptr %i.d, null
  br i1 %.not15.i.i, label %ARKodeSPRKTable_Free.exit19.i.i, label %bb.e

ARKodeSPRKTable_Free.exit19.i.i:                  ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #14
  tail call void @free(ptr noundef nonnull %calloc.i.i) #14
  br label %arkodeSymplecticEuler.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i.i, i64 4
  store i32 1, ptr %calloc.i.i, align 8, !tbaa !14
  store i32 1, ptr %i.f, align 4, !tbaa !13
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !16
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !16
  br label %arkodeSymplecticEuler.exit

bb.f:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(25) @.str.1) #15
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call fastcc ptr @arkodeSymplecticLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(32) @.str.2) #15
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call fastcc ptr @arkodeSymplecticPseudoLeapfrog2()
  br label %arkodeSymplecticEuler.exit

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(21) @.str.3) #15
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = tail call fastcc ptr @arkodeSymplecticRuth3()
  br label %arkodeSymplecticEuler.exit

bb.l:                                             ; preds = %bb.j
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.4) #15
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.n = tail call fastcc ptr @arkodeSymplecticMcLachlan2()
  br label %arkodeSymplecticEuler.exit

bb.n:                                             ; preds = %bb.l
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.5) #15
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.p = tail call fastcc ptr @arkodeSymplecticMcLachlan3()
  br label %arkodeSymplecticEuler.exit

bb.p:                                             ; preds = %bb.n
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.6) #15
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = tail call fastcc ptr @arkodeSymplecticMcLachlan4()
  br label %arkodeSymplecticEuler.exit

bb.r:                                             ; preds = %bb.p
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(29) @.str.7) #15
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.t = tail call fastcc ptr @arkodeSymplecticCandyRozmus4()
  br label %arkodeSymplecticEuler.exit

bb.t:                                             ; preds = %bb.r
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(26) @.str.8) #15
  %.not20 = icmp eq i32 %i.u, 0
  br i1 %.not20, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.v = tail call fastcc ptr @arkodeSymplecticMcLachlan5()
  br label %arkodeSymplecticEuler.exit

bb.v:                                             ; preds = %bb.t
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(24) @.str.9) #15
  %.not21 = icmp eq i32 %i.w, 0
  br i1 %.not21, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.x = tail call fastcc ptr @arkodeSymplecticYoshida6()
  br label %arkodeSymplecticEuler.exit

bb.x:                                             ; preds = %bb.v
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(30) @.str.10) #15
  %.not22 = icmp eq i32 %i.y, 0
  br i1 %.not22, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.z = tail call fastcc ptr @arkodeSymplecticSuzukiUmeno816()
  br label %arkodeSymplecticEuler.exit

bb.z:                                             ; preds = %bb.x
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(28) @.str.11) #15
  %.not23 = icmp eq i32 %i.aa, 0
  br i1 %.not23, label %bb.aa, label %arkodeSymplecticEuler.exit

bb.aa:                                            ; preds = %bb.z
  %i.ab = tail call fastcc ptr @arkodeSymplecticSofroniou10()
  br label %arkodeSymplecticEuler.exit

arkodeSymplecticEuler.exit:                       ; preds = %bb.e, %ARKodeSPRKTable_Free.exit19.i.i, %ARKodeSPRKTable_Free.exit.i.i, %bb.b, %bb.z, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g
  %.0 = phi ptr [ null, %bb.z ], [ %i.ab, %bb.aa ], [ %i.z, %bb.y ], [ %i.x, %bb.w ], [ %i.v, %bb.u ], [ %i.t, %bb.s ], [ %i.r, %bb.q ], [ %i.p, %bb.o ], [ %i.n, %bb.m ], [ %i.l, %bb.k ], [ %i.j, %bb.i ], [ %i.h, %bb.g ], [ %calloc.i.i, %bb.e ], [ null, %ARKodeSPRKTable_Free.exit19.i.i ], [ null, %ARKodeSPRKTable_Free.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias nonnull ptr @ARKodeSPRKTable_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
ARKodeSPRKTable_Alloc.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 5 uses
  %calloc.i = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %calloc.i) ]
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !13
  %i.l = load i32, ptr %0, align 8, !tbaa !14
  store i32 %i.l, ptr %calloc.i, align 8, !tbaa !14
  %i.m = icmp sgt i32 %i.b, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ARKodeSPRKTable_Alloc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.t = sub i64 %i.f, %i.i
  %diff.check = icmp ugt i64 %i.t, -32
  %i.u = sub i64 %i.s, %i.f
  %diff.check16 = icmp ugt i64 %i.u, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.v = sub i64 %i.f, %i.r
  %diff.check17 = icmp ugt i64 %i.v, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  %i.w = sub i64 %i.s, %i.i
  %diff.check19 = icmp ugt i64 %i.w, -32
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.x = sub i64 %i.r, %i.i
  %diff.check21 = icmp ugt i64 %i.x, -32
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
end_hunk_0
