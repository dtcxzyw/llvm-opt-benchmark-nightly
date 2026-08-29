Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcRenode?download=true
inline.NumInlined: 61
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.If_Par_t_ = type { i32, i32, i32, i32, i32, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@s_pDd = internal unnamed_addr global ptr null, align 8
@s_pReo = internal unnamed_addr global ptr null, align 8
@s_vMemory = internal unnamed_addr global ptr null, align 8
@s_vMemory2 = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [34 x i8] c"Performing renoding with choices.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkRenode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.If_Par_t_, align 8         ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.a = tail call i32 @Abc_NtkGetChoiceNum(ptr noundef %0) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.b, i8 0, i64 360, i1 false)
  store i32 %1, ptr %11, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %2, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %3, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %4, ptr %i.e, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 24
  store <2 x float> <float -1.000000e+00, float 5.000000e-03>, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i32 1, ptr %i.g, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store i32 %5, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 200
  store i32 %10, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 232
  store i32 1, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 236
  store i32 1, ptr %i.l, align 4, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 260
  store i32 0, ptr %i.m, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 312
  store ptr null, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 240
  store i32 %6, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 244
  store i32 %7, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 248
  store i32 %8, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 252
  store i32 %9, ptr %i.r, align 4, !tbaa !31
  %.not52 = icmp eq i32 %6, 0
  br i1 %.not52, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %.not53 = icmp eq i32 %7, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 328
  store ptr @Abc_NtkRenodeEvalSop, ptr %i.s, align 8, !tbaa !32
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not54 = icmp eq i32 %8, 0
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 328 ; 3 uses
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.h, align 8, !tbaa !21
  store ptr @Abc_NtkRenodeEvalCnf, ptr %i.t, align 8, !tbaa !32
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not55 = icmp eq i32 %9, 0
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @Abc_NtkRenodeEvalMv, ptr %i.t, align 8, !tbaa !32
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  store ptr @Abc_NtkRenodeEvalAig, ptr %i.t, align 8, !tbaa !32
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 328
  store ptr @Abc_NtkRenodeEvalBdd, ptr %i.u, align 8, !tbaa !32
  %i.v = tail call ptr @Cudd_Init(i32 noundef %1, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #9
  store ptr %i.v, ptr @s_pDd, align 8, !tbaa !33
  %i.w = tail call ptr @Extra_ReorderInit(i32 noundef %1, i32 noundef 100) #9 ; 2 uses
  store ptr %i.w, ptr @s_pReo, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 368
  store ptr %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = call ptr @Abc_NtkIf(ptr noundef %0, ptr noundef nonnull %11) #9
  %i.z = load ptr, ptr @s_pDd, align 8, !tbaa !33
  call void @Extra_StopManager(ptr noundef %i.z) #9
  %i.aa = load ptr, ptr @s_pReo, align 8, !tbaa !35
  call void @Extra_ReorderQuit(ptr noundef %i.aa) #9
  br label %bb.o

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.e
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !38
  store i32 65536, ptr %i.ab, align 8, !tbaa !41
  %i.ad = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !42
  store ptr %i.ab, ptr @s_vMemory, align 8, !tbaa !43
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !38
  store i32 65536, ptr %i.af, align 8, !tbaa !41
  %i.ah = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !42
  store ptr %i.af, ptr @s_vMemory2, align 8, !tbaa !43
  %i.aj = call ptr @Abc_NtkIf(ptr noundef %0, ptr noundef nonnull %11) #9
  %i.ak = load ptr, ptr @s_vMemory, align 8, !tbaa !43 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.am) #9
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.l, %bb.m
  call void @free(ptr noundef nonnull %i.ak) #9
  %i.an = load ptr, ptr @s_vMemory2, align 8, !tbaa !43 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %.not.i56 = icmp eq ptr %i.ap, null
  br i1 %.not.i56, label %Vec_IntFree.exit57, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ap) #9
  br label %Vec_IntFree.exit57

Vec_IntFree.exit57:                               ; preds = %Vec_IntFree.exit, %bb.n
  call void @free(ptr noundef nonnull %i.an) #9
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntFree.exit57, %bb.k
  %s_vMemory.sink = phi ptr [ @s_vMemory, %Vec_IntFree.exit57 ], [ @s_pReo, %bb.k ]
  %s_vMemory2.sink = phi ptr [ @s_vMemory2, %Vec_IntFree.exit57 ], [ @s_pDd, %bb.k ]
  %i.aq = phi ptr [ %i.aj, %Vec_IntFree.exit57 ], [ %i.y, %bb.k ]
  store ptr null, ptr %s_vMemory.sink, align 8, !tbaa !45
  store ptr null, ptr %s_vMemory2.sink, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  ret ptr %i.aq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @Abc_NtkGetChoiceNum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2147483647) i32 @Abc_NtkRenodeEvalBdd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 8 uses
  %i.b = getelementptr i8, ptr %1, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.d = load i64, ptr %i.c, align 4              ; 3 uses
  %i.e = lshr i64 %i.d, 24
  %i.f = and i64 %i.e, 255                        ; 3 uses
  %i.g = getelementptr [4 x i8], ptr %i.b, i64 %i.f ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.h = trunc i64 %i.d to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 24                        ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = lshr i64 %i.d, 24
  %3 = and i64 %2, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 -100, i64 %3, i1 false), !tbaa !46
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 134217728
  br i1 %min.iters.check, label %.lr.ph.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> splat (i32 -100), ptr %i.j, align 16, !tbaa !47
  store <4 x i32> splat (i32 -100), ptr %i.k, align 16, !tbaa !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader77

.lr.ph.preheader77:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader77, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader77 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 -100, ptr %i.m, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.n = load ptr, ptr @s_pDd, align 8, !tbaa !33
  %i.o = getelementptr i8, ptr %1, i64 24
  %.val = load i32, ptr %i.o, align 8, !tbaa !53  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 14 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %If_CutTruthWR.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = ashr i32 %.val, 1                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76
  %i.aa = ashr i32 %i.v, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !79
  %i.ah = and i32 %i.ag, %i.v
  %i.ai = mul nsw i32 %i.ah, %i.ae
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aj
  br label %If_CutTruthWR.exit.i.i

