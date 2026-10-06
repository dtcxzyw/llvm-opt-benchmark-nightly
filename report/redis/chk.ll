Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/chk?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fpAndIdx = type { [2 x i64], i16 }

@.str = private unnamed_addr constant [46 x i8] c"k > 0 && (numbuckets & (numbuckets - 1)) == 0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chk.c\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @chkHeapifyDown(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca { ptr, i64 }, align 8         ; 4 uses
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2
  %i.c = lshr i64 %i.b, 1                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %2, 1                        ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 3 uses
  %i.g = add nuw i64 %i.e, 2                      ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.f
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 3 uses
  br i1 %i.h, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.g
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = icmp ugt i64 %i.j, %i.l
  %spec.select = select i1 %i.m, i64 %i.g, i64 %i.f
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.l)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.o = phi i64 [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20   ; 3 uses
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !tbaa.struct !23
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge46, %bb.e
  %.039 = phi i64 [ %2, %bb.e ], [ %.1, %._crit_edge46 ]
  %.1 = phi i64 [ %.0, %bb.e ], [ %.2, %._crit_edge46 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.039
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.1 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = icmp ult i64 %i.c, %.1
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw i64 %.1, 1                       ; 2 uses
  %i.w = or disjoint i64 %i.v, 1                  ; 3 uses
  %i.x = add nuw i64 %i.v, 2                      ; 3 uses
  %i.y = icmp ult i64 %i.x, %1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  br i1 %i.y, label %bb.h, label %._crit_edge46

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.x
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  %spec.select45 = select i1 %i.ad, i64 %i.x, i64 %i.w
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ac)
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ae, %bb.h ], [ %i.aa, %bb.g ]
  %.2 = phi i64 [ %spec.select45, %bb.h ], [ %i.w, %bb.g ]
  %i.ag = icmp ult i64 %i.af, %i.q
  br i1 %i.ag, label %bb.f, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.f, %._crit_edge46
  store i64 %i.q, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @chkTopKCreate(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %i.b = icmp sgt i32 %0, 0
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.d = icmp samesign ult i32 %i.c, 2
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !51
  br i1 %or.cond, label %bb.b, label %.critedge, !prof !51

.critedge:                                        ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 118) #17
  tail call void @abort() #18
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !22
  %i.e = call ptr @zcalloc_usable(i64 noundef 6232, ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !27
  %i.j = sext i32 %1 to i64
  %i.k = mul nsw i64 %i.j, 40                     ; 2 uses
  %i.l = call ptr @zcalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #17
  store ptr %i.l, ptr %i.e, align 8, !tbaa !28
  %i.m = load i64, ptr %i.a, align 8, !tbaa !22
  %i.n = load i64, ptr %i.g, align 8, !tbaa !27
  %i.o = add i64 %i.n, %i.m
  store i64 %i.o, ptr %i.g, align 8, !tbaa !27
  %i.p = call ptr @zcalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #17
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !28
  %i.r = load i64, ptr %i.a, align 8, !tbaa !22
  %i.s = load i64, ptr %i.g, align 8, !tbaa !27
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.g, align 8, !tbaa !27
  %i.u = zext nneg i32 %0 to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = call ptr @zcalloc_usable(i64 noundef %i.v, ptr noundef nonnull %i.a) #17
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !29
  %i.y = load i64, ptr %i.a, align 8, !tbaa !22
  %i.z = load i64, ptr %i.g, align 8, !tbaa !27
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 6200 ; 2 uses
  store double %2, ptr %i.ab, align 8, !tbaa !52
  %i.ac = fdiv double 1.000000e+00, %2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 6208 ; 2 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 6224
  store i32 %0, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 6228
  store i32 %1, ptr %i.af, align 4, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 2088 ; 2 uses
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 4144 ; 2 uses
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %3 = phi double [ 0.000000e+00, %bb.b ], [ %i.am, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.aj = load double, ptr %i.ab, align 8, !tbaa !52
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %4, -1
  %i.ak = sitofp i32 %5 to double
  %i.al = call double @pow(double noundef %i.aj, double noundef %i.ak) #17, !tbaa !15
  %i.am = fadd double %3, %i.al                   ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.am, ptr %i.an, align 8, !tbaa !32
  %i.ao = fsub double %i.am, %3
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store double %i.ao, ptr %i.ap, align 8, !tbaa !32
  %i.aq = load double, ptr %i.ad, align 8, !tbaa !53
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = call double @pow(double noundef %i.aq, double noundef %i.as) #17, !tbaa !15
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store double %i.at, ptr %i.au, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !50
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare ptr @zcalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @chkTopKRelease(ptr noundef %0) local_unnamed_addr #2 {
.preheader:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28
  call void @zfree_usable(ptr noundef %i.c, ptr noundef nonnull %i.a) #17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22
  %i.e = load i64, ptr %i.b, align 8, !tbaa !27
  %i.f = sub i64 %i.e, %i.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  call void @zfree_usable(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !22
  %i.j = load i64, ptr %i.b, align 8, !tbaa !27
  %i.k = sub i64 %i.j, %i.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  call void @zfree_usable(ptr noundef %i.q, ptr noundef nonnull %i.a) #17
  %i.r = load i64, ptr %i.a, align 8, !tbaa !22
  %i.s = load i64, ptr %i.b, align 8, !tbaa !27
  %i.t = sub i64 %i.s, %i.r
  store i64 %i.t, ptr %i.b, align 8, !tbaa !27
  call void @zfree(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.h
  %i.u = phi i32 [ %i.m, %.lr.ph ], [ %i.au, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 7 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !34 ; 2 uses
  %i.aa = and i8 %.val.i, 7
  switch i8 %i.aa, label %sdsAllocSize.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.ab = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.ab, 2
  %i.ac = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !34
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 4
  br label %sdsAllocSize.exit

bb.e:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds i8, ptr %i.y, i64 -3
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !36
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 6
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds i8, ptr %i.y, i64 -5
  %i.am = load i32, ptr %i.al, align 1, !tbaa !15
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.an, 10
  br label %sdsAllocSize.exit

bb.g:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 -9
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !22
  %i.ar = add i64 %i.aq, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ar, %bb.g ], [ %i.ac, %bb.c ], [ %i.ag, %bb.d ], [ %i.ak, %bb.e ], [ %i.ao, %bb.f ], [ 0, %bb.b ]
  %i.as = load i64, ptr %i.b, align 8, !tbaa !27
  %i.at = sub i64 %i.as, %.0.i
  store i64 %i.at, ptr %i.b, align 8, !tbaa !27
  call void @sdsfree(ptr noundef nonnull %i.y) #17
  %.pre = load i32, ptr %i.l, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %sdsAllocSize.exit
  %i.au = phi i32 [ %i.u, %bb.a ], [ %.pre, %sdsAllocSize.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.a, label %._crit_edge, !llvm.loop !54
}

declare void @zfree_usable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #3

declare void @zfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @generateItemFpAndIdxs(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.fpAndIdx) align 8 captures(none) initializes((0, 18)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = tail call i64 @XXH3_64bits_withSeed(ptr noundef captures(none) %2, i64 noundef %i.a, i64 noundef 0) #19 ; 3 uses
  %i.c = trunc i64 %i.b to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !38
  %i.e = lshr i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !31
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = and i64 %i.e, %i.i                       ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !22
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = trunc i64 %i.b to i32
  %i.m = and i32 %i.l, 65535
  %i.n = mul i32 %i.m, 1540483477
  %i.o = xor i32 %i.n, %i.k
  %i.p = and i32 %i.o, %i.h
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @XXH3_64bits_withSeed(ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @checkHeavyEntries(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.fpAndIdx) align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8              ; 5 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !22
  %i.d = load ptr, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.not = icmp eq i64 %i.g, 0
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i16, ptr %i.h, align 8, !tbaa !41
  %i.j = icmp eq i16 %i.i, %i.b
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %spec.select49.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %.344.ph = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %.not.1 = icmp eq i64 %i.l, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
