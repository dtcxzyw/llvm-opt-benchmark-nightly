Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_glob?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cclass = type { ptr, ptr }
%struct.glob_lim = type { i64, i64, i64 }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@cclasses = internal constant [13 x %struct.cclass] [%struct.cclass { ptr @.str.1, ptr @isalnum }, %struct.cclass { ptr @.str.2, ptr @isalpha }, %struct.cclass { ptr @.str.3, ptr @isblank }, %struct.cclass { ptr @.str.4, ptr @iscntrl }, %struct.cclass { ptr @.str.5, ptr @isdigit }, %struct.cclass { ptr @.str.6, ptr @isgraph }, %struct.cclass { ptr @.str.7, ptr @islower }, %struct.cclass { ptr @.str.8, ptr @isprint }, %struct.cclass { ptr @.str.9, ptr @ispunct }, %struct.cclass { ptr @.str.10, ptr @isspace }, %struct.cclass { ptr @.str.11, ptr @isupper }, %struct.cclass { ptr @.str.12, ptr @isxdigit }, %struct.cclass zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 2) i32 @php_glob(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((8, 16), (24, 28), (48, 56)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i16], align 16            ; 10 uses
  %4 = alloca %struct.glob_lim, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = and i32 %1, 2
  %.not51 = icmp eq i32 %i.d, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %.not51, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.f = and i32 %1, -257
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !22
  %i.j = tail call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %0, i64 noundef 4096) #21
  %i.k = icmp eq i64 %i.j, 4096
  br i1 %i.k, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i64 %i.m, 9223372036854775806
  br i1 %i.n, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %3, align 8, !tbaa !12     ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  %i.q = sub nuw nsw i64 9223372036854775806, %i.m
  %.not52 = icmp ult i64 %i.o, %i.q
  %or.cond = select i1 %i.p, i1 %.not52, i1 false
  br i1 %or.cond, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %1, 4096
  %.not53 = icmp eq i32 %i.r, 0
  %scevgep70 = getelementptr inbounds nuw i8, ptr %i.a, i64 8190 ; 2 uses
  br i1 %.not53, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.g, %bb.h
  %.0.idx63 = phi i64 [ %.0.add.2, %bb.h ], [ 0, %bb.g ] ; 5 uses
  %.04162 = phi ptr [ %i.ab, %bb.h ], [ %0, %bb.g ] ; 4 uses
  %.0.ptr64 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx63 ; 2 uses
  %i.s = load i8, ptr %.04162, align 1, !tbaa !23 ; 2 uses
  %.not57 = icmp eq i8 %i.s, 0
  br i1 %.not57, label %.critedge, label %.preheader60.1

.preheader60.1:                                   ; preds = %.preheader60
  %i.t = getelementptr inbounds nuw i8, ptr %.04162, i64 1
  %i.u = zext i8 %i.s to i16
  store i16 %i.u, ptr %.0.ptr64, align 2, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx63
  %.0.ptr64.1 = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.t, align 1, !tbaa !23    ; 2 uses
  %.not57.1 = icmp eq i8 %i.w, 0
  br i1 %.not57.1, label %.critedge, label %.preheader60.2

.preheader60.2:                                   ; preds = %.preheader60.1
  %i.x = getelementptr inbounds nuw i8, ptr %.04162, i64 2
  %i.y = zext i8 %i.w to i16
  store i16 %i.y, ptr %.0.ptr64.1, align 2, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx63
  %.0.ptr64.2 = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !23   ; 2 uses
  %.not57.2 = icmp eq i8 %i.aa, 0
  br i1 %.not57.2, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.preheader60.2
  %i.ab = getelementptr inbounds nuw i8, ptr %.04162, i64 3
  %i.ac = zext i8 %i.aa to i16
  %.0.add.2 = add nuw nsw i64 %.0.idx63, 6
  store i16 %i.ac, ptr %.0.ptr64.2, align 2, !tbaa !24
  %i.ad = icmp samesign ult i64 %.0.idx63, 8184
  br i1 %i.ad, label %.preheader60, label %.critedge, !llvm.loop !26