If_CutTruthWR.exit.i.i:                           ; preds = %bb.b, %._crit_edge
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %._crit_edge ] ; 13 uses
  %i.am = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.f
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !47 ; 5 uses
  %i.aq = and i32 %.val, 1
  %.not.i7.i.i = icmp eq i32 %i.aq, 0
  %i.ar = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %.not.i7.i.i, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader14.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ap to i64 ; 5 uses
  %min.iters.check51 = icmp ult i32 %i.ap, 6
  %i.as = sub i64 %i.am, %i.r
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check51, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.preheader.i.i.i
  %n.vec53 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next57, %vector.body54 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index55 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x i64>, ptr %i.at, align 8, !tbaa !80
  %wide.load56 = load <2 x i64>, ptr %i.au, align 8, !tbaa !80
  %i.av = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.aw = xor <2 x i64> %wide.load56, splat (i64 -1)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index55 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8, !tbaa !80
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !80
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.az, label %middle.block58, label %vector.body54, !llvm.loop !81

middle.block58:                                   ; preds = %vector.body54
  %cmp.n59 = icmp eq i64 %n.vec53, %wide.trip.count.i.i.i
  br i1 %cmp.n59, label %If_CutTruth.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block58
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec53, %middle.block58 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !80
  %i.bc = xor i64 %i.bb, -1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !82

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %If_CutTruth.exit, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.ar, label %.lr.ph18.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph18.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count24.i.i.i = zext nneg i32 %i.ap to i64 ; 5 uses
  %min.iters.check64 = icmp ult i32 %i.ap, 8
  %i.bg = sub i64 %i.am, %i.r
  %diff.check62 = icmp ugt i64 %i.bg, -32
  %or.cond75 = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  br i1 %or.cond75, label %.lr.ph18.i.i.i.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph18.preheader.i.i.i
  %n.vec66 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next71, %vector.body67 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index68 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load69 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !80
  %wide.load70 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index68 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x i64> %wide.load69, ptr %i.bj, align 8, !tbaa !80
  store <2 x i64> %wide.load70, ptr %i.bk, align 8, !tbaa !80
  %index.next71 = add nuw i64 %index68, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next71, %n.vec66
  br i1 %i.bl, label %middle.block72, label %vector.body67, !llvm.loop !84

middle.block72:                                   ; preds = %vector.body67
  %cmp.n73 = icmp eq i64 %n.vec66, %wide.trip.count24.i.i.i
  br i1 %cmp.n73, label %If_CutTruth.exit, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %.lr.ph18.preheader.i.i.i, %middle.block72
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec66, %middle.block72 ] ; 3 uses
  %xtraiter78 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv21.i.i.i.prol
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !80
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !85

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.bp = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %If_CutTruth.exit, label %.lr.ph18.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.1
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = xor i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.2
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !80
  %i.cf = xor i64 %i.ce, -1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph.i.i.i, !llvm.loop !86

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv21.i.i.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !80
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv21.i.i.i
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next22.i.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !80
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next22.i.i.i
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next22.i.i.i.1
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next22.i.i.i.2
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph18.i.i.i, !llvm.loop !87

If_CutTruth.exit:                                 ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block58, %middle.block72, %.preheader14.i.i.i, %.preheader.i.i.i
  %.val28 = load i64, ptr %i.c, align 4
  %i.ct = trunc i64 %.val28 to i32
  %i.cu = lshr i32 %i.ct, 24
  %i.cv = tail call ptr @Kit_TruthToBdd(ptr noundef %i.n, ptr noundef %i.q, i32 noundef %i.cu, i32 noundef 0) #9 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.cv) #9
  %i.cw = load ptr, ptr @s_pReo, align 8, !tbaa !35
  %i.cx = load ptr, ptr @s_pDd, align 8, !tbaa !33
  %i.cy = call ptr @Extra_Reorder(ptr noundef %i.cw, ptr noundef %i.cx, ptr noundef %i.cv, ptr noundef nonnull %i.a) #9 ; 3 uses
  call void @Cudd_Ref(ptr noundef %i.cy) #9
  %.val27 = load i64, ptr %i.c, align 4
  %i.cz = trunc i64 %.val27 to i32
  %i.da = lshr i32 %i.cz, 24                      ; 4 uses
  %.not36 = icmp eq i32 %i.da, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %If_CutTruth.exit
  %wide.trip.count41 = zext nneg i32 %i.da to i64 ; 2 uses
  %xtraiter81 = and i64 %wide.trip.count41, 1
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %.lr.ph34.epil.preheader, label %.lr.ph34.preheader.new

