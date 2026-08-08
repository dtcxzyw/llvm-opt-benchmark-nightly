inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@DELETED_KEY = internal global [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [79 x i8] c"hashtab.c:Growing hashtable %p, because it has exceeded maxfill, old size:%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"hashtab.c: Growing hashtable %p, because its full, old size:%ld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"hashtab.c: Unable to grow hashtable\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%ld %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"static struct element %s_elements[] = {\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\09{(const unsigned char*)\22%s\22, %ld},\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"const struct hashtable %s = {\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09%s_elements, %ld, %ld, %ld\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d %1023s\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Requested hashtable size is too big!\00", align 1
@.str.16 = private unnamed_addr constant [143 x i8] c"hashtab.c: Warning: growing open-addressing hashtables is slow. Either allocate more storage when initializing, or use other hashtable types!\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"hashtab.c: Impossible - unable to rehash table\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Table %p size after grow:%ld\0A\00", align 1
@str = private unnamed_addr constant [32 x i8] c"/* TODO: include GPL headers */\00", align 1
@str.1 = private unnamed_addr constant [21 x i8] c"#include <hashtab.h>\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"\0A};\00", align 1
@str.4 = private unnamed_addr constant [12 x i8] c"\09{NULL, 0},\00", align 1
@str.5 = private unnamed_addr constant [18 x i8] c"\09{DELETED_KEY,0},\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -114, 1) i32 @hashtab_init(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @get_nearest_capacity(i64 noundef %1) ; 3 uses
  %i.b = tail call ptr @cli_calloc(i64 noundef %i.a, i64 noundef 16) #13 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !8
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !14
  %i.e = shl nuw nsw i64 %i.a, 3
  %i.f = udiv i64 %i.e, 10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -111, %bb.a ], [ -114, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 53, 3221225474) i64 @get_nearest_capacity(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 53
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %0, 97
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i64 %0, 193
  br i1 %i.c, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i64 %0, 389
  br i1 %i.d, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp ult i64 %0, 769
  br i1 %i.e, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp ult i64 %0, 1543
  br i1 %i.f, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp ult i64 %0, 3079
  br i1 %i.g, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp ult i64 %0, 6151
  br i1 %i.h, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp ult i64 %0, 12289
  br i1 %i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp ult i64 %0, 24593
  br i1 %i.j, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = icmp ult i64 %0, 49157
  br i1 %i.k, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = icmp ult i64 %0, 98317
  br i1 %i.l, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = icmp ult i64 %0, 196613
  br i1 %i.m, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = icmp ult i64 %0, 393241
  br i1 %i.n, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = icmp ult i64 %0, 786433
  br i1 %i.o, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = icmp ult i64 %0, 1572869
  br i1 %i.p, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = icmp ult i64 %0, 3145739
  br i1 %i.q, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = icmp ult i64 %0, 6291469
  br i1 %i.r, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = icmp ult i64 %0, 12582917
  br i1 %i.s, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = icmp ult i64 %0, 25165843
  br i1 %i.t, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = icmp ult i64 %0, 50331653
  br i1 %i.u, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = icmp ult i64 %0, 100663319
  br i1 %i.v, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = icmp ult i64 %0, 201326611
  br i1 %i.w, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = icmp ult i64 %0, 402653189
  br i1 %i.x, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.y = icmp ult i64 %0, 805306457
  br i1 %i.y, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = icmp ult i64 %0, 1610612741
  br i1 %i.z, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = icmp ult i64 %0, 3221225473
  br i1 %i.aa, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.15) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.06 = phi i64 [ 3221225473, %bb.ab ], [ 53, %bb.a ], [ 97, %bb.b ], [ 193, %bb.c ], [ 389, %bb.d ], [ 769, %bb.e ], [ 1543, %bb.f ], [ 3079, %bb.g ], [ 6151, %bb.h ], [ 12289, %bb.i ], [ 24593, %bb.j ], [ 49157, %bb.k ], [ 98317, %bb.l ], [ 196613, %bb.m ], [ 393241, %bb.n ], [ 786433, %bb.o ], [ 1572869, %bb.p ], [ 3145739, %bb.q ], [ 6291469, %bb.r ], [ 12582917, %bb.s ], [ 25165843, %bb.t ], [ 50331653, %bb.u ], [ 100663319, %bb.v ], [ 201326611, %bb.w ], [ 402653189, %bb.x ], [ 805306457, %bb.y ], [ 1610612741, %bb.z ], [ 3221225473, %bb.aa ]
  ret i64 %.06
}

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @hashtab_find(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %hash.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.r, %.lr.ph.i ] ; 3 uses
  %.079.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.q, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.d = shl i64 %.079.i, 8
  %i.e = getelementptr i8, ptr %1, i64 %.010.i
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i64
  %i.i = or disjoint i64 %i.d, %i.h
  %i.j = urem i64 %i.i, %i.b
  %i.k = shl i64 %i.j, 8
  %i.l = getelementptr i8, ptr %1, i64 %.010.i
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = urem i64 %i.p, %i.b                      ; 3 uses
  %i.r = add i64 %.010.i, -2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

