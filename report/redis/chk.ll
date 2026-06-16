inline.NumInlined: 21
inline.NumDeleted: 8
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
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2
  %i.c = lshr i64 %i.b, 1                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %2, 1                        ; 2 uses
  %i.f = or disjoint i64 %i.e, 1                  ; 3 uses
  %i.g = add nuw i64 %i.e, 2                      ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  %3 = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.f
  %4 = load i64, ptr %3, align 8, !tbaa !13       ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp ugt i64 %4, %i.j
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.f
  %5 = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0.a = phi i64 [ %5, %bb.d ], [ %4, %bb.c ]
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = icmp ugt i64 %.0.a, %i.m
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !tbaa.struct !18
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.039 = phi i64 [ %2, %bb.f ], [ %.1, %bb.j ]
  %.1 = phi i64 [ %.0, %bb.f ], [ %.2, %bb.j ]    ; 4 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.039
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.1 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = icmp ult i64 %i.c, %.1
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = shl nuw i64 %.1, 1                       ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 3 uses
  %i.t = add nuw i64 %i.r, 2                      ; 3 uses
  %i.u = icmp ult i64 %i.t, %1
  %6 = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s
  %7 = load i64, ptr %6, align 8, !tbaa !13       ; 3 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp ugt i64 %7, %i.w
  %spec.select45 = select i1 %i.x, i64 %i.t, i64 %i.s
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %i.w)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.2.a = phi i64 [ %8, %bb.i ], [ %7, %bb.h ]
  %.2 = phi i64 [ %spec.select45, %bb.i ], [ %i.s, %bb.h ]
  %i.y = icmp ult i64 %.2.a, %i.m
  br i1 %i.y, label %bb.g, label %bb.k, !llvm.loop !21

bb.k:                                             ; preds = %bb.g, %bb.j
  store i64 %i.m, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.k
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
  %or.cond = select i1 %i.b, i1 %i.d, i1 false, !prof !23
  br i1 %or.cond, label %bb.b, label %.critedge, !prof !23