.lr.ph34.preheader.new:                           ; preds = %.lr.ph34.preheader
  %unroll_iter = and i64 %wide.trip.count41, 254
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.e, %.lr.ph34.preheader.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph34.preheader.new ], [ %indvars.iv.next40.1, %bb.e ] ; 3 uses
  %.033 = phi i8 [ 0, %.lr.ph34.preheader.new ], [ %.1.1, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph34.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.c, label %.lr.ph34.1

bb.c:                                             ; preds = %.lr.ph34
  %i.df = add i8 %.033, 1                         ; 2 uses
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dg
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !46
  br label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %.lr.ph34, %bb.c
  %.1 = phi i8 [ %i.df, %bb.c ], [ %.033, %.lr.ph34 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, -1
  br i1 %i.dl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph34.1
  %i.dm = add i8 %.1, 1                           ; 2 uses
  %i.dn = zext nneg i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dn
  store i8 %i.dm, ptr %i.do, align 1, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph34.1
  %.1.1 = phi i8 [ %i.dm, %bb.d ], [ %.1, %.lr.ph34.1 ] ; 2 uses
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge35.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !88

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %._crit_edge35, label %.lr.ph34.epil.preheader

.lr.ph34.epil.preheader:                          ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34.preheader
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next40.1, %._crit_edge35.loopexit.unr-lcssa ]
  %.033.epil.init = phi i8 [ 0, %.lr.ph34.preheader ], [ %.1.1, %._crit_edge35.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i32 %i.da to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39.epil.init
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !47 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.f, label %._crit_edge35

bb.f:                                             ; preds = %.lr.ph34.epil.preheader
  %i.ds = add i8 %.033.epil.init, 1
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dt
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !46
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.unr-lcssa, %bb.f, %.lr.ph34.epil.preheader, %If_CutTruth.exit
  %i.dv = call i32 @Cudd_DagSize(ptr noundef %i.cy) #9
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = load ptr, ptr @s_pDd, align 8, !tbaa !33
  call void @Cudd_RecursiveDeref(ptr noundef %i.dx, ptr noundef %i.cy) #9
  %i.dy = load ptr, ptr @s_pDd, align 8, !tbaa !33
  call void @Cudd_RecursiveDeref(ptr noundef %i.dy, ptr noundef %i.cv) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.dw
}

; Function Attrs: nounwind uwtable
define internal i32 @Abc_NtkRenodeEvalSop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = load i64, ptr %i.a, align 4              ; 3 uses
  %i.c = lshr i64 %i.b, 24
  %i.d = and i64 %i.c, 255                        ; 3 uses
  %2 = and i64 %i.b, 4278190080
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 44
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %3 = lshr i64 %i.b, 24
  %4 = and i64 %3, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 1, i64 %4, i1 false), !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !tbaa !53  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 14 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %If_CutTruthWR.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = ashr i32 %.val, 1                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = ashr i32 %i.n, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = load i32, ptr %i.m, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !79
  %i.z = and i32 %i.y, %i.n
  %i.aa = mul nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ab
  br label %If_CutTruthWR.exit.i.i

If_CutTruthWR.exit.i.i:                           ; preds = %bb.b, %._crit_edge
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ null, %._crit_edge ] ; 13 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.d
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 5 uses
  %i.ai = and i32 %.val, 1
  %.not.i7.i.i = icmp eq i32 %i.ai, 0
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %.not.i7.i.i, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader14.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 6
  %i.ak = sub i64 %i.ae, %i.j
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !80
  %wide.load22 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %i.an = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ao = xor <2 x i64> %wide.load22, splat (i64 -1)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !80
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %If_CutTruth.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.prol
  store i64 %i.au, ptr %i.av, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !90

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %If_CutTruth.exit, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph18.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph18.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count24.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check26 = icmp ult i32 %i.ah, 8
  %i.ay = sub i64 %i.ae, %i.j
  %diff.check24 = icmp ugt i64 %i.ay, -32
  %or.cond37 = select i1 %min.iters.check26, i1 true, i1 %diff.check24
  br i1 %or.cond37, label %.lr.ph18.i.i.i.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph18.preheader.i.i.i
  %n.vec28 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next33, %vector.body29 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index30 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load31 = load <2 x i64>, ptr %i.az, align 8, !tbaa !80
  %wide.load32 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index30 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load31, ptr %i.bb, align 8, !tbaa !80
  store <2 x i64> %wide.load32, ptr %i.bc, align 8, !tbaa !80
  %index.next33 = add nuw i64 %index30, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.bd, label %middle.block34, label %vector.body29, !llvm.loop !91

middle.block34:                                   ; preds = %vector.body29
  %cmp.n35 = icmp eq i64 %n.vec28, %wide.trip.count24.i.i.i
  br i1 %cmp.n35, label %If_CutTruth.exit, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %.lr.ph18.preheader.i.i.i, %middle.block34
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec28, %middle.block34 ] ; 3 uses
  %xtraiter39 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !92

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.bh = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %If_CutTruth.exit, label %.lr.ph18.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph.i.i.i, !llvm.loop !93

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i.1
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i.2
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph18.i.i.i, !llvm.loop !94

If_CutTruth.exit:                                 ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block, %middle.block34, %.preheader14.i.i.i, %.preheader.i.i.i
  %.val12 = load i64, ptr %i.a, align 4
  %i.cl = trunc i64 %.val12 to i32
  %i.cm = lshr i32 %i.cl, 24
  %i.cn = load ptr, ptr @s_vMemory, align 8, !tbaa !43
  %i.co = tail call i32 @Kit_TruthIsop(ptr noundef %i.i, i32 noundef %i.cm, ptr noundef %i.cn, i32 noundef 1) #9
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.d, label %bb.c

bb.c:                                             ; preds = %If_CutTruth.exit
  %i.cq = load ptr, ptr @s_vMemory, align 8, !tbaa !43
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val14 = load i32, ptr %i.cr, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %If_CutTruth.exit, %bb.c
  %.010 = phi i32 [ %.val14, %bb.c ], [ 4095, %If_CutTruth.exit ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define internal i32 @Abc_NtkRenodeEvalCnf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 10 uses
  %i.b = load i64, ptr %i.a, align 4              ; 3 uses
  %i.c = lshr i64 %i.b, 24
  %i.d = and i64 %i.c, 255                        ; 3 uses
  %2 = and i64 %i.b, 4278190080
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 44
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %3 = lshr i64 %i.b, 24
  %4 = and i64 %3, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 1, i64 %4, i1 false), !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val36 = load i32, ptr %i.g, align 8, !tbaa !53 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 14 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %If_CutTruthWR.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = ashr i32 %.val36, 1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = ashr i32 %i.n, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = load i32, ptr %i.m, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !79
  %i.z = and i32 %i.y, %i.n
  %i.aa = mul nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ab
  br label %If_CutTruthWR.exit.i.i