hash.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %hash.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.r, %hash.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.q, %hash.exit.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.s = shl i64 %.079.i.epil.init, 8
  %i.t = getelementptr i8, ptr %1, i64 %.010.i.epil.init
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.s, %i.w
  %i.y = urem i64 %i.x, %i.b
  br label %hash.exit

hash.exit:                                        ; preds = %.lr.ph.i.epil.preheader, %hash.exit.loopexit.unr-lcssa, %bb.b
  %.07.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.q, %hash.exit.loopexit.unr-lcssa ], [ %i.y, %.lr.ph.i.epil.preheader ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %hash.exit
  %.019 = phi i64 [ 1, %hash.exit ], [ %i.ad, %bb.f ] ; 2 uses
  %.0 = phi i64 [ %.07.lcssa.i, %hash.exit ], [ %i.af, %bb.f ] ; 2 uses
end_hunk_0
begin_hunk_1_@hashtab_insert:bb.a
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, ptr noundef nonnull %0, i64 noundef %i.av) #13
  %i.aw = tail call fastcc i32 @hashtab_grow(ptr noundef nonnull %0) ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.ax = icmp eq ptr %i.ak, @DELETED_KEY
  br i1 %i.ax, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull %i.ak, i64 noundef %2) #14
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.split67.us, label %bb.k

.split67.us:                                      ; preds = %bb.j, %bb.c
  %.us-phi68 = phi ptr [ %i.g, %bb.c ], [ %.048, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.us-phi68, i64 8
  store i64 %3, ptr %i.ba, align 8, !tbaa !25
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = add i64 %.144, 1
  %i.bc = add i64 %.041, %.144
  %i.bd = urem i64 %i.bc, %i.l                    ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.bd
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.250 = phi ptr [ %i.be, %bb.k ], [ %.048, %bb.i ]
  %.247 = phi ptr [ %.146, %bb.k ], [ %.048, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %i.bb, %bb.k ], [ %.144, %bb.i ] ; 3 uses
  %.142 = phi i64 [ %i.bd, %bb.k ], [ %.041, %bb.i ]
  %.not57 = icmp ugt i64 %.2, %i.l
  br i1 %.not57, label %bb.m, label %bb.f, !llvm.loop !24

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i64 noundef %i.l) #13
  %i.bf = tail call fastcc i32 @hashtab_grow(ptr noundef nonnull %0)
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %.lr.ph.i.preheader, label %.split70.us, !llvm.loop !23

.split70.us:                                      ; preds = %bb.m, %bb.e
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.2) #13
  br label %bb.n