.critedge:                                        ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 118) #17
  tail call void @abort() #18
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.e = call ptr @zcalloc_usable(i64 noundef 6232, ptr noundef nonnull %i.a) #17 ; 12 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 8 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24
  %i.i = add i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8, !tbaa !24
  %i.j = sext i32 %1 to i64
  %i.k = mul nsw i64 %i.j, 40                     ; 2 uses
  %i.l = call ptr @zcalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #17
  store ptr %i.l, ptr %i.e, align 8, !tbaa !27
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20
  %i.n = load i64, ptr %i.g, align 8, !tbaa !24
  %i.o = add i64 %i.n, %i.m
  store i64 %i.o, ptr %i.g, align 8, !tbaa !24
  %i.p = call ptr @zcalloc_usable(i64 noundef %i.k, ptr noundef nonnull %i.a) #17
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20
  %i.s = load i64, ptr %i.g, align 8, !tbaa !24
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.g, align 8, !tbaa !24
  %i.u = zext nneg i32 %0 to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = call ptr @zcalloc_usable(i64 noundef %i.v, ptr noundef nonnull %i.a) #17
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = load i64, ptr %i.a, align 8, !tbaa !20
  %i.z = load i64, ptr %i.g, align 8, !tbaa !24
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 6200 ; 2 uses
  store double %2, ptr %i.ab, align 8, !tbaa !29
  %i.ac = fdiv double 1.000000e+00, %2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 6208 ; 2 uses
  store double %i.ac, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 6224
  store i32 %0, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 6228
  store i32 %1, ptr %i.af, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 2088 ; 2 uses
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 4144 ; 2 uses
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.aj = phi double [ 0.000000e+00, %bb.b ], [ %i.ap, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %i.ak = load double, ptr %i.ab, align 8, !tbaa !29
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = add i32 %i.al, -1
  %i.an = sitofp i32 %i.am to double
  %i.ao = call double @pow(double noundef %i.ak, double noundef %i.an) #17, !tbaa !9
  %i.ap = fadd double %i.aj, %i.ao                ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.ap, ptr %i.aq, align 8, !tbaa !33
  %i.ar = fsub double %i.ap, %i.aj
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store double %i.ar, ptr %i.as, align 8, !tbaa !33
  %i.at = load double, ptr %i.ad, align 8, !tbaa !30
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = uitofp nneg i32 %i.au to double
  %i.aw = call double @pow(double noundef %i.at, double noundef %i.av) #17, !tbaa !9
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store double %i.aw, ptr %i.ax, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !34
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !27
  call void @zfree_usable(ptr noundef %i.c, ptr noundef nonnull %i.a) #17
  %i.d = load i64, ptr %i.a, align 8, !tbaa !20
  %i.e = load i64, ptr %i.b, align 8, !tbaa !24
  %i.f = sub i64 %i.e, %i.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  call void @zfree_usable(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %i.j = load i64, ptr %i.b, align 8, !tbaa !24
  %i.k = sub i64 %i.j, %i.i
  store i64 %i.k, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  call void @zfree_usable(ptr noundef %i.q, ptr noundef nonnull %i.a) #17
  %i.r = load i64, ptr %i.a, align 8, !tbaa !20
  %i.s = load i64, ptr %i.b, align 8, !tbaa !24
  %i.t = sub i64 %i.s, %i.r
  store i64 %i.t, ptr %i.b, align 8, !tbaa !24
  call void @zfree(ptr noundef nonnull %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.h
  %i.u = phi i32 [ %i.m, %.lr.ph ], [ %i.au, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 7 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %.val.i = load i8, ptr %i.z, align 1, !tbaa !36 ; 2 uses
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
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 4
  br label %sdsAllocSize.exit
end_hunk_0
begin_hunk_1_@chkTopKUpdate:bb.a
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %sext.1.i123 = shl i64 %.sroa.5.0.copyload, 32
  %i.cd = ashr exact i64 %sext.1.i123, 32
  %i.ce = getelementptr inbounds [40 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !52
  %.not.1.i124 = icmp eq i16 %i.cg, %.sroa.6.0.copyload
  br i1 %.not.1.i124, label %bb.r, label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 34
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !53  ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %.preheader.preheader, label %bb.n

.thread.sink.split.i:                             ; preds = %bb.p, %bb.o
  %.sink.i = phi i8 [ %i.bz, %bb.o ], [ 16, %bb.p ]
  store i8 %.sink.i, ptr %i.bv, align 2, !tbaa !53
  br label %checkLobbyEntries.exit

.preheader.preheader:                             ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %0, align 8, !tbaa !27
  %sext = shl nuw i64 %i.n, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 34
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !51
  %.not114 = icmp eq i8 %i.co, 0
  br i1 %.not114, label %bb.s, label %.preheader.1

bb.s:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.0103177.lcssa.wide = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ] ; 2 uses
  %.lcssa182 = phi ptr [ %i.cm, %.preheader.preheader ], [ %i.cw, %.preheader.1 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa182, i64 34 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.lcssa182, i64 32
  store i16 %i.g, ptr %i.cq, align 8, !tbaa !48
  %i.cr = icmp ult i64 %3, 16
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = trunc nuw nsw i64 %3 to i8
  store i8 %i.cs, ptr %i.cp, align 2, !tbaa !51
  br label %chkHeapifyDown.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %3, i32 noundef %.0103177.lcssa.wide) ; 2 uses
  %.not113 = icmp eq i32 %i.ct, -1
  br i1 %.not113, label %bb.v, label %checkLobbyEntries.exit

bb.v:                                             ; preds = %bb.u
  store i8 16, ptr %i.cp, align 2, !tbaa !51
  br label %chkHeapifyDown.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cw = getelementptr inbounds [40 x i8], ptr %i.cv, i64 %i.u ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 34
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !51
  %.not114.1 = icmp eq i8 %i.cy, 0
  br i1 %.not114.1, label %bb.s, label %bb.w

bb.w:                                             ; preds = %.preheader.1
  %i.cz = and i16 %i.g, 1
  %i.da = zext nneg i16 %i.cz to i32              ; 2 uses
  %i.db = and i64 %i.f, 1                         ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.db
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %sext115 = shl i64 %i.dd, 32
  %i.dg = ashr exact i64 %sext115, 32
  %i.dh = getelementptr inbounds [40 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 34 ; 4 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !53  ; 5 uses
  %cond = icmp eq i64 %3, 1
  %i.dk = zext i8 %i.dj to i64                    ; 4 uses
  br i1 %cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !33
  %i.do = tail call i32 @rand() #17
  %i.dp = sitofp i32 %i.do to double
  %i.dq = fdiv double %i.dp, f0x41DFFFFFFFC00000
  %i.dr = fcmp olt double %i.dq, %i.dn
  %i.ds = sext i1 %i.dr to i8
  %.0.i = add i8 %i.dj, %i.ds
  br label %chkDecayCounter.exit

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dk
  %i.dv = load double, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %i.dw = fptoui double %i.dv to i64
  %i.dx = icmp ult i64 %3, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dy = uitofp i64 %3 to double
  %i.dz = fdiv double %i.dy, %i.dv
  %i.ea = tail call i32 @rand() #17
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fdiv double %i.eb, f0x41DFFFFFFFC00000
  %i.ed = fcmp olt double %i.ec, %i.dz
  %i.ee = sext i1 %i.ed to i8
  %.1.i = add i8 %i.dj, %i.ee
  br label %chkDecayCounter.exit

bb.aa:                                            ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dk
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !33 ; 2 uses
  %i.ei = fptoui double %i.eh to i64
  %.not.i129 = icmp uge i64 %3, %i.ei
  %.not42.i = icmp eq i8 %i.dj, 0
  %or.cond.i = or i1 %.not42.i, %.not.i129
  br i1 %or.cond.i, label %chkDecayCounter.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.ej = zext i8 %i.dj to i32
  %i.ek = uitofp i64 %3 to double
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %.03541.i = phi i32 [ %i.ej, %.lr.ph.i ], [ %.136.i, %bb.ab ] ; 2 uses
  %.03740.i = phi i32 [ 0, %.lr.ph.i ], [ %.138.i, %bb.ab ] ; 3 uses
  %i.el = sub nsw i32 %.03541.i, %.03740.i
  %i.em = lshr i32 %i.el, 1
  %i.en = add nuw nsw i32 %i.em, %.03740.i        ; 3 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !33
  %i.er = fadd double %i.eq, %i.ek
  %i.es = fcmp ult double %i.er, %i.eh            ; 2 uses
  %i.et = add nuw nsw i32 %i.en, 1
  %.138.i = select i1 %i.es, i32 %i.et, i32 %.03740.i ; 3 uses
  %.136.i = select i1 %i.es, i32 %.03541.i, i32 %i.en ; 2 uses
  %i.eu = icmp slt i32 %.138.i, %.136.i
  br i1 %i.eu, label %bb.ab, label %._crit_edge.loopexit.i, !llvm.loop !54

._crit_edge.loopexit.i:                           ; preds = %bb.ab
  %i.ev = trunc i32 %.138.i to i8
  br label %chkDecayCounter.exit

chkDecayCounter.exit:                             ; preds = %bb.x, %bb.z, %._crit_edge.loopexit.i
  %.4.i = phi i8 [ %i.ev, %._crit_edge.loopexit.i ], [ %.0.i, %bb.x ], [ %.1.i, %bb.z ] ; 2 uses
  %i.ew = icmp eq i8 %.4.i, 0
  br i1 %i.ew, label %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge, label %select.unfold

chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge: ; preds = %chkDecayCounter.exit
  %.pre = load i8, ptr %i.di, align 2, !tbaa !53
  %.pre186 = zext i8 %.pre to i64
  br label %chkDecayCounter.exit.thread

chkDecayCounter.exit.thread:                      ; preds = %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge, %bb.aa
  %.pre-phi = phi i64 [ %.pre186, %chkDecayCounter.exit.chkDecayCounter.exit.thread_crit_edge ], [ %i.dk, %bb.aa ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i16 %i.g, ptr %i.ex, align 2, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %.pre-phi
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !33
  %i.fb = fptoui double %i.fa to i64              ; 2 uses
  %.not116 = icmp ugt i64 %3, %i.fb
  %i.fc = sub nuw i64 %3, %i.fb
  %i.fd = tail call i64 @llvm.umin.i64(i64 %i.fc, i64 255)
  %i.fe = trunc nuw i64 %i.fd to i8
  br i1 %.not116, label %select.unfold, label %.thread160

.thread160:                                       ; preds = %chkDecayCounter.exit.thread
  store i8 1, ptr %i.di, align 2, !tbaa !53
  br label %chkHeapifyDown.exit

select.unfold:                                    ; preds = %chkDecayCounter.exit.thread, %chkDecayCounter.exit
  %storemerge = phi i8 [ %.4.i, %chkDecayCounter.exit ], [ %i.fe, %chkDecayCounter.exit.thread ] ; 3 uses
  store i8 %storemerge, ptr %i.di, align 2, !tbaa !53
  %i.ff = icmp ugt i8 %storemerge, 15
  br i1 %i.ff, label %bb.ac, label %chkHeapifyDown.exit

bb.ac:                                            ; preds = %select.unfold
  %i.fg = zext i8 %storemerge to i64
  %i.fh = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %i.fg, i32 noundef %i.da) ; 2 uses
  %.not117 = icmp eq i32 %i.fh, -1
  %spec.select = select i1 %.not117, i32 -1, i32 %i.da
  br label %checkLobbyEntries.exit

checkLobbyEntries.exit:                           ; preds = %.thread.sink.split.i, %bb.p, %checkHeavyEntries.exit, %checkHeavyEntries.exit.thread213, %bb.u, %bb.ac
  %.sroa.050.4 = phi i32 [ %.3.ph.1.1108.i, %checkHeavyEntries.exit ], [ %.04385.lcssa.i, %checkHeavyEntries.exit.thread213 ], [ %spec.select, %bb.ac ], [ %.0103177.lcssa.wide, %bb.u ], [ %.036.lcssa.wide.i, %bb.p ], [ %.036.lcssa.wide.i, %.thread.sink.split.i ] ; 2 uses
  %.sroa.10.6 = phi i32 [ %.340.ph.1.1107.i, %checkHeavyEntries.exit ], [ %.03683.lcssa.wide.i, %checkHeavyEntries.exit.thread213 ], [ %i.fh, %bb.ac ], [ %i.ct, %bb.u ], [ %i.ca, %bb.p ], [ -1, %.thread.sink.split.i ] ; 2 uses
  %i.fi = icmp eq i32 %.sroa.050.4, -1
  %i.fj = icmp eq i32 %.sroa.10.6, -1
  %or.cond = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond, label %chkHeapifyDown.exit, label %bb.ad

bb.ad:                                            ; preds = %checkLobbyEntries.exit
  %i.fk = zext nneg i32 %.sroa.050.4 to i64       ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !28 ; 11 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !13
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !27
  %sext118 = shl i64 %i.fm, 32
  %i.fs = ashr exact i64 %sext118, 32
  %i.ft = getelementptr inbounds [40 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = zext nneg i32 %.sroa.10.6 to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !42 ; 6 uses
  %i.fx = icmp ult i64 %i.fw, %i.fp
  br i1 %i.fx, label %chkHeapifyDown.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fy = tail call i64 @XXH3_64bits_withSeed(ptr noundef captures(none) %1, i64 noundef %i.e, i64 noundef 1919) #19 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !31 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i130, label %.loopexit

.lr.ph.i130:                                      ; preds = %bb.ae
  %i.gc = zext nneg i32 %i.ga to i64              ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ao, %.lr.ph.i130
  %indvars.iv.i = phi i64 [ %i.gc, %.lr.ph.i130 ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv.next.i ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !58
  %i.gg = icmp eq i64 %i.gf, %i.fy
  br i1 %i.gg, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35 ; 7 uses
  %.not.i131 = icmp eq ptr %i.gi, null
  br i1 %.not.i131, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gj = getelementptr i8, ptr %i.gi, i64 -1
  %.val.i.i = load i8, ptr %i.gj, align 1, !tbaa !36 ; 2 uses
  %i.gk = and i8 %.val.i.i, 7
  switch i8 %i.gk, label %sdslen.exit.i [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gl = lshr i8 %.val.i.i, 3
  %i.gm = zext nneg i8 %i.gl to i64
  br label %sdslen.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !36
  %i.gp = zext i8 %i.go to i64
  br label %sdslen.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.gq = getelementptr inbounds i8, ptr %i.gi, i64 -5
  %i.gr = load i16, ptr %i.gq, align 1, !tbaa !37
  %i.gs = zext i16 %i.gr to i64
  br label %sdslen.exit.i

bb.al:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds i8, ptr %i.gi, i64 -9
  %i.gu = load i32, ptr %i.gt, align 1, !tbaa !9
  %i.gv = zext i32 %i.gu to i64
  br label %sdslen.exit.i

bb.am:                                            ; preds = %bb.ah
  %i.gw = getelementptr inbounds i8, ptr %i.gi, i64 -17
  %i.gx = load i64, ptr %i.gw, align 1, !tbaa !20
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i = phi i64 [ %i.gx, %bb.am ], [ %i.gm, %bb.ai ], [ %i.gp, %bb.aj ], [ %i.gs, %bb.ak ], [ %i.gv, %bb.al ], [ 0, %bb.ah ]
  %i.gy = icmp eq i64 %.0.i.i, %i.e
  br i1 %i.gy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %sdslen.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.gi, ptr readonly %1, i64 %i.e)
  %i.gz = icmp eq i32 %bcmp.i, 0
  br i1 %i.gz, label %chkCheckExistInHeap.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %sdslen.exit.i, %bb.ag, %bb.af
  %i.ha = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ha, label %bb.af, label %.loopexit, !llvm.loop !59

chkCheckExistInHeap.exit:                         ; preds = %bb.an
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.fw, ptr %i.gd, align 8, !tbaa !13
  %i.hc = icmp eq i32 %i.ga, 1
  br i1 %i.hc, label %chkHeapifyDown.exit, label %bb.ap

bb.ap:                                            ; preds = %chkCheckExistInHeap.exit
  %i.hd = add nsw i64 %i.gc, -2
  %i.he = lshr i64 %i.hd, 1                       ; 2 uses
  %i.hf = icmp ult i64 %i.he, %indvars.iv.next.i
  br i1 %i.hf, label %chkHeapifyDown.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = shl nuw nsw i64 %indvars.iv.next.i, 1   ; 2 uses
  %i.hh = or disjoint i64 %i.hg, 1                ; 3 uses
  %i.hi = add nuw nsw i64 %i.hg, 2                ; 3 uses
  %i.hj = icmp samesign ult i64 %i.hi, %i.gc
  %6 = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hh
  %7 = load i64, ptr %6, align 8, !tbaa !13       ; 3 uses
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !13 ; 2 uses
  %i.hm = icmp ugt i64 %7, %i.hl
  %spec.select.i134 = select i1 %i.hm, i64 %i.hi, i64 %i.hh
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 %i.hl)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i132.a = phi i64 [ %8, %bb.ar ], [ %7, %bb.aq ]
  %.0.i132 = phi i64 [ %spec.select.i134, %bb.ar ], [ %i.hh, %bb.aq ]
  %i.hn = icmp ugt i64 %.0.i132.a, %i.fw
  br i1 %i.hn, label %chkHeapifyDown.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !18
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %bb.at
  %.039.i = phi i64 [ %indvars.iv.next.i, %bb.at ], [ %.1.i133, %bb.ax ]
  %.1.i133 = phi i64 [ %.0.i132, %bb.at ], [ %.2.i, %bb.ax ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.039.i
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.1.i133 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false)
  %i.hq = icmp ult i64 %i.he, %.1.i133
  br i1 %i.hq, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hr = shl nuw i64 %.1.i133, 1                 ; 2 uses
  %i.hs = or disjoint i64 %i.hr, 1                ; 3 uses
  %i.ht = add nuw i64 %i.hr, 2                    ; 3 uses
  %i.hu = icmp ult i64 %i.ht, %i.gc
  %9 = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.hs
  %10 = load i64, ptr %9, align 8, !tbaa !13      ; 3 uses
  br i1 %i.hu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.ht
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !13 ; 2 uses
  %i.hx = icmp ugt i64 %10, %i.hw
  %spec.select45.i = select i1 %i.hx, i64 %i.ht, i64 %i.hs
  %11 = tail call i64 @llvm.umin.i64(i64 %10, i64 %i.hw)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2.i.a = phi i64 [ %11, %bb.aw ], [ %10, %bb.av ]
  %.2.i = phi i64 [ %spec.select45.i, %bb.aw ], [ %i.hs, %bb.av ]
  %i.hy = icmp ult i64 %.2.i.a, %i.fw
  br i1 %i.hy, label %bb.au, label %bb.ay, !llvm.loop !21

bb.ay:                                            ; preds = %bb.ax, %bb.au
  store i64 %i.fw, ptr %i.hp, align 8
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %chkHeapifyDown.exit

.loopexit:                                        ; preds = %bb.ao, %bb.ae
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !35 ; 9 uses
  %.not120 = icmp eq ptr %i.ia, null
  br i1 %.not120, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %.loopexit
  %i.ib = getelementptr i8, ptr %i.ia, i64 -1
  %.val.i = load i8, ptr %i.ib, align 1, !tbaa !36 ; 2 uses
  %i.ic = and i8 %.val.i, 7
  switch i8 %i.ic, label %sdsAllocSize.exit [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  %i.id = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.id, 2
  %i.ie = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.bb:                                            ; preds = %bb.az
  %i.if = getelementptr inbounds i8, ptr %i.ia, i64 -2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !36
  %i.ih = zext i8 %i.ig to i64
  %i.ii = add nuw nsw i64 %i.ih, 4
  br label %sdsAllocSize.exit

bb.bc:                                            ; preds = %bb.az
  %i.ij = getelementptr inbounds i8, ptr %i.ia, i64 -3
  %i.ik = load i16, ptr %i.ij, align 1, !tbaa !37
  %i.il = zext i16 %i.ik to i64
  %i.im = add nuw nsw i64 %i.il, 6
  br label %sdsAllocSize.exit

bb.bd:                                            ; preds = %bb.az
  %i.in = getelementptr inbounds i8, ptr %i.ia, i64 -5
  %i.io = load i32, ptr %i.in, align 1, !tbaa !9
  %i.ip = zext i32 %i.io to i64
  %i.iq = add nuw nsw i64 %i.ip, 10
  br label %sdsAllocSize.exit

bb.be:                                            ; preds = %bb.az
  %i.ir = getelementptr inbounds i8, ptr %i.ia, i64 -9
  %i.is = load i64, ptr %i.ir, align 1, !tbaa !20
  %i.it = add i64 %i.is, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %.0.i135 = phi i64 [ %i.it, %bb.be ], [ %i.ie, %bb.ba ], [ %i.ii, %bb.bb ], [ %i.im, %bb.bc ], [ %i.iq, %bb.bd ], [ 0, %bb.az ]
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !24
  %i.iw = sub i64 %i.iv, %.0.i135
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !24
  br label %bb.bf

bb.bf:                                            ; preds = %sdsAllocSize.exit, %.loopexit
  store i64 %i.fw, ptr %i.fo, align 8, !tbaa !13
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %i.fy, ptr %i.ix, align 8, !tbaa !58
  %i.iy = tail call ptr @sdsnewlen(ptr noundef %1, i64 noundef %i.e) #17 ; 6 uses
  %i.iz = load ptr, ptr %i.fn, align 8, !tbaa !28 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  store ptr %i.iy, ptr %i.ja, align 8, !tbaa !35
  %i.jb = getelementptr i8, ptr %i.iy, i64 -1
  %.val.i136 = load i8, ptr %i.jb, align 1, !tbaa !36 ; 2 uses
  %i.jc = and i8 %.val.i136, 7
  switch i8 %i.jc, label %sdsAllocSize.exit139 [
    i8 0, label %bb.bg
    i8 1, label %bb.bh
    i8 2, label %bb.bi
    i8 3, label %bb.bj
    i8 4, label %bb.bk
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.jd = lshr i8 %.val.i136, 3
  %narrow.i138 = add nuw nsw i8 %i.jd, 2
  %i.je = zext nneg i8 %narrow.i138 to i64
  br label %sdsAllocSize.exit139

bb.bh:                                            ; preds = %bb.bf
  %i.jf = getelementptr inbounds i8, ptr %i.iy, i64 -2
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !36
  %i.jh = zext i8 %i.jg to i64
  %i.ji = add nuw nsw i64 %i.jh, 4
  br label %sdsAllocSize.exit139

bb.bi:                                            ; preds = %bb.bf
  %i.jj = getelementptr inbounds i8, ptr %i.iy, i64 -3
  %i.jk = load i16, ptr %i.jj, align 1, !tbaa !37
  %i.jl = zext i16 %i.jk to i64
  %i.jm = add nuw nsw i64 %i.jl, 6
  br label %sdsAllocSize.exit139

bb.bj:                                            ; preds = %bb.bf
  %i.jn = getelementptr inbounds i8, ptr %i.iy, i64 -5
  %i.jo = load i32, ptr %i.jn, align 1, !tbaa !9
  %i.jp = zext i32 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, 10
  br label %sdsAllocSize.exit139

bb.bk:                                            ; preds = %bb.bf
  %i.jr = getelementptr inbounds i8, ptr %i.iy, i64 -9
  %i.js = load i64, ptr %i.jr, align 1, !tbaa !20
  %i.jt = add i64 %i.js, 18
  br label %sdsAllocSize.exit139

sdsAllocSize.exit139:                             ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  %.0.i137 = phi i64 [ %i.jt, %bb.bk ], [ %i.je, %bb.bg ], [ %i.ji, %bb.bh ], [ %i.jm, %bb.bi ], [ %i.jq, %bb.bj ], [ 0, %bb.bf ]
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !24
  %i.jw = add i64 %i.jv, %.0.i137
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !24
  %i.jx = load i32, ptr %i.fz, align 8, !tbaa !31 ; 3 uses
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = icmp ult i32 %i.jx, 2
  br i1 %i.jz, label %chkHeapifyDown.exit, label %bb.bl

bb.bl:                                            ; preds = %sdsAllocSize.exit139
  %i.ka = add nsw i64 %i.jy, -2
  %i.kb = lshr i64 %i.ka, 1
  %.not168 = icmp eq i32 %i.jx, 2
  %12 = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %13 = load i64, ptr %12, align 8, !tbaa !13     ; 3 uses
  br i1 %.not168, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !13 ; 2 uses
  %i.ke = icmp ugt i64 %13, %i.kd
  %spec.select.i148 = select i1 %i.ke, i64 2, i64 1
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %i.kd)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0.i141 = phi i64 [ %14, %bb.bm ], [ %13, %bb.bl ]
  %.0.i142 = phi i64 [ %spec.select.i148, %bb.bm ], [ 1, %bb.bl ]
  %i.kf = load i64, ptr %i.iz, align 8, !tbaa !13 ; 3 uses
  %i.kg = icmp ugt i64 %.0.i141, %i.kf
  br i1 %i.kg, label %chkHeapifyDown.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i140)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i140, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i64 16, i1 false), !tbaa.struct !18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %bb.bo
  %.039.i143 = phi i64 [ 0, %bb.bo ], [ %.1.i144, %bb.bs ]
  %.1.i144 = phi i64 [ %.0.i142, %bb.bo ], [ %.2.i147, %bb.bs ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.039.i143
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.1.i144 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(24) %i.ki, i64 24, i1 false)
  %i.kj = icmp ult i64 %i.kb, %.1.i144
  br i1 %i.kj, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kk = shl nuw i64 %.1.i144, 1                 ; 2 uses
  %i.kl = or disjoint i64 %i.kk, 1                ; 3 uses
  %i.km = add nuw i64 %i.kk, 2                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.jy
  %15 = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %i.kl
  %16 = load i64, ptr %15, align 8, !tbaa !13     ; 3 uses
  br i1 %i.kn, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %i.km
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !13 ; 2 uses
  %i.kq = icmp ugt i64 %16, %i.kp
  %spec.select45.i147 = select i1 %i.kq, i64 %i.km, i64 %i.kl
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %i.kp)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.2.i145 = phi i64 [ %17, %bb.br ], [ %16, %bb.bq ]
  %.2.i147 = phi i64 [ %spec.select45.i147, %bb.br ], [ %i.kl, %bb.bq ]
  %i.kr = icmp ult i64 %.2.i145, %i.kf
  br i1 %i.kr, label %bb.bp, label %bb.bt, !llvm.loop !21

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  store i64 %i.kf, ptr %i.ki, align 8
  %.sroa.6.0..sroa_idx2.i146 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i146, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i140, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i140)
  br label %chkHeapifyDown.exit

chkHeapifyDown.exit:                              ; preds = %.thread160, %select.unfold, %bb.t, %bb.v, %bb.bt, %bb.bn, %sdsAllocSize.exit139, %bb.ay, %bb.as, %bb.ap, %chkCheckExistInHeap.exit, %bb.ad, %checkLobbyEntries.exit
  %.0 = phi ptr [ null, %bb.ad ], [ null, %checkLobbyEntries.exit ], [ %i.ia, %bb.bt ], [ null, %bb.ay ], [ null, %chkCheckExistInHeap.exit ], [ null, %bb.ap ], [ null, %bb.as ], [ %i.ia, %sdsAllocSize.exit139 ], [ %i.ia, %bb.bn ], [ null, %bb.v ], [ null, %bb.t ], [ null, %select.unfold ], [ null, %.thread160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.a, %chkHeapifyDown.exit
  %.1 = phi ptr [ %.0, %chkHeapifyDown.exit ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @cmpchkHeapBucket(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.a)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @chkTopKList(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %i.c, 24
  %i.e = tail call noalias ptr @zmalloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = load i32, ptr %i.a, align 8, !tbaa !31
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %i.g, i64 %i.j, i1 false)
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.i, i64 noundef 24, ptr noundef nonnull @cmpchkHeapBucket) #17
  ret ptr %i.e
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @chkTopKGetMemoryUsage(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #14

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !15, i64 0}
!14 = !{!"", !15, i64 0, !16, i64 8, !15, i64 16}
!15 = !{!"long", !11, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{i64 0, i64 8, !19, i64 8, i64 8, !20}
!19 = !{!16, !16, i64 0}
!20 = !{!15, !15, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"branch_weights", i32 4000000, i32 4001}
!24 = !{!25, !15, i64 24}
!25 = !{!"chkTopK", !11, i64 0, !17, i64 16, !15, i64 24, !11, i64 32, !11, i64 2088, !11, i64 4144, !26, i64 6200, !26, i64 6208, !15, i64 6216, !10, i64 6224, !10, i64 6228}
!26 = !{!"double", !11, i64 0}
!27 = !{!17, !17, i64 0}
!28 = !{!25, !17, i64 16}
!29 = !{!25, !26, i64 6200}
!30 = !{!25, !26, i64 6208}
!31 = !{!25, !10, i64 6224}
!32 = !{!25, !10, i64 6228}
!33 = !{!26, !26, i64 0}
!34 = distinct !{!34, !22}
!35 = !{!14, !16, i64 8}
!36 = !{!11, !11, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !11, i64 0}
!39 = distinct !{!39, !22}
!40 = !{!41, !38, i64 16}
!41 = !{!"", !11, i64 0, !38, i64 16}
!42 = !{!43, !15, i64 0}
!43 = !{!"", !15, i64 0, !38, i64 8}
!44 = !{!43, !38, i64 8}
!45 = !{!25, !15, i64 6216}
!46 = !{}
!47 = distinct !{!47, !22}
!48 = !{!49, !38, i64 32}
!49 = !{!"", !11, i64 0, !50, i64 32}
!50 = !{!"", !38, i64 0, !11, i64 2}
!51 = !{!49, !11, i64 34}
!52 = !{!50, !38, i64 0}
!53 = !{!50, !11, i64 2}
!54 = distinct !{!54, !22}
!55 = !{!56}
!56 = distinct !{!56, !57, !"generateItemFpAndIdxs: argument 0"}
!57 = distinct !{!57, !"generateItemFpAndIdxs"}
!58 = !{!14, !15, i64 16}
!59 = distinct !{!59, !22}
end_hunk_1