If_CutTruthWR.exit.i.i:                           ; preds = %bb.b, %._crit_edge
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ null, %._crit_edge ] ; 13 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.d
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 5 uses
  %i.ai = and i32 %.val36, 1
  %.not.i7.i.i = icmp eq i32 %i.ai, 0
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %.not.i7.i.i, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader14.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 6
  %i.ak = sub i64 %i.ae, %i.j
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !80
  %wide.load185 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %i.an = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ao = xor <2 x i64> %wide.load185, splat (i64 -1)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !80
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %If_CutTruth.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.prol
  store i64 %i.au, ptr %i.av, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !96

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %If_CutTruth.exit, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph18.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph18.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count24.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check189 = icmp ult i32 %i.ah, 8
  %i.ay = sub i64 %i.ae, %i.j
  %diff.check187 = icmp ugt i64 %i.ay, -32
  %or.cond364 = select i1 %min.iters.check189, i1 true, i1 %diff.check187
  br i1 %or.cond364, label %.lr.ph18.i.i.i.preheader, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph18.preheader.i.i.i
  %n.vec191 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next196, %vector.body192 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index193 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load194 = load <2 x i64>, ptr %i.az, align 8, !tbaa !80
  %wide.load195 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index193 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load194, ptr %i.bb, align 8, !tbaa !80
  store <2 x i64> %wide.load195, ptr %i.bc, align 8, !tbaa !80
  %index.next196 = add nuw i64 %index193, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.bd, label %middle.block197, label %vector.body192, !llvm.loop !97

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %n.vec191, %wide.trip.count24.i.i.i
  br i1 %cmp.n198, label %If_CutTruth.exit, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %.lr.ph18.preheader.i.i.i, %middle.block197
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec191, %middle.block197 ] ; 3 uses
  %xtraiter383 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !98

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.bh = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %If_CutTruth.exit, label %.lr.ph18.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph.i.i.i, !llvm.loop !99

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80
end_hunk_0
begin_hunk_1_@Abc_NtkRenodeEvalCnf:bb.a
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph.i.i.i123.prol.loopexit, label %.lr.ph.i.i.i123.prol

.lr.ph.i.i.i123.prol:                             ; preds = %.lr.ph.i.i.i123.preheader, %.lr.ph.i.i.i123.prol
  %indvars.iv.i.i.i124.prol = phi i64 [ %indvars.iv.next.i.i.i125.prol, %.lr.ph.i.i.i123.prol ], [ %indvars.iv.i.i.i124.ph, %.lr.ph.i.i.i123.preheader ] ; 3 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %.lr.ph.i.i.i123.prol ], [ 0, %.lr.ph.i.i.i123.preheader ]
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.i.i.i124.prol
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !80
  %i.rc = xor i64 %i.rb, -1
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.i.i.i124.prol
  store i64 %i.rc, ptr %i.rd, align 8, !tbaa !80
  %indvars.iv.next.i.i.i125.prol = add nuw nsw i64 %indvars.iv.i.i.i124.prol, 1 ; 2 uses
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.lr.ph.i.i.i123.prol.loopexit, label %.lr.ph.i.i.i123.prol, !llvm.loop !128

.lr.ph.i.i.i123.prol.loopexit:                    ; preds = %.lr.ph.i.i.i123.prol, %.lr.ph.i.i.i123.preheader
  %indvars.iv.i.i.i124.unr = phi i64 [ %indvars.iv.i.i.i124.ph, %.lr.ph.i.i.i123.preheader ], [ %indvars.iv.next.i.i.i125.prol, %.lr.ph.i.i.i123.prol ]
  %i.re = sub nsw i64 %indvars.iv.i.i.i124.ph, %wide.trip.count.i.i.i122
  %i.rf = icmp ugt i64 %i.re, -4
  br i1 %i.rf, label %If_CutTruth.exit134, label %.lr.ph.i.i.i123

.preheader.i.i.i127:                              ; preds = %If_CutTruthWR.exit.i.i118
  br i1 %i.qr, label %.lr.ph18.preheader.i.i.i128, label %If_CutTruth.exit134

.lr.ph18.preheader.i.i.i128:                      ; preds = %.preheader.i.i.i127
  %wide.trip.count24.i.i.i129 = zext nneg i32 %i.qq to i64 ; 5 uses
  %min.iters.check341 = icmp ult i32 %i.qq, 8
  %i.rg = sub i64 %i.qo, %i.mr
  %diff.check339 = icmp ugt i64 %i.rg, -32
  %or.cond374 = select i1 %min.iters.check341, i1 true, i1 %diff.check339
  br i1 %or.cond374, label %.lr.ph18.i.i.i130.preheader, label %vector.ph342

vector.ph342:                                     ; preds = %.lr.ph18.preheader.i.i.i128
  %n.vec343 = and i64 %wide.trip.count24.i.i.i129, 2147483644 ; 3 uses
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next348, %vector.body344 ] ; 3 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %index345 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %wide.load346 = load <2 x i64>, ptr %i.rh, align 8, !tbaa !80
  %wide.load347 = load <2 x i64>, ptr %i.ri, align 8, !tbaa !80
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %index345 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <2 x i64> %wide.load346, ptr %i.rj, align 8, !tbaa !80
  store <2 x i64> %wide.load347, ptr %i.rk, align 8, !tbaa !80
  %index.next348 = add nuw i64 %index345, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next348, %n.vec343
  br i1 %i.rl, label %middle.block349, label %vector.body344, !llvm.loop !129

middle.block349:                                  ; preds = %vector.body344
  %cmp.n350 = icmp eq i64 %n.vec343, %wide.trip.count24.i.i.i129
  br i1 %cmp.n350, label %If_CutTruth.exit134, label %.lr.ph18.i.i.i130.preheader

.lr.ph18.i.i.i130.preheader:                      ; preds = %.lr.ph18.preheader.i.i.i128, %middle.block349
  %indvars.iv21.i.i.i131.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i128 ], [ %n.vec343, %middle.block349 ] ; 3 uses
  %xtraiter413 = and i64 %wide.trip.count24.i.i.i129, 3 ; 2 uses
  %lcmp.mod414.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod414.not, label %.lr.ph18.i.i.i130.prol.loopexit, label %.lr.ph18.i.i.i130.prol