bb.n:                                             ; preds = %.split.us, %bb.h, %bb.g, %bb.a, %.split70.us, %.split67.us
  %.1 = phi i32 [ -114, %.split70.us ], [ 0, %.split67.us ], [ -111, %bb.a ], [ -114, %.split.us ], [ 0, %bb.h ], [ 0, %bb.g ]
  ret i32 %.1
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -114, 1) i32 @hashtab_grow(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call fastcc i64 @get_nearest_capacity(i64 noundef %i.b) ; 10 uses
  %i.d = tail call ptr @cli_calloc(i64 noundef %i.c, i64 noundef 16) #13 ; 4 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !13
  %i.f = icmp ne i64 %i.c, %i.e
  %i.g = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #13
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not71 = icmp eq i64 %i.h, 0
  br i1 %.not71, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b, %bb.d
  %i.i = phi i64 [ %i.at, %bb.d ], [ %i.h, %bb.b ]
  %.04766 = phi i64 [ %.2, %bb.d ], [ 0, %bb.b ]  ; 2 uses
  %.04965 = phi i64 [ %i.au, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.04965 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 6 uses
  %.not = icmp eq ptr %i.l, null
  %.not56 = icmp eq ptr %i.l, @DELETED_KEY
  %or.cond57 = or i1 %.not, %.not56
  br i1 %or.cond57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph68
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #14 ; 7 uses
  %.not8.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i, label %hash.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i64 [ %i.m, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %.079.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = shl nsw i64 %.079.i, 8
  %i.p = getelementptr i8, ptr %i.l, i64 %.010.i
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.o, %i.s
  %i.u = urem i64 %i.t, %i.c
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = getelementptr i8, ptr %i.l, i64 %.010.i
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i64
  %i.aa = or disjoint i64 %i.v, %i.z
  %i.ab = urem i64 %i.aa, %i.c                    ; 3 uses
  %i.ac = add i64 %.010.i, -2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !17

hash.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %hash.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %i.ac, %hash.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ab, %hash.exit.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.ad = shl nsw i64 %.079.i.epil.init, 8
  %i.ae = getelementptr i8, ptr %i.l, i64 %.010.i.epil.init
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = urem i64 %i.ai, %i.c
  br label %hash.exit

hash.exit:                                        ; preds = %.lr.ph.i.epil.preheader, %hash.exit.loopexit.unr-lcssa, %bb.c
  %.07.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.ab, %hash.exit.loopexit.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04561 = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.07.lcssa.i ; 2 uses
  %i.ak = load ptr, ptr %.04561, align 8, !tbaa !19
  %.not72 = icmp eq ptr %i.ak, null
  br i1 %.not72, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %hash.exit, %.lr.ph
  %.063 = phi i64 [ %i.al, %.lr.ph ], [ 1, %hash.exit ] ; 3 uses
  %.04862 = phi i64 [ %i.an, %.lr.ph ], [ %.07.lcssa.i, %hash.exit ]
  %i.al = add nuw nsw i64 %.063, 1
  %i.am = add i64 %.063, %.04862
  %i.an = urem i64 %i.am, %i.c                    ; 2 uses
  %.045 = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.an ; 2 uses
  %i.ao = load ptr, ptr %.045, align 8, !tbaa !19
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = icmp samesign ult i64 %.063, %i.c
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.ap, label %.thread, label %._crit_edge.thread

.thread:                                          ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.17) #13
  br label %bb.e

._crit_edge.thread:                               ; preds = %hash.exit, %._crit_edge
  %.045.lcssa83 = phi ptr [ %.045, %._crit_edge ], [ %.04561, %hash.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.045.lcssa83, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !27
  %i.as = add i64 %.04766, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %.lr.ph68
  %i.at = phi i64 [ %.pre, %._crit_edge.thread ], [ %i.i, %.lr.ph68 ] ; 2 uses
  %.2 = phi i64 [ %i.as, %._crit_edge.thread ], [ %.04766, %.lr.ph68 ] ; 2 uses
  %i.au = add nuw i64 %.04965, 1                  ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %.lr.ph68, label %._crit_edge69, !llvm.loop !30

._crit_edge69:                                    ; preds = %bb.d, %bb.b
  %.047.lcssa = phi i64 [ 0, %bb.b ], [ %.2, %bb.d ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.aw) #13
  store ptr %i.d, ptr %0, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.047.lcssa, ptr %i.ax, align 8, !tbaa !14
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.ay = shl nuw nsw i64 %i.c, 3
  %i.az = udiv i64 %i.ay, 10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !15
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull %0, i64 noundef %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.a, %._crit_edge69
  %.3 = phi i32 [ -114, %.thread ], [ 0, %._crit_edge69 ], [ -114, %bb.a ]
  ret i32 %.3
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @hashtab_delete(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %hashtab_find.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %.not8.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i, label %hash.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i64 [ %2, %.lr.ph.i.i.preheader.new ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %.079.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.q, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.d = shl i64 %.079.i.i, 8
  %i.e = getelementptr i8, ptr %1, i64 %.010.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i64
  %i.i = or disjoint i64 %i.d, %i.h
  %i.j = urem i64 %i.i, %i.b
  %i.k = shl i64 %i.j, 8
  %i.l = getelementptr i8, ptr %1, i64 %.010.i.i
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = urem i64 %i.p, %i.b                      ; 3 uses
  %i.r = add i64 %.010.i.i, -2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !17

hash.exit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %hash.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i64 [ %2, %.lr.ph.i.i.preheader ], [ %i.r, %hash.exit.i.loopexit.unr-lcssa ]
  %.079.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.q, %hash.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.s = shl i64 %.079.i.i.epil.init, 8
  %i.t = getelementptr i8, ptr %1, i64 %.010.i.i.epil.init
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.s, %i.w
  %i.y = urem i64 %i.x, %i.b
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %.lr.ph.i.i.epil.preheader, %hash.exit.i.loopexit.unr-lcssa, %bb.b
  %.07.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %hash.exit.i.loopexit.unr-lcssa ], [ %i.y, %.lr.ph.i.i.epil.preheader ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %hash.exit.i
  %.019.i = phi i64 [ 1, %hash.exit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %.07.lcssa.i.i, %hash.exit.i ], [ %i.af, %bb.f ] ; 2 uses
  %.020.i = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.0.i ; 2 uses
  %i.aa = load ptr, ptr %.020.i, align 8, !tbaa !19 ; 4 uses
  %.not25.i = icmp eq ptr %i.aa, null
  br i1 %.not25.i, label %hashtab_find.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not26.i = icmp eq ptr %i.aa, @DELETED_KEY
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @strncmp(ptr noundef readonly %1, ptr noundef nonnull %i.aa, i64 noundef %2) #14
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %hashtab_find.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = add i64 %.019.i, 1                      ; 2 uses
  %i.ae = add i64 %.0.i, %.019.i
  %i.af = urem i64 %i.ae, %i.b
  %.not27.i = icmp ugt i64 %i.ad, %i.b
  br i1 %.not27.i, label %hashtab_find.exit.thread, label %bb.c, !llvm.loop !22

hashtab_find.exit:                                ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aa) #13
  store ptr @DELETED_KEY, ptr %.020.i, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !14
  br label %hashtab_find.exit.thread

hashtab_find.exit.thread:                         ; preds = %bb.c, %bb.f, %bb.a, %hashtab_find.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @hashtab_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not15 = icmp eq i64 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i64 [ %i.g, %bb.c ], [ %i.b, %bb.a ]
  %.014 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.014
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  %.not13 = icmp eq ptr %i.f, @DELETED_KEY
  %or.cond = or i1 %.not, %.not13
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.f) #13
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = phi i64 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %i.h = add nuw i64 %.014, 1                     ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %bb.c ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.lcssa, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hashtab_store(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not12 = icmp eq i64 %i.b, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i64 [ %i.j, %bb.c ], [ %i.b, %bb.a ]
  %.011 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.011 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  %.not10 = icmp eq ptr %i.f, @DELETED_KEY
  %or.cond = or i1 %.not, %.not10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i64 noundef %i.h, ptr noundef nonnull %i.f) #13 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.k = add nuw i64 %.011, 1                     ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

end_hunk_1
