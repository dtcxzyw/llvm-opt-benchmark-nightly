Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_object?download=true
inline.NumInlined: 8
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@.str = private unnamed_addr constant [14 x i8] c"opal_object_t\00", align 1
@opal_object_t_class = local_unnamed_addr global %struct.opal_class_t { ptr @.str, ptr null, ptr null, ptr null, i32 1, i32 0, ptr null, ptr null, i64 16 }, align 8
@opal_class_init_epoch = local_unnamed_addr global i32 1, align 4
@class_lock = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@classes = internal unnamed_addr global ptr null, align 8
@num_classes = internal unnamed_addr global i32 0, align 4
@max_classes = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"class malloc failed\00", align 1

; Function Attrs: nounwind uwtable
define void @opal_class_initialize(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = cmpxchg volatile ptr @class_lock, i32 0, i32 1 acquire monotonic, align 4
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %opal_atomic_lock.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i.backedge
  %i.g = load volatile i32, ptr @class_lock, align 4, !tbaa !8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.preheader.i.backedge, label %bb.c

.preheader.i.backedge:                            ; preds = %.preheader.i, %bb.c
  br label %.preheader.i, !llvm.loop !16

bb.c:                                             ; preds = %.preheader.i
  %i.i = cmpxchg volatile ptr @class_lock, i32 0, i32 1 acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %opal_atomic_lock.exit, label %.preheader.i.backedge

opal_atomic_lock.exit:                            ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.l = load i32, ptr %i.b, align 8, !tbaa !9
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %opal_atomic_lock.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.o = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.d ]  ; 4 uses
  %.04454 = phi ptr [ %0, %.lr.ph ], [ %i.x, %bb.d ] ; 2 uses
  %i.p = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.u, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %.04454, i64 16
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp ne <2 x ptr> %i.r, splat (ptr null)
  %i.t = zext <2 x i1> %i.s to <2 x i32>
  %i.u = add nuw nsw <2 x i32> %i.p, %i.t         ; 3 uses
  %i.v = add nuw i32 %i.o, 1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04454, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !20

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.n, align 4, !tbaa !21
  %i.y = extractelement <2 x i32> %i.u, i64 0     ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 2
  %i.aa = extractelement <2 x i32> %i.u, i64 1
  %i.ab = add nuw nsw i32 %i.z, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #9 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !22
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @perror(ptr noundef nonnull @.str.1) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !23
  store ptr null, ptr %i.ai, align 8, !tbaa !18
  %i.al = add i32 %i.o, 1                         ; 2 uses
  %i.am = icmp eq i32 %i.o, 0
  br i1 %i.am, label %.lr.ph63.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i32 %i.al, -2
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.n, %.new
  %.04060 = phi ptr [ %i.aj, %.new ], [ %.141.1, %bb.n ] ; 3 uses
  %.04259 = phi ptr [ %i.ai, %.new ], [ %.143.1, %bb.n ] ; 2 uses
  %.14558 = phi ptr [ %0, %.new ], [ %i.bc, %bb.n ] ; 3 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %bb.n ]
  %i.an = getelementptr inbounds nuw i8, ptr %.14558, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %.not49 = icmp eq ptr %i.ao, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph63
  %i.ap = getelementptr inbounds i8, ptr %.04259, i64 -8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph63
  %.143 = phi ptr [ %i.ap, %bb.h ], [ %.04259, %.lr.ph63 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.14558, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25 ; 2 uses
  %.not50 = icmp eq ptr %i.ar, null
  br i1 %.not50, label %.lr.ph63.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ar, ptr %.04060, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.04060, i64 8
  br label %.lr.ph63.1

.lr.ph63.1:                                       ; preds = %bb.j, %bb.i
  %.141 = phi ptr [ %i.as, %bb.j ], [ %.04060, %bb.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.14558, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %.not49.1 = icmp eq ptr %i.aw, null
  br i1 %.not49.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph63.1
  %i.ax = getelementptr inbounds i8, ptr %.143, i64 -8 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph63.1
  %.143.1 = phi ptr [ %i.ax, %bb.k ], [ %.143, %.lr.ph63.1 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %.not50.1 = icmp eq ptr %i.az, null
  br i1 %.not50.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.az, ptr %.141, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.141, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141.1 = phi ptr [ %i.ba, %bb.m ], [ %.141, %bb.l ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge64.unr-lcssa, label %.lr.ph63, !llvm.loop !26

._crit_edge64.unr-lcssa:                          ; preds = %bb.n
  %i.bd = and i32 %i.o, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph63.epil.preheader, label %._crit_edge64

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.unr-lcssa, %bb.g
  %.04060.epil.init = phi ptr [ %i.aj, %bb.g ], [ %.141.1, %._crit_edge64.unr-lcssa ] ; 3 uses
  %.04259.epil.init = phi ptr [ %i.ai, %bb.g ], [ %.143.1, %._crit_edge64.unr-lcssa ]
  %.14558.epil.init = phi ptr [ %0, %bb.g ], [ %i.bc, %._crit_edge64.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.be = getelementptr inbounds nuw i8, ptr %.14558.epil.init, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %.not49.epil = icmp eq ptr %i.bf, null
  br i1 %.not49.epil, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph63.epil.preheader
  %i.bg = getelementptr inbounds i8, ptr %.04259.epil.init, i64 -8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph63.epil.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %.14558.epil.init, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 2 uses
  %.not50.epil = icmp eq ptr %i.bi, null
  br i1 %.not50.epil, label %._crit_edge64, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bi, ptr %.04060.epil.init, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.04060.epil.init, i64 8
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %bb.p, %bb.q, %._crit_edge64.unr-lcssa
  %.141.lcssa = phi ptr [ %.141.1, %._crit_edge64.unr-lcssa ], [ %i.bj, %bb.q ], [ %.04060.epil.init, %bb.p ]
  store ptr null, ptr %.141.lcssa, align 8, !tbaa !18
  %1 = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  store i32 %1, ptr %i.b, align 8, !tbaa !9
  %i.bk = load i32, ptr @num_classes, align 4, !tbaa !8 ; 2 uses
  %i.bl = load i32, ptr @max_classes, align 4, !tbaa !8 ; 2 uses
  %.not.i = icmp slt i32 %i.bk, %i.bl
  %.pre.i = load ptr, ptr @classes, align 8, !tbaa !27 ; 2 uses
  br i1 %.not.i, label %save_class.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge64
  %i.bm = add nsw i32 %i.bl, 10                   ; 2 uses
  store i32 %i.bm, ptr @max_classes, align 4, !tbaa !8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 3
  %i.bp = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.bo) #12 ; 5 uses
  store ptr %i.bp, ptr @classes, align 8, !tbaa !27
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @perror(ptr noundef nonnull @.str.2) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

bb.t:                                             ; preds = %bb.r
  %2 = load i32, ptr @num_classes, align 4, !tbaa !8 ; 5 uses
  %3 = load i32, ptr @max_classes, align 4, !tbaa !8 ; 2 uses
  %i.br = icmp slt i32 %2, %3
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %save_class.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.bs = sext i32 %2 to i64
  %i.bt = shl nsw i64 %i.bs, 3
  %scevgep.i.i = getelementptr i8, ptr %i.bp, i64 %i.bt
  %4 = xor i32 %2, -1
  %i.bu = add i32 %3, %4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bx, i1 false), !tbaa !18
  br label %save_class.exit

save_class.exit:                                  ; preds = %._crit_edge64, %bb.t, %.lr.ph.preheader.i.i
  %5 = phi i32 [ %2, %.lr.ph.preheader.i.i ], [ %2, %bb.t ], [ %i.bk, %._crit_edge64 ] ; 2 uses
  %i.by = phi ptr [ %i.bp, %.lr.ph.preheader.i.i ], [ %i.bp, %bb.t ], [ %.pre.i, %._crit_edge64 ]
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ca = sext i32 %5 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !18
  %i.cc = add nsw i32 %5, 1
  store i32 %i.cc, ptr @num_classes, align 4, !tbaa !8
  br label %.sink.split

.sink.split:                                      ; preds = %opal_atomic_lock.exit, %save_class.exit
  fence release
  store volatile i32 0, ptr @class_lock, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @opal_class_finalize() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp eq i32 %i.a, 2147483647
  %i.c = add nsw i32 %i.a, 1
  %storemerge = select i1 %i.b, i32 1, i32 %i.c
  store i32 %storemerge, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %i.d = load ptr, ptr @classes, align 8, !tbaa !27 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i32, ptr @num_classes, align 4, !tbaa !8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.h) #13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.c, %.preheader
  tail call void @free(ptr noundef nonnull %i.d) #13
  store ptr null, ptr @classes, align 8, !tbaa !27
  store i32 0, ptr @num_classes, align 4, !tbaa !8
  store i32 0, ptr @max_classes, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind }

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
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 32}
!10 = !{!"opal_class_t", !11, i64 0, !13, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 48, !15, i64 56}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS12opal_class_t", !12, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!12, !12, i64 0}
!19 = !{!10, !13, i64 8}
!20 = distinct !{!20, !17}
!21 = !{!10, !5, i64 36}
!22 = !{!10, !14, i64 40}
!23 = !{!10, !14, i64 48}
!24 = !{!10, !12, i64 16}
!25 = !{!10, !12, i64 24}
!26 = distinct !{!26, !17}
!27 = !{!14, !14, i64 0}
!28 = distinct !{!28, !17}
end_hunk_0