.lr.ph18.i.i.i130.prol:                           ; preds = %.lr.ph18.i.i.i130.preheader, %.lr.ph18.i.i.i130.prol
  %indvars.iv21.i.i.i131.prol = phi i64 [ %indvars.iv.next22.i.i.i132.prol, %.lr.ph18.i.i.i130.prol ], [ %indvars.iv21.i.i.i131.ph, %.lr.ph18.i.i.i130.preheader ] ; 3 uses
  %prol.iter415 = phi i64 [ %prol.iter415.next, %.lr.ph18.i.i.i130.prol ], [ 0, %.lr.ph18.i.i.i130.preheader ]
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv21.i.i.i131.prol
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !80
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv21.i.i.i131.prol
  store i64 %i.rn, ptr %i.ro, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i132.prol = add nuw nsw i64 %indvars.iv21.i.i.i131.prol, 1 ; 2 uses
  %prol.iter415.next = add i64 %prol.iter415, 1   ; 2 uses
  %prol.iter415.cmp.not = icmp eq i64 %prol.iter415.next, %xtraiter413
  br i1 %prol.iter415.cmp.not, label %.lr.ph18.i.i.i130.prol.loopexit, label %.lr.ph18.i.i.i130.prol, !llvm.loop !130

.lr.ph18.i.i.i130.prol.loopexit:                  ; preds = %.lr.ph18.i.i.i130.prol, %.lr.ph18.i.i.i130.preheader
  %indvars.iv21.i.i.i131.unr = phi i64 [ %indvars.iv21.i.i.i131.ph, %.lr.ph18.i.i.i130.preheader ], [ %indvars.iv.next22.i.i.i132.prol, %.lr.ph18.i.i.i130.prol ]
  %i.rp = sub nsw i64 %indvars.iv21.i.i.i131.ph, %wide.trip.count24.i.i.i129
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %If_CutTruth.exit134, label %.lr.ph18.i.i.i130

.lr.ph.i.i.i123:                                  ; preds = %.lr.ph.i.i.i123.prol.loopexit, %.lr.ph.i.i.i123
  %indvars.iv.i.i.i124 = phi i64 [ %indvars.iv.next.i.i.i125.3, %.lr.ph.i.i.i123 ], [ %indvars.iv.i.i.i124.unr, %.lr.ph.i.i.i123.prol.loopexit ] ; 6 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.i.i.i124
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !80
  %i.rt = xor i64 %i.rs, -1
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.i.i.i124
  store i64 %i.rt, ptr %i.ru, align 8, !tbaa !80
  %indvars.iv.next.i.i.i125 = add nuw nsw i64 %indvars.iv.i.i.i124, 1 ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i125
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !80
  %i.rx = xor i64 %i.rw, -1
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next.i.i.i125
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !80
  %indvars.iv.next.i.i.i125.1 = add nuw nsw i64 %indvars.iv.i.i.i124, 2 ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i125.1
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !80
  %i.sb = xor i64 %i.sa, -1
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next.i.i.i125.1
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !80
  %indvars.iv.next.i.i.i125.2 = add nuw nsw i64 %indvars.iv.i.i.i124, 3 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i125.2
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !80
  %i.sf = xor i64 %i.se, -1
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next.i.i.i125.2
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !80
  %indvars.iv.next.i.i.i125.3 = add nuw nsw i64 %indvars.iv.i.i.i124, 4 ; 2 uses
  %exitcond.not.i.i.i126.3 = icmp eq i64 %indvars.iv.next.i.i.i125.3, %wide.trip.count.i.i.i122
  br i1 %exitcond.not.i.i.i126.3, label %If_CutTruth.exit134, label %.lr.ph.i.i.i123, !llvm.loop !131

.lr.ph18.i.i.i130:                                ; preds = %.lr.ph18.i.i.i130.prol.loopexit, %.lr.ph18.i.i.i130
  %indvars.iv21.i.i.i131 = phi i64 [ %indvars.iv.next22.i.i.i132.3, %.lr.ph18.i.i.i130 ], [ %indvars.iv21.i.i.i131.unr, %.lr.ph18.i.i.i130.prol.loopexit ] ; 6 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv21.i.i.i131
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !80
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv21.i.i.i131
  store i64 %i.si, ptr %i.sj, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i132 = add nuw nsw i64 %indvars.iv21.i.i.i131, 1 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next22.i.i.i132
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !80
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next22.i.i.i132
  store i64 %i.sl, ptr %i.sm, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i132.1 = add nuw nsw i64 %indvars.iv21.i.i.i131, 2 ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next22.i.i.i132.1
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !80
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next22.i.i.i132.1
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i132.2 = add nuw nsw i64 %indvars.iv21.i.i.i131, 3 ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next22.i.i.i132.2
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !80
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next22.i.i.i132.2
  store i64 %i.sr, ptr %i.ss, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i132.3 = add nuw nsw i64 %indvars.iv21.i.i.i131, 4 ; 2 uses
  %exitcond25.not.i.i.i133.3 = icmp eq i64 %indvars.iv.next22.i.i.i132.3, %wide.trip.count24.i.i.i129
  br i1 %exitcond25.not.i.i.i133.3, label %If_CutTruth.exit134, label %.lr.ph18.i.i.i130, !llvm.loop !132

If_CutTruth.exit134:                              ; preds = %.lr.ph.i.i.i123.prol.loopexit, %.lr.ph.i.i.i123, %.lr.ph18.i.i.i130.prol.loopexit, %.lr.ph18.i.i.i130, %middle.block335, %middle.block349, %.preheader14.i.i.i120, %.preheader.i.i.i127
  %.val38 = load i64, ptr %i.a, align 4
  %i.st = trunc i64 %.val38 to i32                ; 2 uses
  %i.su = lshr i32 %i.st, 24
  %i.sv = icmp ult i32 %i.st, 100663296
  %i.sw = add nsw i32 %i.su, -5
  %i.sx = shl nuw i32 1, %i.sw
  %spec.select.i135 = select i1 %i.sv, i32 1, i32 %i.sx ; 3 uses
  %i.sy = icmp sgt i32 %spec.select.i135, 0
  br i1 %i.sy, label %select.unfold.preheader.i136, label %Kit_TruthNot.exit140

select.unfold.preheader.i136:                     ; preds = %If_CutTruth.exit134
  %i.sz = zext nneg i32 %spec.select.i135 to i64  ; 3 uses
  %min.iters.check353 = icmp ult i32 %spec.select.i135, 8
  br i1 %min.iters.check353, label %select.unfold.i137, label %vector.ph354