.preheader:                                       ; preds = %bb.g, %bb.n
  %.1.idx66 = phi i64 [ %.2.idx.1, %bb.n ], [ 0, %bb.g ] ; 4 uses
  %.14265 = phi ptr [ %.344.1, %bb.n ], [ %0, %bb.g ] ; 3 uses
  %.1.ptr67 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx66 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.14265, i64 1 ; 3 uses
  %i.af = load i8, ptr %.14265, align 1, !tbaa !23 ; 2 uses
  switch i8 %i.af, label %bb.j [
    i8 0, label %.critedge
    i8 92, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %.14265, i64 2
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !23  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0                     ; 2 uses
  %spec.select = select i1 %i.ai, ptr %i.ae, ptr %i.ag
  %narrow = select i1 %i.ai, i8 92, i8 %i.ah
  %spec.select59 = zext i8 %narrow to i16
  %i.aj = or disjoint i16 %spec.select59, 16384
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.ak = zext i8 %i.af to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i16 [ %i.aj, %bb.i ], [ %i.ak, %bb.j ]
  %.344 = phi ptr [ %spec.select, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  store i16 %storemerge, ptr %.1.ptr67, align 4, !tbaa !24
  %i.al = icmp samesign ult i64 %.1.idx66, 8188
  br i1 %i.al, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx66
  %.1.ptr67.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.344, i64 1 ; 3 uses
  %i.ao = load i8, ptr %.344, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.ao, label %bb.m [
    i8 0, label %.critedge
    i8 92, label %bb.l
  ]

bb.l:                                             ; preds = %.preheader.1
  %i.ap = getelementptr inbounds nuw i8, ptr %.344, i64 2
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !23  ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0                     ; 2 uses
  %spec.select.1 = select i1 %i.ar, ptr %i.an, ptr %i.ap
  %narrow.1 = select i1 %i.ar, i8 92, i8 %i.aq
  %spec.select59.1 = zext i8 %narrow.1 to i16
  %i.as = or disjoint i16 %spec.select59.1, 16384
  br label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.at = zext i8 %i.ao to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.1 = phi i16 [ %i.as, %bb.l ], [ %i.at, %bb.m ]
  %.344.1 = phi ptr [ %spec.select.1, %bb.l ], [ %i.an, %bb.m ]
  %.2.idx.1 = add nuw nsw i64 %.1.idx66, 4
  store i16 %storemerge.1, ptr %.1.ptr67.1, align 2, !tbaa !24
  br label %.preheader

.critedge:                                        ; preds = %.preheader60, %.preheader60.1, %.preheader60.2, %bb.h, %.preheader, %bb.k, %.preheader.1
  %.3 = phi ptr [ %.1.ptr67.1, %.preheader.1 ], [ %scevgep70, %bb.k ], [ %.1.ptr67, %.preheader ], [ %scevgep70, %bb.h ], [ %.0.ptr64, %.preheader60 ], [ %.0.ptr64.1, %.preheader60.1 ], [ %.0.ptr64.2, %.preheader60.2 ]
  store i16 0, ptr %.3, align 2, !tbaa !24
  %i.au = and i32 %1, 128
  %.not58 = icmp eq i32 %i.au, 0
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.av = call fastcc i32 @globexp1(ptr noundef %i.a, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.q

bb.p:                                             ; preds = %.critedge
  %i.aw = call fastcc i32 @glob0(ptr noundef %i.a, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.p, %bb.o
  %.045 = phi i32 [ %i.aw, %bb.p ], [ -3, %bb.d ], [ %i.av, %bb.o ], [ -1, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 2) i32 @globexp1(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i16], align 16            ; 7 uses
  %i.b = load i16, ptr %0, align 2, !tbaa !24
  %i.c = icmp eq i16 %i.b, 123
  br i1 %i.c, label %bb.b, label %.preheader93

.preheader93:                                     ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !24
  %i.f = icmp eq i16 %i.e, 125
  br i1 %i.f, label %bb.c, label %.preheader93

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 2, !tbaa !24
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.d, label %.preheader93

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @glob0(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.u

bb.e:                                             ; preds = %.preheader93, %bb.f
  %indvars.iv = phi ptr [ %scevgep, %bb.f ], [ %i.a, %.preheader93 ] ; 2 uses
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.preheader93 ] ; 2 uses
  %.04.i = phi ptr [ %i.m, %bb.f ], [ %0, %.preheader93 ] ; 4 uses
  %i.k = load i16, ptr %.04.i, align 2, !tbaa !24 ; 2 uses
  %i.l = icmp eq i16 %i.k, 123
  br i1 %i.l, label %g_strchr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i, i64 2
  %.not.i = icmp eq i16 %i.k, 0
  %indvar.next = add i64 %indvar, 1
  %scevgep = getelementptr i8, ptr %indvars.iv, i64 2
  br i1 %.not.i, label %bb.t, label %bb.e, !llvm.loop !28

g_strchr.exit:                                    ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not.i1635 = icmp eq ptr %0, %.04.i
  br i1 %.not.i1635, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %g_strchr.exit
  %i.n = shl i64 %indvar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 2 %0, i64 %i.n, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %g_strchr.exit
  %.069.i.lcssa = phi ptr [ %i.a, %g_strchr.exit ], [ %indvars.iv, %.lr.ph.preheader ] ; 8 uses
  %.069.i.lcssa74 = ptrtoaddr ptr %.069.i.lcssa to i64
  store i16 0, ptr %.069.i.lcssa, align 2, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %.04.i, i64 2 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %._crit_edge
  %.072.i = phi i32 [ 0, %._crit_edge ], [ %.173.i, %bb.k ] ; 5 uses
  %.066.i = phi ptr [ %i.o, %._crit_edge ], [ %i.u, %bb.k ] ; 9 uses
  %i.p = load i16, ptr %.066.i, align 2, !tbaa !24
  switch i16 %i.p, label %bb.k [
    i16 0, label %.thread
    i16 91, label %.preheader31
    i16 123, label %bb.h
    i16 125, label %bb.i
  ]

.preheader31:                                     ; preds = %bb.g, %.preheader31
  %.066.pn.i = phi ptr [ %.167.i, %.preheader31 ], [ %.066.i, %bb.g ]
  %.167.i = getelementptr inbounds nuw i8, ptr %.066.pn.i, i64 2 ; 3 uses
  %i.q = load i16, ptr %.167.i, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.q, label %.preheader31 [
    i16 93, label %.critedge.i
    i16 0, label %.critedge.i
  ], !llvm.loop !29

.critedge.i:                                      ; preds = %.preheader31, %.preheader31
  %i.r = icmp eq i16 %i.q, 0
  %spec.select.i = select i1 %i.r, ptr %.066.i, ptr %.167.i
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %.072.i, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %cond97.i = icmp eq i32 %.072.i, 0
  br i1 %cond97.i, label %.preheader30, label %bb.j

.preheader30:                                     ; preds = %bb.i
  %.not88.i43 = icmp ugt ptr %i.o, %.066.i
  br i1 %.not88.i43, label %globexp2.exit, label %.lr.ph47

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %.072.i, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %.critedge.i, %bb.g
  %.173.i = phi i32 [ %.072.i, %bb.g ], [ %.072.i, %.critedge.i ], [ %i.s, %bb.h ], [ %i.t, %bb.j ]
  %.268.i = phi ptr [ %.066.i, %bb.g ], [ %spec.select.i, %.critedge.i ], [ %.066.i, %bb.h ], [ %.066.i, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %.268.i, i64 2
  br label %bb.g, !llvm.loop !30

.thread:                                          ; preds = %bb.g
  %i.v = call fastcc i32 @glob0(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull %2), !inline_history !31
  br label %globexp2.exit

.lr.ph47:                                         ; preds = %.preheader30, %bb.s
  %.060.i46 = phi ptr [ %.4.i.ph, %bb.s ], [ %i.o, %.preheader30 ] ; 12 uses
  %.162.i45 = phi ptr [ %i.bc, %bb.s ], [ %i.o, %.preheader30 ] ; 12 uses
  %.274.i44 = phi i32 [ %.476.i.ph, %bb.s ], [ 0, %.preheader30 ] ; 7 uses
  %.162.i4576 = ptrtoaddr ptr %.162.i45 to i64
  %.060.i4675 = ptrtoaddr ptr %.060.i46 to i64    ; 3 uses
  %i.w = load i16, ptr %.162.i45, align 2, !tbaa !24
  switch i16 %i.w, label %bb.s [
    i16 91, label %.preheader
    i16 123, label %bb.l
    i16 125, label %bb.m
    i16 44, label %bb.o
  ]

.preheader:                                       ; preds = %.lr.ph47, %.preheader
  %.162.pn.i = phi ptr [ %.263.i, %.preheader ], [ %.162.i45, %.lr.ph47 ]
  %.263.i = getelementptr inbounds nuw i8, ptr %.162.pn.i, i64 2 ; 3 uses
  %i.x = load i16, ptr %.263.i, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.x, label %.preheader [
    i16 93, label %.critedge2.i
    i16 0, label %.critedge2.i
  ], !llvm.loop !32

.critedge2.i:                                     ; preds = %.preheader, %.preheader
  %i.y = icmp eq i16 %i.x, 0
  %spec.select96.i = select i1 %i.y, ptr %.162.i45, ptr %.263.i
  br label %bb.s

bb.l:                                             ; preds = %.lr.ph47
  %i.z = add nsw i32 %.274.i44, 1
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph47
  %cond98.i = icmp eq i32 %.274.i44, 0
  br i1 %cond98.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add nsw i32 %.274.i44, -1
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph47
  %.not90.i = icmp eq i32 %.274.i44, 0
  br i1 %.not90.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ab = icmp ult ptr %.060.i46, %.162.i45
  br i1 %i.ab, label %iter.check, label %.preheader29.preheader

iter.check:                                       ; preds = %bb.p
  %3 = add i64 %.060.i4675, 2
  %umax = call i64 @llvm.umax.i64(i64 %.162.i4576, i64 %3)
  %i.ac = xor i64 %.060.i4675, -1
  %i.ad = add i64 %umax, %i.ac                    ; 3 uses
  %i.ae = lshr i64 %i.ad, 1
  %i.af = add nuw i64 %i.ae, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 6
  %i.ag = sub i64 %.060.i4675, %.069.i.lcssa74
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check77 = icmp ult i64 %i.ad, 30
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %i.af, 12
  %n.vec = and i64 %i.af, -16                     ; 4 uses
  %i.ai = shl i64 %n.vec, 1                       ; 2 uses
  %i.aj = getelementptr i8, ptr %.060.i46, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.069.i.lcssa, i64 %i.ai ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.060.i46, i64 %i.al ; 2 uses
  %next.gep78 = getelementptr i8, ptr %.069.i.lcssa, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !24
  %wide.load79 = load <8 x i16>, ptr %i.am, align 2, !tbaa !24
  %i.an = getelementptr i8, ptr %next.gep78, i64 16
  store <8 x i16> %wide.load, ptr %next.gep78, align 2, !tbaa !24
  store <8 x i16> %wide.load79, ptr %i.an, align 2, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %.preheader29.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.af, -4                    ; 3 uses
  %i.ap = shl i64 %n.vec81, 1                     ; 2 uses
  %i.aq = getelementptr i8, ptr %.060.i46, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.069.i.lcssa, i64 %i.ap ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index82, 1                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.060.i46, i64 %i.as
  %next.gep84 = getelementptr i8, ptr %.069.i.lcssa, i64 %i.as
  %wide.load85 = load <4 x i16>, ptr %next.gep83, align 2, !tbaa !24
  store <4 x i16> %wide.load85, ptr %next.gep84, align 2, !tbaa !24
  %index.next86 = add nuw i64 %index82, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.af, %n.vec81
  br i1 %cmp.n87, label %.preheader29.preheader, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i39.ph = phi ptr [ %.060.i46, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.170.i38.ph = phi ptr [ %.069.i.lcssa, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %.1.i39 = phi ptr [ %i.au, %.lr.ph41 ], [ %.1.i39.ph, %.lr.ph41.preheader ] ; 2 uses
  %.170.i38 = phi ptr [ %i.aw, %.lr.ph41 ], [ %.170.i38.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i39, i64 2 ; 2 uses
  %i.av = load i16, ptr %.1.i39, align 2, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.170.i38, i64 2 ; 2 uses
  store i16 %i.av, ptr %.170.i38, align 2, !tbaa !24
  %i.ax = icmp ult ptr %i.au, %.162.i45
  br i1 %i.ax, label %.lr.ph41, label %.preheader29.preheader, !llvm.loop !38

.preheader29.preheader:                           ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.p
  %.271.i.ph = phi ptr [ %.069.i.lcssa, %bb.p ], [ %i.ak, %middle.block ], [ %i.ar, %vec.epilog.middle.block ], [ %i.aw, %.lr.ph41 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %.271.i = phi ptr [ %i.az, %.preheader29 ], [ %.271.i.ph, %.preheader29.preheader ] ; 2 uses
  %.066.i.pn = phi ptr [ %.2.i, %.preheader29 ], [ %.066.i, %.preheader29.preheader ]
  %.2.i = getelementptr inbounds nuw i8, ptr %.066.i.pn, i64 2 ; 2 uses
  %i.ay = load i16, ptr %.2.i, align 2, !tbaa !24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.271.i, i64 2
  store i16 %i.ay, ptr %.271.i, align 2, !tbaa !24
  %.not91.i = icmp eq i16 %i.ay, 0
  br i1 %.not91.i, label %bb.q, label %.preheader29, !llvm.loop !39

bb.q:                                             ; preds = %.preheader29
  %i.ba = call fastcc i32 @globexp1(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull %2), !inline_history !31 ; 2 uses
  switch i32 %i.ba, label %globexp2.exit [
    i32 -3, label %bb.r
    i32 0, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.162.i45, i64 2
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %.lr.ph47, %bb.n, %.critedge2.i, %bb.r, %bb.o
  %.476.i.ph = phi i32 [ %.274.i44, %bb.o ], [ %i.aa, %bb.n ], [ %i.z, %bb.l ], [ %.274.i44, %.critedge2.i ], [ 0, %bb.r ], [ %.274.i44, %.lr.ph47 ]
  %.465.i.ph = phi ptr [ %.162.i45, %bb.o ], [ %.162.i45, %bb.n ], [ %.162.i45, %bb.l ], [ %spec.select96.i, %.critedge2.i ], [ %.162.i45, %bb.r ], [ %.162.i45, %.lr.ph47 ]
  %.4.i.ph = phi ptr [ %.060.i46, %bb.o ], [ %.060.i46, %bb.n ], [ %.060.i46, %bb.l ], [ %.060.i46, %.critedge2.i ], [ %i.bb, %bb.r ], [ %.060.i46, %.lr.ph47 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.465.i.ph, i64 2 ; 2 uses
  %.not88.i = icmp ugt ptr %i.bc, %.066.i
  br i1 %.not88.i, label %globexp2.exit, label %.lr.ph47, !llvm.loop !40

globexp2.exit:                                    ; preds = %bb.s, %bb.q, %.preheader30, %.thread
  %.279.i = phi i32 [ %i.v, %.thread ], [ 0, %.preheader30 ], [ 0, %bb.s ], [ %i.ba, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.u

bb.t:                                             ; preds = %bb.f
  %i.bd = tail call fastcc i32 @glob0(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %globexp2.exit, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %.279.i, %globexp2.exit ], [ %i.bd, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 2) i32 @glob0(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i16], align 16            ; 6 uses
  %3 = alloca %struct.passwd, align 8             ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4096 x i8], align 16             ; 4 uses
  %i.d = alloca [4096 x i16], align 16            ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.e = load i16, ptr %0, align 2, !tbaa !24
  %.not.i = icmp eq i16 %i.e, 126
  br i1 %.not.i, label %bb.b, label %globtilde.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20
  %i.h = and i32 %i.g, 2048
  %.not44.i = icmp eq i32 %i.h, 0
  br i1 %.not44.i, label %globtilde.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.03449.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8190
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.preheader.i
  %.03451.i = phi ptr [ %.03449.i, %.preheader.i ], [ %.034.i.4, %bb.h ] ; 12 uses
  %.036.idx50.i = phi i64 [ 0, %.preheader.i ], [ %.036.add.i.4, %bb.h ] ; 6 uses
  %.036.ptr52.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.idx50.i ; 3 uses
  %i.i = load i16, ptr %.03451.i, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.i, label %bb.d [
    i16 0, label %.critedge.i
    i16 47, label %.critedge.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i16 %i.i to i8
  store i8 %i.j, ptr %.036.ptr52.i, align 1, !tbaa !23
  %.034.i = getelementptr inbounds nuw i8, ptr %.03451.i, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.idx50.i
  %.036.ptr52.i.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.l = load i16, ptr %.034.i, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.l, label %bb.e [
    i16 0, label %.critedge.i.split.loop.exit461
    i16 47, label %.critedge.i.split.loop.exit461
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i16 %i.l to i8
  store i8 %i.m, ptr %.036.ptr52.i.1, align 1, !tbaa !23
  %.034.i.1 = getelementptr inbounds nuw i8, ptr %.03451.i, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.idx50.i
  %.036.ptr52.i.2 = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.o = load i16, ptr %.034.i.1, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.o, label %bb.f [
    i16 0, label %.critedge.i.split.loop.exit458
    i16 47, label %.critedge.i.split.loop.exit458
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = trunc i16 %i.o to i8
  store i8 %i.p, ptr %.036.ptr52.i.2, align 1, !tbaa !23
  %.034.i.2 = getelementptr inbounds nuw i8, ptr %.03451.i, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.idx50.i
  %.036.ptr52.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 3 ; 2 uses
  %i.r = load i16, ptr %.034.i.2, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.r, label %bb.g [
    i16 0, label %.critedge.i.split.loop.exit455
    i16 47, label %.critedge.i.split.loop.exit455
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = trunc i16 %i.r to i8
  store i8 %i.s, ptr %.036.ptr52.i.3, align 1, !tbaa !23
  %.034.i.3 = getelementptr inbounds nuw i8, ptr %.03451.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.idx50.i
  %.036.ptr52.i.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.u = load i16, ptr %.034.i.3, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.u, label %bb.h [
    i16 0, label %.critedge.i.split.loop.exit452
    i16 47, label %.critedge.i.split.loop.exit452
  ]

bb.h:                                             ; preds = %bb.g
  %i.v = trunc i16 %i.u to i8
  %.036.add.i.4 = add nuw nsw i64 %.036.idx50.i, 5 ; 2 uses
  store i8 %i.v, ptr %.036.ptr52.i.4, align 1, !tbaa !23
  %.034.i.4 = getelementptr inbounds nuw i8, ptr %.03451.i, i64 10 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %.036.add.i.4, 8190
  br i1 %exitcond.not.i.4, label %.critedge.i, label %bb.c, !llvm.loop !43

.critedge.i.split.loop.exit452:                   ; preds = %bb.g, %bb.g
  %.034.i.3.le = getelementptr inbounds nuw i8, ptr %.03451.i, i64 8
  br label %.critedge.i

.critedge.i.split.loop.exit455:                   ; preds = %bb.f, %bb.f
  %.034.i.2.le = getelementptr inbounds nuw i8, ptr %.03451.i, i64 6
  br label %.critedge.i

.critedge.i.split.loop.exit458:                   ; preds = %bb.e, %bb.e
  %.034.i.1.le = getelementptr inbounds nuw i8, ptr %.03451.i, i64 4
  br label %.critedge.i

.critedge.i.split.loop.exit461:                   ; preds = %bb.d, %bb.d
  %.034.i.le = getelementptr inbounds nuw i8, ptr %.03451.i, i64 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.c, %bb.h, %.critedge.i.split.loop.exit461, %.critedge.i.split.loop.exit458, %.critedge.i.split.loop.exit455, %.critedge.i.split.loop.exit452
  %.034.lcssa.i = phi ptr [ %.034.i.3.le, %.critedge.i.split.loop.exit452 ], [ %.034.i.le, %.critedge.i.split.loop.exit461 ], [ %.034.i.4, %bb.h ], [ %.034.i.2.le, %.critedge.i.split.loop.exit455 ], [ %.034.i.1.le, %.critedge.i.split.loop.exit458 ], [ %.03451.i, %bb.c ], [ %.03451.i, %bb.c ]
  %.036.ptr.lcssa.i = phi ptr [ %.036.ptr52.i.4, %.critedge.i.split.loop.exit452 ], [ %.036.ptr52.i.1, %.critedge.i.split.loop.exit461 ], [ %scevgep.i, %bb.h ], [ %.036.ptr52.i.3, %.critedge.i.split.loop.exit455 ], [ %.036.ptr52.i.2, %.critedge.i.split.loop.exit458 ], [ %.036.ptr52.i, %bb.c ], [ %.036.ptr52.i, %bb.c ]
  store i8 0, ptr %.036.ptr.lcssa.i, align 1, !tbaa !23
  %i.w = load i8, ptr %i.d, align 16, !tbaa !23
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.critedge.i
  %i.y = tail call ptr @getenv(ptr noundef nonnull @.str) #20 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @getuid() #20
  %i.ab = call i32 @getpwuid_r(i32 noundef %i.aa, ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 4096, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %globtilde.exit, label %.sink.split.i

bb.k:                                             ; preds = %.critedge.i
  %i.ae = call i32 @getpwnam_r(ptr noundef nonnull %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 4096, ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %globtilde.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink63.i = phi ptr [ %i.ac, %bb.j ], [ %i.af, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink63.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  br label %.preheader

.preheader:                                       ; preds = %.sink.split.i, %bb.i
  %.23853.i.ph = phi ptr [ %i.y, %bb.i ], [ %i.ai, %.sink.split.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.preheader
  %.0.idx54.i = phi i64 [ 0, %.preheader ], [ %.0.add.i.2, %bb.o ] ; 6 uses
  %.23853.i = phi ptr [ %.23853.i.ph, %.preheader ], [ %i.aq, %bb.o ] ; 4 uses
  %i.aj = load i8, ptr %.23853.i, align 1, !tbaa !23 ; 2 uses
  %.not47.i = icmp eq i8 %i.aj, 0
  br i1 %.not47.i, label %.critedge2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.ptr.ptr55.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx54.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.23853.i, i64 1
  %i.al = sext i8 %i.aj to i16
  %.0.add.i = add nuw nsw i64 %.0.idx54.i, 2      ; 2 uses
  store i16 %i.al, ptr %.0.ptr.ptr55.i, align 2, !tbaa !24
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !23  ; 2 uses
  %.not47.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not47.i.1, label %.critedge2.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.ptr.ptr55.i.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.add.i
  %i.an = getelementptr inbounds nuw i8, ptr %.23853.i, i64 2
  %i.ao = sext i8 %i.am to i16
  %.0.add.i.1 = add nuw nsw i64 %.0.idx54.i, 4    ; 2 uses
  store i16 %i.ao, ptr %.0.ptr.ptr55.i.1, align 2, !tbaa !24
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !23  ; 2 uses
  %.not47.i.2 = icmp eq i8 %i.ap, 0
  br i1 %.not47.i.2, label %.critedge2.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.ptr.ptr55.i.2 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.add.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.23853.i, i64 3
  %i.ar = sext i8 %i.ap to i16
  %.0.add.i.2 = add nuw nsw i64 %.0.idx54.i, 6
  store i16 %i.ar, ptr %.0.ptr.ptr55.i.2, align 2, !tbaa !24
  %i.as = icmp samesign ult i64 %.0.idx54.i, 8184
  br i1 %i.as, label %bb.l, label %.critedge2.i, !llvm.loop !47

.critedge2.i:                                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.idx.lcssa.i = phi i64 [ 8190, %bb.o ], [ %.0.idx54.i, %bb.l ], [ %.0.add.i, %bb.m ], [ %.0.add.i.1, %bb.n ] ; 3 uses
  %.1.ptr.i276 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx.lcssa.i ; 2 uses
  %i.at = icmp samesign ult i64 %.0.idx.lcssa.i, 8190
  br i1 %i.at, label %.lr.ph280, label %.critedge4.i

bb.p:                                             ; preds = %.lr.ph280
  %i.au = getelementptr inbounds nuw i8, ptr %.135.i277, i64 2
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.add.i ; 2 uses
  %i.av = icmp samesign ult i64 %.1.idx.i278, 8188
  br i1 %i.av, label %.lr.ph280, label %.critedge4.i, !llvm.loop !48

.lr.ph280:                                        ; preds = %.critedge2.i, %bb.p
  %.1.ptr.i279 = phi ptr [ %.1.ptr.i, %bb.p ], [ %.1.ptr.i276, %.critedge2.i ]
  %.1.idx.i278 = phi i64 [ %.1.add.i, %bb.p ], [ %.0.idx.lcssa.i, %.critedge2.i ] ; 2 uses
  %.135.i277 = phi ptr [ %i.au, %bb.p ], [ %.034.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.aw = load i16, ptr %.135.i277, align 2, !tbaa !24 ; 2 uses
  %.1.add.i = add nuw nsw i64 %.1.idx.i278, 2     ; 3 uses
  store i16 %i.aw, ptr %.1.ptr.i279, align 2, !tbaa !24
  %.not48.i = icmp eq i16 %i.aw, 0
  br i1 %.not48.i, label %.critedge4.split.loop.exit56.i, label %bb.p, !llvm.loop !48

.critedge4.split.loop.exit56.i:                   ; preds = %.lr.ph280
  %.ptr.le.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.add.i
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.p, %.critedge2.i, %.critedge4.split.loop.exit56.i
  %.2.i = phi ptr [ %.ptr.le.i, %.critedge4.split.loop.exit56.i ], [ %.1.ptr.i276, %.critedge2.i ], [ %.1.ptr.i, %bb.p ]
  store i16 0, ptr %.2.i, align 2, !tbaa !24
  br label %globtilde.exit

globtilde.exit:                                   ; preds = %bb.a, %bb.b, %bb.j, %bb.k, %.critedge4.i
  %.039.i = phi ptr [ %0, %bb.j ], [ %0, %bb.a ], [ %i.d, %.critedge4.i ], [ %0, %bb.b ], [ %0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ax = load i64, ptr %1, align 8, !tbaa !12    ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %globtilde.exit
  %.0132.ph = phi ptr [ %.039.i, %globtilde.exit ], [ %.0132.ph.be, %.outer.backedge ]
  %.0128.ph = phi ptr [ %i.d, %globtilde.exit ], [ %.0128.ph.be, %.outer.backedge ] ; 14 uses
  %i.az = icmp eq ptr %.0128.ph, %i.d
  %i.ba = getelementptr inbounds i8, ptr %.0128.ph, i64 -2
  br label %bb.q

bb.q:                                             ; preds = %.outer, %bb.bg
  %.0132 = phi ptr [ %i.bb, %bb.bg ], [ %.0132.ph, %.outer ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0132, i64 2 ; 6 uses
  %i.bc = load i16, ptr %.0132, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.bc, label %bb.bi [
    i16 0, label %bb.bj
    i16 91, label %bb.r
    i16 63, label %bb.be
    i16 42, label %bb.bf
  ]

bb.r:                                             ; preds = %bb.q
  %i.bd = load i16, ptr %i.bb, align 2, !tbaa !24 ; 2 uses
  %i.be = icmp eq i16 %i.bd, 33                   ; 3 uses
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.0132, i64 4 ; 2 uses
  %.pr = load i16, ptr %i.bf, align 2, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i16 [ %.pr, %bb.s ], [ %i.bd, %bb.r ]
  %.1133 = phi ptr [ %i.bf, %bb.s ], [ %i.bb, %bb.r ] ; 3 uses
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %g_strchr.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.1133, i64 2 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.04.i = phi ptr [ %i.bi, %bb.u ], [ %i.bl, %bb.w ] ; 2 uses
  %i.bj = load i16, ptr %.04.i, align 2, !tbaa !24 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 93
  br i1 %i.bk, label %g_strchr.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i, i64 2
  %.not.i102 = icmp eq i16 %i.bj, 0
  br i1 %.not.i102, label %g_strchr.exit.thread, label %bb.v, !llvm.loop !28

g_strchr.exit.thread:                             ; preds = %bb.w, %bb.t
  store i16 91, ptr %.0128.ph, align 2, !tbaa !24
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.be, i64 -2, i64 0
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %.1133, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx
  br label %.outer.backedge

g_strchr.exit:                                    ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %.0128.ph, i64 2 ; 2 uses
  store i16 -32677, ptr %.0128.ph, align 2, !tbaa !24
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %g_strchr.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.0128.ph, i64 4
  store i16 -32735, ptr %i.bm, align 2, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %g_strchr.exit
  %.1129 = phi ptr [ %i.bn, %bb.x ], [ %i.bm, %g_strchr.exit ]
  %i.bo = load i16, ptr %.1133, align 2, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %bb.y
  %.2134 = phi ptr [ %i.bi, %bb.y ], [ %i.ge, %thread-pre-split ] ; 4 uses
  %.2130 = phi ptr [ %.1129, %bb.y ], [ %.5, %thread-pre-split ] ; 3 uses
  %.073.in = phi i16 [ %i.bo, %bb.y ], [ %i.gd, %thread-pre-split ] ; 2 uses
  %i.bp = icmp eq i16 %.073.in, 91
  br i1 %i.bp, label %bb.aa, label %.critedge.thread163

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i16, ptr %.2134, align 2, !tbaa !24
  %i.br = icmp eq i16 %i.bq, 58
  br i1 %i.br, label %.preheader169, label %.critedge.thread163

.preheader169:                                    ; preds = %bb.aa, %bb.bb
  %.3135 = phi ptr [ %i.fn, %bb.bb ], [ %.2134, %bb.aa ] ; 7 uses
  %.3131 = phi ptr [ %i.fk, %bb.bb ], [ %.2130, %bb.aa ] ; 6 uses
  %.ptr354 = getelementptr inbounds nuw i8, ptr %.3135, i64 2 ; 12 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.preheader169
  %.04.i.i.idx = phi i64 [ 2, %.preheader169 ], [ %.04.i.i.add, %bb.ac ] ; 6 uses
  %.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %.3135, i64 %.04.i.i.idx
  %i.bs = load i16, ptr %.04.i.i.ptr, align 2, !tbaa !24 ; 2 uses
  %i.bt = icmp eq i16 %i.bs, 58
  br i1 %i.bt, label %g_strchr.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.04.i.i.add = add nuw nsw i64 %.04.i.i.idx, 2
  %.not.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i, label %.critedge.thread163, label %bb.ab, !llvm.loop !28

g_strchr.exit.i:                                  ; preds = %bb.ab
  %.04.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %.3135, i64 %.04.i.i.idx
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i.i.ptr.le, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !24
  %.not.i103 = icmp eq i16 %i.bv, 93
  br i1 %.not.i103, label %.preheader.i104, label %.critedge.thread163

.preheader.i104:                                  ; preds = %g_strchr.exit.i
  %gepdiff = add nsw i64 %.04.i.i.idx, -2         ; 24 uses
  %i.bw = ashr exact i64 %gepdiff, 1              ; 12 uses
  %.not.i26.i281 = icmp eq i64 %.04.i.i.idx, 2
  br i1 %.not.i26.i281, label %g_strncmp.exit.thread.i, label %.lr.ph284

bb.ad:                                            ; preds = %bb.ae
  %i.bx = add i64 %.in, -1                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i283, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i282, i64 2
  %.not.i26.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i26.i, label %g_strncmp.exit.thread.i, label %.lr.ph284, !llvm.loop !49

.lr.ph284:                                        ; preds = %.preheader.i104, %bb.ad
  %.in = phi i64 [ %i.bx, %bb.ad ], [ %i.bw, %.preheader.i104 ]
  %.06.i.i283 = phi ptr [ %i.by, %bb.ad ], [ @.str.1, %.preheader.i104 ] ; 2 uses
  %.07.i.i282 = phi ptr [ %i.bz, %bb.ad ], [ %.ptr354, %.preheader.i104 ] ; 2 uses
  %i.ca = load i16, ptr %.07.i.i282, align 2, !tbaa !24 ; 2 uses
  %i.cb = load i8, ptr %.06.i.i283, align 1, !tbaa !23
  %i.cc = zext i8 %i.cb to i16
  %.not10.i.i = icmp eq i16 %i.ca, %i.cc
  br i1 %.not10.i.i, label %bb.ae, label %g_strncmp.exit.i

bb.ae:                                            ; preds = %.lr.ph284
  %i.cd = icmp eq i16 %i.ca, 0
  br i1 %i.cd, label %.g_strncmp.exit.thread.i_crit_edge, label %bb.ad, !llvm.loop !49

.g_strncmp.exit.thread.i_crit_edge:               ; preds = %bb.ae
  br label %g_strncmp.exit.thread.i, !llvm.loop !49

g_strncmp.exit.thread.i:                          ; preds = %bb.ad, %.g_strncmp.exit.thread.i_crit_edge, %.preheader.i104
  %i.ce = icmp eq i64 %gepdiff, 10
  br i1 %i.ce, label %.fold.split, label %g_strncmp.exit.i

g_strncmp.exit.i:                                 ; preds = %.lr.ph284, %g_strncmp.exit.thread.i
  %.not.i26.1.i286 = icmp samesign eq i64 %.04.i.i.idx, 2
  br i1 %.not.i26.1.i286, label %g_strncmp.exit.thread.1.i, label %.lr.ph289

bb.af:                                            ; preds = %bb.ag
  %i.cf = add i64 %.in355, -1                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.06.i.1.i288, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.1.i287, i64 2
  %.not.i26.1.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i26.1.i, label %g_strncmp.exit.thread.1.i, label %.lr.ph289, !llvm.loop !49

.lr.ph289:                                        ; preds = %g_strncmp.exit.i, %bb.af
  %.in355 = phi i64 [ %i.cf, %bb.af ], [ %i.bw, %g_strncmp.exit.i ]
  %.06.i.1.i288 = phi ptr [ %i.cg, %bb.af ], [ @.str.2, %g_strncmp.exit.i ] ; 2 uses
  %.07.i.1.i287 = phi ptr [ %i.ch, %bb.af ], [ %.ptr354, %g_strncmp.exit.i ] ; 2 uses
  %i.ci = load i16, ptr %.07.i.1.i287, align 2, !tbaa !24 ; 2 uses
  %i.cj = load i8, ptr %.06.i.1.i288, align 1, !tbaa !23
  %i.ck = zext i8 %i.cj to i16
  %.not10.i.1.i = icmp eq i16 %i.ci, %i.ck
  br i1 %.not10.i.1.i, label %bb.ag, label %g_strncmp.exit.1.i

bb.ag:                                            ; preds = %.lr.ph289
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %.g_strncmp.exit.thread.1.i_crit_edge, label %bb.af, !llvm.loop !49

.g_strncmp.exit.thread.1.i_crit_edge:             ; preds = %bb.ag
  br label %g_strncmp.exit.thread.1.i, !llvm.loop !49

g_strncmp.exit.thread.1.i:                        ; preds = %bb.af, %.g_strncmp.exit.thread.1.i_crit_edge, %g_strncmp.exit.i
  switch i64 %gepdiff, label %.lr.ph294.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.1.i:                               ; preds = %.lr.ph289
  %cond = icmp eq i64 %gepdiff, 0
  br i1 %cond, label %.loopexit, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %g_strncmp.exit.thread.1.i, %g_strncmp.exit.1.i
  br label %.lr.ph294

bb.ah:                                            ; preds = %bb.ai
  %i.cm = add i64 %.in356, -1                     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.2.i293, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i.2.i292, i64 2
  %.not.i26.2.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i26.2.i, label %g_strncmp.exit.thread.2.i, label %.lr.ph294, !llvm.loop !49

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.ah
  %.in356 = phi i64 [ %i.cm, %bb.ah ], [ %i.bw, %.lr.ph294.preheader ]
  %.06.i.2.i293 = phi ptr [ %i.cn, %bb.ah ], [ @.str.3, %.lr.ph294.preheader ] ; 2 uses
  %.07.i.2.i292 = phi ptr [ %i.co, %bb.ah ], [ %.ptr354, %.lr.ph294.preheader ] ; 2 uses
  %i.cp = load i16, ptr %.07.i.2.i292, align 2, !tbaa !24 ; 2 uses
  %i.cq = load i8, ptr %.06.i.2.i293, align 1, !tbaa !23
  %i.cr = zext i8 %i.cq to i16
end_hunk_0
begin_hunk_1_@glob0:bb.a
  %i.em = load i16, ptr %.07.i.9.i327, align 2, !tbaa !24 ; 2 uses
  %i.en = load i8, ptr %.06.i.9.i328, align 1, !tbaa !23
  %i.eo = zext i8 %i.en to i16
  %.not10.i.9.i = icmp eq i16 %i.em, %i.eo
  br i1 %.not10.i.9.i, label %bb.aw, label %g_strncmp.exit.9.i

bb.aw:                                            ; preds = %.lr.ph329
  %i.ep = icmp eq i16 %i.em, 0
  br i1 %i.ep, label %.g_strncmp.exit.thread.9.i_crit_edge, label %bb.av, !llvm.loop !49

.g_strncmp.exit.thread.9.i_crit_edge:             ; preds = %bb.aw
  br label %g_strncmp.exit.thread.9.i, !llvm.loop !49

g_strncmp.exit.thread.9.i:                        ; preds = %bb.av, %.g_strncmp.exit.thread.9.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph334.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.9.i:                               ; preds = %.lr.ph329
  %cond382 = icmp eq i64 %gepdiff, 0
  br i1 %cond382, label %.loopexit, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %g_strncmp.exit.thread.9.i, %g_strncmp.exit.9.i
  br label %.lr.ph334

bb.ax:                                            ; preds = %bb.ay
  %i.eq = add i64 %.in364, -1                     ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.06.i.10.i333, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %.07.i.10.i332, i64 2
  %.not.i26.10.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i26.10.i, label %g_strncmp.exit.thread.10.i, label %.lr.ph334, !llvm.loop !49

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %bb.ax
  %.in364 = phi i64 [ %i.eq, %bb.ax ], [ %i.bw, %.lr.ph334.preheader ]
  %.06.i.10.i333 = phi ptr [ %i.er, %bb.ax ], [ @.str.11, %.lr.ph334.preheader ] ; 2 uses
  %.07.i.10.i332 = phi ptr [ %i.es, %bb.ax ], [ %.ptr354, %.lr.ph334.preheader ] ; 2 uses
  %i.et = load i16, ptr %.07.i.10.i332, align 2, !tbaa !24 ; 2 uses
  %i.eu = load i8, ptr %.06.i.10.i333, align 1, !tbaa !23
  %i.ev = zext i8 %i.eu to i16
  %.not10.i.10.i = icmp eq i16 %i.et, %i.ev
  br i1 %.not10.i.10.i, label %bb.ay, label %g_strncmp.exit.10.i

bb.ay:                                            ; preds = %.lr.ph334
  %i.ew = icmp eq i16 %i.et, 0
  br i1 %i.ew, label %.g_strncmp.exit.thread.10.i_crit_edge, label %bb.ax, !llvm.loop !49

.g_strncmp.exit.thread.10.i_crit_edge:            ; preds = %bb.ay
  br label %g_strncmp.exit.thread.10.i, !llvm.loop !49

g_strncmp.exit.thread.10.i:                       ; preds = %bb.ax, %.g_strncmp.exit.thread.10.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph339.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.10.i:                              ; preds = %.lr.ph334
  %cond383 = icmp eq i64 %gepdiff, 0
  br i1 %cond383, label %.loopexit, label %.lr.ph339.preheader

.lr.ph339.preheader:                              ; preds = %g_strncmp.exit.thread.10.i, %g_strncmp.exit.10.i
  br label %.lr.ph339

bb.az:                                            ; preds = %bb.ba
  %i.ex = add i64 %.in365, -1                     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.11.i338, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.07.i.11.i337, i64 2
  %.not.i26.11.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i26.11.i, label %g_strncmp.exit.thread.11.i, label %.lr.ph339, !llvm.loop !49

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %bb.az
  %.in365 = phi i64 [ %i.ex, %bb.az ], [ %i.bw, %.lr.ph339.preheader ]
  %.06.i.11.i338 = phi ptr [ %i.ey, %bb.az ], [ @.str.12, %.lr.ph339.preheader ] ; 2 uses
  %.07.i.11.i337 = phi ptr [ %i.ez, %bb.az ], [ %.ptr354, %.lr.ph339.preheader ] ; 2 uses
  %i.fa = load i16, ptr %.07.i.11.i337, align 2, !tbaa !24 ; 2 uses
  %i.fb = load i8, ptr %.06.i.11.i338, align 1, !tbaa !23
  %i.fc = zext i8 %i.fb to i16
  %.not10.i.11.i = icmp eq i16 %i.fa, %i.fc
  br i1 %.not10.i.11.i, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %.lr.ph339
  %i.fd = icmp eq i16 %i.fa, 0
  br i1 %i.fd, label %.g_strncmp.exit.thread.11.i_crit_edge, label %bb.az, !llvm.loop !49

.g_strncmp.exit.thread.11.i_crit_edge:            ; preds = %bb.ba
  br label %g_strncmp.exit.thread.11.i, !llvm.loop !49

g_strncmp.exit.thread.11.i:                       ; preds = %bb.az, %.g_strncmp.exit.thread.11.i_crit_edge
  %i.fe = icmp eq i64 %gepdiff, 12
  br i1 %i.fe, label %.fold.split, label %.loopexit

.fold.split:                                      ; preds = %g_strncmp.exit.thread.11.i, %g_strncmp.exit.thread.10.i, %g_strncmp.exit.thread.9.i, %g_strncmp.exit.thread.8.i, %g_strncmp.exit.thread.7.i, %g_strncmp.exit.thread.6.i, %g_strncmp.exit.thread.5.i, %g_strncmp.exit.thread.4.i, %g_strncmp.exit.thread.3.i, %g_strncmp.exit.thread.2.i, %g_strncmp.exit.thread.1.i, %g_strncmp.exit.thread.i
  %.033.lcssa.i = phi ptr [ @cclasses, %g_strncmp.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 16), %g_strncmp.exit.thread.1.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %g_strncmp.exit.thread.9.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 160), %g_strncmp.exit.thread.10.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 32), %g_strncmp.exit.thread.2.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %g_strncmp.exit.thread.3.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 64), %g_strncmp.exit.thread.4.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 80), %g_strncmp.exit.thread.5.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %g_strncmp.exit.thread.6.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 112), %g_strncmp.exit.thread.7.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 128), %g_strncmp.exit.thread.8.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 176), %g_strncmp.exit.thread.11.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.3131, i64 2
  store i16 -32710, ptr %.3131, align 2, !tbaa !24
  %i.fg = ptrtoint ptr %.033.lcssa.i to i64
  %i.fh = sub i64 %i.fg, ptrtoint (ptr @cclasses to i64)
  %i.fi = lshr exact i64 %i.fh, 4
  %i.fj = trunc i64 %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %.3131, i64 4 ; 4 uses
  store i16 %i.fj, ptr %i.ff, align 2, !tbaa !24
  %i.fl = getelementptr i8, ptr %.3135, i64 %gepdiff ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 6
  %i.fn = getelementptr i8, ptr %i.fl, i64 8      ; 5 uses
  %i.fo = load i16, ptr %i.fm, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.fo, label %.critedge.thread163 [
    i16 91, label %bb.bb
    i16 93, label %.loopexit172
  ]

bb.bb:                                            ; preds = %.fold.split
  %i.fp = load i16, ptr %i.fn, align 2, !tbaa !24
  %i.fq = icmp eq i16 %i.fp, 58
  br i1 %i.fq, label %.preheader169, label %.critedge.thread163, !llvm.loop !50

.loopexit:                                        ; preds = %g_strncmp.exit.10.i, %g_strncmp.exit.9.i, %g_strncmp.exit.8.i, %g_strncmp.exit.7.i, %g_strncmp.exit.6.i, %g_strncmp.exit.5.i, %g_strncmp.exit.4.i, %g_strncmp.exit.3.i, %g_strncmp.exit.2.i, %g_strncmp.exit.1.i, %g_strncmp.exit.thread.11.i, %g_strncmp.exit.thread.10.i, %g_strncmp.exit.thread.9.i, %g_strncmp.exit.thread.8.i, %g_strncmp.exit.thread.7.i, %g_strncmp.exit.thread.6.i, %g_strncmp.exit.thread.5.i, %g_strncmp.exit.thread.4.i, %g_strncmp.exit.thread.3.i, %g_strncmp.exit.thread.2.i, %g_strncmp.exit.thread.1.i, %.lr.ph339
  %i.fr = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.fs = and i32 %i.fr, 16
  %.not97 = icmp eq i32 %i.fs, 0
  br i1 %.not97, label %.critedge101, label %.critedge.thread163

.critedge.thread163:                              ; preds = %.fold.split, %g_strchr.exit.i, %bb.bb, %bb.ac, %.loopexit, %bb.aa, %bb.z
  %.5137 = phi ptr [ %.3135, %.loopexit ], [ %.2134, %bb.aa ], [ %.2134, %bb.z ], [ %.3135, %bb.ac ], [ %.3135, %g_strchr.exit.i ], [ %i.fn, %bb.bb ], [ %i.fn, %.fold.split ] ; 5 uses
  %.4 = phi ptr [ %.3131, %.loopexit ], [ %.2130, %bb.aa ], [ %.2130, %bb.z ], [ %.3131, %bb.ac ], [ %.3131, %g_strchr.exit.i ], [ %i.fk, %bb.bb ], [ %i.fk, %.fold.split ] ; 4 uses
  %.3.shrunk = phi i16 [ 91, %.loopexit ], [ 91, %bb.aa ], [ %.073.in, %bb.z ], [ 91, %bb.ac ], [ 91, %g_strchr.exit.i ], [ 91, %bb.bb ], [ %i.fo, %.fold.split ]
  %i.ft = and i16 %.3.shrunk, 255
  %i.fu = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 3 uses
  store i16 %i.ft, ptr %.4, align 2, !tbaa !24
  %i.fv = load i16, ptr %.5137, align 2, !tbaa !24 ; 2 uses
  %i.fw = icmp eq i16 %i.fv, 45
  br i1 %i.fw, label %bb.bc, label %thread-pre-split

bb.bc:                                            ; preds = %.critedge.thread163
  %i.fx = getelementptr inbounds nuw i8, ptr %.5137, i64 2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !24 ; 2 uses
  %.not98 = icmp eq i16 %i.fy, 93
  br i1 %.not98, label %thread-pre-split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i16 -32723, ptr %i.fu, align 2, !tbaa !24
  %i.ga = and i16 %i.fy, 255
  %i.gb = getelementptr inbounds nuw i8, ptr %.4, i64 6
  store i16 %i.ga, ptr %i.fz, align 2, !tbaa !24
  %i.gc = getelementptr inbounds nuw i8, ptr %.5137, i64 4 ; 2 uses
  %.pr165.pre = load i16, ptr %i.gc, align 2, !tbaa !24
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bd, %.critedge.thread163
  %i.gd = phi i16 [ %i.fv, %.critedge.thread163 ], [ %.pr165.pre, %bb.bd ], [ 45, %bb.bc ] ; 2 uses
  %.6138 = phi ptr [ %.5137, %.critedge.thread163 ], [ %i.gc, %bb.bd ], [ %.5137, %bb.bc ]
  %.5 = phi ptr [ %i.fu, %.critedge.thread163 ], [ %i.gb, %bb.bd ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.6138, i64 2 ; 2 uses
  %.not99 = icmp eq i16 %i.gd, 93
  br i1 %.not99, label %.loopexit172, label %bb.z, !llvm.loop !51

.loopexit172:                                     ; preds = %thread-pre-split, %.fold.split
  %.7139 = phi ptr [ %i.fn, %.fold.split ], [ %i.ge, %thread-pre-split ]
  %.6 = phi ptr [ %i.fk, %.fold.split ], [ %.5, %thread-pre-split ] ; 2 uses
  %i.gf = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.gg = or i32 %i.gf, 256
  store i32 %i.gg, ptr %i.ay, align 8, !tbaa !20
  store i16 -32675, ptr %.6, align 2, !tbaa !24
  br label %.outer.backedge

bb.be:                                            ; preds = %bb.q
  %i.gh = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.gi = or i32 %i.gh, 256
  store i32 %i.gi, ptr %i.ay, align 8, !tbaa !20
  store i16 -32705, ptr %.0128.ph, align 2, !tbaa !24
  br label %.outer.backedge

bb.bf:                                            ; preds = %bb.q
  %i.gj = load i32, ptr %i.ay, align 8, !tbaa !20
  %i.gk = or i32 %i.gj, 256
  store i32 %i.gk, ptr %i.ay, align 8, !tbaa !20
  br i1 %i.az, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = load i16, ptr %i.ba, align 2, !tbaa !24
  %.not95 = icmp eq i16 %i.gl, -32726
  br i1 %.not95, label %bb.q, label %bb.bh, !llvm.loop !52

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i16 -32726, ptr %.0128.ph, align 2, !tbaa !24
  br label %.outer.backedge

bb.bi:                                            ; preds = %bb.q
  %i.gm = and i16 %i.bc, 255
  store i16 %i.gm, ptr %.0128.ph, align 2, !tbaa !24
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bi, %g_strchr.exit.thread, %.loopexit172, %bb.be, %bb.bh
  %.0132.ph.be = phi ptr [ %i.bb, %bb.bh ], [ %i.bb, %bb.be ], [ %.7139, %.loopexit172 ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %g_strchr.exit.thread ], [ %i.bb, %bb.bi ]
  %.0128.ph.pn = phi ptr [ %.0128.ph, %bb.bh ], [ %.0128.ph, %bb.be ], [ %.6, %.loopexit172 ], [ %.0128.ph, %g_strchr.exit.thread ], [ %.0128.ph, %bb.bi ]
  %.0128.ph.be = getelementptr inbounds nuw i8, ptr %.0128.ph.pn, i64 2
  br label %.outer, !llvm.loop !52

bb.bj:                                            ; preds = %bb.q
  store i16 0, ptr %.0128.ph, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gn = load i16, ptr %i.d, align 16, !tbaa !24
  %i.go = icmp eq i16 %i.gn, 0
  br i1 %i.go, label %.thread, label %glob1.exit

.thread:                                          ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bl

glob1.exit:                                       ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8190
  %i.gq = call fastcc i32 @glob2(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %i.gp, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not88 = icmp eq i32 %i.gq, 0
  br i1 %.not88, label %bb.bk, label %.critedge101

bb.bk:                                            ; preds = %glob1.exit
  %.pre = load i64, ptr %1, align 8, !tbaa !12    ; 8 uses
  %i.gr = icmp eq i64 %.pre, %i.ax
  br i1 %i.gr, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread, %bb.bk
  %i.gs = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.gt = and i32 %i.gs, 16
  %.not92 = icmp ne i32 %i.gt, 0
  %i.gu = and i32 %i.gs, 768
  %or.cond = icmp eq i32 %i.gu, 512
  %or.cond168 = or i1 %.not92, %or.cond
  br i1 %or.cond168, label %bb.bm, label %.critedge101

bb.bm:                                            ; preds = %bb.bl
  %i.gv = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.critedge101

bb.bn:                                            ; preds = %bb.bk
  %i.gw = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.gx = and i32 %i.gw, 32
  %.not89 = icmp eq i32 %i.gx, 0
  br i1 %.not89, label %bb.bo, label %.critedge101

bb.bo:                                            ; preds = %bb.bn
  %i.gy = and i32 %i.gw, 16384
  %.not90 = icmp eq i32 %i.gy, 0
  br i1 %.not90, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gz = sub i64 %.pre, %i.ax                    ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !19 ; 2 uses
  %i.hc = add i64 %i.hb, %i.ax                    ; 8 uses
  %i.hd = call noalias ptr @calloc(i64 noundef %i.gz, i64 noundef 16) #22 ; 15 uses
  %.not91 = icmp eq ptr %i.hd, null
  br i1 %.not91, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !53 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54 ; 3 uses
  %.neg = add i64 %i.ax, 1
  %xtraiter = and i64 %i.gz, 1
  %i.hi = icmp eq i64 %.pre, %.neg
  br i1 %i.hi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gz, -2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.new
  %.0189 = phi i64 [ 0, %.lr.ph.new ], [ %i.hy, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bq ]
  %i.hj = add i64 %.0189, %i.hc                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !55
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189 ; 2 uses
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !56
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !59
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !60
  %i.hq = or disjoint i64 %.0189, 1               ; 2 uses
  %i.hr = add i64 %i.hq, %i.hc                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !55
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hq ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !56
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hr
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !59
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !60
  %i.hy = add nuw i64 %.0189, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph192.unr-lcssa, label %bb.bq, !llvm.loop !61

.lr.ph192.unr-lcssa:                              ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph192.unr-lcssa, %.lr.ph
  %.0189.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.hy, %.lr.ph192.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i64 %i.gz to i1
  call void @llvm.assume(i1 %lcmp.mod417)
  %i.hz = add i64 %.0189.epil.init, %i.hc         ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !55
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189.epil.init ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !56
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hz
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !59
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !60
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.unr-lcssa, %.epil.preheader
  call void @qsort(ptr noundef nonnull %i.hd, i64 noundef %i.gz, i64 noundef 16, ptr noundef nonnull @compare_gps) #20
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !53 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !54 ; 6 uses
  %min.iters.check = icmp ult i64 %i.gz, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph192
  %i.ik = shl i64 %i.hc, 3                        ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ih, i64 %i.ik
  %i.il = add i64 %i.hb, %.pre
  %i.im = shl i64 %i.il, 3                        ; 2 uses
  %scevgep341 = getelementptr i8, ptr %i.ih, i64 %i.im
  %i.in = shl i64 %.pre, 4                        ; 2 uses
  %i.io = add i64 %i.in, -8
  %i.ip = shl i64 %i.ax, 4                        ; 2 uses
  %i.iq = sub i64 %i.io, %i.ip
  %scevgep342 = getelementptr i8, ptr %i.hd, i64 %i.iq
  %scevgep343 = getelementptr nuw i8, ptr %i.ij, i64 %i.ik
  %scevgep344 = getelementptr i8, ptr %i.ij, i64 %i.im
  %scevgep345 = getelementptr i8, ptr %i.hd, i64 8
  %i.ir = sub i64 %i.in, %i.ip
  %scevgep346 = getelementptr i8, ptr %i.hd, i64 %i.ir
  %bound0 = icmp ult ptr %scevgep, %scevgep342
  %bound1 = icmp ult ptr %i.hd, %scevgep341
  %found.conflict = and i1 %bound0, %bound1
  %bound0347 = icmp ult ptr %scevgep343, %scevgep346
  %bound1348 = icmp ult ptr %scevgep345, %scevgep344
  %found.conflict349 = and i1 %bound0347, %bound1348
  %conflict.rdx = or i1 %found.conflict, %found.conflict349
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %index
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %index
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %wide.vec = load <4 x ptr>, ptr %i.is, align 8, !tbaa !62 ; 2 uses
  %strided.vec = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec350 = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec351 = load <4 x ptr>, ptr %i.iu, align 8, !tbaa !62 ; 2 uses
  %strided.vec352 = shufflevector <4 x ptr> %wide.vec351, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec353 = shufflevector <4 x ptr> %wide.vec351, <4 x ptr> poison, <2 x i32> <i32 1, i32 3>
  %i.iv = add i64 %index, %i.hc                   ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store <2 x ptr> %strided.vec, ptr %i.iw, align 8, !tbaa !55, !alias.scope !63, !noalias !66
  store <2 x ptr> %strided.vec352, ptr %i.ix, align 8, !tbaa !55, !alias.scope !63, !noalias !66
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.iv ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <2 x ptr> %strided.vec350, ptr %i.iy, align 8, !tbaa !59, !alias.scope !68, !noalias !70
  store <2 x ptr> %strided.vec353, ptr %i.iz, align 8, !tbaa !59, !alias.scope !68, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gz, %n.vec
  br i1 %cmp.n, label %._crit_edge193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph192, %middle.block
  %.1190.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph192 ], [ %n.vec, %middle.block ] ; 5 uses
  %i.jb = sub i64 %.pre, %i.ax
  %i.jc = xor i64 %.1190.ph, -1
  %i.jd = add i64 %.pre, %i.jc
  %xtraiter418 = and i64 %i.jb, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.1190.ph ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !56
  %i.jg = add i64 %.1190.ph, %i.hc                ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jg
  store ptr %i.jf, ptr %i.jh, align 8, !tbaa !55
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !60
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jg
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !59
  %i.jl = or disjoint i64 %.1190.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.1190.unr = phi i64 [ %.1190.ph, %scalar.ph.preheader ], [ %i.jl, %scalar.ph.prol ]
  %i.jm = icmp eq i64 %i.jd, %i.ax
  br i1 %i.jm, label %._crit_edge193, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1190 = phi i64 [ %i.kc, %scalar.ph ], [ %.1190.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.1190 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !56
  %i.jp = add i64 %.1190, %i.hc                   ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jp
  store ptr %i.jo, ptr %i.jq, align 8, !tbaa !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !60
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jp
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !59
  %i.ju = add nuw i64 %.1190, 1                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.ju ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !56
  %i.jx = add i64 %i.ju, %i.hc                    ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.jx
  store ptr %i.jw, ptr %i.jy, align 8, !tbaa !55
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !60
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jx
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !59
  %i.kc = add nuw i64 %.1190, 2                   ; 2 uses
  %exitcond212.not.1 = icmp eq i64 %i.kc, %i.gz
  br i1 %exitcond212.not.1, label %._crit_edge193, label %scalar.ph, !llvm.loop !73

._crit_edge193:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @free(ptr noundef nonnull %i.hd) #20
  br label %.critedge101

bb.br:                                            ; preds = %bb.bo
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !53
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !19
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.ax
  %i.kj = sub i64 %.pre, %i.ax
  call void @qsort(ptr noundef %i.ki, i64 noundef %i.kj, i64 noundef 8, ptr noundef nonnull @compare) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.loopexit, %bb.bl, %bb.bn, %bb.br, %._crit_edge193, %bb.bp, %glob1.exit, %bb.bm
  %.176 = phi i32 [ -1, %bb.bp ], [ 0, %bb.bn ], [ %i.gv, %bb.bm ], [ %i.gq, %glob1.exit ], [ -3, %bb.bl ], [ 0, %._crit_edge193 ], [ 0, %bb.br ], [ -3, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  ret i32 %.176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @php_globfree(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not1820 = icmp eq i64 %i.c, 0
  br i1 %.not1820, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi ptr [ %i.i, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.01621 = phi i64 [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.g = add i64 %.01621, -1                      ; 2 uses
  %i.h = load ptr, ptr %.022, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %.not18 = icmp eq i64 %i.g, 0
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.j) #20
  store ptr null, ptr %i.a, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.m = load i64, ptr %0, align 8, !tbaa !12
  %.not26 = icmp eq i64 %i.m, 0
  br i1 %.not26, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %.123 = phi i64 [ %i.q, %.lr.ph24 ], [ 0, %.preheader ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.123
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.p) #20
  %i.q = add nuw i64 %.123, 1                     ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !12
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph24, label %._crit_edge25.loopexit, !llvm.loop !75

._crit_edge25.loopexit:                           ; preds = %.lr.ph24
  %.pre27 = load ptr, ptr %i.k, align 8, !tbaa !54
  br label %._crit_edge25

._crit_edge25:                                    ; preds = %._crit_edge25.loopexit, %.preheader
  %i.t = phi ptr [ %.pre27, %._crit_edge25.loopexit ], [ %i.l, %.preheader ]
  tail call void @free(ptr noundef %i.t) #20
  store ptr null, ptr %i.k, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge25, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @globextend(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = add i64 %i.c, %i.a                       ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = icmp ugt i64 %i.c, 9223372036854775806
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.a, 9223372036854775806
  %i.h = icmp ugt i64 %i.e, 2305843009213693950
  %or.cond5 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond5, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.o, %bb.l, %bb.a, %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.099135 = phi i64 [ %i.i, %.lr.ph ], [ %i.y, %bb.k ] ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %.not123 = icmp eq ptr %i.n, null
  br i1 %.not123, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.099135
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %.not124 = icmp eq ptr %i.p, null
  br i1 %.not124, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.p) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i32, ptr %i.l, align 8, !tbaa !20
  %i.r = and i32 %i.q, 16384
  %.not125 = icmp eq i32 %i.r, 0
  br i1 %.not125, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %.not126 = icmp eq ptr %i.s, null
  br i1 %.not126, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.099135
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %.not127 = icmp eq ptr %i.u, null
  br i1 %.not127, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.099135
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.x) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.y = add nuw i64 %.099135, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.aa) #20
  store ptr null, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.ac) #20
  store ptr null, ptr %i.ab, align 8, !tbaa !54
  br label %bb.ae

bb.l:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = tail call ptr @reallocarray(ptr noundef %i.ae, i64 noundef %i.e, i64 noundef 8) #20 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.c, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.n, label %.loopexit130

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %.loopexit130, label %.loopexit130.loopexit

.loopexit130.loopexit:                            ; preds = %bb.n
  %i.ak = shl nuw i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ak, i1 false), !tbaa !55
  br label %.loopexit130

.loopexit130:                                     ; preds = %.loopexit130.loopexit, %bb.n, %bb.m
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20
  %i.an = and i32 %i.am, 16384
  %.not115 = icmp eq i32 %i.an, 0
  br i1 %.not115, label %.preheader158, label %bb.o

bb.o:                                             ; preds = %.loopexit130
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = tail call ptr @reallocarray(ptr noundef %i.ap, i64 noundef %i.e, i64 noundef 8) #20 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %.not116 = icmp eq i64 %i.au, 0
  br i1 %.not116, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.q
  %i.av = shl nuw i64 %i.au, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.av, i1 false), !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.q, %bb.p
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !54
  %i.aw = icmp eq ptr %3, null
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ay = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.aq, i64 %i.ax
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  br label %bb.w

bb.s:                                             ; preds = %.loopexit
  %i.bb = load i64, ptr %2, align 8, !tbaa !77
  %i.bc = add i64 %i.bb, 144                      ; 2 uses
  store i64 %i.bc, ptr %2, align 8, !tbaa !77
  %i.bd = load i32, ptr %i.al, align 8, !tbaa !20
  %i.be = and i32 %i.bd, 8192
  %.not118 = icmp ne i32 %i.be, 0
  %i.bf = icmp ugt i64 %i.bc, 65535
  %or.cond = select i1 %.not118, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call ptr @__errno_location() #23
  store i32 0, ptr %i.bg, align 4, !tbaa !79
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.bh = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #24 ; 3 uses
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.bj = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.aq, i64 %i.bi
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !59
  %i.bm = icmp eq ptr %i.bh, null
  br i1 %i.bm, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.bn = phi i64 [ %i.bj, %bb.v ], [ %i.ay, %bb.r ]
  %i.bo = phi i64 [ %i.bi, %bb.v ], [ %i.ax, %bb.r ]
  %i.bp = getelementptr [8 x i8], ptr %i.aq, i64 %i.bo
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bn
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !59
  br label %.preheader158

.preheader158:                                    ; preds = %bb.w, %.loopexit130
  br label %bb.x

bb.x:                                             ; preds = %.preheader158, %bb.x
  %.097 = phi ptr [ %i.bs, %bb.x ], [ %0, %.preheader158 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.097, i64 2 ; 2 uses
  %i.bt = load i16, ptr %.097, align 2, !tbaa !24
  %.not119 = icmp eq i16 %i.bt, 0
  br i1 %.not119, label %bb.y, label %bb.x, !llvm.loop !80

bb.y:                                             ; preds = %bb.x
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %0 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 1                 ; 3 uses
  %i.by = load i64, ptr %2, align 8, !tbaa !77
  %i.bz = add i64 %i.by, %i.bx                    ; 2 uses
  store i64 %i.bz, ptr %2, align 8, !tbaa !77
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bx) #24 ; 6 uses
  %.not120 = icmp eq ptr %i.ca, null
  br i1 %.not120, label %._crit_edge138, label %.lr.ph157

._crit_edge138:                                   ; preds = %bb.y
  %.pre = load i64, ptr %i.b, align 8, !tbaa !19
  %.pre139 = load i64, ptr %1, align 8, !tbaa !12
  br label %bb.aa

.preheader:                                       ; preds = %.lr.ph157
  %i.cb = add i64 %.0.i156, -1                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03.i155, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.04.i154, i64 2
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %g_Ctoc.exit, label %.lr.ph157, !llvm.loop !81

.lr.ph157:                                        ; preds = %bb.y, %.preheader
  %.0.i156 = phi i64 [ %i.cb, %.preheader ], [ %i.bx, %bb.y ]
  %.03.i155 = phi ptr [ %i.cc, %.preheader ], [ %i.ca, %bb.y ] ; 2 uses
  %.04.i154 = phi ptr [ %i.cd, %.preheader ], [ %0, %bb.y ] ; 2 uses
  %i.ce = load i16, ptr %.04.i154, align 2, !tbaa !24
  %i.cf = trunc i16 %i.ce to i8                   ; 2 uses
  store i8 %i.cf, ptr %.03.i155, align 1, !tbaa !23
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %.preheader, !llvm.loop !81

g_Ctoc.exit:                                      ; preds = %.preheader
  tail call void @free(ptr noundef %i.ca) #20
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph157
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ci = load i64, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.cj = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.cj, ptr %1, align 8, !tbaa !12
  %i.ck = getelementptr [8 x i8], ptr %i.af, i64 %i.ch
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.ca, ptr %i.cl, align 8, !tbaa !55
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge138, %bb.z
  %i.cm = phi i64 [ %.pre139, %._crit_edge138 ], [ %i.cj, %bb.z ]
  %i.cn = phi i64 [ %.pre, %._crit_edge138 ], [ %i.ch, %bb.z ]
  %i.co = getelementptr [8 x i8], ptr %i.af, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.cm
  store ptr null, ptr %i.cp, align 8, !tbaa !55
  %i.cq = load i32, ptr %i.al, align 8, !tbaa !20
  %i.cr = and i32 %i.cq, 8192
  %.not122 = icmp eq i32 %i.cr, 0
  br i1 %.not122, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = shl nuw i64 %i.e, 3
  %i.ct = add i64 %i.bz, %i.cs
  %i.cu = icmp ugt i64 %i.ct, 65536
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = tail call ptr @__errno_location() #23
  store i32 0, ptr %i.cv, align 4, !tbaa !79
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.u
  %.098 = phi ptr [ %i.ca, %bb.ab ], [ %i.ca, %bb.aa ], [ null, %bb.u ]
  %i.cw = icmp eq ptr %.098, null
  %i.cx = sext i1 %i.cw to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %g_Ctoc.exit, %bb.t, %._crit_edge
  %.0103 = phi i32 [ -1, %._crit_edge ], [ -1, %g_Ctoc.exit ], [ -1, %bb.ac ], [ %i.cx, %bb.ad ], [ -1, %bb.t ]
  ret i32 %.0103
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @compare_gps(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = load ptr, ptr %1, align 8, !tbaa !56
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #21
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = load ptr, ptr %1, align 8, !tbaa !55
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #21
  ret i32 %i.c
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @getpwuid_r(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #11

declare i32 @getpwnam_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isblank(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @iscntrl(i32 noundef) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ispunct(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 2) i32 @glob2(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2, ptr nofree noundef nonnull readonly captures(address) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %6 = alloca %struct.stat, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %.pr = load i16, ptr %3, align 2, !tbaa !24     ; 2 uses
  %i.c = icmp eq i16 %.pr, 0
  br i1 %i.c, label %._crit_edge, label %.preheader16

.loopexit14:                                      ; preds = %bb.x, %.preheader13
  %i.d = phi i16 [ %i.bh, %.preheader13 ], [ %i.bp, %bb.x ] ; 2 uses
  %.152.lcssa = phi ptr [ %.047, %.preheader13 ], [ %i.bo, %bb.x ]
  %.150.lcssa = phi ptr [ %.046, %.preheader13 ], [ %i.bm, %bb.x ] ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.preheader16

.preheader16:                                     ; preds = %bb.a, %.loopexit14
  %i.f = phi i16 [ %i.d, %.loopexit14 ], [ %.pr, %bb.a ]
  %.04943 = phi ptr [ %.150.lcssa, %.loopexit14 ], [ %1, %bb.a ] ; 8 uses
  %.05142 = phi ptr [ %.152.lcssa, %.loopexit14 ], [ %3, %bb.a ] ; 3 uses
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit14, %bb.a
  %.049.lcssa = phi ptr [ %1, %bb.a ], [ %.150.lcssa, %.loopexit14 ] ; 6 uses
  store i16 0, ptr %.049.lcssa, align 2, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i32 %i.h, 8192
  %.not61 = icmp eq i32 %i.i, 0
  br i1 %.not61, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82   ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !82
  %i.m = icmp ugt i64 %i.k, 2047
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @__errno_location() #23
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %.049.lcssa, i64 2
  store i16 47, ptr %.049.lcssa, align 2, !tbaa !24
  store i16 0, ptr %i.o, align 2, !tbaa !24
  br label %.loopexit15

bb.d:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %bb.i

bb.e:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.03.i.i147, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i146, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !24
  %i.s = trunc i16 %i.r to i8                     ; 2 uses
  store i8 %i.s, ptr %i.p, align 1, !tbaa !23
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.f, !llvm.loop !81

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.03.i.i147, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %.04.i.i146, i64 4
  %i.w = load i16, ptr %i.v, align 2, !tbaa !24
  %i.x = trunc i16 %i.w to i8                     ; 2 uses
  store i8 %i.x, ptr %i.u, align 1, !tbaa !23
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.g, !llvm.loop !81

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i.i147, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %.04.i.i146, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !24
  %i.ac = trunc i16 %i.ab to i8                   ; 2 uses
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !23
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.h, !llvm.loop !81

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %.0.i.i148, -4              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03.i.i147, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.04.i.i146, i64 8
  %.not.i.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.3, label %g_lstat.exit.thread, label %bb.i, !llvm.loop !81

g_lstat.exit.thread:                              ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit15

bb.i:                                             ; preds = %bb.h, %bb.d
  %.0.i.i148 = phi i64 [ 4096, %bb.d ], [ %i.ae, %bb.h ]
  %.03.i.i147 = phi ptr [ %i.b, %bb.d ], [ %i.af, %bb.h ] ; 5 uses
  %.04.i.i146 = phi ptr [ %0, %bb.d ], [ %i.ag, %bb.h ] ; 5 uses
  %i.ah = load i16, ptr %.04.i.i146, align 2, !tbaa !24
  %i.ai = trunc i16 %i.ah to i8                   ; 2 uses
  store i8 %i.ai, ptr %.03.i.i147, align 1, !tbaa !23
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.e, !llvm.loop !81

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.i
  %i.ak = and i32 %i.h, 64
  %.not5.i = icmp eq i32 %i.ak, 0
  br i1 %.not5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83
  %i.an = call i32 %i.am(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #20, !inline_history !84
  br label %g_lstat.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = call i32 @lstat(ptr noundef nonnull %i.b, ptr noundef nonnull %6) #20
  br label %g_lstat.exit

g_lstat.exit:                                     ; preds = %bb.k, %bb.l
  %.0.i = phi i32 [ %i.ao, %bb.l ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not62 = icmp eq i32 %.0.i, 0
  br i1 %.not62, label %bb.m, label %.loopexit15

bb.m:                                             ; preds = %g_lstat.exit
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !20
  %i.aq = and i32 %i.ap, 8
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %.049.lcssa, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !24
  %.not64 = icmp eq i16 %i.as, 47
  br i1 %.not64, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !85
  %i.av = trunc i32 %i.au to i16
  %trunc = and i16 %i.av, -4096
  switch i16 %trunc, label %bb.t [
    i16 16384, label %bb.r
    i16 -24576, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.aw = call fastcc i32 @g_stat(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %4)
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ay = load i32, ptr %i.at, align 8, !tbaa !85
  %i.az = and i32 %i.ay, 61440
  %i.ba = icmp eq i32 %i.az, 16384
  br i1 %i.ba, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.o, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.049.lcssa, i64 2 ; 2 uses
  %i.bc = icmp ugt ptr %i.bb, %2
  br i1 %i.bc, label %.loopexit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 47, ptr %.049.lcssa, align 2, !tbaa !24
  store i16 0, ptr %i.bb, align 2, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.q, %bb.p, %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !22
  %i.bg = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6)
  br label %.loopexit15

bb.u:                                             ; preds = %.preheader16, %bb.w
  %i.bh = phi i16 [ %.pre, %bb.w ], [ %i.f, %.preheader16 ] ; 5 uses
  %.047 = phi ptr [ %i.bk, %bb.w ], [ %.05142, %.preheader16 ] ; 9 uses
  %.046 = phi ptr [ %i.bi, %bb.w ], [ %.04943, %.preheader16 ] ; 4 uses
  %.1 = phi i32 [ %spec.select, %bb.w ], [ 0, %.preheader16 ] ; 2 uses
  switch i16 %i.bh, label %bb.v [
    i16 0, label %.critedge
    i16 47, label %.critedge
  ]

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %.046, i64 2 ; 2 uses
  %i.bj = icmp ugt ptr %i.bi, %2
  br i1 %i.bj, label %.loopexit15, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not60 = icmp sgt i16 %i.bh, -1
  %spec.select = select i1 %.not60, i32 %.1, i32 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.047, i64 2 ; 2 uses
  store i16 %i.bh, ptr %.046, align 2, !tbaa !24
  %.pre = load i16, ptr %i.bk, align 2, !tbaa !24
  br label %bb.u, !llvm.loop !88

.critedge:                                        ; preds = %bb.u, %bb.u
  %.not59 = icmp eq i32 %.1, 0
  br i1 %.not59, label %.preheader13, label %bb.y

.preheader13:                                     ; preds = %.critedge
  %i.bl = icmp eq i16 %i.bh, 47
  br i1 %i.bl, label %.lr.ph, label %.loopexit14

.lr.ph:                                           ; preds = %.preheader13, %bb.x
  %.15039 = phi ptr [ %i.bm, %bb.x ], [ %.046, %.preheader13 ] ; 2 uses
  %.15238 = phi ptr [ %i.bo, %bb.x ], [ %.047, %.preheader13 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.15039, i64 2 ; 3 uses
  %i.bn = icmp ugt ptr %i.bm, %2
  br i1 %i.bn, label %.loopexit15, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.15238, i64 2 ; 3 uses
  store i16 47, ptr %.15039, align 2, !tbaa !24
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !24 ; 2 uses
  %i.bq = icmp eq i16 %i.bp, 47
  br i1 %i.bq, label %.lr.ph, label %.loopexit14, !llvm.loop !89

bb.y:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.br = icmp ugt ptr %.04943, %2
  br i1 %i.br, label %glob3.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i16 0, ptr %.04943, align 2, !tbaa !24
  %i.bs = tail call ptr @__errno_location() #23, !inline_history !90 ; 3 uses
  store i32 0, ptr %i.bs, align 4, !tbaa !79
  %i.bt = tail call fastcc ptr @g_opendir(ptr noundef nonnull %0, ptr noundef %4), !inline_history !90 ; 5 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %.not69.i = icmp eq ptr %i.bw, null
  br i1 %.not69.i, label %bb.ad, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i144, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04.i143, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !24
  %i.ca = trunc i16 %i.bz to i8                   ; 2 uses
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !23
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.ab, label %.preheader.1, !llvm.loop !81

.preheader.1:                                     ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %.03.i144, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.04.i143, i64 4
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !24
  %i.cf = trunc i16 %i.ce to i8                   ; 2 uses
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !23
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %bb.ab, label %.preheader.2, !llvm.loop !81

.preheader.2:                                     ; preds = %.preheader.1
  %i.ch = getelementptr inbounds nuw i8, ptr %.03.i144, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %.04.i143, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !24
  %i.ck = trunc i16 %i.cj to i8                   ; 2 uses
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !23
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %.preheader.3, !llvm.loop !81

.preheader.3:                                     ; preds = %.preheader.2
  %i.cm = add nsw i64 %.0.i74145, -4              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.03.i144, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.04.i143, i64 8
  %.not.i75.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i75.3, label %glob3.exit, label %.preheader.preheader, !llvm.loop !81

.preheader.preheader:                             ; preds = %bb.aa, %.preheader.3
  %.0.i74145 = phi i64 [ %i.cm, %.preheader.3 ], [ 4096, %bb.aa ]
  %.03.i144 = phi ptr [ %i.cn, %.preheader.3 ], [ %i.a, %bb.aa ] ; 5 uses
  %.04.i143 = phi ptr [ %i.co, %.preheader.3 ], [ %0, %bb.aa ] ; 5 uses
  %i.cp = load i16, ptr %.04.i143, align 2, !tbaa !24
  %i.cq = trunc i16 %i.cp to i8                   ; 2 uses
  store i8 %i.cq, ptr %.03.i144, align 1, !tbaa !23
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %.preheader, !llvm.loop !81

bb.ab:                                            ; preds = %.preheader.2, %.preheader.1, %.preheader, %.preheader.preheader
  %i.cs = load i32, ptr %i.bs, align 4, !tbaa !79
  %i.ct = call i32 %i.bw(ptr noundef nonnull %i.a, i32 noundef %i.cs) #20, !inline_history !90
  %.not71.i = icmp eq i32 %i.ct, 0
  br i1 %.not71.i, label %bb.ac, label %glob3.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !20
  %i.cw = and i32 %i.cv, 4
  %.not72.i = icmp eq i32 %i.cw, 0
  br i1 %.not72.i, label %bb.ad, label %glob3.exit

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  br label %glob3.exit

bb.ae:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !20
  %i.cz = and i32 %i.cy, 64
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !91
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.049.i = phi ptr [ %i.db, %bb.af ], [ @readdir, %bb.ae ] ; 2 uses
  %i.dc = tail call ptr %.049.i(ptr noundef nonnull %i.bt) #20, !inline_history !90 ; 2 uses
  %.not61.i45 = icmp eq ptr %i.dc, null
  br i1 %.not61.i45, label %.thread, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph47, %select.unfold
  %i.de = phi ptr [ %i.dc, %.lr.ph47 ], [ %i.fq, %select.unfold ]
  %i.df = load i32, ptr %i.cx, align 8, !tbaa !20
  %i.dg = and i32 %i.df, 8192
  %.not62.i = icmp eq i32 %i.dg, 0
  br i1 %.not62.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i64, ptr %i.dd, align 8, !tbaa !92 ; 2 uses
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.dd, align 8, !tbaa !92
  %i.dj = icmp ugt i64 %i.dh, 16383
  br i1 %i.dj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.bs, align 4, !tbaa !79
  %i.dk = getelementptr inbounds nuw i8, ptr %.04943, i64 2
  store i16 47, ptr %.04943, align 2, !tbaa !24
  store i16 0, ptr %i.dk, align 2, !tbaa !24
  br label %.thread

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 19 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !23
  %i.dn = icmp eq i8 %i.dm, 46
  br i1 %i.dn, label %bb.al, label %.preheader151

bb.al:                                            ; preds = %bb.ak
  %i.do = load i16, ptr %.05142, align 2, !tbaa !24
  %.not63.i = icmp eq i16 %i.do, 46
  br i1 %.not63.i, label %.preheader151, label %select.unfold, !llvm.loop !93

.preheader151:                                    ; preds = %bb.al, %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %.preheader151, %bb.an
  %.047.i = phi ptr [ %i.dq, %bb.an ], [ %i.dl, %.preheader151 ] ; 2 uses
  %.0.i65 = phi ptr [ %i.dt, %bb.an ], [ %.04943, %.preheader151 ] ; 4 uses
  %i.dp = icmp ult ptr %.0.i65, %2
  br i1 %i.dp, label %bb.an, label %.critedge.i

bb.an:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %.047.i, i64 1
  %i.dr = load i8, ptr %.047.i, align 1, !tbaa !23 ; 2 uses
  %i.ds = zext i8 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i65, i64 2 ; 2 uses
  store i16 %i.ds, ptr %.0.i65, align 2, !tbaa !24
  %.not64.i = icmp eq i8 %i.dr, 0
  br i1 %.not64.i, label %.critedge.i, label %bb.am, !llvm.loop !94

.critedge.i:                                      ; preds = %bb.an, %bb.am
  %.1.i = phi ptr [ %i.dt, %bb.an ], [ %.0.i65, %bb.am ] ; 3 uses
  %.not65.i = icmp ult ptr %.1.i, %2
  br i1 %.not65.i, label %.preheader10, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i
  store i16 0, ptr %.1.i, align 2, !tbaa !24
  br label %.thread

.preheader10:                                     ; preds = %.critedge.i, %.loopexit.i
  %.052.i66 = phi ptr [ %.172.i, %.loopexit.i ], [ %.04943, %.critedge.i ] ; 2 uses
  %.047.i67 = phi ptr [ %.14175.i, %.loopexit.i ], [ %.05142, %.critedge.i ] ; 2 uses
  %.040.i = phi ptr [ %.14175.i, %.loopexit.i ], [ null, %.critedge.i ] ; 2 uses
  %.0.i68 = phi ptr [ %.172.i, %.loopexit.i ], [ null, %.critedge.i ] ; 2 uses
  %i.du = icmp ult ptr %.047.i67, %.047
  br i1 %i.du, label %.lr.ph85.i, label %._crit_edge.i

.lr.ph85.i:                                       ; preds = %.preheader10, %bb.bg
  %.184.i = phi ptr [ %.2.i71, %bb.bg ], [ %.0.i68, %.preheader10 ] ; 7 uses
  %.14183.i = phi ptr [ %.242.i, %bb.bg ], [ %.040.i, %.preheader10 ] ; 7 uses
  %.14882.i = phi ptr [ %.7.i, %bb.bg ], [ %.047.i67, %.preheader10 ] ; 3 uses
  %.15381.i = phi ptr [ %.254.i, %bb.bg ], [ %.052.i66, %.preheader10 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.14882.i, i64 2 ; 7 uses
  %i.dw = load i16, ptr %.14882.i, align 2, !tbaa !24 ; 2 uses
  switch i16 %i.dw, label %bb.bf [
    i16 -32726, label %.preheader.i
    i16 -32705, label %bb.as
    i16 -32677, label %bb.at
  ]

.preheader.i:                                     ; preds = %.lr.ph85.i
  %i.dx = icmp ult ptr %i.dv, %.047
  br i1 %i.dx, label %.lr.ph.i, label %.critedge.i72

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ap
  %.24978.i = phi ptr [ %i.ea, %bb.ap ], [ %i.dv, %.preheader.i ] ; 3 uses
  %i.dy = load i16, ptr %.24978.i, align 2, !tbaa !24
  %i.dz = icmp eq i16 %i.dy, -32726
  br i1 %i.dz, label %bb.ap, label %.critedge.i72

bb.ap:                                            ; preds = %.lr.ph.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.24978.i, i64 2 ; 3 uses
  %i.eb = icmp ult ptr %i.ea, %.047
  br i1 %i.eb, label %.lr.ph.i, label %.critedge.i72, !llvm.loop !95

.critedge.i72:                                    ; preds = %bb.ap, %.lr.ph.i, %.preheader.i
  %.249.lcssa.i = phi ptr [ %i.dv, %.preheader.i ], [ %.24978.i, %.lr.ph.i ], [ %i.ea, %bb.ap ] ; 3 uses
  %i.ec = icmp eq ptr %.249.lcssa.i, %.047
  br i1 %i.ec, label %match.exit, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i72
  %i.ed = load i16, ptr %.15381.i, align 2, !tbaa !24
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = getelementptr inbounds nuw i8, ptr %.15381.i, i64 2
  %i.eg = getelementptr inbounds i8, ptr %.249.lcssa.i, i64 -2
  br label %bb.bg

bb.as:                                            ; preds = %.lr.ph85.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.15381.i, i64 2
  %i.ei = load i16, ptr %.15381.i, align 2, !tbaa !24
  %i.ej = icmp eq i16 %i.ei, 0
  br i1 %i.ej, label %.loopexit.i, label %bb.bg

bb.at:                                            ; preds = %.lr.ph85.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.15381.i, i64 2
  %i.el = load i16, ptr %.15381.i, align 2, !tbaa !24 ; 5 uses
  %i.em = zext i16 %i.el to i32
  %i.en = icmp eq i16 %i.el, 0
  br i1 %i.en, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = load i16, ptr %i.dv, align 2, !tbaa !24
  %i.ep = icmp eq i16 %i.eo, -32735               ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.14882.i, i64 4
  %spec.select.i = select i1 %i.ep, ptr %i.eq, ptr %i.dv
  br label %bb.av

bb.av:                                            ; preds = %.backedge, %bb.au
  %.451.i = phi ptr [ %spec.select.i, %bb.au ], [ %.451.i.be, %.backedge ] ; 3 uses
  %.043.i = phi i32 [ 0, %bb.au ], [ %.043.i.be, %.backedge ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.451.i, i64 2 ; 3 uses
  %i.es = load i16, ptr %.451.i, align 2, !tbaa !24 ; 3 uses
  switch i16 %i.es, label %bb.az [
    i16 -32675, label %bb.be
    i16 -32710, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.et = load i16, ptr %i.er, align 2, !tbaa !24 ; 2 uses
  %i.eu = icmp ult i16 %i.et, 12
  br i1 %i.eu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ev = zext nneg i16 %i.et to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr @cclasses, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !96
  %i.ez = tail call i32 %i.ey(i32 noundef %i.em) #20, !inline_history !98
  %.not59.i = icmp eq i32 %i.ez, 0
  %spec.select64.i = select i1 %.not59.i, i32 %.043.i, i32 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.144.i = phi i32 [ %.043.i, %bb.aw ], [ %spec.select64.i, %bb.ax ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.451.i, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.5.i = phi ptr [ %i.fa, %bb.ay ], [ %i.er, %bb.av ] ; 4 uses
  %.245.i = phi i32 [ %.144.i, %bb.ay ], [ %.043.i, %bb.av ] ; 3 uses
  %i.fb = load i16, ptr %.5.i, align 2, !tbaa !24
  %i.fc = icmp eq i16 %i.fb, -32723
  br i1 %i.fc, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %.not60.i = icmp ugt i16 %i.es, %i.el
  br i1 %.not60.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = getelementptr inbounds nuw i8, ptr %.5.i, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !24
  %.not61.i70 = icmp ugt i16 %i.el, %i.fe
  %spec.select65.i = select i1 %.not61.i70, i32 %.245.i, i32 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.3.i = phi i32 [ %.245.i, %bb.ba ], [ %spec.select65.i, %bb.bb ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.5.i, i64 4
  br label %.backedge

bb.bd:                                            ; preds = %bb.az
  %i.fg = icmp eq i16 %i.es, %i.el
  %spec.select66.i = select i1 %i.fg, i32 1, i32 %.245.i
  br label %.backedge

.backedge:                                        ; preds = %bb.bd, %bb.bc
  %.451.i.be = phi ptr [ %i.ff, %bb.bc ], [ %.5.i, %bb.bd ]
  %.043.i.be = phi i32 [ %.3.i, %bb.bc ], [ %spec.select66.i, %bb.bd ]
  br label %bb.av, !llvm.loop !99

bb.be:                                            ; preds = %bb.av
  %i.fh = zext i1 %i.ep to i32
  %i.fi = icmp eq i32 %.043.i, %i.fh
  br i1 %i.fi, label %.loopexit.i, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph85.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.15381.i, i64 2
  %i.fk = load i16, ptr %.15381.i, align 2, !tbaa !24
  %.not62.i73 = icmp eq i16 %i.fk, %i.dw
  br i1 %.not62.i73, label %bb.bg, label %.loopexit.i

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.as, %bb.ar
  %.254.i = phi ptr [ %i.fj, %bb.bf ], [ %.15381.i, %bb.ar ], [ %i.eh, %bb.as ], [ %i.ek, %bb.be ] ; 2 uses
  %.7.i = phi ptr [ %i.dv, %bb.bf ], [ %.249.lcssa.i, %bb.ar ], [ %i.dv, %bb.as ], [ %i.er, %bb.be ] ; 2 uses
  %.242.i = phi ptr [ %.14183.i, %bb.bf ], [ %i.eg, %bb.ar ], [ %.14183.i, %bb.as ], [ %.14183.i, %bb.be ] ; 2 uses
  %.2.i71 = phi ptr [ %.184.i, %bb.bf ], [ %i.ef, %bb.ar ], [ %.184.i, %bb.as ], [ %.184.i, %bb.be ] ; 2 uses
  %i.fl = icmp ult ptr %.7.i, %.047
  br i1 %i.fl, label %.lr.ph85.i, label %._crit_edge.i, !llvm.loop !100

._crit_edge.i:                                    ; preds = %bb.bg, %.preheader10
  %.153.lcssa.i = phi ptr [ %.052.i66, %.preheader10 ], [ %.254.i, %bb.bg ]
  %.141.lcssa.i = phi ptr [ %.040.i, %.preheader10 ], [ %.242.i, %bb.bg ]
  %.1.lcssa.i = phi ptr [ %.0.i68, %.preheader10 ], [ %.2.i71, %bb.bg ]
  %i.fm = load i16, ptr %.153.lcssa.i, align 2, !tbaa !24
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %match.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.bf, %bb.be, %bb.at, %bb.as, %._crit_edge.i
  %.14175.i = phi ptr [ %.141.lcssa.i, %._crit_edge.i ], [ %.14183.i, %bb.as ], [ %.14183.i, %bb.at ], [ %.14183.i, %bb.be ], [ %.14183.i, %bb.bf ] ; 2 uses
  %.172.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %.184.i, %bb.as ], [ %.184.i, %bb.at ], [ %.184.i, %bb.be ], [ %.184.i, %bb.bf ] ; 3 uses
  %.not63.i69 = icmp eq ptr %.172.i, null
  br i1 %.not63.i69, label %.loopexit, label %.preheader10

.loopexit:                                        ; preds = %.loopexit.i, %bb.aq
  store i16 0, ptr %.04943, align 2, !tbaa !24
  br label %select.unfold, !llvm.loop !93

match.exit:                                       ; preds = %._crit_edge.i, %.critedge.i72
  %i.fo = getelementptr inbounds i8, ptr %.1.i, i64 -2
  %i.fp = tail call fastcc i32 @glob2(ptr noundef nonnull %0, ptr noundef %i.fo, ptr noundef nonnull %2, ptr noundef nonnull %.047, ptr noundef %4, ptr noundef nonnull %5) ; 2 uses
  %.not67.i = icmp eq i32 %i.fp, 0
  br i1 %.not67.i, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %match.exit, %.loopexit, %bb.al
  %i.fq = tail call ptr %.049.i(ptr noundef nonnull %i.bt) #20, !inline_history !90 ; 2 uses
  %.not61.i = icmp eq ptr %i.fq, null
  br i1 %.not61.i, label %.thread, label %bb.ah

.thread:                                          ; preds = %select.unfold, %match.exit, %bb.ag, %bb.ao, %bb.aj
  %.2.i = phi i32 [ 1, %bb.ao ], [ -1, %bb.aj ], [ 0, %bb.ag ], [ 0, %select.unfold ], [ %i.fp, %match.exit ] ; 2 uses
  %i.fr = load i32, ptr %i.cx, align 8, !tbaa !20
  %i.fs = and i32 %i.fr, 64
  %.not68.i = icmp eq i32 %i.fs, 0
  br i1 %.not68.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.thread
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !101
  tail call void %i.fu(ptr noundef nonnull %i.bt) #20, !inline_history !90
  br label %glob3.exit

bb.bi:                                            ; preds = %.thread
  %i.fv = tail call i32 @closedir(ptr noundef nonnull %i.bt), !inline_history !90 ; 0 uses
  br label %glob3.exit

glob3.exit:                                       ; preds = %.preheader.3, %bb.y, %bb.ab, %bb.ac, %bb.ad, %bb.bh, %bb.bi
  %.052.i = phi i32 [ -2, %bb.ab ], [ 1, %bb.y ], [ %.2.i, %bb.bh ], [ 0, %bb.ad ], [ -2, %bb.ac ], [ %.2.i, %bb.bi ], [ -2, %.preheader.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.loopexit15

.loopexit15:                                      ; preds = %bb.v, %.lr.ph, %g_lstat.exit.thread, %bb.r, %g_lstat.exit, %glob3.exit, %bb.t, %bb.c
  %.048 = phi i32 [ -1, %bb.c ], [ 1, %.lr.ph ], [ 0, %g_lstat.exit ], [ %i.bg, %bb.t ], [ 1, %bb.r ], [ %.052.i, %glob3.exit ], [ 0, %g_lstat.exit.thread ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i32 %.048
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc i32 @g_stat(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.b:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %.03.i9, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %.04.i8, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !24
  %i.e = trunc i16 %i.d to i8                     ; 2 uses
  store i8 %i.e, ptr %i.b, align 1, !tbaa !23
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.c, !llvm.loop !81

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.03.i9, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %.04.i8, i64 4
  %i.i = load i16, ptr %i.h, align 2, !tbaa !24
  %i.j = trunc i16 %i.i to i8                     ; 2 uses
  store i8 %i.j, ptr %i.g, align 1, !tbaa !23
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.d, !llvm.loop !81

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.03.i9, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i8, i64 6
  %i.n = load i16, ptr %i.m, align 2, !tbaa !24
  %i.o = trunc i16 %i.n to i8                     ; 2 uses
  store i8 %i.o, ptr %i.l, align 1, !tbaa !23
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e, !llvm.loop !81

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %.0.i10, -4                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i9, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.04.i8, i64 8
  %.not.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.3, label %g_Ctoc.exit, label %bb.f, !llvm.loop !81

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0.i10 = phi i64 [ 4096, %bb.a ], [ %i.q, %bb.e ]
  %.03.i9 = phi ptr [ %i.a, %bb.a ], [ %i.r, %bb.e ] ; 5 uses
  %.04.i8 = phi ptr [ %0, %bb.a ], [ %i.s, %bb.e ] ; 5 uses
  %i.t = load i16, ptr %.04.i8, align 2, !tbaa !24
  %i.u = trunc i16 %i.t to i8                     ; 2 uses
  store i8 %i.u, ptr %.03.i9, align 1, !tbaa !23
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.b, !llvm.loop !81

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20
  %i.y = and i32 %i.x, 64
  %.not5 = icmp eq i32 %i.y, 0
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #20
  br label %g_Ctoc.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = call i32 @stat(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #20
  br label %g_Ctoc.exit

g_Ctoc.exit:                                      ; preds = %bb.e, %bb.i, %bb.h
  %.0 = phi i32 [ %i.ac, %bb.i ], [ %i.ab, %bb.h ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal fastcc ptr @g_opendir(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i16, ptr %0, align 2, !tbaa !24
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  store i16 46, ptr %i.a, align 16
  br label %g_Ctoc.exit.thread

.preheader:                                       ; preds = %.preheader.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.03.i10, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04.i9, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !24
  %i.f = trunc i16 %i.e to i8                     ; 2 uses
  store i8 %i.f, ptr %i.c, align 1, !tbaa !23
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %g_Ctoc.exit.thread, label %.preheader.1, !llvm.loop !81

.preheader.1:                                     ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.03.i10, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %.04.i9, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !24
  %i.k = trunc i16 %i.j to i8                     ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !23
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %g_Ctoc.exit.thread, label %.preheader.2, !llvm.loop !81

.preheader.2:                                     ; preds = %.preheader.1
  %i.m = getelementptr inbounds nuw i8, ptr %.03.i10, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i9, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !24
  %i.p = trunc i16 %i.o to i8                     ; 2 uses
  store i8 %i.p, ptr %i.m, align 1, !tbaa !23
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %g_Ctoc.exit.thread, label %.preheader.3, !llvm.loop !81

.preheader.3:                                     ; preds = %.preheader.2
  %i.r = add nsw i64 %.0.i11, -4                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i10, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i9, i64 8
  %.not.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.3, label %g_Ctoc.exit, label %.preheader.preheader, !llvm.loop !81

.preheader.preheader:                             ; preds = %bb.a, %.preheader.3
  %.0.i11 = phi i64 [ %i.r, %.preheader.3 ], [ 4096, %bb.a ]
  %.03.i10 = phi ptr [ %i.s, %.preheader.3 ], [ %i.a, %bb.a ] ; 5 uses
  %.04.i9 = phi ptr [ %i.t, %.preheader.3 ], [ %0, %bb.a ] ; 5 uses
  %i.u = load i16, ptr %.04.i9, align 2, !tbaa !24
  %i.v = trunc i16 %i.u to i8                     ; 2 uses
  store i8 %i.v, ptr %.03.i10, align 1, !tbaa !23
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %g_Ctoc.exit.thread, label %.preheader, !llvm.loop !81

g_Ctoc.exit.thread:                               ; preds = %.preheader.preheader, %.preheader, %.preheader.1, %.preheader.2, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = and i32 %i.y, 64
  %.not6 = icmp eq i32 %i.z, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %g_Ctoc.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103
  %i.ac = call ptr %i.ab(ptr noundef nonnull %i.a) #20
  br label %g_Ctoc.exit

bb.d:                                             ; preds = %g_Ctoc.exit.thread
  %i.ad = call noalias ptr @opendir(ptr noundef nonnull %i.a)
  br label %g_Ctoc.exit

g_Ctoc.exit:                                      ; preds = %.preheader.3, %bb.d, %bb.c
  %.0 = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %bb.c ], [ null, %.preheader.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

declare ptr @readdir(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1,2) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @reallocarray(ptr allocptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1,2) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !15, i64 32, !18, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88}
!14 = !{!"long", !10, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p2 _ZTS4stat", !16, i64 0}
!19 = !{!13, !14, i64 16}
!20 = !{!13, !9, i64 24}
!21 = !{!13, !17, i64 48}
!22 = !{!13, !14, i64 8}
!23 = !{!10, !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{null}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"branch_weights", i32 4, i32 12}
!37 = distinct !{!37, !27, !34, !35}
!38 = distinct !{!38, !27, !34}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS6passwd", !17, i64 0}
!43 = distinct !{!43, !27}
!44 = !{!45, !46, i64 32}
!45 = !{!"passwd", !46, i64 0, !46, i64 8, !9, i64 16, !9, i64 20, !46, i64 24, !46, i64 32, !46, i64 40}
!46 = !{!"p1 omnipotent char", !17, i64 0}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = !{!13, !15, i64 32}
!54 = !{!13, !18, i64 40}
!55 = !{!46, !46, i64 0}
!56 = !{!57, !46, i64 0}
!57 = !{!"glob_path_stat", !46, i64 0, !58, i64 8}
!58 = !{!"p1 _ZTS4stat", !17, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!57, !58, i64 8}
!61 = distinct !{!61, !27}
!62 = !{!17, !17, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = !{!69}
!69 = distinct !{!69, !65}
!70 = !{!71}
!71 = distinct !{!71, !65}
!72 = distinct !{!72, !27, !34, !35}
!73 = distinct !{!73, !27, !34}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !27}
!76 = distinct !{!76, !27}
!77 = !{!78, !14, i64 0}
!78 = !{!"glob_lim", !14, i64 0, !14, i64 8, !14, i64 16}
!79 = !{!9, !9, i64 0}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = !{!78, !14, i64 8}
!83 = !{!13, !17, i64 80}
!84 = distinct !{null}
!85 = !{!86, !9, i64 24}
!86 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !87, i64 72, !87, i64 88, !87, i64 104, !10, i64 120}
!87 = !{!"timespec", !14, i64 0, !14, i64 8}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !27}
!90 = distinct !{null}
!91 = !{!13, !17, i64 64}
!92 = !{!78, !14, i64 16}
!93 = distinct !{!93, !27}
!94 = distinct !{!94, !27}
!95 = distinct !{!95, !27}
!96 = !{!97, !17, i64 8}
!97 = !{!"cclass", !46, i64 0, !17, i64 8}
!98 = distinct !{null, null}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = !{!13, !17, i64 56}
!102 = !{!13, !17, i64 88}
!103 = !{!13, !17, i64 72}
end_hunk_1
