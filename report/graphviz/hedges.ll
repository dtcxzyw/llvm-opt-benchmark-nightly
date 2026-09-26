Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/hedges?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@ELleftbnd:bb.a
  %indvars.iv = phi i64 [ 1, %ELgethash.exit ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.aa = sub nsw i64 %i.y, %indvars.iv           ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  %.not.i54 = icmp slt i64 %i.aa, %i.z
  %or.cond67 = and i1 %i.ab, %.not.i54
  br i1 %or.cond67, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %.not12.i56 = icmp eq ptr %i.ah, inttoptr (i64 -2 to ptr)
  br i1 %.not12.i56, label %bb.h, label %ELgethash.exit57

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.ad, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.f
  %i.ai = add nsw i64 %indvars.iv, %i.y           ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  %.not.i58 = icmp slt i64 %i.ai, %i.z
  %or.cond68 = and i1 %i.aj, %.not.i58
  br i1 %or.cond68, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !16  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %.not12.i60 = icmp eq ptr %i.ap, inttoptr (i64 -2 to ptr)
  br i1 %.not12.i60, label %bb.l, label %ELgethash.exit57

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.al, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e

ELgethash.exit57:                                 ; preds = %bb.k, %bb.g, %bb.c
  %i.aq = phi ptr [ %i.q, %bb.c ], [ %i.ac, %bb.g ], [ %i.ak, %bb.k ]
  %.0 = phi ptr [ %i.t, %bb.c ], [ %i.ae, %bb.g ], [ %i.am, %bb.k ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 2 uses
  %i.at = icmp eq ptr %.0, %i.as
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27 ; 2 uses
  br i1 %i.at, label %ELgethash.exit57._crit_edge.preheader, label %bb.n

bb.n:                                             ; preds = %ELgethash.exit57
  %.not47 = icmp eq ptr %.0, %.pre
  br i1 %.not47, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.o, %bb.n
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.au = tail call fastcc i32 @right_of(ptr noundef nonnull %.0, ptr noundef nonnull %1)
  %.not48 = icmp eq i32 %i.au, 0
  br i1 %.not48, label %.preheader, label %ELgethash.exit57._crit_edge.preheader

ELgethash.exit57._crit_edge.preheader:            ; preds = %ELgethash.exit57, %bb.o
  br label %ELgethash.exit57._crit_edge

ELgethash.exit57._crit_edge:                      ; preds = %ELgethash.exit57._crit_edge.preheader, %bb.p
  %.1 = phi ptr [ %i.aw, %bb.p ], [ %.0, %ELgethash.exit57._crit_edge.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29 ; 4 uses
  %.not51 = icmp eq ptr %i.aw, %.pre
  br i1 %.not51, label %.critedge, label %bb.p

bb.p:                                             ; preds = %ELgethash.exit57._crit_edge
  %i.ax = tail call fastcc i32 @right_of(ptr noundef %i.aw, ptr noundef nonnull %1)
  %.not52 = icmp eq i32 %i.ax, 0
  br i1 %.not52, label %.critedge, label %ELgethash.exit57._crit_edge, !llvm.loop !45

.critedge:                                        ; preds = %ELgethash.exit57._crit_edge, %bb.p
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !28
  br label %.critedge2

bb.q:                                             ; preds = %.preheader, %bb.r
  %.2 = phi ptr [ %i.az, %bb.r ], [ %.0, %.preheader ]
  %i.az = load ptr, ptr %.2, align 8, !tbaa !28   ; 5 uses
  %.not49 = icmp eq ptr %i.az, %i.as
  br i1 %.not49, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call fastcc i32 @right_of(ptr noundef %i.az, ptr noundef nonnull %1)
  %.not50 = icmp eq i32 %i.ba, 0
  br i1 %.not50, label %bb.q, label %.critedge2, !llvm.loop !46

.critedge2:                                       ; preds = %bb.q, %bb.r, %.critedge
  %.3 = phi ptr [ %i.ay, %.critedge ], [ %i.az, %bb.r ], [ %i.az, %bb.q ] ; 2 uses
  %i.bb = icmp sgt i32 %.0.i, 0
  %i.bc = icmp slt i32 %.0.i, %i.j
  %or.cond69 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond69, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge2
  %i.bd = zext nneg i32 %.0.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bd
  store ptr %.3, ptr %i.be, align 8, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge2
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @right_of(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  %i.f = load double, ptr %1, align 8, !tbaa !41  ; 6 uses
  %i.g = load double, ptr %i.e, align 8, !tbaa !39 ; 5 uses
  %i.h = fcmp ogt double %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !23    ; 3 uses
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.l = icmp eq i8 %i.j, 1
  br i1 %i.l, label %bb.i, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = load double, ptr %i.b, align 8, !tbaa !33 ; 2 uses
  %i.n = fcmp oeq double %i.m, 1.000000e+00
  br i1 %i.n, label %.critedge66, label %bb.g

.thread:                                          ; preds = %.critedge
  %i.o = load double, ptr %i.b, align 8, !tbaa !33 ; 2 uses
  %i.p = fcmp oeq double %i.o, 1.000000e+00
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !38
  %i.u = fsub double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.f, %i.g                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !34 ; 3 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.y, label %.split, label %bb.e

.critedge66:                                      ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !38
  %i.ad = fsub double %i.aa, %i.ac                ; 2 uses
  %i.ae = fsub double %i.f, %i.g                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !34 ; 3 uses
  %i.ah = fcmp ult double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.e, label %.split

.split:                                           ; preds = %.critedge66, %bb.d
  %i.ai = phi double [ %i.ag, %.critedge66 ], [ %i.x, %bb.d ] ; 2 uses
  %i.aj = phi double [ %i.ae, %.critedge66 ], [ %i.v, %bb.d ] ; 2 uses
  %i.ak = phi double [ %i.ad, %.critedge66 ], [ %i.u, %bb.d ] ; 2 uses
  %i.al = fmul double %i.aj, %i.ai
  %i.am = fcmp ult double %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %bb.h

bb.e:                                             ; preds = %.critedge66, %bb.d
  %i.an = phi double [ %i.ag, %.critedge66 ], [ %i.x, %bb.d ] ; 3 uses
  %i.ao = phi double [ %i.ae, %.critedge66 ], [ %i.v, %bb.d ]
  %i.ap = phi double [ %i.ad, %.critedge66 ], [ %i.u, %bb.d ]
  %i.aq = phi double [ %i.aa, %.critedge66 ], [ %i.r, %bb.d ]
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.an, double %i.f)
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !35
  %i.au = fcmp ogt double %i.ar, %i.at
  %i.av = fcmp olt double %i.an, 0.000000e+00
  %spec.select = xor i1 %i.av, %i.au
  br i1 %spec.select, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split, %bb.e
  %i.aw = phi double [ %i.ai, %.split ], [ %i.an, %bb.e ] ; 4 uses
  %i.ax = phi double [ %i.ak, %.split ], [ %i.ap, %bb.e ] ; 3 uses
  %i.ay = phi double [ %i.aj, %.split ], [ %i.ao, %bb.e ] ; 3 uses
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ba = load double, ptr %i.az, align 8, !tbaa !39
  %i.bb = fsub double %i.g, %i.ba                 ; 2 uses
  %i.bc = fneg double %i.ax
  %i.bd = fmul double %i.ax, %i.bc
  %2 = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bd)
  %i.be = fmul double %2, %i.aw
  %3 = fmul double %i.ax, %i.bb
  %4 = fmul double %i.ay, 2.000000e+00
  %5 = fdiv double %4, %i.bb
  %6 = fadd double %5, 1.000000e+00
  %7 = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %6)
  %i.bf = fmul double %3, %7
  %i.bg = fcmp olt double %i.be, %i.bf
  %i.bh = fcmp olt double %i.aw, 0.000000e+00
  %spec.select71 = xor i1 %i.bg, %i.bh
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.c
  %i.bi = phi double [ %i.o, %.thread ], [ %i.m, %bb.c ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !35
  %i.bl = fneg double %i.bi
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.f, double %i.bk) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !48
  %i.bp = fsub double %i.bo, %i.bm                ; 2 uses
  %i.bq = fsub double %i.f, %i.g                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !38
  %i.bt = fsub double %i.bm, %i.bs                ; 2 uses
  %i.bu = fmul double %i.bp, %i.bp
  %i.bv = fmul double %i.bt, %i.bt
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bv)
  %i.bx = fcmp ogt double %i.bu, %i.bw
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.split, %bb.e, %bb.g
  %.2.shrunk = phi i1 [ false, %bb.e ], [ true, %.split ], [ %spec.select71, %bb.f ], [ %i.bx, %bb.g ]
  %i.by = icmp ne i8 %i.j, 0
  %.v = xor i1 %.2.shrunk, %i.by
  %i.bz = zext i1 %.v to i32
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.b, %bb.h
  %.063 = phi i32 [ 1, %bb.b ], [ %i.bz, %bb.h ], [ 0, %.critedge ]
  ret i32 %.063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @ELdelete(ptr nofree noundef captures(none) initializes((16, 24)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !29
  store ptr %i.c, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 -2 to ptr), ptr %i.e, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ELright(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @ELleft(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @leftreg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23
  %i.f = icmp eq i8 %i.e, 0
  %.in.v = select i1 %i.f, i64 40, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.in.v
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.in = phi ptr [ %.in, %bb.b ], [ @bottomsite, %bb.a ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !31
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rightreg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23
  %i.f = icmp eq i8 %i.e, 0
  %.in.v = select i1 %i.f, i64 48, i64 40
  %.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %.in.v
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.in = phi ptr [ %.in, %bb.b ], [ @bottomsite, %bb.a ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !31
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #10 {
bb.a:
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { cold noreturn nounwind }

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
!9 = !{!"p1 _ZTS11arena_chunk", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !10, i64 8}
!12 = !{!"any p2 pointer", !8, i64 0}
!13 = !{!"p2 _ZTS8Halfedge", !12, i64 0}
!14 = !{!"p1 _ZTS8Halfedge", !8, i64 0}
!15 = !{!"", !11, i64 0, !5, i64 16, !13, i64 24, !14, i64 32, !14, i64 40}
!16 = !{!15, !13, i64 24}
!17 = !{!15, !5, i64 16}
!18 = !{!"p1 _ZTS4Edge", !8, i64 0}
!19 = !{!"p1 _ZTS4Site", !8, i64 0}
!20 = !{!"double", !4, i64 0}
!21 = !{!"Halfedge", !14, i64 0, !14, i64 8, !18, i64 16, !4, i64 24, !19, i64 32, !20, i64 40, !14, i64 48}
!22 = !{!21, !18, i64 16}
!23 = !{!21, !4, i64 24}
!24 = !{!21, !14, i64 48}
!25 = !{!21, !19, i64 32}
!26 = !{!15, !14, i64 32}
!27 = !{!15, !14, i64 40}
!28 = !{!21, !14, i64 0}
!29 = !{!21, !14, i64 8}
!30 = !{!14, !14, i64 0}
!31 = !{!19, !19, i64 0}
!32 = !{!"Edge", !20, i64 0, !20, i64 8, !20, i64 16, !4, i64 24, !4, i64 40}
!33 = !{!32, !20, i64 0}
!34 = !{!32, !20, i64 8}
!35 = !{!32, !20, i64 16}
!36 = !{!"Point", !20, i64 0, !20, i64 8}
!37 = !{!"Site", !36, i64 0, !10, i64 16}
!38 = !{!37, !20, i64 8}
!39 = !{!37, !20, i64 0}
!40 = !{!20, !20, i64 0}
!41 = !{!36, !20, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!44 = !{!43, !43, i64 0}
!45 = distinct !{!45, !47}
!46 = distinct !{!46, !47}
end_hunk_0