vector.ph354:                                     ; preds = %select.unfold.preheader.i136
  %n.vec355 = and i64 %i.sz, 2147483640
  %invariant.gep416 = getelementptr [4 x i8], ptr %i.mq, i64 %i.sz
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next360, %vector.body356 ] ; 2 uses
  %i.ta = xor i64 %index357, -1
  %gep417 = getelementptr [4 x i8], ptr %invariant.gep416, i64 %i.ta ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %gep417, i64 -12 ; 2 uses
  %i.tc = getelementptr inbounds i8, ptr %gep417, i64 -28 ; 2 uses
  %wide.load358 = load <4 x i32>, ptr %i.tb, align 4, !tbaa !47
  %wide.load359 = load <4 x i32>, ptr %i.tc, align 4, !tbaa !47
  %i.td = xor <4 x i32> %wide.load358, splat (i32 -1)
  %i.te = xor <4 x i32> %wide.load359, splat (i32 -1)
  store <4 x i32> %i.td, ptr %i.tb, align 4, !tbaa !47
  store <4 x i32> %i.te, ptr %i.tc, align 4, !tbaa !47
  %index.next360 = add nuw i64 %index357, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.tf, label %Kit_TruthNot.exit140, label %vector.body356, !llvm.loop !133

select.unfold.i137:                               ; preds = %select.unfold.preheader.i136, %select.unfold.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i139, %select.unfold.i137 ], [ %i.sz, %select.unfold.preheader.i136 ] ; 2 uses
  %indvars.iv.next.i139 = add nsw i64 %indvars.iv.i138, -1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.next.i139 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !47
  %i.ti = xor i32 %i.th, -1
  store i32 %i.ti, ptr %i.tg, align 4, !tbaa !47
  %i.tj = icmp samesign ugt i64 %indvars.iv.i138, 1
  br i1 %i.tj, label %select.unfold.i137, label %Kit_TruthNot.exit140, !llvm.loop !134

Kit_TruthNot.exit140:                             ; preds = %vector.body356, %select.unfold.i137, %If_CutTruth.exit134
  %i.tk = icmp eq i32 %i.mp, -1
  br i1 %i.tk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Kit_TruthNot.exit140
  %i.tl = load ptr, ptr @s_vMemory, align 8, !tbaa !43
  %i.tm = getelementptr i8, ptr %i.tl, i64 4
  %.val43 = load i32, ptr %i.tm, align 4, !tbaa !38
  %i.tn = add nsw i32 %.val43, %.val44
  br label %bb.j

bb.j:                                             ; preds = %Kit_TruthNot.exit140, %If_CutTruth.exit, %bb.i
  %.026 = phi i32 [ %i.tn, %bb.i ], [ 4095, %If_CutTruth.exit ], [ 4095, %Kit_TruthNot.exit140 ]
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 4096) i32 @Abc_NtkRenodeEvalMv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 11 uses
  %i.b = load i64, ptr %i.a, align 4              ; 3 uses
  %i.c = lshr i64 %i.b, 24
  %i.d = and i64 %i.c, 255                        ; 3 uses
  %2 = and i64 %i.b, 4278190080
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 44
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %3 = lshr i64 %i.b, 24
  %4 = and i64 %3, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 1, i64 %4, i1 false), !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val38 = load i32, ptr %i.g, align 8, !tbaa !53 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 14 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %If_CutTruthWR.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = ashr i32 %.val38, 1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !76
  %i.s = ashr i32 %i.n, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = load i32, ptr %i.m, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !79
  %i.z = and i32 %i.y, %i.n
  %i.aa = mul nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ab
  br label %If_CutTruthWR.exit.i.i

If_CutTruthWR.exit.i.i:                           ; preds = %bb.b, %._crit_edge
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ null, %._crit_edge ] ; 13 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.d
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 5 uses
  %i.ai = and i32 %.val38, 1
  %.not.i7.i.i = icmp eq i32 %i.ai, 0
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %.not.i7.i.i, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader14.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 6
  %i.ak = sub i64 %i.ae, %i.j
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !80
  %wide.load186 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %i.an = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ao = xor <2 x i64> %wide.load186, splat (i64 -1)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !80
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %If_CutTruth.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.prol
  store i64 %i.au, ptr %i.av, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !136

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %If_CutTruth.exit, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph18.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph18.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count24.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check190 = icmp ult i32 %i.ah, 8
  %i.ay = sub i64 %i.ae, %i.j
  %diff.check188 = icmp ugt i64 %i.ay, -32
  %or.cond365 = select i1 %min.iters.check190, i1 true, i1 %diff.check188
  br i1 %or.cond365, label %.lr.ph18.i.i.i.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph18.preheader.i.i.i
  %n.vec192 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next197, %vector.body193 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index194 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load195 = load <2 x i64>, ptr %i.az, align 8, !tbaa !80
  %wide.load196 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index194 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load195, ptr %i.bb, align 8, !tbaa !80
  store <2 x i64> %wide.load196, ptr %i.bc, align 8, !tbaa !80
  %index.next197 = add nuw i64 %index194, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next197, %n.vec192
  br i1 %i.bd, label %middle.block198, label %vector.body193, !llvm.loop !137

middle.block198:                                  ; preds = %vector.body193
  %cmp.n199 = icmp eq i64 %n.vec192, %wide.trip.count24.i.i.i
  br i1 %cmp.n199, label %If_CutTruth.exit, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %.lr.ph18.preheader.i.i.i, %middle.block198
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec192, %middle.block198 ] ; 3 uses
  %xtraiter384 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !138

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.bh = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %If_CutTruth.exit, label %.lr.ph18.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph.i.i.i, !llvm.loop !139

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80
end_hunk_1
begin_hunk_2_@Abc_NtkRenodeEvalAig:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !79
  %i.z = and i32 %i.y, %i.n
  %i.aa = mul nsw i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ab
  br label %If_CutTruthWR.exit.i.i

