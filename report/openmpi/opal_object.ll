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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
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
  br label %.preheader.i, !llvm.loop !14

bb.c:                                             ; preds = %.preheader.i
  %i.i = cmpxchg volatile ptr @class_lock, i32 0, i32 1 acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %opal_atomic_lock.exit, label %.preheader.i.backedge

opal_atomic_lock.exit:                            ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8 ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !21
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %opal_atomic_lock.exit
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.d ]  ; 4 uses
  %.04454 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %i.o = phi <2 x i32> [ zeroinitializer, %.lr.ph ], [ %i.t, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.04454, i64 16
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !12
  %i.r = icmp ne <2 x ptr> %i.q, splat (ptr null)
  %i.s = zext <2 x i1> %i.r to <2 x i32>
  %i.t = add nuw nsw <2 x i32> %i.o, %i.s         ; 3 uses
  %i.u = add nuw i32 %i.n, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04454, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  store i32 %i.u, ptr %1, align 4, !tbaa !23
  %i.x = extractelement <2 x i32> %i.t, i64 0     ; 2 uses
  %i.y = add nuw nsw i32 %i.x, 2
  %i.z = extractelement <2 x i32> %i.t, i64 1
  %i.aa = add nuw nsw i32 %i.y, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #9 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @perror(ptr noundef nonnull @.str.1) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = zext nneg i32 %i.x to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !25
  store ptr null, ptr %i.ah, align 8, !tbaa !12
  %i.ak = add i32 %i.n, 1                         ; 2 uses
  %i.al = icmp eq i32 %i.n, 0
  br i1 %i.al, label %.lr.ph63.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i32 %i.ak, -2
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.n, %.new
  %.04060 = phi ptr [ %i.ai, %.new ], [ %.141.1, %bb.n ] ; 3 uses
  %.04259 = phi ptr [ %i.ah, %.new ], [ %.143.1, %bb.n ] ; 2 uses
  %.14558 = phi ptr [ %0, %.new ], [ %i.bb, %bb.n ] ; 3 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %.14558, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %.not49 = icmp eq ptr %i.an, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph63
  %i.ao = getelementptr inbounds i8, ptr %.04259, i64 -8 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph63
  %.143 = phi ptr [ %i.ao, %bb.h ], [ %.04259, %.lr.ph63 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.14558, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %.not50 = icmp eq ptr %i.aq, null
  br i1 %.not50, label %.lr.ph63.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.aq, ptr %.04060, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.04060, i64 8
  br label %.lr.ph63.1

.lr.ph63.1:                                       ; preds = %bb.j, %bb.i
  %.141 = phi ptr [ %i.ar, %bb.j ], [ %.04060, %bb.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.14558, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %.not49.1 = icmp eq ptr %i.av, null
  br i1 %.not49.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph63.1
  %i.aw = getelementptr inbounds i8, ptr %.143, i64 -8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph63.1
  %.143.1 = phi ptr [ %i.aw, %bb.k ], [ %.143, %.lr.ph63.1 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not50.1 = icmp eq ptr %i.ay, null
  br i1 %.not50.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ay, ptr %.141, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.141, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.141.1 = phi ptr [ %i.az, %bb.m ], [ %.141, %bb.l ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge64.unr-lcssa, label %.lr.ph63, !llvm.loop !16

._crit_edge64.unr-lcssa:                          ; preds = %bb.n
  %i.bc = and i32 %i.n, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bc, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph63.epil.preheader, label %._crit_edge64

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.unr-lcssa, %bb.g
  %.04060.epil.init = phi ptr [ %i.ai, %bb.g ], [ %.141.1, %._crit_edge64.unr-lcssa ] ; 3 uses
  %.04259.epil.init = phi ptr [ %i.ah, %bb.g ], [ %.143.1, %._crit_edge64.unr-lcssa ]
  %.14558.epil.init = phi ptr [ %0, %bb.g ], [ %i.bb, %._crit_edge64.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.bd = getelementptr inbounds nuw i8, ptr %.14558.epil.init, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26 ; 2 uses
  %.not49.epil = icmp eq ptr %i.be, null
  br i1 %.not49.epil, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph63.epil.preheader
  %i.bf = getelementptr inbounds i8, ptr %.04259.epil.init, i64 -8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph63.epil.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %.14558.epil.init, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %.not50.epil = icmp eq ptr %i.bh, null
  br i1 %.not50.epil, label %._crit_edge64, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bh, ptr %.04060.epil.init, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.04060.epil.init, i64 8
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %bb.p, %bb.q, %._crit_edge64.unr-lcssa
  %.141.lcssa = phi ptr [ %.141.1, %._crit_edge64.unr-lcssa ], [ %i.bi, %bb.q ], [ %.04060.epil.init, %bb.p ]
  store ptr null, ptr %.141.lcssa, align 8, !tbaa !12
  store i32 %i.k, ptr %i.b, align 8, !tbaa !21
  %i.bj = load i32, ptr @num_classes, align 4, !tbaa !8 ; 6 uses
  %i.bk = load i32, ptr @max_classes, align 4, !tbaa !8 ; 3 uses
  %.not.i = icmp slt i32 %i.bj, %i.bk
  %.pre.i = load ptr, ptr @classes, align 8, !tbaa !13 ; 2 uses
  br i1 %.not.i, label %save_class.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge64
  %i.bl = add nsw i32 %i.bk, 10                   ; 3 uses
  store i32 %i.bl, ptr @max_classes, align 4, !tbaa !8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.bn) #12 ; 5 uses
  store ptr %i.bo, ptr @classes, align 8, !tbaa !13
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @perror(ptr noundef nonnull @.str.2) #10
  tail call void @exit(i32 noundef -1) #11
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bq = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bq, label %.lr.ph.preheader.i.i, label %save_class.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.br = sext i32 %i.bj to i64
  %i.bs = shl nsw i64 %i.br, 3
  %scevgep.i.i = getelementptr i8, ptr %i.bo, i64 %i.bs
  %reass.sub = sub i32 %i.bk, %i.bj
  %i.bt = add i32 %reass.sub, 9
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.bw, i1 false), !tbaa !12
  br label %save_class.exit

save_class.exit:                                  ; preds = %._crit_edge64, %bb.t, %.lr.ph.preheader.i.i
  %i.bx = phi ptr [ %i.bo, %.lr.ph.preheader.i.i ], [ %i.bo, %bb.t ], [ %.pre.i, %._crit_edge64 ]
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.bz = sext i32 %i.bj to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !12
  %i.cb = add nsw i32 %i.bj, 1
  store i32 %i.cb, ptr @num_classes, align 4, !tbaa !8
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
end_hunk_0
