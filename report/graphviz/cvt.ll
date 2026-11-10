Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/cvt?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Pobsopen:bb.a

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.079.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.079.epil = phi i64 [ %.079.epil.init, %.lr.ph.epil.preheader ], [ %i.ae, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.ae = add i64 %i.ad, %.079.epil               ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa114 = phi i64 [ %i.z, %._crit_edge.unr-lcssa ], [ %i.ae, %.lr.ph.epil ] ; 2 uses
  %i.af = icmp ugt i64 %.lcssa114, 2147483647
  br i1 %i.af, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.g

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.0.lcssa111 = phi i64 [ %.lcssa114, %._crit_edge ], [ 0, %.preheader ] ; 5 uses
  %i.ag = tail call noalias ptr @calloc(i64 noundef %.0.lcssa111, i64 noundef 16) #13 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = sext i32 %1 to i64
  %i.aj = add nsw i64 %i.ai, 1
  %i.ak = tail call noalias ptr @calloc(i64 noundef %i.aj, i64 noundef 4) #13 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !19
  %i.am = tail call noalias ptr @calloc(i64 noundef %.0.lcssa111, i64 noundef 4) #13 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !20
  %i.ao = tail call noalias ptr @calloc(i64 noundef %.0.lcssa111, i64 noundef 4) #13 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !21
  %i.aq = trunc nuw nsw i64 %.0.lcssa111 to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !22
  store i32 %1, ptr %i.a, align 8, !tbaa !35
  %i.as = icmp eq ptr %i.ak, null
  br i1 %i.as, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %.not76 = icmp eq i64 %.0.lcssa111, 0
  br i1 %.not76, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp eq ptr %i.ag, null
  %i.au = icmp eq ptr %i.am, null
  %or.cond = or i1 %i.at, %i.au
  %i.av = icmp eq ptr %i.ao, null
  %or.cond77 = or i1 %or.cond, %i.av
  br i1 %or.cond77, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %._crit_edge.thread
  tail call void @free(ptr noundef %i.ao) #12
  tail call void @free(ptr noundef %i.am) #12
  tail call void @free(ptr noundef %i.ak) #12
  tail call void @free(ptr noundef %i.ag) #12
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  br i1 %i.b, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %wide.trip.count106 = zext nneg i32 %1 to i64
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %._crit_edge84
  %indvars.iv103 = phi i64 [ 0, %.lr.ph89.preheader ], [ %indvars.iv.next104, %._crit_edge84 ] ; 3 uses
  %.06887 = phi i32 [ 0, %.lr.ph89.preheader ], [ %.1.lcssa, %._crit_edge84 ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv103
  store i32 %.06887, ptr %i.aw, align 4, !tbaa !23
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !12
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = add i32 %.06887, -1
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %i.be = icmp sgt i32 %i.bb, 0
  %i.bf = sext i32 %.06887 to i64                 ; 2 uses
  br i1 %i.be, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %.lr.ph89, %.lr.ph83
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph83 ], [ 0, %.lr.ph89 ] ; 2 uses
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %.lr.ph83 ], [ %i.bf, %.lr.ph89 ] ; 5 uses
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %indvars.iv96
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !27
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv96
  %i.bk = trunc nsw i64 %indvars.iv.next97 to i32 ; 2 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !23
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv96
  %i.bm = trunc i64 %indvars.iv96 to i32
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !23
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.bo = load i64, ptr %i.az, align 8, !tbaa !12
  %i.bp = shl i64 %i.bo, 32
  %i.bq = ashr exact i64 %i.bp, 32
  %i.br = icmp slt i64 %indvars.iv.next99, %i.bq
  br i1 %i.br, label %.lr.ph83, label %._crit_edge84, !llvm.loop !30

._crit_edge84:                                    ; preds = %.lr.ph83, %.lr.ph89
  %.1.lcssa = phi i32 [ %.06887, %.lr.ph89 ], [ %i.bk, %.lr.ph83 ] ; 2 uses
  %i.bs = sext i32 %i.bd to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bs
  store i32 %.06887, ptr %i.bt, align 4, !tbaa !23
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bf
  store i32 %i.bd, ptr %i.bu, align 4, !tbaa !23
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge90.loopexit, label %.lr.ph89, !llvm.loop !31

