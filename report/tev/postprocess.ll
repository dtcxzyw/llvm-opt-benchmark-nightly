Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocess?download=true
inline.NumInlined: 10
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@idxCC = external local_unnamed_addr constant [16 x [16 x i8]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @smoothMB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !8
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = shl i32 %i.c, 2
  %i.e = load i32, ptr %0, align 4, !tbaa !8
  %i.f = load i32, ptr %3, align 4, !tbaa !8
  %i.g = sub i32 %i.e, %i.f
  %i.h = add nsw i32 %i.g, %i.d
  %i.i = ashr i32 %i.h, 3                         ; 2 uses
  %i.j = sub nsw i32 %i.a, %i.i
  store i32 %i.j, ptr %2, align 4, !tbaa !8
  %i.k = load i32, ptr %1, align 4, !tbaa !8
  %i.l = add nsw i32 %i.i, %i.k
  store i32 %i.l, ptr %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @smooth(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8      ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = shl i32 %i.c, 2
  %i.e = load i32, ptr %1, align 4, !tbaa !8
  %i.f = load i32, ptr %4, align 4, !tbaa !8
  %i.g = sub i32 %i.e, %i.f
  %i.h = add nsw i32 %i.g, %i.d
  %i.i = ashr i32 %i.h, 3                         ; 2 uses
  %i.j = sub nsw i32 %i.a, %i.i
  store i32 %i.j, ptr %3, align 4, !tbaa !8
  %i.k = load i32, ptr %2, align 4, !tbaa !8
  %i.l = add nsw i32 %i.i, %i.k                   ; 2 uses
  store i32 %i.l, ptr %2, align 4, !tbaa !8
  %i.m = load i32, ptr %1, align 4, !tbaa !8
  %i.n = ashr i32 %i.m, 1
  %i.o = load i32, ptr %0, align 4, !tbaa !8
  %i.p = add nsw i32 %i.o, %i.l
  %i.q = ashr i32 %i.p, 2
  %i.r = add nsw i32 %i.q, %i.n
  store i32 %i.r, ptr %1, align 4, !tbaa !8
  %i.s = load i32, ptr %4, align 4, !tbaa !8
  %i.t = ashr i32 %i.s, 1
  %i.u = load i32, ptr %3, align 4, !tbaa !8
  %i.v = load i32, ptr %5, align 4, !tbaa !8
  %i.w = add nsw i32 %i.v, %i.u
  %i.x = ashr i32 %i.w, 2
  %i.y = add nsw i32 %i.x, %i.t
  store i32 %i.y, ptr %4, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define range(i32 -1, 1) i32 @initPostProc(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, 2
  %i.b = lshr i64 %i.a, 16
  %i.c = mul nuw nsw i64 %i.b, 88
  %i.d = and i64 %i.c, 4294901760
  %.not = icmp eq i64 %i.d, 0
  %i.e = mul i64 %1, 88
  %i.f = add i64 %i.e, 176                        ; 2 uses
  %exitcond.not49 = icmp eq i64 %2, 0
  br i1 %exitcond.not49, label %.loopexit.split, label %.preheader41

.preheader41:                                     ; preds = %bb.a, %.preheader.147
  %.03750 = phi i64 [ %i.t, %.preheader.147 ], [ 0, %bb.a ] ; 2 uses
  %3 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03750 ; 3 uses
  br i1 %.not, label %.preheader41.split.preheader, label %.loopexit.split

.preheader41.split.preheader:                     ; preds = %.preheader41
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 6 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !11
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.preheader41.split.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 3, ptr %i.j, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 3, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.l, ptr noundef nonnull align 4 dereferenceable(88) %i.g, i64 88, i1 false), !tbaa.struct !15
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !11
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.loopexit.split, label %.preheader.147

.preheader.147:                                   ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i8 3, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 3, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.s, ptr noundef nonnull align 4 dereferenceable(88) %i.m, i64 88, i1 false), !tbaa.struct !15
  %i.t = add i64 %.03750, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %2
  br i1 %exitcond.not, label %.loopexit.split, label %.preheader41, !llvm.loop !18

.loopexit.split:                                  ; preds = %.preheader, %.preheader41.split.preheader, %.preheader41, %.preheader.147, %bb.a
  %.039 = phi i32 [ 0, %bb.a ], [ -1, %.preheader ], [ 0, %.preheader.147 ], [ -1, %.preheader41.split.preheader ], [ -1, %.preheader41 ]
  ret i32 %.039
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @termPostProc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.013 = phi i64 [ %i.g, %bb.e ], [ 0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  tail call void @free(ptr noundef nonnull %i.c) #13
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %.not.1 = icmp eq ptr %i.e, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -88
  tail call void @free(ptr noundef nonnull %i.f) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @slideOneMBRow(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %.not56 = icmp eq i64 %1, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  %.not57 = icmp eq i64 %2, 0                     ; 3 uses
  %.not30 = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not, label %.lr.ph37.split.us, label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37
  br i1 %.not30, label %.lr.ph37.split.us.split.us.preheader, label %.lr.ph37.split.us.split

.lr.ph37.split.us.split.us.preheader:             ; preds = %.lr.ph37.split.us
  %xtraiter134 = and i64 %1, 3                    ; 3 uses
  %i.a = icmp ult i64 %1, 4
  br i1 %i.a, label %.lr.ph37.split.us.split.us.epil.preheader, label %.lr.ph37.split.us.split.us.preheader.new

.lr.ph37.split.us.split.us.preheader.new:         ; preds = %.lr.ph37.split.us.split.us.preheader
  %unroll_iter138 = and i64 %1, -4
  br label %.lr.ph37.split.us.split.us

.lr.ph37.split.us.split.us:                       ; preds = %.lr.ph37.split.us.split.us, %.lr.ph37.split.us.split.us.preheader.new
  %.02936.us.us = phi i64 [ 0, %.lr.ph37.split.us.split.us.preheader.new ], [ %i.q, %.lr.ph37.split.us.split.us ] ; 5 uses
  %niter139 = phi i64 [ 0, %.lr.ph37.split.us.split.us.preheader.new ], [ %niter139.next.3, %.lr.ph37.split.us.split.us ]
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us.us ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !11
  %i.d = shufflevector <2 x ptr> %i.c, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !11
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !11
  %i.l = shufflevector <2 x ptr> %i.k, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !11
  %i.p = shufflevector <2 x ptr> %i.o, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = add nuw i64 %.02936.us.us, 4             ; 2 uses
  %niter139.next.3 = add nuw i64 %niter139, 4     ; 2 uses
  %niter139.ncmp.3 = icmp eq i64 %niter139.next.3, %unroll_iter138
  br i1 %niter139.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph37.split.us.split.us, !llvm.loop !20

.lr.ph37.split.us.split:                          ; preds = %.lr.ph37.split.us
  br i1 %.not57, label %.preheader.us.preheader, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.lr.ph37.split.us.split
  %xtraiter122 = and i64 %2, 1
  %i.r = icmp eq i64 %2, 1
  %unroll_iter126 = and i64 %2, -2
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod125 = trunc i64 %2 to i1
  br label %.preheader.us.us

.preheader.us.preheader:                          ; preds = %.lr.ph37.split.us.split
  %xtraiter128 = and i64 %1, 3                    ; 3 uses
  %i.s = icmp ult i64 %1, 4
  br i1 %i.s, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter132 = and i64 %1, -4
  br label %.preheader.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %..loopexit_crit_edge.us.us
  %.02936.us.us55 = phi i64 [ %i.ai, %..loopexit_crit_edge.us.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us.us55 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !11
  %i.w = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !11
  br i1 %i.r, label %.epil.preheader121, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %.134.us.us = phi i64 [ %i.ae, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 3 uses
  %niter127 = phi i64 [ %niter127.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.x, i64 %.134.us.us
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.y, ptr noundef nonnull align 4 dereferenceable(88) %i.z, i64 88, i1 false), !tbaa.struct !15
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %.134.us.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ac, ptr noundef nonnull align 4 dereferenceable(88) %i.ad, i64 88, i1 false), !tbaa.struct !15
  %i.ae = add nuw i64 %.134.us.us, 2              ; 2 uses
  %niter127.next.1 = add nuw i64 %niter127, 2     ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %..loopexit_crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !21

..loopexit_crit_edge.us.us.unr-lcssa:             ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod124.not, label %..loopexit_crit_edge.us.us, label %.epil.preheader121

.epil.preheader121:                               ; preds = %..loopexit_crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %.134.us.us.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %i.ae, %..loopexit_crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.af, i64 %.134.us.us.epil.init
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ag, ptr noundef nonnull align 4 dereferenceable(88) %i.ah, i64 88, i1 false), !tbaa.struct !15
  br label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %..loopexit_crit_edge.us.us.unr-lcssa, %.epil.preheader121
  %i.ai = add nuw i64 %.02936.us.us55, 1          ; 2 uses
  %exitcond72.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond72.not, label %._crit_edge, label %.preheader.us.us, !llvm.loop !20

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %.02936.us = phi i64 [ 0, %.preheader.us.preheader.new ], [ %i.ay, %.preheader.us ] ; 5 uses
  %niter133 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter133.next.3, %.preheader.us ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !11
  %i.al = shufflevector <2 x ptr> %i.ak, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !11
  %i.ap = shufflevector <2 x ptr> %i.ao, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !11
  %i.at = shufflevector <2 x ptr> %i.as, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.02936.us
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !11
  %i.ax = shufflevector <2 x ptr> %i.aw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !11
  %i.ay = add nuw i64 %.02936.us, 4               ; 2 uses
  %niter133.next.3 = add nuw i64 %niter133, 4     ; 2 uses
  %niter133.ncmp.3 = icmp eq i64 %niter133.next.3, %unroll_iter132
  br i1 %niter133.ncmp.3, label %._crit_edge.loopexit91.unr-lcssa, label %.preheader.us, !llvm.loop !20

.lr.ph37.split:                                   ; preds = %.lr.ph37
  br i1 %.not30, label %.lr.ph37.split.split.us, label %.lr.ph37.split.split

.lr.ph37.split.split.us:                          ; preds = %.lr.ph37.split
  br i1 %.not57, label %.preheader31.us.preheader, label %.preheader31.us.us.preheader

.preheader31.us.us.preheader:                     ; preds = %.lr.ph37.split.split.us
  %xtraiter109 = and i64 %2, 1
  %i.az = icmp eq i64 %2, 1
end_hunk_0