If_CutTruthWR.exit.i.i:                           ; preds = %bb.b, %bb.a
  %i.ad = phi ptr [ %i.ac, %bb.b ], [ null, %bb.a ] ; 13 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.e
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47 ; 5 uses
  %i.ai = and i32 %.val, 1
  %.not.i7.i.i = icmp eq i32 %i.ai, 0
  %i.aj = icmp sgt i32 %i.ah, 0                   ; 2 uses
  br i1 %.not.i7.i.i, label %.preheader.i.i.i, label %.preheader14.i.i.i

.preheader14.i.i.i:                               ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader14.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ah, 6
  %i.ak = sub i64 %i.ae, %i.j
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !80
  %wide.load48 = load <2 x i64>, ptr %i.am, align 8, !tbaa !80
  %i.an = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ao = xor <2 x i64> %wide.load48, splat (i64 -1)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %i.an, ptr %i.ap, align 8, !tbaa !80
  store <2 x i64> %i.ao, ptr %i.aq, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %If_CutTruth.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.prol
  store i64 %i.au, ptr %i.av, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !176

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.aw = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %If_CutTruth.exit, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %If_CutTruthWR.exit.i.i
  br i1 %i.aj, label %.lr.ph18.preheader.i.i.i, label %If_CutTruth.exit

.lr.ph18.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count24.i.i.i = zext nneg i32 %i.ah to i64 ; 5 uses
  %min.iters.check52 = icmp ult i32 %i.ah, 8
  %i.ay = sub i64 %i.ae, %i.j
  %diff.check50 = icmp ugt i64 %i.ay, -32
  %or.cond63 = select i1 %min.iters.check52, i1 true, i1 %diff.check50
  br i1 %or.cond63, label %.lr.ph18.i.i.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph18.preheader.i.i.i
  %n.vec54 = and i64 %wide.trip.count24.i.i.i, 2147483644 ; 3 uses
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next59, %vector.body55 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.az, align 8, !tbaa !80
  %wide.load58 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load57, ptr %i.bb, align 8, !tbaa !80
  store <2 x i64> %wide.load58, ptr %i.bc, align 8, !tbaa !80
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.bd, label %middle.block60, label %vector.body55, !llvm.loop !177

middle.block60:                                   ; preds = %vector.body55
  %cmp.n61 = icmp eq i64 %n.vec54, %wide.trip.count24.i.i.i
  br i1 %cmp.n61, label %If_CutTruth.exit, label %.lr.ph18.i.i.i.preheader

.lr.ph18.i.i.i.preheader:                         ; preds = %.lr.ph18.preheader.i.i.i, %middle.block60
  %indvars.iv21.i.i.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i.i.i ], [ %n.vec54, %middle.block60 ] ; 3 uses
  %xtraiter65 = and i64 %wide.trip.count24.i.i.i, 3 ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %indvars.iv21.i.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ], [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.i.prol, 1 ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !178

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.unr = phi i64 [ %indvars.iv21.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.prol, %.lr.ph18.i.i.i.prol ]
  %i.bh = sub nsw i64 %indvars.iv21.i.i.i.ph, %wide.trip.count24.i.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %If_CutTruth.exit, label %.lr.ph18.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !80
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.1
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !80
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i.2
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph.i.i.i, !llvm.loop !179

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ], [ %indvars.iv21.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv21.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv21.i.i.i
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i.1
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next22.i.i.i.2
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !80
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.i.3, %wide.trip.count24.i.i.i
  br i1 %exitcond25.not.i.i.i.3, label %If_CutTruth.exit, label %.lr.ph18.i.i.i, !llvm.loop !180

If_CutTruth.exit:                                 ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i, %middle.block, %middle.block60, %.preheader14.i.i.i, %.preheader.i.i.i
  %.val27 = load i64, ptr %i.b, align 4
  %i.cl = trunc i64 %.val27 to i32
  %i.cm = lshr i32 %i.cl, 24
  %i.cn = load ptr, ptr @s_vMemory, align 8, !tbaa !43
  %i.co = tail call ptr @Kit_TruthToGraph(ptr noundef %i.i, i32 noundef %i.cm, ptr noundef %i.cn) #9 ; 6 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.preheader, label %bb.c

.preheader:                                       ; preds = %If_CutTruth.exit
  %.val26 = load i64, ptr %i.b, align 4           ; 2 uses
  %2 = and i64 %.val26, 4278190080
  %.not38 = icmp eq i64 %2, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %.preheader
  %3 = lshr i64 %.val26, 24
  %4 = and i64 %3, 255
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 100, i64 %4, i1 false), !tbaa !46
  br label %.loopexit

bb.c:                                             ; preds = %If_CutTruth.exit
  %i.cq = getelementptr i8, ptr %i.co, i64 4
  %.val28 = load i32, ptr %i.cq, align 4, !tbaa !181
  %i.cr = getelementptr i8, ptr %i.co, i64 8      ; 2 uses
  %.val29 = load i32, ptr %i.cr, align 8, !tbaa !185
  %i.cs = sub nsw i32 %.val29, %.val28
  %.val2534 = load i64, ptr %i.b, align 4
  %i.ct = and i64 %.val2534, 4278190080
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.val30 = load i32, ptr %i.cr, align 8, !tbaa !185
  %.val31 = load ptr, ptr %i.cu, align 8, !tbaa !186 ; 2 uses
  %i.cv = sext i32 %.val30 to i64
  %i.cw = getelementptr inbounds [24 x i8], ptr %.val31, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %.val31, i64 %indvars.iv
  %i.cz = tail call i32 @Kit_GraphLeafDepth_rec(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cx, ptr noundef %i.cy) #9
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.da, ptr %i.db, align 1, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val25 = load i64, ptr %i.b, align 4
  %i.dc = lshr i64 %.val25, 24
  %i.dd = and i64 %i.dc, 255
  %i.de = icmp samesign ult i64 %indvars.iv.next, %i.dd
  br i1 %i.de, label %bb.d, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %bb.d, %bb.c
  tail call void @Kit_GraphFree(ptr noundef nonnull %i.co) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph37.preheader, %.preheader, %._crit_edge
  %.022 = phi i32 [ %i.cs, %._crit_edge ], [ 4095, %.preheader ], [ 4095, %.lr.ph37.preheader ]
  ret i32 %.022
}

