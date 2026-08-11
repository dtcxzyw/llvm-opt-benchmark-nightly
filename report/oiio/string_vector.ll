inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"Invalid reference to string vector object to assign to\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Received request to allocate negative sized string vector (%d entries)\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Invalid too large size for string vector (%d entries)\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Invalid index (%d of %d) initializing string vector\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Invalid reference to string vector object to initialize index %d\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Invalid index (%d of %d) assigning string vector ('%s', len %d)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_string_vector_init(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = sext i32 %2 to i64
  %i.a = shl nsw i64 %3, 4                        ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #6
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %2) #6
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp ugt i64 %i.a, 2147483647
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, i32, ptr, ...) %i.k(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %2) #6
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.o = tail call ptr %i.n(i64 noundef %i.a) #6  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0, i32 noundef 1) #6
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.i
  store i32 %2, ptr %1, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %2, ptr %i.u, align 4, !tbaa !29
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %2, 4
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !30

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !32

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h, %bb.a, %bb.j, %bb.g, %bb.e, %bb.c
  %.030 = phi i32 [ %i.h, %bb.e ], [ %i.l, %bb.g ], [ %i.t, %bb.j ], [ 2, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.h ], [ 0, %.lr.ph.epil ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  ret i32 %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @exr_attr_string_vector_destroy(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %1, null
  br i1 %.not18, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !28
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = tail call i32 @exr_attr_string_destroy(ptr noundef nonnull %0, ptr noundef %i.h) #6 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !28
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !34

bb.e:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  tail call void %i.n(ptr noundef nonnull %i.e) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.a
  %.014 = phi i32 [ 2, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i32 %.014
}

declare i32 @exr_attr_string_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_string_vector_copy(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 8, !tbaa !28     ; 9 uses
  %3 = sext i32 %i.a to i64
  %i.b = shl nsw i64 %3, 4                        ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not35.i = icmp eq ptr %1, null
  br i1 %.not35.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = tail call i32 %i.d(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #6, !inline_history !36
  br label %exr_attr_string_vector_init.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %i.a, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.i = tail call i32 (ptr, i32, ptr, ...) %i.h(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %i.a) #6, !inline_history !36
  br label %exr_attr_string_vector_init.exit

bb.g:                                             ; preds = %bb.e
  %i.j = icmp ugt i64 %i.b, 2147483647
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = tail call i32 (ptr, i32, ptr, ...) %i.l(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %i.a) #6, !inline_history !36
  br label %exr_attr_string_vector_init.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.not36.i = icmp eq i32 %i.a, 0
  br i1 %.not36.i, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = tail call ptr %i.o(i64 noundef %i.b) #6, !inline_history !36 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.k, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !36
  br label %exr_attr_string_vector_init.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  store i32 %i.a, ptr %1, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.a, ptr %i.v, align 4, !tbaa !29
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.w = icmp ult i32 %i.a, 4
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !30

exr_attr_string_vector_init.exit:                 ; preds = %bb.d, %bb.f, %bb.h, %bb.k
  %.030.i = phi i32 [ %i.i, %bb.f ], [ %i.m, %bb.h ], [ %i.u, %bb.k ], [ %i.e, %bb.d ] ; 2 uses
  %cond28 = icmp eq i32 %.030.i, 0
  br i1 %cond28, label %.lr.ph, label %._crit_edge

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.i.epil, !llvm.loop !37

.lr.ph:                                           ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.i, %exr_attr_string_vector_init.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 4 uses
  %i.am = load i32, ptr %2, align 8, !tbaa !28
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv, %i.an
  br i1 %i.ao, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = load i32, ptr %i.as, align 8, !tbaa !39
  %i.aw = tail call i32 @exr_attr_string_set_with_length(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef %i.au, i32 noundef %i.av) #6 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cond = icmp eq i32 %i.aw, 0
  br i1 %cond, label %bb.l, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.m, %exr_attr_string_vector_init.exit
  %.019.lcssa = phi i32 [ %.030.i, %exr_attr_string_vector_init.exit ], [ %i.aw, %bb.m ] ; 2 uses
  %.not18.i = icmp eq ptr %1, null
  br i1 %.not18.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %i.bc = load i32, ptr %1, align 8, !tbaa !28
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i24, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i24, %bb.o
  %.not19.i = icmp eq ptr %i.bb, null
  br i1 %.not19.i, label %bb.q, label %bb.p

.lr.ph.i24:                                       ; preds = %bb.o, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %.lr.ph.i24 ], [ 0, %bb.o ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i25
  %i.bf = tail call i32 @exr_attr_string_destroy(ptr noundef nonnull %0, ptr noundef %i.be) #6 ; 0 uses
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %i.bg = load i32, ptr %1, align 8, !tbaa !28
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next.i26, %i.bh
  br i1 %i.bi, label %.lr.ph.i24, label %._crit_edge.i, !llvm.loop !34

bb.p:                                             ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  tail call void %i.bk(ptr noundef nonnull %i.bb) #6, !inline_history !41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.b, %bb.q, %._crit_edge, %bb.a
  %.020 = phi i32 [ 3, %bb.a ], [ %.019.lcssa, %bb.q ], [ %.019.lcssa, %._crit_edge ], [ 2, %bb.b ], [ 0, %bb.l ]
  ret i32 %.020
}

declare i32 @exr_attr_string_set_with_length(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_string_vector_init_entry(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = icmp sgt i32 %2, -1
  %.pre = load i32, ptr %1, align 8, !tbaa !28    ; 2 uses
  %.not20 = icmp slt i32 %2, %.pre
  %or.cond = select i1 %i.a, i1 %.not20, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = tail call i32 (ptr, i32, ptr, ...) %i.c(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef %.pre) #6
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = tail call i32 @exr_attr_string_init(ptr noundef nonnull %0, ptr noundef %i.h, i32 noundef %3) #6
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, i32, ptr, ...) %i.k(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef %2) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ %i.i, %bb.e ], [ %i.l, %bb.f ], [ 2, %bb.a ]
  ret i32 %.0
}

declare i32 @exr_attr_string_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_string_vector_set_entry_with_length(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str) #6
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %2, -1
  %.pre = load i32, ptr %1, align 8, !tbaa !28    ; 2 uses
  %.not23 = icmp slt i32 %2, %.pre
  %or.cond = select i1 %i.d, i1 %.not23, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %.not24 = icmp eq ptr %3, null
  %i.g = select i1 %.not24, ptr @.str.6, ptr %3
  %i.h = tail call i32 (ptr, i32, ptr, ...) %i.f(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef %.pre, ptr noundef nonnull %i.g, i32 noundef %4) #6
  br label %bb.g

end_hunk_0