._crit_edge90.loopexit:                           ; preds = %._crit_edge84
  %i.bv = zext nneg i32 %1 to i64
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %bb.f, %._crit_edge90.loopexit
  %.171.lcssa = phi i64 [ %i.bv, %._crit_edge90.loopexit ], [ 0, %bb.f ]
  %.068.lcssa = phi i32 [ %.1.lcssa, %._crit_edge90.loopexit ], [ 0, %bb.f ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.171.lcssa
  store i32 %.068.lcssa, ptr %i.bw, align 4, !tbaa !23
  tail call void @visibility(ptr noundef nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %._crit_edge90, %bb.a
  %.173 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ], [ %i.a, %._crit_edge90 ]
  ret ptr %.173
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @visibility(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Pobsclose(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.k) #12
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !36
  tail call void @free(ptr noundef %i.l) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pobspath(ptr noundef %0, double %1, double %2, i32 noundef %3, double %4, double %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ptVis(ptr noundef %0, i32 noundef %3, double %1, double %2) #12 ; 2 uses
  %i.b = tail call ptr @ptVis(ptr noundef %0, i32 noundef %6, double %4, double %5) #12 ; 2 uses
  %i.c = tail call ptr @makePath(double %1, double %2, i32 noundef %3, ptr noundef %i.a, double %4, double %5, i32 noundef %6, ptr noundef %i.b, ptr noundef %0) #12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22   ; 3 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.a, %bb.a
  %.04651 = phi i32 [ %i.e, %bb.a ], [ %.046, %.lr.ph.a ]
  %.04550 = phi i64 [ 1, %bb.a ], [ %8, %.lr.ph.a ] ; 3 uses
  %i.g = sext i32 %.04651 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  %.046 = load i32, ptr %i.h, align 4, !tbaa !23  ; 2 uses
  %.not = icmp eq i32 %.046, %i.f
  %8 = add i64 %.04550, 1                         ; 7 uses
  br i1 %.not, label %._crit_edge.a, label %.lr.ph.a, !llvm.loop !39

._crit_edge.a:                                    ; preds = %.lr.ph.a
  %mul.ov.i = icmp ugt i64 %8, 1152921504606846975
  br i1 %mul.ov.i, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %._crit_edge.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str, i64 noundef %8, i64 noundef 16) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

._crit_edge.thread:                               ; preds = %._crit_edge.a
  %i.k = icmp ne i64 %8, 0
  %i.l = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 16) #13 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %or.cond3.i = and i1 %i.k, %i.m
  br i1 %or.cond3.i, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %._crit_edge.thread
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.o = shl nuw i64 %8, 4
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.1, i64 noundef %i.o) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %._crit_edge.thread
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.04550 ; 2 uses
  store double %4, ptr %i.q, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store double %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %9 = sext i32 %i.e to i64
  %.1.in49 = getelementptr inbounds [4 x i8], ptr %i.c, i64 %9
  %.053.a = add nsw i64 %.04550, -1               ; 2 uses
  %.154.a = load i32, ptr %.1.in49, align 4, !tbaa !23 ; 2 uses
  %.not4755 = icmp eq i32 %.154.a, %i.f
  br i1 %.not4755, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %gv_calloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph58, %bb.d
  %.157 = phi i32 [ %.154.a, %.lr.ph58 ], [ %.1, %bb.d ]
  %.056 = phi i64 [ %.053.a, %.lr.ph58 ], [ %.0, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.056
  %i.u = sext i32 %.157 to i64                    ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !27
  %i.w = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.u
  %.0 = add i64 %.056, -1                         ; 2 uses
  %.1 = load i32, ptr %i.w, align 4, !tbaa !23    ; 2 uses
  %.not47 = icmp eq i32 %.1, %i.f
  br i1 %.not47, label %._crit_edge59, label %bb.d, !llvm.loop !40

._crit_edge59:                                    ; preds = %bb.d, %gv_calloc.exit
  %.0.lcssa = phi i64 [ %.053.a, %gv_calloc.exit ], [ %.0, %bb.d ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0.lcssa ; 2 uses
  store double %1, ptr %i.x, align 8, !tbaa !26
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %2, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.a) #12
  tail call void @free(ptr noundef %i.b) #12
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %8, ptr %i.y, align 8, !tbaa !12
  store ptr %i.l, ptr %7, align 8, !tbaa !24
  tail call void @free(ptr noundef nonnull %i.c) #12
  ret void
}

declare ptr @ptVis(ptr noundef, i32 noundef, double, double) local_unnamed_addr #5

declare ptr @makePath(double, double, i32 noundef, ptr noundef, double, double, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS5Pxy_t", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"Ppoly_t", !9, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 8}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"p1 int", !8, i64 0}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 double", !15, i64 0}
!17 = !{!"vconfig_s", !5, i64 0, !5, i64 4, !9, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !16, i64 40}
!18 = !{!17, !9, i64 8}
!19 = !{!17, !14, i64 16}
!20 = !{!17, !14, i64 24}
!21 = !{!17, !14, i64 32}
!22 = !{!17, !5, i64 4}
!23 = !{!5, !5, i64 0}
!24 = !{!11, !9, i64 0}
!25 = !{!"double", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !34}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = !{!"p1 _ZTS7Ppoly_t", !8, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!17, !5, i64 0}
!36 = !{!17, !16, i64 40}
!37 = !{!"p1 double", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!42 = !{!41, !41, i64 0}
end_hunk_0