declare ptr @Cudd_Init(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Extra_ReorderInit(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_NtkIf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Extra_StopManager(ptr noundef) local_unnamed_addr #2

declare void @Extra_ReorderQuit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @Kit_TruthToGraph(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Kit_GraphLeafDepth_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Kit_GraphFree(ptr noundef) local_unnamed_addr #2

declare ptr @Kit_TruthToBdd(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Cudd_Ref(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_Reorder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Cudd_DagSize(ptr noundef) local_unnamed_addr #2

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Kit_TruthIsop(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Abc_NodeEvalMvCost(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"If_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !10, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !11, i64 208, !5, i64 216, !10, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !13, i64 296, !14, i64 304, !15, i64 312, !15, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368}
!10 = !{!"float", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS12If_LibLut_t_", !12, i64 0}
!14 = !{!"p1 _ZTS13If_LibCell_t_", !12, i64 0}
!15 = !{!"p1 float", !12, i64 0}
!16 = !{!9, !5, i64 4}
!17 = !{!9, !5, i64 8}
!18 = !{!9, !5, i64 12}
!19 = !{!10, !10, i64 0}
!20 = !{!9, !5, i64 52}
!21 = !{!9, !5, i64 56}
!22 = !{!9, !5, i64 64}
!23 = !{!9, !5, i64 200}
!24 = !{!9, !5, i64 232}
!25 = !{!9, !5, i64 236}
!26 = !{!9, !5, i64 260}
!27 = !{!9, !15, i64 312}
!28 = !{!9, !5, i64 240}
!29 = !{!9, !5, i64 244}
!30 = !{!9, !5, i64 248}
!31 = !{!9, !5, i64 252}
!32 = !{!9, !12, i64 328}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS9DdManager", !12, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8_reo_man", !12, i64 0}
!37 = !{!9, !12, i64 368}
!38 = !{!39, !5, i64 4}
!39 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !40, i64 8}
!40 = !{!"p1 int", !12, i64 0}
!41 = !{!39, !5, i64 0}
!42 = !{!39, !40, i64 8}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!45 = !{!12, !12, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!5, !5, i64 0}
!48 = distinct !{!48, !49, !50, !51}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !49, !51, !50}
!53 = !{!54, !5, i64 24}
!54 = !{!"If_Cut_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !55, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 37, !5, i64 37, !5, i64 37, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !6, i64 44}
!55 = !{!"long", !6, i64 0}
!56 = !{!57, !61, i64 152}
!57 = !{!"If_Man_t_", !11, i64 0, !58, i64 8, !59, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !6, i64 64, !5, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !5, i64 104, !10, i64 108, !5, i64 112, !5, i64 116, !6, i64 120, !61, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !44, i64 176, !6, i64 184, !5, i64 568, !5, i64 572, !5, i64 576, !44, i64 584, !44, i64 592, !62, i64 600, !62, i64 608, !62, i64 616, !60, i64 624, !44, i64 632, !5, i64 640, !5, i64 644, !5, i64 648, !6, i64 652, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !63, i64 736, !63, i64 744, !64, i64 752, !64, i64 760, !64, i64 768, !5, i64 776, !5, i64 780, !6, i64 784, !6, i64 912, !5, i64 1040, !5, i64 1044, !5, i64 1048, !5, i64 1052, !65, i64 1056, !6, i64 1064, !6, i64 1192, !6, i64 1320, !6, i64 1448, !6, i64 1576, !6, i64 1704, !6, i64 1832, !66, i64 1960, !44, i64 1968, !67, i64 1976, !68, i64 1984, !6, i64 1992, !5, i64 2024, !5, i64 2028, !5, i64 2032, !6, i64 2040, !6, i64 2088, !6, i64 2096, !44, i64 2104, !6, i64 2112, !60, i64 2176, !12, i64 2184, !44, i64 2192, !6, i64 2200, !67, i64 2264, !44, i64 2272, !44, i64 2280, !44, i64 2288, !59, i64 2296, !69, i64 2304, !5, i64 2312, !6, i64 2316, !6, i64 2444, !10, i64 2572, !5, i64 2576, !70, i64 2584, !44, i64 2592, !6, i64 2600, !6, i64 2608, !6, i64 2616, !63, i64 2632}
!58 = !{!"p1 _ZTS9If_Par_t_", !12, i64 0}
!59 = !{!"p1 _ZTS9If_Obj_t_", !12, i64 0}
!60 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!61 = !{!"p1 long", !12, i64 0}
!62 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!63 = !{!"p1 _ZTS12Mem_Fixed_t_", !12, i64 0}
!64 = !{!"p1 _ZTS9If_Set_t_", !12, i64 0}
!65 = !{!"p1 _ZTS12If_DsdMan_t_", !12, i64 0}
!66 = !{!"p1 _ZTS14Hash_IntMan_t_", !12, i64 0}
!67 = !{!"p1 _ZTS10Vec_Str_t_", !12, i64 0}
!68 = !{!"p1 _ZTS10Vec_Mem_t_", !12, i64 0}
!69 = !{!"p1 _ZTS9If_Cut_t_", !12, i64 0}
!70 = !{!"p1 _ZTS10Tim_Man_t_", !12, i64 0}
!71 = !{!68, !68, i64 0}
!72 = !{!73, !74, i64 24}
!73 = !{!"Vec_Mem_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !74, i64 24, !44, i64 32, !44, i64 40}
!74 = !{!"p2 long", !75, i64 0}
!75 = !{!"any p2 pointer", !12, i64 0}
!76 = !{!73, !5, i64 8}
!77 = !{!61, !61, i64 0}
!78 = !{!73, !5, i64 0}
!79 = !{!73, !5, i64 12}
!80 = !{!55, !55, i64 0}
!81 = distinct !{!81, !49, !50, !51}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = distinct !{!84, !49, !50, !51}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = distinct !{!88, !49}
!89 = distinct !{!89, !49, !50, !51}
end_hunk_2
