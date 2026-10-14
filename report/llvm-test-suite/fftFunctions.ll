Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftFunctions?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@AllocateFukusosuuMtx:bb.a
  store ptr null, ptr %i.p, align 8, !tbaa !16
  ret ptr %i.c
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocateFukusosuuCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #23 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ErrorExit(ptr noundef nonnull @.str.6) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.e = tail call ptr @AllocateFukusosuuMtx(i32 noundef %1, i32 noundef %2)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.e, ptr %i.f, align 8, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.g = sext i32 %0 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.g
  store ptr null, ptr %i.h, align 8, !tbaa !39
  ret ptr %i.c
}

declare void @ErrorExit(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeFukusosuuVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFukusosuuMtx(ptr noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, -2147483648) i32 @getKouho(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %.neg = sdiv i32 %3, -2                         ; 3 uses
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge28

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count41 = zext nneg i32 %1 to i64
  %wide.trip.count36 = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count36, 1
  %i.c = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count36, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod48 = trunc i32 %3 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv38 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next39, %._crit_edge.us ] ; 2 uses
  %.027.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us.lcssa, %._crit_edge.us ] ; 2 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv33 = phi i64 [ %indvars.iv.next34.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.125.us = phi i32 [ %.2.us.1, %.preheader.us.new ], [ %.027.us, %.preheader.us ]
  %.01824.us = phi double [ %.119.us.1, %.preheader.us.new ], [ f0xC0C387F333333333, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv33
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.f = fcmp ogt double %i.e, %.01824.us         ; 2 uses
  %.119.us = select i1 %i.f, double %i.e, double %.01824.us ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv33 to i32
  %.2.us = select i1 %i.f, i32 %i.g, i32 %.125.us
  %indvars.iv.next34 = or disjoint i64 %indvars.iv33, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next34
  %i.i = load double, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.j = fcmp ogt double %i.i, %.119.us           ; 2 uses
  %.119.us.1 = select i1 %i.j, double %i.i, double %.119.us ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv.next34 to i32
  %.2.us.1 = select i1 %i.j, i32 %i.k, i32 %.2.us ; 3 uses
  %indvars.iv.next34.1 = add nuw nsw i64 %indvars.iv33, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !41

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv33.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next34.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.125.us.epil.init = phi i32 [ %.027.us, %.preheader.us ], [ %.2.us.1, %._crit_edge.us.unr-lcssa ]
  %.01824.us.epil.init = phi double [ f0xC0C387F333333333, %.preheader.us ], [ %.119.us.1, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv33.epil.init
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = fcmp ogt double %i.m, %.01824.us.epil.init
  %i.o = trunc nuw nsw i64 %indvars.iv33.epil.init to i32
  %.2.us.epil = select i1 %i.n, i32 %i.o, i32 %.125.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.2.us.lcssa = phi i32 [ %.2.us.1, %._crit_edge.us.unr-lcssa ], [ %.2.us.epil, %.epil.preheader ] ; 3 uses
  %i.p = zext nneg i32 %.2.us.lcssa to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  store double f0xC0C387F333333333, ptr %i.q, align 8, !tbaa !12
  %i.r = add i32 %.2.us.lcssa, %.neg
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv38
  store i32 %i.r, ptr %i.s, align 4, !tbaa !7
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge28, label %.preheader.us, !llvm.loop !42

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  store double f0xC0C387F333333333, ptr %2, align 8, !tbaa !12
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph.split
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge28, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.lr.ph.split ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %.neg, ptr %i.w, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge28, label %.preheader, !llvm.loop !44

._crit_edge28:                                    ; preds = %.preheader, %._crit_edge.us, %middle.block, %bb.a
  %.020.lcssa = phi i32 [ 0, %bb.a ], [ %1, %middle.block ], [ %1, %._crit_edge.us ], [ %1, %.preheader ]
  ret i32 %.020.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @zurasu2(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #13 {
bb.a:
  %7 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %8 = ptrtoaddr ptr %6 to i64                    ; 2 uses
  %9 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %10 = ptrtoaddr ptr %5 to i64                   ; 2 uses
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %.preheader32, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph, label %.preheader33

.lr.ph:                                           ; preds = %.preheader35
  %i.c = sext i32 %0 to i64
  %i.d = sub nsw i64 0, %i.c                      ; 7 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  %i.e = sub i64 %9, %10
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x ptr>, ptr %i.f, align 8, !tbaa !21
  %wide.load66 = load <2 x ptr>, ptr %i.g, align 8, !tbaa !21
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %wide.load, i64 %i.d
  %wide.gep67 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load66, i64 %i.d
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x ptr> %wide.gep, ptr %i.h, align 8, !tbaa !21
  store <2 x ptr> %wide.gep67, ptr %i.i, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader33, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.prol
  store ptr %i.m, ptr %i.n, align 8, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !46

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.o = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.preheader33, label %scalar.ph

.preheader32:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph40.preheader, label %.preheader

.lr.ph40.preheader:                               ; preds = %.preheader32
  %wide.trip.count53 = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check85 = icmp ult i32 %1, 8
  %i.q = sub i64 %9, %10
  %diff.check83 = icmp ugt i64 %i.q, -32
  %or.cond112 = or i1 %min.iters.check85, %diff.check83
  br i1 %or.cond112, label %.lr.ph40.preheader115, label %vector.ph86

vector.ph86:                                      ; preds = %.lr.ph40.preheader
  %n.vec87 = and i64 %wide.trip.count53, 2147483644 ; 3 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index89 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load90 = load <2 x ptr>, ptr %i.r, align 8, !tbaa !21
  %wide.load91 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index89 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load90, ptr %i.t, align 8, !tbaa !21
  store <2 x ptr> %wide.load91, ptr %i.u, align 8, !tbaa !21
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.v, label %middle.block93, label %vector.body88, !llvm.loop !47

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count53
  br i1 %cmp.n94, label %.preheader, label %.lr.ph40.preheader115

.lr.ph40.preheader115:                            ; preds = %.lr.ph40.preheader, %middle.block93
  %indvars.iv50.ph = phi i64 [ 0, %.lr.ph40.preheader ], [ %n.vec87, %middle.block93 ] ; 3 uses
  %xtraiter121 = and i64 %wide.trip.count53, 3    ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader115, %.lr.ph40.prol
  %indvars.iv50.prol = phi i64 [ %indvars.iv.next51.prol, %.lr.ph40.prol ], [ %indvars.iv50.ph, %.lr.ph40.preheader115 ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.lr.ph40.prol ], [ 0, %.lr.ph40.preheader115 ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv50.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv50.prol
  store ptr %i.x, ptr %i.y, align 8, !tbaa !21
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.prol, 1 ; 2 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol, !llvm.loop !48

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader115
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph40.preheader115 ], [ %indvars.iv.next51.prol, %.lr.ph40.prol ]
  %i.z = sub nsw i64 %indvars.iv50.ph, %wide.trip.count53
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %.preheader, label %.lr.ph40

.preheader:                                       ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %middle.block93, %.preheader32
  %i.ab = icmp sgt i32 %2, 0
  br i1 %i.ab, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %.preheader
  %i.ac = zext nneg i32 %0 to i64                 ; 7 uses
  %wide.trip.count58 = zext nneg i32 %2 to i64    ; 5 uses
  %min.iters.check99 = icmp ult i32 %2, 8
  %i.ad = sub i64 %7, %8
  %diff.check97 = icmp ugt i64 %i.ad, -32
  %or.cond113 = or i1 %min.iters.check99, %diff.check97
  br i1 %or.cond113, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph42
  %n.vec101 = and i64 %wide.trip.count58, 2147483644 ; 3 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next108, %vector.body102 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index103 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load104 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !21
  %wide.load105 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !21
  %wide.gep106 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load104, i64 %i.ac
  %wide.gep107 = getelementptr inbounds nuw i8, <2 x ptr> %wide.load105, i64 %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index103 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.gep106, ptr %i.ag, align 8, !tbaa !21
  store <2 x ptr> %wide.gep107, ptr %i.ah, align 8, !tbaa !21
  %index.next108 = add nuw i64 %index103, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.ai, label %middle.block109, label %vector.body102, !llvm.loop !49

middle.block109:                                  ; preds = %vector.body102
  %cmp.n110 = icmp eq i64 %n.vec101, %wide.trip.count58
  br i1 %cmp.n110, label %.loopexit, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %.lr.ph42, %middle.block109
  %indvars.iv55.ph = phi i64 [ 0, %.lr.ph42 ], [ %n.vec101, %middle.block109 ] ; 3 uses
  %xtraiter124 = and i64 %wide.trip.count58, 3    ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %scalar.ph98.prol.loopexit, label %scalar.ph98.prol

scalar.ph98.prol:                                 ; preds = %scalar.ph98.preheader, %scalar.ph98.prol
  %indvars.iv55.prol = phi i64 [ %indvars.iv.next56.prol, %scalar.ph98.prol ], [ %indvars.iv55.ph, %scalar.ph98.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %scalar.ph98.prol ], [ 0, %scalar.ph98.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv55.prol
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv55.prol
  store ptr %i.al, ptr %i.am, align 8, !tbaa !21
  %indvars.iv.next56.prol = add nuw nsw i64 %indvars.iv55.prol, 1 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %scalar.ph98.prol.loopexit, label %scalar.ph98.prol, !llvm.loop !50

scalar.ph98.prol.loopexit:                        ; preds = %scalar.ph98.prol, %scalar.ph98.preheader
  %indvars.iv55.unr = phi i64 [ %indvars.iv55.ph, %scalar.ph98.preheader ], [ %indvars.iv.next56.prol, %scalar.ph98.prol ]
  %i.an = sub nsw i64 %indvars.iv55.ph, %wide.trip.count58
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %.loopexit, label %scalar.ph98

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.3, %.lr.ph40 ], [ %indvars.iv50.unr, %.lr.ph40.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv50
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv50
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !21
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next51
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next51
  store ptr %i.at, ptr %i.au, align 8, !tbaa !21
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next51.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next51.1
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  %indvars.iv.next51.2 = add nuw nsw i64 %indvars.iv50, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next51.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next51.2
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !21
  %indvars.iv.next51.3 = add nuw nsw i64 %indvars.iv50, 4 ; 2 uses
  %exitcond54.not.3 = icmp eq i64 %indvars.iv.next51.3, %wide.trip.count53
  br i1 %exitcond54.not.3, label %.preheader, label %.lr.ph40, !llvm.loop !51

scalar.ph98:                                      ; preds = %scalar.ph98.prol.loopexit, %scalar.ph98
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.3, %scalar.ph98 ], [ %indvars.iv55.unr, %scalar.ph98.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv55
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ac
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv55
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !21
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ac
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next56
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !21
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next56.1
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ac
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next56.1
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !21
  %indvars.iv.next56.2 = add nuw nsw i64 %indvars.iv55, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next56.2
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ac
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next56.2
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !21
  %indvars.iv.next56.3 = add nuw nsw i64 %indvars.iv55, 4 ; 2 uses
  %exitcond59.not.3 = icmp eq i64 %indvars.iv.next56.3, %wide.trip.count58
  br i1 %exitcond59.not.3, label %.loopexit, label %scalar.ph98, !llvm.loop !52

.preheader33:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader35
  %i.br = icmp sgt i32 %2, 0
  br i1 %i.br, label %.lr.ph38.preheader, label %.loopexit

.lr.ph38.preheader:                               ; preds = %.preheader33
  %wide.trip.count48 = zext nneg i32 %2 to i64    ; 5 uses
  %min.iters.check71 = icmp ult i32 %2, 8
  %i.bs = sub i64 %7, %8
  %diff.check69 = icmp ugt i64 %i.bs, -32
  %or.cond114 = or i1 %min.iters.check71, %diff.check69
  br i1 %or.cond114, label %.lr.ph38.preheader116, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph38.preheader
  %n.vec73 = and i64 %wide.trip.count48, 2147483644 ; 3 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index75 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load76 = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !21
  %wide.load77 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index75 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x ptr> %wide.load76, ptr %i.bv, align 8, !tbaa !21
  store <2 x ptr> %wide.load77, ptr %i.bw, align 8, !tbaa !21
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.bx, label %middle.block79, label %vector.body74, !llvm.loop !53

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %n.vec73, %wide.trip.count48
  br i1 %cmp.n80, label %.loopexit, label %.lr.ph38.preheader116

.lr.ph38.preheader116:                            ; preds = %.lr.ph38.preheader, %middle.block79
  %indvars.iv45.ph = phi i64 [ 0, %.lr.ph38.preheader ], [ %n.vec73, %middle.block79 ] ; 3 uses
  %xtraiter118 = and i64 %wide.trip.count48, 3    ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader116, %.lr.ph38.prol
  %indvars.iv45.prol = phi i64 [ %indvars.iv.next46.prol, %.lr.ph38.prol ], [ %indvars.iv45.ph, %.lr.ph38.preheader116 ] ; 3 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph38.prol ], [ 0, %.lr.ph38.preheader116 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv45.prol
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv45.prol
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !21
  %indvars.iv.next46.prol = add nuw nsw i64 %indvars.iv45.prol, 1 ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !54

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader116
  %indvars.iv45.unr = phi i64 [ %indvars.iv45.ph, %.lr.ph38.preheader116 ], [ %indvars.iv.next46.prol, %.lr.ph38.prol ]
  %i.cb = sub nsw i64 %indvars.iv45.ph, %wide.trip.count48
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit, label %.lr.ph38

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.d
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.d
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.d
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.1
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.d
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.2
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader33, label %scalar.ph, !llvm.loop !55

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %indvars.iv45 = phi i64 [ %indvars.iv.next46.3, %.lr.ph38 ], [ %indvars.iv45.unr, %.lr.ph38.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv45
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv45
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !21
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next46
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next46
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !21
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next46.1
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next46.1
  store ptr %i.da, ptr %i.db, align 8, !tbaa !21
  %indvars.iv.next46.2 = add nuw nsw i64 %indvars.iv45, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next46.2
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next46.2
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !21
  %indvars.iv.next46.3 = add nuw nsw i64 %indvars.iv45, 4 ; 2 uses
  %exitcond49.not.3 = icmp eq i64 %indvars.iv.next46.3, %wide.trip.count48
  br i1 %exitcond49.not.3, label %.loopexit, label %.lr.ph38, !llvm.loop !56

.loopexit:                                        ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %scalar.ph98.prol.loopexit, %scalar.ph98, %middle.block79, %middle.block109, %.preheader33, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zurasu(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.a, label %.preheader32, label %.preheader35

.preheader35:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph, label %.preheader33

.lr.ph:                                           ; preds = %.preheader35
  %i.c = sext i32 %0 to i64
  %i.d = sub nsw i64 0, %i.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

.preheader32:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph40.preheader, label %.preheader

.lr.ph40.preheader:                               ; preds = %.preheader32
  %wide.trip.count53 = zext nneg i32 %1 to i64
  br label %.lr.ph40

.preheader:                                       ; preds = %.lr.ph40, %.preheader32
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %.preheader
  %i.f = zext nneg i32 %0 to i64
  %wide.trip.count58 = zext nneg i32 %2 to i64
  br label %bb.b

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %indvars.iv50 = phi i64 [ 0, %.lr.ph40.preheader ], [ %indvars.iv.next51, %.lr.ph40 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv50
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv50
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.j) #25 ; 0 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %.preheader, label %.lr.ph40, !llvm.loop !57

bb.b:                                             ; preds = %.lr.ph42, %bb.b
  %indvars.iv55 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next56, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv55
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv55
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.p) #25 ; 0 uses
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit, label %bb.b, !llvm.loop !58

.preheader33:                                     ; preds = %bb.c, %.preheader35
  %i.r = icmp sgt i32 %2, 0
  br i1 %i.r, label %.lr.ph38.preheader, label %.loopexit

.lr.ph38.preheader:                               ; preds = %.preheader33
  %wide.trip.count48 = zext nneg i32 %2 to i64
  br label %.lr.ph38

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.w) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader33, label %bb.c, !llvm.loop !59

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv45 = phi i64 [ 0, %.lr.ph38.preheader ], [ %indvars.iv.next46, %.lr.ph38 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv45
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv45
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.ab) #25 ; 0 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.loopexit, label %.lr.ph38, !llvm.loop !60

.loopexit:                                        ; preds = %.lr.ph38, %bb.b, %.preheader33, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #15
end_hunk_0
