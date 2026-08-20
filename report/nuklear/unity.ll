inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_strlen:bb.a
  %.0711 = phi i32 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %.03612, i64 1 ; 2 uses
  %i.c = add nuw nsw i32 %.0711, 1                ; 2 uses
  %i.d = load i8, ptr %i.b, align 1, !tbaa !11
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.preheader ], [ %i.c, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @nk_strtoi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.017 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.a = load i8, ptr %.017, align 1, !tbaa !11   ; 2 uses
  switch i8 %i.a, label %.loopexit [
    i8 32, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 1
  br label %.preheader, !llvm.loop !12

bb.c:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.a, %.preheader ] ; 2 uses
  %.018 = phi i32 [ -1, %bb.c ], [ 1, %.preheader ]
  %.1 = phi ptr [ %i.c, %bb.c ], [ %.017, %.preheader ] ; 2 uses
  %i.e = add i8 %i.d, -48
  %or.cond2628 = icmp ult i8 %i.e, 10
  br i1 %or.cond2628, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.f = phi i8 [ %i.k, %.lr.ph ], [ %i.d, %.loopexit ]
  %.030 = phi i32 [ %i.i, %.lr.ph ], [ 0, %.loopexit ]
  %.229 = phi ptr [ %i.j, %.lr.ph ], [ %.1, %.loopexit ]
  %i.g = mul nsw i32 %.030, 10
  %narrow = add nsw i8 %i.f, -48
  %i.h = zext nneg i8 %narrow to i32
  %i.i = add nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.229, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11    ; 2 uses
  %i.l = add i8 %i.k, -48
  %or.cond26 = icmp ult i8 %i.l, 10
  br i1 %or.cond26, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !14

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.m = mul nsw i32 %i.i, %.018
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit
  %.2.lcssa = phi ptr [ %.1, %.loopexit ], [ %i.j, %.critedge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.loopexit ], [ %i.m, %.critedge.loopexit ] ; 2 uses
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  store ptr %.2.lcssa, ptr %1, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %bb.a
  %.019 = phi i32 [ 0, %bb.a ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %.critedge ]
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define double @nk_strtod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %.preheader77

.preheader77:                                     ; preds = %bb.a, %bb.b
  %.051 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.a = load i8, ptr %.051, align 1, !tbaa !11
  switch i8 %i.a, label %.loopexit [
    i8 32, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader77
  %i.b = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br label %.preheader77, !llvm.loop !18

bb.c:                                             ; preds = %.preheader77
  %i.c = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader77, %bb.c
  %.056 = phi double [ -1.000000e+00, %bb.c ], [ 1.000000e+00, %.preheader77 ]
  %.152 = phi ptr [ %i.c, %bb.c ], [ %.051, %.preheader77 ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit
  %.253 = phi ptr [ %.152, %.loopexit ], [ %i.i, %bb.e ] ; 5 uses
  %.050 = phi double [ 0.000000e+00, %.loopexit ], [ %i.h, %bb.e ] ; 4 uses
  %i.d = load i8, ptr %.253, align 1, !tbaa !11   ; 4 uses
  switch i8 %i.d, label %bb.e [
    i8 46, label %.preheader76
    i8 0, label %.critedge2
    i8 101, label %.critedge2
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = sext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -48
  %i.g = sitofp i32 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %.050, double 1.000000e+01, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %.253, i64 1
  br label %bb.d, !llvm.loop !19

.preheader76:                                     ; preds = %bb.d, %bb.f
  %.057 = phi double [ %i.o, %bb.f ], [ 1.000000e-01, %bb.d ] ; 2 uses
  %.253.pn = phi ptr [ %.354, %bb.f ], [ %.253, %bb.d ]
  %.1 = phi double [ %i.n, %bb.f ], [ %.050, %bb.d ] ; 3 uses
  %.354 = getelementptr inbounds nuw i8, ptr %.253.pn, i64 1 ; 4 uses
  %i.j = load i8, ptr %.354, align 1, !tbaa !11   ; 4 uses
  switch i8 %i.j, label %bb.f [
    i8 0, label %.critedge2
    i8 101, label %.critedge2
  ]

bb.f:                                             ; preds = %.preheader76
  %i.k = sext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %.057, double %.1)
  %i.o = fmul double %.057, 1.000000e-01
  br label %.preheader76, !llvm.loop !20

.critedge2:                                       ; preds = %bb.d, %bb.d, %.preheader76, %.preheader76
  %i.p = phi i8 [ %i.j, %.preheader76 ], [ %i.j, %.preheader76 ], [ %i.d, %bb.d ], [ %i.d, %bb.d ]
  %.455 = phi ptr [ %.354, %.preheader76 ], [ %.354, %.preheader76 ], [ %.253, %bb.d ], [ %.253, %bb.d ] ; 3 uses
  %.2 = phi double [ %.1, %.preheader76 ], [ %.1, %.preheader76 ], [ %.050, %bb.d ], [ %.050, %bb.d ] ; 3 uses
  %i.q = icmp eq i8 %i.p, 101
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge2
  %i.r = getelementptr inbounds nuw i8, ptr %.455, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11    ; 2 uses
  %.not74 = icmp eq i8 %i.s, 45                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.455, i64 2
  %i.u = icmp eq i8 %i.s, 43
  %i.v = or i1 %.not74, %i.u
  %.5 = select i1 %i.v, ptr %i.t, ptr %i.r        ; 3 uses
  %i.w = load i8, ptr %.5, align 1, !tbaa !11     ; 2 uses
  %.not7281 = icmp eq i8 %i.w, 0
  br i1 %.not7281, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.x = icmp sgt i32 %i.ah, 0
  br i1 %i.x, label %.lr.ph87.preheader, label %._crit_edge

.lr.ph87.preheader:                               ; preds = %.preheader
  %i.y = mul i32 %.04883, 10
  %i.z = add i32 %i.y, -49
  %i.aa = sext i8 %i.ad to i32
  %i.ab = add i32 %i.z, %i.aa
  %xtraiter = and i32 %i.ah, 7                    ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new

.lr.ph87.preheader.new:                           ; preds = %.lr.ph87.preheader
  %unroll_iter = and i32 %i.ah, 2147483640
  br label %.lr.ph87

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.ad = phi i8 [ %i.aj, %.lr.ph ], [ %i.w, %bb.g ] ; 2 uses
  %.04883 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %.682 = phi ptr [ %i.ai, %.lr.ph ], [ %.5, %bb.g ]
  %i.ae = mul nsw i32 %.04883, 10
  %i.af = sext i8 %i.ad to i32
  %i.ag = add i32 %i.ae, -48
  %i.ah = add i32 %i.ag, %i.af                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.682, i64 1 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11  ; 2 uses
  %.not72 = icmp eq i8 %i.aj, 0
  br i1 %.not72, label %.preheader, label %.lr.ph, !llvm.loop !21

.lr.ph87:                                         ; preds = %.lr.ph87, %.lr.ph87.preheader.new
  %.15885 = phi double [ 1.000000e+00, %.lr.ph87.preheader.new ], [ %i.ar, %.lr.ph87 ]
  %niter = phi i32 [ 0, %.lr.ph87.preheader.new ], [ %niter.next.7, %.lr.ph87 ]
  %i.ak = fmul double %.15885, 1.000000e+01
  %i.al = fmul double %i.ak, 1.000000e+01
  %i.am = fmul double %i.al, 1.000000e+01
  %i.an = fmul double %i.am, 1.000000e+01
  %i.ao = fmul double %i.an, 1.000000e+01
  %i.ap = fmul double %i.ao, 1.000000e+01
  %i.aq = fmul double %i.ap, 1.000000e+01
  %i.ar = fmul double %i.aq, 1.000000e+01         ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph87, !llvm.loop !22

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph87
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph87.epil.preheader

.lr.ph87.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph87.preheader
  %.15885.epil.init = phi double [ 1.000000e+00, %.lr.ph87.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.lr.ph87.epil

.lr.ph87.epil:                                    ; preds = %.lr.ph87.epil, %.lr.ph87.epil.preheader
  %.15885.epil = phi double [ %i.as, %.lr.ph87.epil ], [ %.15885.epil.init, %.lr.ph87.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph87.epil ], [ 0, %.lr.ph87.epil.preheader ]
  %i.as = fmul double %.15885.epil, 1.000000e+01  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph87.epil, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph87.epil, %bb.g, %.preheader
  %.6.lcssa99 = phi ptr [ %i.ai, %.preheader ], [ %.5, %bb.g ], [ %i.ai, %.lr.ph87.epil ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %.158.lcssa = phi double [ 1.000000e+00, %.preheader ], [ 1.000000e+00, %bb.g ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.as, %.lr.ph87.epil ] ; 2 uses
  %i.at = fdiv double %.2, %.158.lcssa
  %i.au = fmul double %.2, %.158.lcssa
  %.3 = select i1 %.not74, double %i.at, double %i.au
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.critedge2
  %.7 = phi ptr [ %.6.lcssa99, %._crit_edge ], [ %.455, %.critedge2 ]
  %.4 = phi double [ %.3, %._crit_edge ], [ %.2, %.critedge2 ]
  %i.av = fmul double %.056, %.4                  ; 2 uses
  %.not75 = icmp eq ptr %1, null
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.7, ptr %1, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  %.059 = phi double [ 0.000000e+00, %bb.a ], [ %i.av, %bb.i ], [ %i.av, %bb.h ]
  ret double %.059
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define float @nk_strtof(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call double @nk_strtod(ptr noundef %0, ptr noundef %1)
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @nk_stricmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.h ]  ; 2 uses
  %.018 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.h ]  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 1
  %i.b = load i8, ptr %.019, align 1, !tbaa !11   ; 3 uses
  %i.c = sext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.e = load i8, ptr %.018, align 1, !tbaa !11   ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f                   ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i8 %i.b, -65
  %or.cond = icmp ult i8 %i.h, 26
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, 32                     ; 2 uses
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.g, %bb.c ]  ; 2 uses
  %i.j = add i8 %i.e, -65
  %or.cond3 = icmp ult i8 %i.j, 26
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %.0, -32                     ; 2 uses
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.k, %bb.f ], [ %.0, %bb.e ]
  %.inv.inv = icmp sgt i32 %.1, -1
  %i.l = select i1 %.inv.inv, i32 1, i32 -1
  br label %.loopexit

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f
  %.not26 = icmp eq i8 %i.b, 0
  br i1 %.not26, label %.loopexit, label %bb.b, !llvm.loop !25

.loopexit:                                        ; preds = %bb.h, %bb.g
  %.020 = phi i32 [ %i.l, %bb.g ], [ 0, %bb.h ]
  ret i32 %.020
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @nk_stricmpn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !26

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %i.e, %bb.b ], [ %2, %bb.a ]
  %.in35 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.in36 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.in36, i64 1
  %i.b = load i8, ptr %.in36, align 1, !tbaa !11  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.in35, i64 1
  %i.d = load i8, ptr %.in35, align 1, !tbaa !11  ; 2 uses
  %i.e = add nsw i32 %.in, -1                     ; 2 uses
  %i.f = sext i8 %i.b to i32
  %i.g = sext i8 %i.d to i32
  %i.h = sub nsw i32 %i.f, %i.g                   ; 3 uses
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = add i8 %i.b, -65
  %or.cond = icmp ult i8 %i.i, 26
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, 32                     ; 2 uses
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.h, %bb.c ]  ; 2 uses
  %i.k = add i8 %i.d, -65
  %or.cond3 = icmp ult i8 %i.k, 26
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %.0, -32                     ; 2 uses
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.l, %bb.f ], [ %.0, %bb.e ]
  %.inv.inv = icmp sgt i32 %.1, -1
  %i.m = select i1 %.inv.inv, i32 1, i32 -1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %bb.d, %bb.f
  %.not29 = icmp eq i8 %i.b, 0
  br i1 %.not29, label %..loopexit.loopexit_crit_edge34, label %bb.b, !llvm.loop !26

..loopexit.loopexit_crit_edge34:                  ; preds = %bb.h
  br label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %bb.b, %bb.a, %..loopexit.loopexit_crit_edge34, %bb.g
  %.022 = phi i32 [ %i.m, %bb.g ], [ 0, %bb.a ], [ 0, %..loopexit.loopexit_crit_edge34 ], [ 0, %bb.b ]
  ret i32 %.022
}

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @nk_strfilter(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %i.b = icmp eq i8 %i.a, 94
  br i1 %i.b, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = tail call fastcc i32 @nk_str_match_here(ptr noundef nonnull %i.c, ptr noundef %0)
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %bb.c
  %.06 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ]   ; 3 uses
  %i.e = tail call fastcc i32 @nk_str_match_here(ptr noundef nonnull %1, ptr noundef %.06)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.06, i64 1
  %i.g = load i8, ptr %.06, align 1, !tbaa !11
  %.not7 = icmp eq i8 %i.g, 0
  br i1 %.not7, label %.loopexit, label %.preheader, !llvm.loop !27

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ], [ 1, %.preheader ]
end_hunk_0
begin_hunk_1_@nk_draw_vertex:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  store <2 x i32> %i.au, ptr %i.e, align 16, !tbaa !10
  store <2 x i32> %i.aw, ptr %i.k, align 8, !tbaa !10
  %i.by = call fastcc ptr @nk_memcopy(ptr noundef %i.br, ptr noundef nonnull %i.e, i64 noundef 16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %nk_draw_vertex_color.exit

bb.k:                                             ; preds = %bb.f
  %i.bz = call fastcc ptr @nk_memcopy(ptr noundef %i.br, ptr noundef nonnull %i.a, i64 noundef 16) ; 0 uses
  br label %nk_draw_vertex_color.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #50
  store <2 x double> %i.aq, ptr %i.f, align 16, !tbaa !32
  store <2 x double> %i.as, ptr %i.j, align 16, !tbaa !32
  %i.ca = call fastcc ptr @nk_memcopy(ptr noundef %i.br, ptr noundef nonnull %i.f, i64 noundef 32) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #50
  br label %nk_draw_vertex_color.exit

nk_rgba_fv.exit50.i:                              ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #50
  store i32 %.sroa.0.0.insert.insert.i.i49.i, ptr %i.g, align 4, !tbaa !10
  %i.cb = call fastcc ptr @nk_memcopy(ptr noundef %i.br, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #50
  br label %nk_draw_vertex_color.exit

default.unreachable.i:                            ; preds = %bb.f
  unreachable

nk_draw_vertex_color.exit:                        ; preds = %bb.e, %nk_rgba_fv.exit.i, %nk_rgba_fv.exit43.i, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %nk_rgba_fv.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %nk_draw_vertex_color.exit, %bb.d, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %.02, i64 16 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !204 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 3
  br i1 %i.ce, label %nk_draw_vertex_layout_element_is_end_of_layout.exit.thread, label %nk_draw_vertex_layout_element_is_end_of_layout.exit, !llvm.loop !208

nk_draw_vertex_layout_element_is_end_of_layout.exit.thread: ; preds = %nk_draw_vertex_layout_element_is_end_of_layout.exit, %bb.m, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.48.val
  ret ptr %i.cf
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_poly_convex(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i32 %2, 3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.critedge216, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i32 %3, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  %i.c = uitofp i8 %.sroa.2.0.extract.trunc to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load float, ptr %i.d, align 8, !tbaa !191
  %i.f = fmul float %i.e, %i.c
  %i.g = fptoui float %i.f to i8
  %.sroa.2.0.extract.shift.i.i = lshr i32 %3, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %3, 16
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.h = trunc i32 %3 to i8
  %i.i = insertelement <2 x i8> poison, i8 %i.h, i64 0
  %i.j = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.k = insertelement <2 x i8> %i.i, i8 %i.j, i64 1
  %i.l = uitofp <2 x i8> %i.k to <2 x float>
  %i.m = fmul nnan <2 x float> %i.l, splat (float f0x3B808081) ; 3 uses
  %i.n = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %i.o = insertelement <2 x i8> %i.n, i8 %i.g, i64 1
  %i.p = uitofp <2 x i8> %i.o to <2 x float>
  %i.q = fmul nnan <2 x float> %i.p, splat (float f0x3B808081) ; 3 uses
  %.sroa.4150.12.vec.insert = insertelement <2 x float> %i.q, float 0.000000e+00, i64 1
  %i.r = icmp eq i32 %4, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !187  ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 11 uses
  br i1 %i.r, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %reass.mul = mul i32 %2, 9
  %i.v = add i32 %reass.mul, -6                   ; 3 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl i32 %2, 1                            ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !182
  %i.ab = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !192
  %i.ad = mul i64 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !193
  %i.ag = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.aa, i32 noundef 0, i64 noundef %i.ad, i64 noundef %i.af) ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null               ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !187
  %i.ai = add i32 %i.ah, %i.x
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !187
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !181
  %i.al = shl nuw nsw i64 %i.w, 1
  %i.am = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ak, i32 noundef 0, i64 noundef %i.al, i64 noundef 2) ; 3 uses
  %.not.i222 = icmp eq ptr %i.am, null
  br i1 %.not.i222, label %.critedge216, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173, !nonnull !80, !noundef !80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load i64, ptr %i.at, align 8, !tbaa !188
  %i.av = sub i64 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !189
  %i.az = add i32 %i.ay, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !186
  %i.bf = add i32 %i.be, %i.v
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !186
  %i.bg = load i32, ptr %i.bc, align 8, !tbaa !194
  %i.bh = add i32 %i.bg, %i.v
  store i32 %i.bh, ptr %i.bc, align 8, !tbaa !194
  %i.bi = add i32 %i.t, 1
  br i1 %.not.i, label %.critedge216, label %nk_buffer_mark.exit

nk_buffer_mark.exit:                              ; preds = %nk_draw_list_alloc_elements.exit
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !182 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !44
  store i8 1, ptr %i.bj, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !56
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !78
  %i.bp = zext i32 %2 to i64                      ; 5 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.bj, i32 noundef 0, i64 noundef %i.bq, i64 noundef 4) ; 4 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %.critedge216, label %.lr.ph265

.lr.ph265:                                        ; preds = %nk_buffer_mark.exit
  %i.bs = ptrtoint ptr %i.ag to i64
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !182
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.bz = trunc i32 %i.t to i16                   ; 3 uses
  %i.ca = add nuw nsw i64 %i.u, 65534             ; 3 uses
  %xtraiter298 = and i64 %i.bp, 1
  %i.cb = icmp eq i32 %2, 3
  br i1 %i.cb, label %.epil.preheader297, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.lr.ph265
  %i.cc = and i64 %i.bp, 4294967294
  %i.cd = add nsw i64 %i.cc, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph265.new
  %.0195264 = phi i64 [ 2, %.lr.ph265.new ], [ %i.cv, %bb.e ] ; 3 uses
  %.0201263 = phi ptr [ %i.am, %.lr.ph265.new ], [ %i.cu, %bb.e ] ; 7 uses
  %niter304 = phi i64 [ 0, %.lr.ph265.new ], [ %niter304.next.1, %bb.e ] ; 2 uses
  store i16 %i.bz, ptr %.0201263, align 2, !tbaa !121
  %i.ce = shl nuw nsw i64 %.0195264, 1            ; 2 uses
  %i.cf = add nuw nsw i64 %i.ca, %i.ce
  %i.cg = trunc i64 %i.cf to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0201263, i64 2
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !121
  %i.ci = add nuw nsw i64 %i.ce, %i.u
  %i.cj = trunc i64 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %.0201263, i64 4
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !121
  %i.cl = getelementptr inbounds nuw i8, ptr %.0201263, i64 6
  store i16 %i.bz, ptr %i.cl, align 2, !tbaa !121
  %i.cm = shl nuw i64 %.0195264, 1
  %i.cn = or disjoint i64 %i.cm, 2                ; 2 uses
  %i.co = add nuw nsw i64 %i.ca, %i.cn
  %i.cp = trunc i64 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.0201263, i64 8
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !121
  %i.cr = add nuw nsw i64 %i.cn, %i.u
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0201263, i64 10
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !121
  %i.cu = getelementptr inbounds nuw i8, ptr %.0201263, i64 12 ; 3 uses
  %i.cv = add nuw nsw i64 %.0195264, 2            ; 2 uses
  %niter304.next.1 = add nuw i64 %niter304, 2
  %niter304.ncmp.1 = icmp eq i64 %niter304, %i.cd
  br i1 %niter304.ncmp.1, label %.lr.ph269.preheader.unr-lcssa, label %bb.e, !llvm.loop !209

.lr.ph269.preheader.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod300.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod300.not, label %.lr.ph269.preheader, label %.epil.preheader297

.epil.preheader297:                               ; preds = %.lr.ph269.preheader.unr-lcssa, %.lr.ph265
  %.0195264.epil.init = phi i64 [ 2, %.lr.ph265 ], [ %i.cv, %.lr.ph269.preheader.unr-lcssa ]
  %.0201263.epil.init = phi ptr [ %i.am, %.lr.ph265 ], [ %i.cu, %.lr.ph269.preheader.unr-lcssa ] ; 4 uses
  %lcmp.mod302 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod302)
  store i16 %i.bz, ptr %.0201263.epil.init, align 2, !tbaa !121
  %i.cw = shl nuw nsw i64 %.0195264.epil.init, 1  ; 2 uses
  %i.cx = add nuw nsw i64 %i.ca, %i.cw
  %i.cy = trunc i64 %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %.0201263.epil.init, i64 2
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !121
  %i.da = add nuw nsw i64 %i.cw, %i.u
  %i.db = trunc i64 %i.da to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.0201263.epil.init, i64 4
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !121
  %i.dd = getelementptr inbounds nuw i8, ptr %.0201263.epil.init, i64 6
  br label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %.lr.ph269.preheader.unr-lcssa, %.epil.preheader297
  %.lcssa = phi ptr [ %i.cu, %.lr.ph269.preheader.unr-lcssa ], [ %i.dd, %.epil.preheader297 ]
  %i.de = add i32 %2, -1
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  br label %.lr.ph269

.lr.ph274:                                        ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dh = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.di = zext i32 %i.bi to i64                   ; 2 uses
  br label %bb.h

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %bb.g
  %.0196267 = phi i64 [ %.0198266, %bb.g ], [ %i.df, %.lr.ph269.preheader ] ; 2 uses
  %.0198266 = phi i64 [ %i.eh, %bb.g ], [ 0, %.lr.ph269.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0196267
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0198266
  %i.dl = load <2 x float>, ptr %i.dj, align 4, !tbaa !8
  %i.dm = load <2 x float>, ptr %i.dk, align 4, !tbaa !8
  %i.dn = fsub <2 x float> %i.dm, %i.dl           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.dn, %i.dn
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dp = extractelement <2 x float> %i.dn, i64 0 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.do) ; 3 uses
  %i.dr = fcmp une float %i.dq, 0.000000e+00
  br i1 %i.dr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph269
  %i.ds = bitcast float %i.dq to i32
  %i.dt = fmul float %i.dq, 5.000000e-01
  %i.du = lshr i32 %i.ds, 1
  %i.dv = sub nsw i32 1597463172, %i.du
  %i.dw = bitcast i32 %i.dv to float              ; 3 uses
  %i.dx = fneg float %i.dw
  %i.dy = fmul float %i.dt, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dw, float 1.500000e+00)
  %i.ea = fmul float %i.dz, %i.dw
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph269, %bb.f
  %.0200 = phi float [ %i.ea, %bb.f ], [ 1.000000e+00, %.lr.ph269 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.0196267
  %i.ec = fneg float %.0200
  %i.ed = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %.0200, i64 1
  %i.ef = fmul <2 x float> %i.dn, %i.ee
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.eg, ptr %i.eb, align 4, !tbaa !8
  %i.eh = add nuw nsw i64 %.0198266, 1            ; 2 uses
  %exitcond280.not = icmp eq i64 %i.eh, %i.bp
  br i1 %exitcond280.not, label %.lr.ph274, label %.lr.ph269, !llvm.loop !210

bb.h:                                             ; preds = %.lr.ph274, %bb.j
  %.1197273 = phi i64 [ %i.df, %.lr.ph274 ], [ %.1199272, %bb.j ] ; 2 uses
  %.1199272 = phi i64 [ 0, %.lr.ph274 ], [ %i.fw, %bb.j ] ; 5 uses
  %.1202271 = phi ptr [ %.lcssa, %.lr.ph274 ], [ %i.fv, %bb.j ] ; 7 uses
  %.0203270 = phi ptr [ %i.by, %.lr.ph274 ], [ %i.ff, %bb.j ]
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.dg, align 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.1197273
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.1199272
  %i.ek = load <2 x float>, ptr %i.ei, align 4, !tbaa !8
  %i.el = load <2 x float>, ptr %i.ej, align 4, !tbaa !8
  %i.em = fadd <2 x float> %i.ek, %i.el
  %i.en = fmul <2 x float> %i.em, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop294 = fmul <2 x float> %i.en, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop294, i64 1
  %i.ep = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.eo) ; 2 uses
  %i.er = fcmp ogt float %i.eq, f0x358637BD
  br i1 %i.er, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.es = fdiv float 1.000000e+00, %i.eq          ; 2 uses
  %i.et = fcmp olt float %i.es, 1.000000e+02
  %i.eu = select i1 %i.et, float %i.es, float 1.000000e+02
  %i.ev = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.en, %i.ew
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.036.0 = phi <2 x float> [ %i.ex, %bb.i ], [ %i.en, %bb.h ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1199272 ; 2 uses
  %.val220 = load ptr, ptr %i.dh, align 8, !tbaa !198
  %.val221 = load i64, ptr %i.ab, align 8, !tbaa !199
  %i.ez = fmul <2 x float> %.sroa.036.0, splat (float 5.000000e-01) ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ey, align 4, !tbaa !8
  %i.fb = fsub <2 x float> %i.fa, %i.ez
  %i.fc = tail call fastcc ptr @nk_draw_vertex(ptr noundef %.0203270, ptr %.val220, i64 %.val221, <2 x float> %i.fb, <2 x float> %.sroa.064.0.copyload, <2 x float> %i.m, <2 x float> %i.q)
  %i.fd = load <2 x float>, ptr %i.ey, align 4, !tbaa !8
  %i.fe = fadd <2 x float> %i.ez, %i.fd
  %.val218 = load ptr, ptr %i.dh, align 8, !tbaa !198
  %.val219 = load i64, ptr %i.ab, align 8, !tbaa !199
  %i.ff = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.fc, ptr %.val218, i64 %.val219, <2 x float> %i.fe, <2 x float> %.sroa.064.0.copyload, <2 x float> %i.m, <2 x float> %.sroa.4150.12.vec.insert)
  %i.fg = shl nuw nsw i64 %.1199272, 1            ; 2 uses
  %i.fh = add nuw nsw i64 %i.fg, %i.u
  %i.fi = trunc i64 %i.fh to i16                  ; 2 uses
  store i16 %i.fi, ptr %.1202271, align 2, !tbaa !121
  %i.fj = shl nuw nsw i64 %.1197273, 1            ; 2 uses
  %i.fk = add nuw nsw i64 %i.fj, %i.u
  %i.fl = trunc i64 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %.1202271, i64 2
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !121
  %i.fn = add nuw nsw i64 %i.fj, %i.di
  %i.fo = trunc i64 %i.fn to i16                  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1202271, i64 4
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !121
  %i.fq = getelementptr inbounds nuw i8, ptr %.1202271, i64 6
  store i16 %i.fo, ptr %i.fq, align 2, !tbaa !121
  %i.fr = add nuw nsw i64 %i.fg, %i.di
  %i.fs = trunc i64 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %.1202271, i64 8
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !121
  %i.fu = getelementptr inbounds nuw i8, ptr %.1202271, i64 10
  store i16 %i.fi, ptr %i.fu, align 2, !tbaa !121
  %i.fv = getelementptr inbounds nuw i8, ptr %.1202271, i64 12
  %i.fw = add nuw nsw i64 %.1199272, 1            ; 2 uses
  %exitcond281.not = icmp eq i64 %i.fw, %i.bp
  br i1 %exitcond281.not, label %.critedge, label %bb.h, !llvm.loop !211

.critedge:                                        ; preds = %bb.j
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !182 ; 6 uses
  %.not.i240 = icmp eq ptr %.pre, null
  br i1 %.not.i240, label %.critedge216, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre, i64 88 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !52
  %i.fz = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !78 ; 2 uses
  %.neg.i = sub i64 %i.ga, %i.fy
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre, i64 96 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !51
  %i.gd = add i64 %.neg.i, %i.gc
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !51
  %i.ge = load i8, ptr %.pre, align 8, !tbaa !75, !range !79, !noundef !80
  %i.gf = trunc nuw i8 %i.ge to i1
  %spec.select.i = select i1 %i.gf, i64 %i.ga, i64 0
  store i64 %spec.select.i, ptr %i.fx, align 8, !tbaa !52
  store i8 0, ptr %.pre, align 8, !tbaa !75
  br label %.critedge216

bb.l:                                             ; preds = %bb.b
  %i.gg = mul i32 %2, 3
  %i.gh = add i32 %i.gg, -6                       ; 3 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = zext i32 %2 to i64                      ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !182
  %i.gm = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !192
  %i.go = mul i64 %i.gn, %i.gj
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !193
  %i.gr = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.gl, i32 noundef 0, i64 noundef %i.go, i64 noundef %i.gq) ; 2 uses
  %.not.i241 = icmp eq ptr %i.gr, null            ; 2 uses
  br i1 %.not.i241, label %nk_draw_list_alloc_vertices.exit242, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gs = load i32, ptr %i.s, align 4, !tbaa !187
  %i.gt = add i32 %i.gs, %2
  store i32 %i.gt, ptr %i.s, align 4, !tbaa !187
  br label %nk_draw_list_alloc_vertices.exit242

nk_draw_list_alloc_vertices.exit242:              ; preds = %bb.l, %bb.m
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !181
  %i.gw = shl nuw nsw i64 %i.gi, 1
  %i.gx = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.gv, i32 noundef 0, i64 noundef %i.gw, i64 noundef 2) ; 3 uses
  %.not.i243 = icmp eq ptr %i.gx, null
  br i1 %.not.i243, label %.critedge216, label %nk_draw_list_alloc_elements.exit245

nk_draw_list_alloc_elements.exit245:              ; preds = %nk_draw_list_alloc_vertices.exit242
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !173, !nonnull !80, !noundef !80 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !44
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !45
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !188
  %i.hg = sub i64 %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !189
  %i.hk = add i32 %i.hj, -1
  %i.hl = zext i32 %i.hk to i64
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = getelementptr inbounds [32 x i8], ptr %i.hh, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !186
  %i.hq = add i32 %i.hp, %i.gh
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !186
  %i.hr = load i32, ptr %i.hn, align 8, !tbaa !194
  %i.hs = add i32 %i.hr, %i.gh
  store i32 %i.hs, ptr %i.hn, align 8, !tbaa !194
  br i1 %.not.i241, label %.critedge216, label %.lr.ph

.lr.ph:                                           ; preds = %nk_draw_list_alloc_elements.exit245
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hu = getelementptr i8, ptr %0, i64 152
  br label %bb.n

.lr.ph262:                                        ; preds = %bb.n
  %i.hv = trunc i32 %i.t to i16                   ; 5 uses
  %i.hw = add nsw i64 %i.gj, -2                   ; 2 uses
  %xtraiter = and i64 %i.hw, 3                    ; 3 uses
  %i.hx = add i32 %2, -3
  %i.hy = icmp ult i32 %i.hx, 3
  br i1 %i.hy, label %.epil.preheader, label %.lr.ph262.new

.lr.ph262.new:                                    ; preds = %.lr.ph262
  %unroll_iter = and i64 %i.hw, -4
  %invariant.op = add nuw nsw i64 2, %i.u
  %invariant.op309 = add nuw nsw i64 3, %i.u
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.0191259 = phi ptr [ %i.gr, %.lr.ph ], [ %i.ic, %bb.n ]
  %.0192258 = phi i64 [ 0, %.lr.ph ], [ %i.id, %bb.n ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0192258
  %i.ia = load <2 x float>, ptr %i.hz, align 4
  %i.ib = load <2 x float>, ptr %i.ht, align 8
  %.val = load ptr, ptr %i.hu, align 8, !tbaa !198
  %.val217 = load i64, ptr %i.gm, align 8, !tbaa !199
  %i.ic = tail call fastcc ptr @nk_draw_vertex(ptr noundef %.0191259, ptr %.val, i64 %.val217, <2 x float> %i.ia, <2 x float> %i.ib, <2 x float> %i.m, <2 x float> %i.q)
  %i.id = add nuw nsw i64 %.0192258, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.id, %i.gj
  br i1 %exitcond.not, label %.lr.ph262, label %bb.n, !llvm.loop !212

bb.o:                                             ; preds = %bb.o, %.lr.ph262.new
  %.0261 = phi ptr [ %i.gx, %.lr.ph262.new ], [ %i.ja, %bb.o ] ; 13 uses
  %.1260 = phi i64 [ 2, %.lr.ph262.new ], [ %i.jb, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph262.new ], [ %niter.next.3, %bb.o ]
  store i16 %i.hv, ptr %.0261, align 2, !tbaa !121
  %i.ie = add nuw nsw i64 %.1260, %i.u
  %i.if = trunc i64 %i.ie to i16                  ; 2 uses
  %i.ig = add i16 %i.if, -1
  %i.ih = getelementptr inbounds nuw i8, ptr %.0261, i64 2
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !121
  %i.ii = getelementptr inbounds nuw i8, ptr %.0261, i64 4
  store i16 %i.if, ptr %i.ii, align 2, !tbaa !121
  %i.ij = getelementptr inbounds nuw i8, ptr %.0261, i64 6
  %i.ik = or disjoint i64 %.1260, 1
  store i16 %i.hv, ptr %i.ij, align 2, !tbaa !121
  %i.il = add nuw nsw i64 %i.ik, %i.u
  %i.im = trunc i64 %i.il to i16                  ; 2 uses
  %i.in = add i16 %i.im, -1
  %i.io = getelementptr inbounds nuw i8, ptr %.0261, i64 8
  store i16 %i.in, ptr %i.io, align 2, !tbaa !121
  %i.ip = getelementptr inbounds nuw i8, ptr %.0261, i64 10
  store i16 %i.im, ptr %i.ip, align 2, !tbaa !121
  %i.iq = getelementptr inbounds nuw i8, ptr %.0261, i64 12
  store i16 %i.hv, ptr %i.iq, align 2, !tbaa !121
  %.reass = add nuw nsw i64 %.1260, %invariant.op
  %i.ir = trunc i64 %.reass to i16                ; 2 uses
  %i.is = add i16 %i.ir, -1
  %i.it = getelementptr inbounds nuw i8, ptr %.0261, i64 14
  store i16 %i.is, ptr %i.it, align 2, !tbaa !121
  %i.iu = getelementptr inbounds nuw i8, ptr %.0261, i64 16
  store i16 %i.ir, ptr %i.iu, align 2, !tbaa !121
  %i.iv = getelementptr inbounds nuw i8, ptr %.0261, i64 18
  store i16 %i.hv, ptr %i.iv, align 2, !tbaa !121
  %.reass310 = add nuw nsw i64 %.1260, %invariant.op309
  %i.iw = trunc i64 %.reass310 to i16             ; 2 uses
  %i.ix = add i16 %i.iw, -1
  %i.iy = getelementptr inbounds nuw i8, ptr %.0261, i64 20
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !121
  %i.iz = getelementptr inbounds nuw i8, ptr %.0261, i64 22
  store i16 %i.iw, ptr %i.iz, align 2, !tbaa !121
  %i.ja = getelementptr inbounds nuw i8, ptr %.0261, i64 24 ; 2 uses
  %i.jb = add nuw nsw i64 %.1260, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge216.loopexit.unr-lcssa, label %bb.o, !llvm.loop !213

.critedge216.loopexit.unr-lcssa:                  ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge216, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge216.loopexit.unr-lcssa, %.lr.ph262
  %.0261.epil.init = phi ptr [ %i.gx, %.lr.ph262 ], [ %i.ja, %.critedge216.loopexit.unr-lcssa ]
  %.1260.epil.init = phi i64 [ 2, %.lr.ph262 ], [ %i.jb, %.critedge216.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %.0261.epil = phi ptr [ %.0261.epil.init, %.epil.preheader ], [ %i.jh, %bb.p ] ; 4 uses
  %.1260.epil = phi i64 [ %.1260.epil.init, %.epil.preheader ], [ %i.ji, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  store i16 %i.hv, ptr %.0261.epil, align 2, !tbaa !121
  %i.jc = add nuw nsw i64 %.1260.epil, %i.u
  %i.jd = trunc i64 %i.jc to i16                  ; 2 uses
  %i.je = add i16 %i.jd, -1
  %i.jf = getelementptr inbounds nuw i8, ptr %.0261.epil, i64 2
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !121
  %i.jg = getelementptr inbounds nuw i8, ptr %.0261.epil, i64 4
  store i16 %i.jd, ptr %i.jg, align 2, !tbaa !121
  %i.jh = getelementptr inbounds nuw i8, ptr %.0261.epil, i64 6
  %i.ji = add nuw nsw i64 %.1260.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge216, label %bb.p, !llvm.loop !214

.critedge216:                                     ; preds = %.critedge216.loopexit.unr-lcssa, %bb.p, %nk_draw_list_alloc_vertices.exit242, %nk_draw_list_alloc_vertices.exit, %bb.k, %.critedge, %nk_draw_list_alloc_elements.exit245, %nk_draw_list_alloc_elements.exit, %nk_buffer_mark.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_draw_list_path_clear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %nk_buffer_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.neg.i = sub i64 %i.f, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %i.i = add i64 %.neg.i, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !51
  %i.j = load i8, ptr %i.b, align 8, !tbaa !75, !range !79, !noundef !80
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select.i = select i1 %i.k, i64 %i.f, i64 0
  store i64 %spec.select.i, ptr %i.c, align 8, !tbaa !52
  store i8 0, ptr %i.b, align 8, !tbaa !75
  br label %nk_buffer_reset.exit

nk_buffer_reset.exit:                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.l, align 8, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.m, align 4, !tbaa !215
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nk_buffer_reset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_line_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_draw_list_alloc_path.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nk_draw_list_add_clip(ptr noundef %0, <2 x float> splat (float -8.192000e+03), <2 x float> splat (float 1.638400e+04))
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %nk_draw_list_command_last.exit.thread, label %nk_draw_list_command_last.exit

nk_draw_list_command_last.exit:                   ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %nk_draw_list_command_last.exit.thread, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_command_last.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = load i32, ptr %i.a, align 8, !tbaa !189
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %.not17 = icmp eq ptr %i.s, %i.u
  br i1 %.not17, label %nk_draw_list_command_last.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.u)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !173
  br label %nk_draw_list_command_last.exit.thread

nk_draw_list_command_last.exit.thread:            ; preds = %bb.d, %bb.f, %bb.e, %nk_draw_list_command_last.exit
  %i.v = phi ptr [ %.pre, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %nk_draw_list_command_last.exit ], [ null, %bb.d ]
  %i.w = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.v, i32 noundef 0, i64 noundef 8, i64 noundef 4) ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nk_draw_list_alloc_path.exit.thread, label %bb.g

bb.g:                                             ; preds = %nk_draw_list_command_last.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !215
  %.not12.i = icmp eq i32 %i.y, 0
  br i1 %.not12.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.z, null
  br i1 %.not.i.i19, label %nk_buffer_memory.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %nk_buffer_memory.exit.i

nk_buffer_memory.exit.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %.0.i.i
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.x, align 4, !tbaa !215
  br label %bb.j

bb.j:                                             ; preds = %nk_buffer_memory.exit.i, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !190
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !190
  store <2 x float> %1, ptr %i.w, align 4
  br label %nk_draw_list_alloc_path.exit.thread

nk_draw_list_alloc_path.exit.thread:              ; preds = %nk_draw_list_command_last.exit.thread, %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_add_clip(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %nk_draw_list_command_last.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173
  %i.g = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.f, i32 noundef 1, i64 noundef 32, i64 noundef 8) ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %nk_draw_list_push_command.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 8, !tbaa !189
  %.not21.i = icmp eq i32 %i.h, 0
  br i1 %.not21.i, label %bb.d, label %nk_draw_list_push_command.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !173  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %nk_buffer_total.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
end_hunk_1
begin_hunk_2_@nk__next:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18576
  %i.d = load i32, ptr %i.c, align 8, !tbaa !252
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.h = load i64, ptr %i.g, align 8, !tbaa !290
  %.not14 = icmp ult i64 %i.f, %i.h
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !291
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.k, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_begin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %nk__draw_list_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %.not10.i = icmp eq i64 %i.b, 0
  br i1 %.not10.i, label %nk__draw_list_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12976
  %i.d = load i32, ptr %i.c, align 8, !tbaa !189
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %nk__draw_list_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12984
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  br label %nk__draw_list_begin.exit

nk__draw_list_begin.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %nk__draw_list_end.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12984
  %i.f = load i64, ptr %i.e, align 8, !tbaa !188
  %i.g = sub i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12976
  %i.j = load i32, ptr %i.i, align 8, !tbaa !189
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.m
  br label %nk__draw_list_end.exit

nk__draw_list_end.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk__draw_next(ptr nofree noundef readnone captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %nk__draw_list_end.exit.i, label %nk__draw_list_next.exit

nk__draw_list_end.exit.i:                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12984
  %i.h = load i64, ptr %i.g, align 8, !tbaa !188
  %i.i = sub i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12976
  %i.l = load i32, ptr %i.k, align 8, !tbaa !189
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.o
  %.not.i = icmp ugt ptr %0, %i.p
  %i.q = getelementptr inbounds i8, ptr %0, i64 -32
  %spec.select.i = select i1 %.not.i, ptr %i.q, ptr null
  br label %nk__draw_list_next.exit

nk__draw_list_next.exit:                          ; preds = %bb.a, %nk__draw_list_end.exit.i
  %.0.i = phi ptr [ null, %bb.a ], [ %spec.select.i, %nk__draw_list_end.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbrp_setup_heuristic(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !326
  %cond = icmp eq i32 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !329
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbrp_setup_allow_out_of_mem(ptr nofree noundef captures(none) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !331  ; 2 uses
  %i.d = add i32 %i.a, -1
  %i.e = add i32 %i.d, %i.c
  %i.f = sdiv i32 %i.e, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.g, align 8, !tbaa !332
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @stbrp_init_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = add i32 %4, -1                           ; 3 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.c = add nsw i32 %4, -2
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !333
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !333
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !333
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.3
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !333
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !335

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.epil
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8, !tbaa !333
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !336

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %i.t = zext nneg i32 %i.a to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.t, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0.lcssa
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !333
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !326
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !329
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.y, align 8, !tbaa !337
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !338
  store i32 %1, ptr %0, align 8, !tbaa !330
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.ab, align 4, !tbaa !339
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.ac, align 4, !tbaa !331
  %i.ad = add i32 %i.a, %1
  %i.ae = sdiv i32 %i.ad, %4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !332
  store i32 0, ptr %i.z, align 8, !tbaa !340
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.ag, align 4, !tbaa !341
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !333
  store i32 %1, ptr %i.ah, align 8, !tbaa !340
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1073741824, ptr %i.aj, align 4, !tbaa !341
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.ak, align 8, !tbaa !333
  ret void
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @stbrp_pack_rects(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge59.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %2, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !342
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr %i.g, align 4, !tbaa !342
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !342
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !342
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.q = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !342
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !342
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.w = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !342
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next.6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !342
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph58.unr-lcssa, label %.lr.ph, !llvm.loop !344

._crit_edge59.thread:                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #50
  tail call void @qsort(ptr noundef %1, i64 noundef %i.aa, i64 noundef 24, ptr noundef nonnull @rect_original_order) #50
  br label %._crit_edge64

.lr.ph58.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph58.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.lr.ph58.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !342
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph58, label %.lr.ph.epil, !llvm.loop !345

.lr.ph58:                                         ; preds = %.lr.ph.epil, %.lr.ph58.unr-lcssa
  %i.ae = zext nneg i32 %2 to i64                 ; 2 uses
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_height_compare) #50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count70 = zext nneg i32 %2 to i64    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %stbrp__skyline_pack_rectangle.exit
  %indvars.iv67 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next68, %stbrp__skyline_pack_rectangle.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv67 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !346 ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %stbrp__skyline_pack_rectangle.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !347 ; 5 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %stbrp__skyline_pack_rectangle.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !332 ; 2 uses
  %i.as = add i32 %i.am, -1
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %i.au = srem i32 %i.at, %i.ar
  %i.av = sub nsw i32 %i.at, %i.au                ; 11 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !330   ; 3 uses
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %stbrp__skyline_pack_rectangle.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %i.ag, align 4, !tbaa !339 ; 4 uses
  %i.az = icmp sgt i32 %i.ap, %i.ay
  br i1 %i.az, label %stbrp__skyline_pack_rectangle.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.ah, align 8, !tbaa !338 ; 5 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !340 ; 3 uses
  %i.bc = add nsw i32 %i.bb, %i.av                ; 2 uses
  %.not127.i.i = icmp sgt i32 %i.bc, %i.aw
  br i1 %.not127.i.i, label %.._crit_edge.thread.i_crit_edge.i, label %.lr.ph.i.i

.._crit_edge.thread.i_crit_edge.i:                ; preds = %bb.f
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !329
  br label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bd = icmp sgt i32 %i.av, 0
  %i.be = load i32, ptr %i.ai, align 8, !tbaa !329 ; 3 uses
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  br i1 %i.bd, label %.lr.ph.i.preheader.us.i.i, label %.lr.ph.split.i.i

.lr.ph.i.preheader.us.i.i:                        ; preds = %.lr.ph.i.i, %bb.q
  %i.bg = phi i32 [ %i.co, %bb.q ], [ %i.bc, %.lr.ph.i.i ]
  %i.bh = phi i32 [ %i.cn, %bb.q ], [ %i.bb, %.lr.ph.i.i ] ; 3 uses
  %.0132.us.i.i = phi ptr [ %.1.us.i.i, %bb.q ], [ null, %.lr.ph.i.i ] ; 3 uses
  %.074131.us.i.i = phi ptr [ %i.cm, %bb.q ], [ %i.ba, %.lr.ph.i.i ] ; 2 uses
  %.077130.us.i.i = phi ptr [ %i.cl, %bb.q ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.080129.us.i.i = phi i32 [ %.181.us.i.i, %bb.q ], [ 1073741824, %.lr.ph.i.i ] ; 6 uses
  %.088128.us.i.i = phi i32 [ %.189.us.i.i, %bb.q ], [ 1073741824, %.lr.ph.i.i ] ; 4 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %bb.k, %.lr.ph.i.preheader.us.i.i
  %i.bi = phi i32 [ %i.cd, %bb.k ], [ %i.bh, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %.0364.i.us.i.i = phi i32 [ %.1.i.us.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.us.i.i ]
  %.0373.i.us.i.i = phi i32 [ %.138.i.us.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0392.i.us.i.i = phi i32 [ %.140.i.us.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.us.i.i ] ; 4 uses
  %.0411.i.us.i.i = phi ptr [ %i.ce, %bb.k ], [ %.074131.us.i.i, %.lr.ph.i.preheader.us.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !341 ; 5 uses
  %i.bl = icmp sgt i32 %i.bk, %.0392.i.us.i.i
  br i1 %i.bl, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !333 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !340 ; 2 uses
  %i.bp = sub nsw i32 %i.bo, %i.bi                ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.0373.i.us.i.i
  %i.br = icmp sgt i32 %i.bq, %i.av
  %i.bs = sub nsw i32 %i.av, %.0373.i.us.i.i
  %spec.select.i.us.i.i = select i1 %i.br, i32 %i.bs, i32 %i.bp ; 2 uses
  %i.bt = sub nsw i32 %.0392.i.us.i.i, %i.bk
  %i.bu = mul nsw i32 %spec.select.i.us.i.i, %i.bt
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i.us.i.i
  %i.bv = sub nsw i32 %i.bk, %.0392.i.us.i.i
  %i.bw = mul nsw i32 %i.bv, %.0373.i.us.i.i      ; 2 uses
  %i.bx = icmp slt i32 %i.bi, %i.bh
  %i.by = getelementptr inbounds nuw i8, ptr %.0411.i.us.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !333 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !340 ; 4 uses
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = sub nsw i32 %i.ca, %i.bi
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cc = sub nsw i32 %i.ca, %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.cd = phi i32 [ %i.ca, %bb.j ], [ %i.ca, %bb.i ], [ %i.bo, %bb.g ] ; 2 uses
  %i.ce = phi ptr [ %i.bz, %bb.j ], [ %i.bz, %bb.i ], [ %i.bn, %bb.g ]
  %.140.i.us.i.i = phi i32 [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %.0392.i.us.i.i, %bb.g ] ; 7 uses
  %.pn.i.us.i.i = phi i32 [ %i.cc, %bb.j ], [ %i.cb, %bb.i ], [ %spec.select.i.us.i.i, %bb.g ]
  %.pn46.i.us.i.i = phi i32 [ %i.bw, %bb.j ], [ %i.bw, %bb.i ], [ %i.bu, %bb.g ]
  %.1.i.us.i.i = add nsw i32 %.pn46.i.us.i.i, %.0364.i.us.i.i ; 3 uses
  %.138.i.us.i.i = add nsw i32 %.pn.i.us.i.i, %.0373.i.us.i.i
  %i.cf = icmp slt i32 %i.cd, %i.bg
  br i1 %i.cf, label %.lr.ph.i.us.i.i, label %stbrp__skyline_find_min_y.exit.loopexit.us.i.i, !llvm.loop !348

bb.l:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us.i.i
  %i.cg = add nsw i32 %.140.i.us.i.i, %i.ap
  %.not103.us.i.i = icmp sgt i32 %i.cg, %i.ay
  br i1 %.not103.us.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp slt i32 %.140.i.us.i.i, %.080129.us.i.i
  br i1 %i.ch, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp eq i32 %.140.i.us.i.i, %.080129.us.i.i
  %i.cj = icmp slt i32 %.1.i.us.i.i, %.088128.us.i.i
  %or.cond.us.i.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.us.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %bb.q

bb.p:                                             ; preds = %stbrp__skyline_find_min_y.exit.loopexit.us.i.i
  %i.ck = icmp slt i32 %.140.i.us.i.i, %.080129.us.i.i
  %spec.select.us.i.i = tail call i32 @llvm.smin.i32(i32 %.140.i.us.i.i, i32 %.080129.us.i.i)
  %spec.select104.us.i.i = select i1 %i.ck, ptr %.077130.us.i.i, ptr %.0132.us.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.189.us.i.i = phi i32 [ %.088128.us.i.i, %bb.l ], [ %.088128.us.i.i, %bb.n ], [ %.1.i.us.i.i, %bb.o ], [ %.088128.us.i.i, %bb.p ] ; 3 uses
  %.181.us.i.i = phi i32 [ %.080129.us.i.i, %bb.l ], [ %.080129.us.i.i, %bb.n ], [ %.140.i.us.i.i, %bb.o ], [ %spec.select.us.i.i, %bb.p ] ; 3 uses
  %.1.us.i.i = phi ptr [ %.0132.us.i.i, %bb.l ], [ %.0132.us.i.i, %bb.n ], [ %.077130.us.i.i, %bb.o ], [ %spec.select104.us.i.i, %bb.p ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.074131.us.i.i, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !333 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !340 ; 2 uses
  %i.co = add nsw i32 %i.cn, %i.av                ; 2 uses
  %.not.us.i.i = icmp sgt i32 %i.co, %i.aw
  br i1 %.not.us.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.us.i.i, !llvm.loop !349

stbrp__skyline_find_min_y.exit.loopexit.us.i.i:   ; preds = %bb.k
  br i1 %i.bf, label %bb.p, label %bb.l

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %spec.select.i = select i1 %i.bf, i32 1073741824, i32 0
  br label %._crit_edge.thread211.i.i

._crit_edge.i.i:                                  ; preds = %bb.q
  %i.cp = icmp eq ptr %.1.us.i.i, null
  br i1 %i.cp, label %._crit_edge.thread.i.i, label %._crit_edge.thread211.i.i

._crit_edge.thread211.i.i:                        ; preds = %._crit_edge.i.i, %.lr.ph.split.i.i
  %.0.lcssa217.i.i = phi ptr [ %.1.us.i.i, %._crit_edge.i.i ], [ %i.ah, %.lr.ph.split.i.i ] ; 2 uses
  %.080.lcssa216.i.i = phi i32 [ %.181.us.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.split.i.i ]
  %.088.lcssa215.i.i = phi i32 [ %.189.us.i.i, %._crit_edge.i.i ], [ %spec.select.i, %.lr.ph.split.i.i ]
end_hunk_2
begin_hunk_3_@stbrp_pack_rects:bb.a
bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ec = phi i32 [ %i.dq, %bb.u ], [ %i.dq, %bb.v ], [ %i.dv, %bb.w ] ; 2 uses
  %i.ed = phi ptr [ %i.dp, %bb.u ], [ %i.dp, %bb.v ], [ %i.du, %bb.w ]
  %.140.i116.i.i = phi i32 [ %i.dj, %bb.u ], [ %i.dj, %bb.v ], [ %.0392.i113.i.i, %bb.w ] ; 2 uses
  %.pn.i117.i.i = phi i32 [ %i.dr, %bb.u ], [ %i.ds, %bb.v ], [ %spec.select.i115.i.i, %bb.w ]
  %.pn46.i118.i.i = phi i32 [ %i.dm, %bb.u ], [ %i.dm, %bb.v ], [ %i.eb, %bb.w ]
  %.1.i119.i.i = add nsw i32 %.pn46.i118.i.i, %.0364.i111.i.i ; 2 uses
  %.138.i120.i.i = add nsw i32 %.pn.i117.i.i, %.0373.i112.i.i
  %i.ee = icmp slt i32 %i.ec, %i.da
  br i1 %i.ee, label %.lr.ph.i110.i.i, label %stbrp__skyline_find_min_y.exit121.i.i, !llvm.loop !348

stbrp__skyline_find_min_y.exit121.i.i:            ; preds = %bb.x, %bb.s
  %.039.lcssa.i108.i.i = phi i32 [ 0, %bb.s ], [ %.140.i116.i.i, %bb.x ] ; 4 uses
  %.036.lcssa.i109.i.i = phi i32 [ 0, %bb.s ], [ %.1.i119.i.i, %bb.x ] ; 3 uses
  %i.ef = add nsw i32 %.039.lcssa.i108.i.i, %i.ap
  %.not101.i.i = icmp sgt i32 %i.ef, %i.ay
  %.not102.i.i = icmp sgt i32 %.039.lcssa.i108.i.i, %.282176.i.i
  %or.cond106.i.i = select i1 %.not101.i.i, i1 true, i1 %.not102.i.i
  br i1 %or.cond106.i.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %stbrp__skyline_find_min_y.exit121.i.i
  %i.eg = icmp slt i32 %.039.lcssa.i108.i.i, %.282176.i.i
  %i.eh = icmp slt i32 %.036.lcssa.i109.i.i, %.290174.i.i
  %or.cond125.i.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond125.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = icmp eq i32 %.036.lcssa.i109.i.i, %.290174.i.i
  %i.ej = icmp slt i32 %i.db, %.085175.i.i
  %or.cond107.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond107.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %stbrp__skyline_find_min_y.exit121.i.i
  %.391.i.i = phi i32 [ %.036.lcssa.i109.i.i, %bb.aa ], [ %.290174.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.290174.i.i, %bb.z ]
  %.186.i.i = phi i32 [ %i.db, %bb.aa ], [ %.085175.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.085175.i.i, %bb.z ] ; 2 uses
  %.383.i.i = phi i32 [ %.039.lcssa.i108.i.i, %bb.aa ], [ %.282176.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.282176.i.i, %bb.z ] ; 2 uses
  %.3.i.i = phi ptr [ %.279.i.i, %bb.aa ], [ %.2180.i.i, %stbrp__skyline_find_min_y.exit121.i.i ], [ %.2180.i.i, %bb.z ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.173179.i.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !333 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.el, null
  br i1 %.not99.i.i, label %stbrp__skyline_find_best_pos.exit.i, label %.preheader.i.i, !llvm.loop !353

stbrp__skyline_find_best_pos.exit.i:              ; preds = %bb.ab, %._crit_edge.thread.i.i
  %.287.i.i = phi i32 [ %i.ct, %._crit_edge.thread.i.i ], [ %.186.i.i, %bb.ab ] ; 5 uses
  %.484.i.i = phi i32 [ %.080.lcssa209.i.i, %._crit_edge.thread.i.i ], [ %.383.i.i, %bb.ab ] ; 3 uses
  %.4.i.i = phi ptr [ %.0.lcssa210.i.i, %._crit_edge.thread.i.i ], [ %.3.i.i, %bb.ab ] ; 3 uses
  %i.em = icmp eq ptr %.4.i.i, null
  br i1 %i.em, label %stbrp__skyline_pack_rectangle.exit, label %bb.ac

bb.ac:                                            ; preds = %stbrp__skyline_find_best_pos.exit.i
  %i.en = add nsw i32 %.484.i.i, %i.ap            ; 2 uses
  %i.eo = icmp sgt i32 %i.en, %i.ay
  br i1 %i.eo, label %stbrp__skyline_pack_rectangle.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %i.aj, align 8, !tbaa !337 ; 6 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %stbrp__skyline_pack_rectangle.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %.287.i.i, ptr %i.ep, align 8, !tbaa !340
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.en, ptr %i.er, align 4, !tbaa !341
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !333
  store ptr %i.et, ptr %i.aj, align 8, !tbaa !337
  %i.eu = load ptr, ptr %.4.i.i, align 8, !tbaa !350 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !340
  %i.ew = icmp slt i32 %i.ev, %.287.i.i
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !333
  store ptr %i.ep, ptr %i.ex, align 8, !tbaa !333
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.ep, ptr %.4.i.i, align 8, !tbaa !350
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i = phi ptr [ %i.ey, %bb.af ], [ %i.eu, %bb.ag ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !333 ; 2 uses
  %.not54.i = icmp eq ptr %i.fa, null
  %.pre58.i = add nsw i32 %.287.i.i, %i.am        ; 3 uses
  br i1 %.not54.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %bb.ai
  %i.fb = phi ptr [ %i.fg, %bb.ai ], [ %i.fa, %bb.ah ] ; 4 uses
  %i.fc = phi ptr [ %i.ff, %bb.ai ], [ %i.ez, %bb.ah ]
  %.155.i = phi ptr [ %i.fb, %bb.ai ], [ %.0.i, %bb.ah ] ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 8, !tbaa !340
  %.not44.i = icmp sgt i32 %i.fd, %.pre58.i
  br i1 %.not44.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !337
  store ptr %i.fe, ptr %i.fc, align 8, !tbaa !333
  store ptr %.155.i, ptr %i.aj, align 8, !tbaa !337
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !333 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !354

.critedge.i:                                      ; preds = %bb.ai, %.lr.ph.i, %bb.ah
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.ah ], [ %.155.i, %.lr.ph.i ], [ %i.fb, %bb.ai ] ; 3 uses
  store ptr %.1.lcssa.i, ptr %i.es, align 8, !tbaa !333
  %i.fh = load i32, ptr %.1.lcssa.i, align 8, !tbaa !340
  %i.fi = icmp slt i32 %i.fh, %.pre58.i
  br i1 %i.fi, label %bb.aj, label %stbrp__skyline_pack_rectangle.exit

bb.aj:                                            ; preds = %.critedge.i
  store i32 %.pre58.i, ptr %.1.lcssa.i, align 8, !tbaa !340
  br label %stbrp__skyline_pack_rectangle.exit

stbrp__skyline_pack_rectangle.exit:               ; preds = %stbrp__skyline_find_best_pos.exit.i, %bb.ad, %bb.ac, %bb.e, %bb.d, %.critedge.i, %bb.aj, %bb.b, %bb.c
  %.sink103 = phi i64 [ 16, %bb.b ], [ 12, %.critedge.i ], [ 16, %bb.c ], [ 12, %bb.aj ], [ 16, %bb.d ], [ 16, %bb.e ], [ 16, %bb.ac ], [ 16, %bb.ad ], [ 16, %stbrp__skyline_find_best_pos.exit.i ]
  %.287.i.i.sink = phi i32 [ 0, %bb.b ], [ %.287.i.i, %.critedge.i ], [ 0, %bb.c ], [ %.287.i.i, %bb.aj ], [ 2147483647, %bb.d ], [ 2147483647, %bb.e ], [ 2147483647, %bb.ac ], [ 2147483647, %bb.ad ], [ 2147483647, %stbrp__skyline_find_best_pos.exit.i ]
  %.sink102 = phi i64 [ 12, %bb.b ], [ 16, %.critedge.i ], [ 12, %bb.c ], [ 16, %bb.aj ], [ 12, %bb.d ], [ 12, %bb.e ], [ 12, %bb.ac ], [ 12, %bb.ad ], [ 12, %stbrp__skyline_find_best_pos.exit.i ]
  %.484.i.i.sink = phi i32 [ 0, %bb.b ], [ %.484.i.i, %.critedge.i ], [ 0, %bb.c ], [ %.484.i.i, %bb.aj ], [ 2147483647, %bb.d ], [ 2147483647, %bb.e ], [ 2147483647, %bb.ac ], [ 2147483647, %bb.ad ], [ 2147483647, %stbrp__skyline_find_best_pos.exit.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink103
  store i32 %.287.i.i.sink, ptr %i.fj, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink102
  store i32 %.484.i.i.sink, ptr %i.fk, align 4, !tbaa !10
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge59, label %bb.b, !llvm.loop !355

._crit_edge59:                                    ; preds = %stbrp__skyline_pack_rectangle.exit
  tail call void @qsort(ptr noundef nonnull %1, i64 noundef %i.ae, i64 noundef 24, ptr noundef nonnull @rect_original_order) #50
  %xtraiter107 = and i64 %wide.trip.count70, 1
  %i.fl = icmp eq i32 %2, 1
  br i1 %i.fl, label %.lr.ph63.epil.preheader, label %._crit_edge59.new

._crit_edge59.new:                                ; preds = %._crit_edge59
  %unroll_iter112 = and i64 %wide.trip.count70, 2147483646
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ao, %._crit_edge59.new
  %indvars.iv72 = phi i64 [ 0, %._crit_edge59.new ], [ %indvars.iv.next73.1, %bb.ao ] ; 3 uses
  %.061 = phi i32 [ 1, %._crit_edge59.new ], [ %i.gh, %bb.ao ]
  %niter113 = phi i64 [ 0, %._crit_edge59.new ], [ %niter113.next.1, %bb.ao ]
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv72 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !356
  %i.fp = icmp eq i32 %i.fo, 2147483647
  br i1 %i.fp, label %bb.ak, label %.thread

.thread:                                          ; preds = %.lr.ph63
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  store i32 1, ptr %i.fq, align 4, !tbaa !342
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph63
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !357
  %.fr = freeze i32 %i.fs
  %i.ft = icmp ne i32 %.fr, 2147483647            ; 2 uses
  %i.fu = zext i1 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !342
  br i1 %i.ft, label %bb.al, label %.lr.ph63.1

bb.al:                                            ; preds = %.thread, %bb.ak
  br label %.lr.ph63.1

.lr.ph63.1:                                       ; preds = %bb.ak, %bb.al
  %i.fw = phi i32 [ %.061, %bb.al ], [ 0, %bb.ak ]
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv72 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !356
  %i.ga = icmp eq i32 %i.fz, 2147483647
  br i1 %i.ga, label %bb.am, label %.thread.1

.thread.1:                                        ; preds = %.lr.ph63.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  store i32 1, ptr %i.gb, align 4, !tbaa !342
  br label %bb.an

bb.am:                                            ; preds = %.lr.ph63.1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !357
  %.fr.1 = freeze i32 %i.gd
  %i.ge = icmp ne i32 %.fr.1, 2147483647          ; 2 uses
  %i.gf = zext i1 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !342
  br i1 %i.ge, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.thread.1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gh = phi i32 [ %i.fw, %bb.an ], [ 0, %bb.am ] ; 3 uses
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %niter113.next.1 = add nuw i64 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %.lr.ph63, !llvm.loop !358

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %bb.ao
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %._crit_edge64, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %._crit_edge64.loopexit.unr-lcssa, %._crit_edge59
  %indvars.iv72.epil.init = phi i64 [ 0, %._crit_edge59 ], [ %indvars.iv.next73.1, %._crit_edge64.loopexit.unr-lcssa ]
  %.061.epil.init = phi i32 [ 1, %._crit_edge59 ], [ %i.gh, %._crit_edge64.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv72.epil.init ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !356
  %i.gl = icmp eq i32 %i.gk, 2147483647
  br i1 %i.gl, label %bb.ap, label %.thread.epil

.thread.epil:                                     ; preds = %.lr.ph63.epil.preheader
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 1, ptr %i.gm, align 4, !tbaa !342
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph63.epil.preheader
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !357
  %.fr.epil = freeze i32 %i.go
  %i.gp = icmp ne i32 %.fr.epil, 2147483647       ; 2 uses
  %i.gq = zext i1 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !342
  br i1 %i.gp, label %bb.aq, label %._crit_edge64

bb.aq:                                            ; preds = %bb.ap, %.thread.epil
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit.unr-lcssa, %bb.aq, %bb.ap, %._crit_edge59.thread
  %.0.lcssa = phi i32 [ 1, %._crit_edge59.thread ], [ %i.gh, %._crit_edge64.loopexit.unr-lcssa ], [ %.061.epil.init, %bb.aq ], [ 0, %bb.ap ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_height_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !347  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !347  ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.b, %i.d
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !346
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !346
  %i.k = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @rect_original_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !342
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !342
  %i.e = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_FindGlyphIndex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !362  ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 21 uses
  %.val173 = load i8, ptr %i.f, align 1, !tbaa !11
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %.val174 = load i8, ptr %i.g, align 1, !tbaa !11
  %i.h = zext i8 %.val173 to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = zext i8 %.val174 to i16
  %i.k = or disjoint i16 %i.i, %i.j               ; 3 uses
  switch i16 %i.k, label %bb.m [
    i16 0, label %bb.b
    i16 6, label %bb.d
    i16 2, label %.loopexit
    i16 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.val171 = load i8, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.f, i64 3
  %.val172 = load i8, ptr %i.m, align 1, !tbaa !11
  %i.n = zext i8 %.val171 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = zext i8 %.val172 to i32
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = add nsw i32 %i.q, -6
  %i.s = icmp slt i32 %1, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val169 = load i8, ptr %i.y, align 1, !tbaa !11
  %i.z = getelementptr i8, ptr %i.f, i64 7
  %.val170 = load i8, ptr %i.z, align 1, !tbaa !11
  %i.aa = zext i8 %.val169 to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = zext i8 %.val170 to i32
  %i.ad = or disjoint i32 %i.ab, %i.ac            ; 3 uses
  %.not143 = icmp ult i32 %1, %i.ad
  br i1 %.not143, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val167 = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.af = zext i8 %.val167 to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr i8, ptr %i.f, i64 9
  %.val168 = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.ai = zext i8 %.val168 to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = add nuw nsw i32 %i.aj, %i.ad
  %i.al = icmp ult i32 %1, %i.ak
  br i1 %i.al, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.an = sub nsw i32 %1, %i.ad
  %i.ao = shl nsw i32 %i.an, 1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 2 uses
  %.val165 = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.val166 = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.as = zext i8 %.val165 to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = zext i8 %.val166 to i32
  %i.av = or disjoint i32 %i.at, %i.au
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.val163 = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.f, i64 7
  %.val164 = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.ay = zext i8 %.val163 to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val164 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = icmp sgt i32 %1, 65535
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add i32 %i.d, 14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.val157 = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = zext i8 %.val157 to i16
  %i.bh = shl nuw i16 %i.bg, 8
  %i.bi = getelementptr i8, ptr %i.f, i64 13
  %.val158 = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %.val159 = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bk = zext i8 %.val159 to i16
  %i.bl = shl nuw i16 %i.bk, 8                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.f, i64 11
  %.val160 = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bn = zext i8 %.val160 to i16                 ; 3 uses
  %i.bo = or disjoint i16 %i.bl, %i.bn            ; 3 uses
  %i.bp = and i8 %.val158, -2
  %.masked = zext i8 %i.bp to i16
  %i.bq = or disjoint i16 %i.bh, %.masked         ; 2 uses
  %i.br = zext i32 %i.be to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
end_hunk_3
begin_hunk_4_@stbtt_GetGlyphShape:bb.a
  br i1 %.not, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !366
  %.not.i18 = icmp slt i32 %1, %i.g
  br i1 %.not.i18, label %bb.c, label %stbtt__GetGlyfOffset.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !367  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %stbtt__GetGlyfOffset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !369
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %1, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s ; 4 uses
  %.val28.i = load i8, ptr %i.t, align 1, !tbaa !11
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.val29.i = load i8, ptr %i.u, align 1, !tbaa !11
  %i.v = zext i8 %.val28.i to i32
  %i.w = zext i8 %.val29.i to i32
  %i.x = shl nuw nsw i32 %i.v, 9
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %.val.i20 = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ab = getelementptr i8, ptr %i.t, i64 3
  %.val27.i = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ac = zext i8 %.val.i20 to i32
  %i.ad = zext i8 %.val27.i to i32
  %i.ae = shl nuw nsw i32 %i.ac, 9
  %i.af = shl nuw nsw i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, %i.ae
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nsw i32 %1, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i19 = phi i32 [ %i.ao, %bb.f ], [ %i.ag, %bb.e ]
  %.pn.i = phi i32 [ %i.al, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %.023.i = add i32 %.pn.i, %i.m                  ; 2 uses
  %i.ap = icmp eq i32 %.pn.i, %.sink.i19
  br i1 %i.ap, label %stbtt__GetGlyfOffset.exit.thread, label %stbtt__GetGlyfOffset.exit

stbtt__GetGlyfOffset.exit.thread:                 ; preds = %bb.b, %bb.c, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !48
  br label %stbtt__GetGlyphShapeTT.exit

stbtt__GetGlyfOffset.exit:                        ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !48
  %i.aq = icmp slt i32 %.023.i, 0
  br i1 %i.aq, label %stbtt__GetGlyphShapeTT.exit, label %bb.h

bb.h:                                             ; preds = %stbtt__GetGlyfOffset.exit
  %i.ar = zext nneg i32 %.023.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 4 uses
  %.val400.i = load i8, ptr %i.as, align 1, !tbaa !11
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %.val401.i = load i8, ptr %i.at, align 1, !tbaa !11
  %i.au = zext i8 %.val400.i to i16
  %i.av = shl nuw i16 %i.au, 8                    ; 2 uses
  %i.aw = zext i8 %.val401.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp sgt i16 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 10 ; 2 uses
  %i.ba = shl nuw i16 %i.ax, 1                    ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 5 uses
  %.val378.i = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  %.val379.i = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2
  %.val376.i = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bg = getelementptr i8, ptr %i.bd, i64 -1
  %.val377.i = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bh = zext i8 %.val376.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8                ; 3 uses
  %i.bj = zext i8 %.val377.i to i32               ; 3 uses
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = or disjoint i32 %i.bb, 1
  %i.bm = add nuw nsw i32 %i.bl, %i.bk
  %narrow.i = mul nuw nsw i32 %i.bm, 14
  %i.bn = zext nneg i32 %narrow.i to i64
  %i.bo = load ptr, ptr %0, align 8, !tbaa !370   ; 2 uses
  %.val404.i = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val405.i = load ptr, ptr %i.bp, align 8, !tbaa !49
  %i.bq = tail call ptr %.val405.i(ptr %.val404.i, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.bn) #50, !inline_history !371 ; 17 uses
  %.not374.i = icmp eq ptr %i.bq, null
  br i1 %.not374.i, label %stbtt__GetGlyphShapeTT.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = zext i8 %.val378.i to i64
  %i.bs = shl nuw nsw i64 %i.br, 8
  %i.bt = zext i8 %.val379.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt ; 2 uses
  %i.bx = zext i16 %i.ba to i64                   ; 3 uses
  %i.by = or disjoint i32 %i.bi, %i.bj
  %i.bz = add nuw nsw i32 %i.by, 1
  %wide.trip.count72 = zext nneg i32 %i.bz to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [14 x i8], ptr %i.bq, i64 %i.bx ; 3 uses
  %i.ca = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %xtraiter = and i64 %i.cc, 1
  %i.cd = icmp eq i32 %i.ca, 0
  br i1 %i.cd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %i.cc, 131070
  br label %bb.k

bb.k:                                             ; preds = %bb.s, %.new
  %indvars.iv70 = phi i64 [ 0, %.new ], [ %indvars.iv.next71.1, %bb.s ] ; 3 uses
  %.0289.i43 = phi ptr [ %i.bw, %.new ], [ %.1290.i.1, %bb.s ] ; 4 uses
  %.0328.i41 = phi i8 [ 0, %.new ], [ %.1329.i.1, %bb.s ] ; 2 uses
  %.0330.i40 = phi i8 [ 0, %.new ], [ %.1331.i.1, %bb.s ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.ce = icmp eq i8 %.0328.i41, 0
  br i1 %i.ce, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %.0289.i43, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.0289.i43, align 1, !tbaa !11 ; 3 uses
  %i.ch = and i8 %i.cg, 8
  %.not373.i = icmp eq i8 %i.ch, 0
  br i1 %.not373.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.0289.i43, i64 2
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !11
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ck = add i8 %.0328.i41, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1331.i = phi i8 [ %i.cg, %bb.m ], [ %i.cg, %bb.l ], [ %.0330.i40, %bb.n ] ; 2 uses
  %.1329.i = phi i8 [ %i.cj, %bb.m ], [ 0, %bb.l ], [ %i.ck, %bb.n ] ; 2 uses
  %.1290.i = phi ptr [ %i.ci, %bb.m ], [ %i.cf, %bb.l ], [ %.0289.i43, %bb.n ] ; 4 uses
  %gep = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv70
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store i8 %.1331.i, ptr %i.cl, align 2, !tbaa !372
  %i.cm = icmp eq i8 %.1329.i, 0
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = add i8 %.1329.i, -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %.1290.i, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.1290.i, align 1, !tbaa !11 ; 3 uses
  %i.cq = and i8 %i.cp, 8
  %.not373.i.1 = icmp eq i8 %i.cq, 0
  br i1 %.not373.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %.1290.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1331.i.1 = phi i8 [ %i.cp, %bb.r ], [ %i.cp, %bb.q ], [ %.1331.i, %bb.p ] ; 3 uses
  %.1329.i.1 = phi i8 [ %i.cs, %bb.r ], [ 0, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %.1290.i.1 = phi ptr [ %i.cr, %bb.r ], [ %i.co, %bb.q ], [ %.1290.i, %bb.p ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 26
  store i8 %.1331.i.1, ptr %i.cu, align 2, !tbaa !372
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader32.preheader.unr-lcssa, label %bb.k, !llvm.loop !374

.preheader32.preheader.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader32.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader32.preheader.unr-lcssa, %bb.j
  %indvars.iv70.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next71.1, %.preheader32.preheader.unr-lcssa ]
  %.0289.i43.epil.init = phi ptr [ %i.bw, %bb.j ], [ %.1290.i.1, %.preheader32.preheader.unr-lcssa ] ; 4 uses
  %.0328.i41.epil.init = phi i8 [ 0, %bb.j ], [ %.1329.i.1, %.preheader32.preheader.unr-lcssa ]
  %.0330.i40.epil.init = phi i8 [ 0, %bb.j ], [ %.1331.i.1, %.preheader32.preheader.unr-lcssa ]
  %lcmp.mod112 = trunc i32 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.cv = icmp eq i8 %.0328.i41.epil.init, 0
  br i1 %i.cv, label %bb.t, label %.preheader32.preheader.epilog-lcssa

bb.t:                                             ; preds = %.epil.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %.0289.i43.epil.init, i64 1
  %i.cx = load i8, ptr %.0289.i43.epil.init, align 1, !tbaa !11 ; 2 uses
  %i.cy = and i8 %i.cx, 8
  %.not373.i.epil = icmp eq i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.0289.i43.epil.init, i64 2
  %spec.select = select i1 %.not373.i.epil, ptr %i.cw, ptr %i.cz
  br label %.preheader32.preheader.epilog-lcssa

.preheader32.preheader.epilog-lcssa:              ; preds = %bb.t, %.epil.preheader
  %.1331.i.epil = phi i8 [ %.0330.i40.epil.init, %.epil.preheader ], [ %i.cx, %bb.t ]
  %.1290.i.epil = phi ptr [ %.0289.i43.epil.init, %.epil.preheader ], [ %spec.select, %bb.t ]
  %gep.epil = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep, i64 %indvars.iv70.epil.init
  %i.da = getelementptr inbounds nuw i8, ptr %gep.epil, i64 12
  store i8 %.1331.i.epil, ptr %i.da, align 2, !tbaa !372
  br label %.preheader32.preheader

.preheader32.preheader:                           ; preds = %.preheader32.preheader.unr-lcssa, %.preheader32.preheader.epilog-lcssa
  %.1290.i.lcssa = phi ptr [ %.1290.i.1, %.preheader32.preheader.unr-lcssa ], [ %.1290.i.epil, %.preheader32.preheader.epilog-lcssa ]
  %invariant.gep90 = getelementptr inbounds nuw [14 x i8], ptr %i.bq, i64 %i.bx
  br label %.preheader32

.preheader32:                                     ; preds = %.preheader32.preheader, %bb.x
  %indvars.iv74 = phi i64 [ 0, %.preheader32.preheader ], [ %indvars.iv.next75, %bb.x ] ; 2 uses
  %.2291.i46 = phi ptr [ %.1290.i.lcssa, %.preheader32.preheader ], [ %.3292.i, %bb.x ] ; 6 uses
  %.0312.i45 = phi i16 [ 0, %.preheader32.preheader ], [ %.1313.i, %bb.x ] ; 3 uses
  %gep91 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep90, i64 %indvars.iv74 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %gep91, i64 12
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !372
  %i.dd = zext i8 %i.dc to i32                    ; 3 uses
  %i.de = and i32 %i.dd, 2
  %.not370.i = icmp eq i32 %i.de, 0
  br i1 %.not370.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader32
  %i.df = getelementptr inbounds nuw i8, ptr %.2291.i46, i64 1
  %i.dg = load i8, ptr %.2291.i46, align 1, !tbaa !11
  %i.dh = and i32 %i.dd, 16
  %.not372.i = icmp eq i32 %i.dh, 0
  %i.di = zext i8 %i.dg to i16                    ; 2 uses
  %i.dj = sub nsw i16 0, %i.di
  %i.dk = select i1 %.not372.i, i16 %i.dj, i16 %i.di
  %i.dl = add i16 %i.dk, %.0312.i45
  br label %bb.x

bb.v:                                             ; preds = %.preheader32
  %i.dm = and i32 %i.dd, 16
  %.not371.i = icmp eq i32 %i.dm, 0
  br i1 %.not371.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %.2291.i46, align 1, !tbaa !11
  %i.do = zext i8 %i.dn to i16
  %i.dp = shl nuw i16 %i.do, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.2291.i46, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !11
  %i.ds = zext i8 %i.dr to i16
  %i.dt = or disjoint i16 %i.dp, %i.ds
  %i.du = add i16 %i.dt, %.0312.i45
  %i.dv = getelementptr inbounds nuw i8, ptr %.2291.i46, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.1313.i = phi i16 [ %i.dl, %bb.u ], [ %.0312.i45, %bb.v ], [ %i.du, %bb.w ] ; 2 uses
  %.3292.i = phi ptr [ %i.df, %bb.u ], [ %.2291.i46, %bb.v ], [ %i.dv, %bb.w ] ; 2 uses
  store i16 %.1313.i, ptr %gep91, align 2, !tbaa !375
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count72
  br i1 %exitcond77.not, label %.preheader31.preheader, label %.preheader32, !llvm.loop !376

.preheader31.preheader:                           ; preds = %bb.x
  %invariant.gep92 = getelementptr inbounds nuw [14 x i8], ptr %i.bq, i64 %i.bx
  br label %.preheader31

.preheader31:                                     ; preds = %.preheader31.preheader, %bb.ab
  %indvars.iv78 = phi i64 [ 0, %.preheader31.preheader ], [ %indvars.iv.next79, %bb.ab ] ; 2 uses
  %.4293.i49 = phi ptr [ %.3292.i, %.preheader31.preheader ], [ %.5.i, %bb.ab ] ; 6 uses
  %.0310.i48 = phi i16 [ 0, %.preheader31.preheader ], [ %.1311.i, %bb.ab ] ; 3 uses
  %gep93 = getelementptr inbounds nuw [14 x i8], ptr %invariant.gep92, i64 %indvars.iv78 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %gep93, i64 12
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !372
  %i.dy = zext i8 %i.dx to i32                    ; 3 uses
  %i.dz = and i32 %i.dy, 4
  %.not367.i = icmp eq i32 %i.dz, 0
  br i1 %.not367.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader31
  %i.ea = getelementptr inbounds nuw i8, ptr %.4293.i49, i64 1
  %i.eb = load i8, ptr %.4293.i49, align 1, !tbaa !11
  %i.ec = and i32 %i.dy, 32
  %.not369.i = icmp eq i32 %i.ec, 0
  %i.ed = zext i8 %i.eb to i16                    ; 2 uses
  %i.ee = sub nsw i16 0, %i.ed
  %i.ef = select i1 %.not369.i, i16 %i.ee, i16 %i.ed
  %i.eg = add i16 %i.ef, %.0310.i48
  br label %bb.ab

bb.z:                                             ; preds = %.preheader31
  %i.eh = and i32 %i.dy, 32
  %.not368.i = icmp eq i32 %i.eh, 0
  br i1 %.not368.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i8, ptr %.4293.i49, align 1, !tbaa !11
  %i.ej = zext i8 %i.ei to i16
  %i.ek = shl nuw i16 %i.ej, 8
  %i.el = getelementptr inbounds nuw i8, ptr %.4293.i49, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = zext i8 %i.em to i16
  %i.eo = or disjoint i16 %i.ek, %i.en
  %i.ep = add i16 %i.eo, %.0310.i48
  %i.eq = getelementptr inbounds nuw i8, ptr %.4293.i49, i64 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.1311.i = phi i16 [ %i.eg, %bb.y ], [ %.0310.i48, %bb.z ], [ %i.ep, %bb.aa ] ; 2 uses
  %.5.i = phi ptr [ %i.ea, %bb.y ], [ %.4293.i49, %bb.z ], [ %i.eq, %bb.aa ]
  %i.er = getelementptr inbounds nuw i8, ptr %gep93, i64 2
  store i16 %.1311.i, ptr %i.er, align 2, !tbaa !377
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count72
  br i1 %exitcond81.not, label %.preheader, label %.preheader31, !llvm.loop !378

.preheader:                                       ; preds = %bb.ab, %bb.aw
  %.0294.i66 = phi i32 [ %.2296.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0297.i64 = phi i32 [ %.2299.i, %bb.aw ], [ 0, %bb.ab ] ; 6 uses
  %.0300.i63 = phi i32 [ %.2302.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0303.i62 = phi i32 [ %.2305.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0306.i59 = phi i32 [ %.1307.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0308.i56 = phi i32 [ %.1309.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0314.i55 = phi i32 [ %.1315.i, %bb.aw ], [ 0, %bb.ab ] ; 4 uses
  %.0316.i54 = phi i32 [ %.1317.i, %bb.aw ], [ 0, %bb.ab ] ; 2 uses
  %.0318.i53 = phi i32 [ %.1319.i, %bb.aw ], [ 0, %bb.ab ] ; 8 uses
  %.0320.i52 = phi i32 [ %.1321.i, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.3325.i51 = phi i32 [ %i.jb, %bb.aw ], [ 0, %bb.ab ] ; 5 uses
  %.0335.i50 = phi i32 [ %.4339.i, %bb.aw ], [ 0, %bb.ab ] ; 12 uses
  %i.es = add nsw i32 %.3325.i51, %i.bb
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [14 x i8], ptr %i.bq, i64 %i.et ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !372 ; 2 uses
  %i.ex = load i16, ptr %i.eu, align 2, !tbaa !375 ; 3 uses
  %i.ey = sext i16 %i.ex to i32                   ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !377 ; 3 uses
  %i.fb = sext i16 %i.fa to i32                   ; 7 uses
  %i.fc = icmp eq i32 %.0318.i53, %.3325.i51
  br i1 %i.fc, label %bb.ac, label %bb.ap

bb.ac:                                            ; preds = %.preheader
  %.not364.i = icmp eq i32 %.0318.i53, 0
  br i1 %.not364.i, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i11 = icmp eq i32 %.0314.i55, 0
  %.not27.i12 = icmp eq i32 %.0316.i54, 0         ; 2 uses
  br i1 %.not.i11, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not27.i12, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = add nsw i32 %.0335.i50, 1
  %i.fe = sext i32 %.0335.i50 to i64
  %i.ff = getelementptr inbounds [14 x i8], ptr %i.bq, i64 %i.fe ; 5 uses
  %i.fg = add nsw i32 %.0297.i64, %.0308.i56
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = add nsw i32 %.0294.i66, %.0306.i59
  %i.fj = lshr i32 %i.fi, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i8 3, ptr %i.fk, align 2, !tbaa !372
  %i.fl = trunc i32 %i.fh to i16
  store i16 %i.fl, ptr %i.ff, align 2, !tbaa !375
  %i.fm = trunc i32 %i.fj to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !377
  %i.fo = trunc nsw i32 %.0308.i56 to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !379
  %i.fq = trunc nsw i32 %.0306.i59 to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !380
  br label %bb.ag
end_hunk_4
begin_hunk_5_@stbtt_MakeGlyphBitmapSubpixelPrefilter:bb.a
  %.0.i = phi float [ %i.i, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %.0.i, ptr %11, align 4, !tbaa !8
  %.not.i28 = icmp eq i32 %10, 0
  br i1 %.not.i28, label %stbtt__oversample_shift.exit30, label %bb.g

bb.g:                                             ; preds = %stbtt__oversample_shift.exit
  %i.j = sub nsw i32 1, %10
  %i.k = sitofp i32 %i.j to float
  %i.l = sitofp i32 %10 to float
  %i.m = fmul nnan float %i.l, 2.000000e+00
  %i.n = fdiv float %i.k, %i.m
  br label %stbtt__oversample_shift.exit30

stbtt__oversample_shift.exit30:                   ; preds = %stbtt__oversample_shift.exit, %bb.g
  %.0.i29 = phi float [ %i.n, %bb.g ], [ 0.000000e+00, %stbtt__oversample_shift.exit ]
  store float %.0.i29, ptr %12, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbtt_MakeCodepointBitmapSubpixel(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %9)
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetCodepointBitmap(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef readonly %0, i32 noundef %3)
  %i.b = tail call ptr @stbtt_GetGlyphBitmapSubpixel(ptr noundef readonly %0, float noundef %1, float noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.a, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbtt_MakeCodepointBitmap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef readonly %0, i32 noundef %7)
  tail call void @stbtt_MakeGlyphBitmapSubpixel(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt_GetBakedQuad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #18 {
bb.a:
  %.not = icmp eq i32 %7, 0
  %i.a = select i1 %.not, float -5.000000e-01, float 0.000000e+00
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %2, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [20 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = load float, ptr %4, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load float, ptr %5, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = fdiv <2 x float> splat (float 1.000000e+00), %i.d
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !8
  %i.n = insertelement <2 x float> poison, float %i.g, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.i, i64 1
  %i.p = fadd <2 x float> %i.o, %i.m
  %i.q = fadd <2 x float> %i.p, splat (float 5.000000e-01)
  %i.r = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.q)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>     ; 2 uses
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load <2 x i16>, ptr %i.f, align 4, !tbaa !121 ; 2 uses
  %i.v = uitofp <2 x i16> %i.u to <2 x float>
  %i.w = insertelement <4 x float> poison, float %i.a, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.y = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.aa = shufflevector <2 x float> %i.t, <2 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ab = fadd <4 x float> %i.z, %i.aa
  %i.ac = fmul <4 x float> %i.z, %i.aa
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ad, ptr %6, align 4, !tbaa !8
  %i.ae = load <2 x i16>, ptr %i.j, align 4, !tbaa !121 ; 2 uses
  %i.af = zext <2 x i16> %i.ae to <2 x i32>
  %i.ag = add nsw <2 x i32> %i.af, %i.s
  %i.ah = zext <2 x i16> %i.u to <2 x i32>
  %i.ai = sub <2 x i32> %i.ag, %i.ah
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  %i.ak = uitofp <2 x i16> %i.ae to <2 x float>
  %i.al = shufflevector <4 x float> %i.y, <4 x float> %i.x, <4 x i32> <i32 4, i32 5, i32 0, i32 1> ; 2 uses
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.an = fadd <4 x float> %i.al, %i.am
  %i.ao = fmul <4 x float> %i.al, %i.am
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ap, ptr %i.k, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !470
  %i.as = load float, ptr %4, align 4, !tbaa !8
  %i.at = fadd float %i.ar, %i.as
  store float %i.at, ptr %4, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbtt_PackBegin(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #17 {
bb.a:
  %.val54 = load ptr, ptr %6, align 8
  %i.a = getelementptr i8, ptr %6, i64 8          ; 2 uses
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = tail call ptr %.val55(ptr %.val54, ptr noundef null, i64 noundef 72) #50, !inline_history !469 ; 17 uses
  %i.c = sub nsw i32 %2, %5                       ; 9 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 4
  %.val = load ptr, ptr %6, align 8
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.f = tail call ptr %.val53(ptr %.val, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.e) #50, !inline_history !469 ; 15 uses
  %i.g = icmp eq ptr %i.b, null                   ; 2 uses
  %i.h = icmp eq ptr %i.f, null                   ; 2 uses
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val58 = load ptr, ptr %6, align 8
  %i.i = getelementptr i8, ptr %6, i64 16
  %.val59 = load ptr, ptr %i.i, align 8, !tbaa !385
  tail call void %.val59(ptr %.val58, ptr noundef nonnull %i.b) #50, !inline_history !410
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val56 = load ptr, ptr %6, align 8
  %i.j = getelementptr i8, ptr %6, i64 16
  %.val57 = load ptr, ptr %i.j, align 8, !tbaa !385
  tail call void %.val57(ptr %.val56, ptr noundef nonnull %i.f) #50, !inline_history !410
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store ptr %6, ptr %0, align 8, !tbaa !472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.k, align 8, !tbaa !474
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.l, align 4, !tbaa !475
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.m, align 8, !tbaa !476
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.n, align 8, !tbaa !477
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.o, align 8, !tbaa !478
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %i.p, align 4, !tbaa !479
  %.not = icmp eq i32 %4, 0
  %i.q = select i1 %.not, i32 %2, i32 %4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !480
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.s, align 4, !tbaa !481
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.t, align 8, !tbaa !482
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !483
  %i.v = sub nsw i32 %3, %5
  %i.w = add i32 %i.c, -1                         ; 2 uses
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.lr.ph.preheader.i, label %stbrp_init_target.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.w to i64  ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.y = add nsw i32 %i.c, -2
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !333
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !333
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !333
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.3
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !333
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %stbrp_init_target.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !335

stbrp_init_target.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.epil
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i.epil
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !333
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil, !llvm.loop !484

stbrp_init_target.exit:                           ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0.lcssa.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !333
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.ar, align 4, !tbaa !326
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.as, align 8, !tbaa !329
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.at, align 8, !tbaa !337
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !338
  store i32 %i.c, ptr %i.b, align 8, !tbaa !330
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.v, ptr %i.aw, align 4, !tbaa !339
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.c, ptr %i.ax, align 4, !tbaa !331
  %i.ay = add i32 %i.w, %i.c
  %i.az = sdiv i32 %i.ay, %i.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !332
  store i32 0, ptr %i.au, align 8, !tbaa !340
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.bb, align 4, !tbaa !341
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !333
  store i32 %i.c, ptr %i.bc, align 8, !tbaa !340
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 1073741824, ptr %i.be, align 4, !tbaa !341
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr null, ptr %i.bf, align 8, !tbaa !333
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %stbrp_init_target.exit
  %i.bg = mul nsw i32 %3, %2
  %i.bh = sext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.bh, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %stbrp_init_target.exit, %bb.g, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %stbrp_init_target.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stbtt_PackEnd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !478
  %i.c = load ptr, ptr %0, align 8, !tbaa !472    ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !385
  tail call void %.val6(ptr %.val5, ptr noundef %i.b) #50, !inline_history !410
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !477
  %i.g = load ptr, ptr %0, align 8, !tbaa !472    ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val4 = load ptr, ptr %i.h, align 8, !tbaa !385
  tail call void %.val4(ptr %.val, ptr noundef %i.f) #50, !inline_history !410
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetOversampling(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %1, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.b, align 4, !tbaa !481
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i32 %2, 9
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.d, align 8, !tbaa !482
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetSkipMissingCodepoints(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !483
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_PackFontRangesGatherRects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #19 {
bb.a:
  %5 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %indvars.iv100 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next101, %._crit_edge ] ; 2 uses
  %.090 = phi i32 [ 0, %.lr.ph92 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05489 = phi i32 [ 0, %.lr.ph92 ], [ %.155.lcssa, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv100 ; 6 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !485 ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !359
  %i.u = load i32, ptr %i.d, align 4, !tbaa !392
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.val6.i = load i8, ptr %i.x, align 1, !tbaa !11
  %i.y = getelementptr i8, ptr %i.w, i64 5
  %.val7.i = load i8, ptr %i.y, align 1, !tbaa !11
  %i.z = zext i8 %.val6.i to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = zext i8 %.val7.i to i16
  %i.ac = or disjoint i16 %i.aa, %i.ab
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %.val.i = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.af = getelementptr i8, ptr %i.w, i64 7
  %.val5.i = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ag = zext i8 %.val.i to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = zext i8 %.val5.i to i16
  %i.aj = or disjoint i16 %i.ah, %i.ai
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ad, %i.ak
  %i.am = sitofp i32 %i.al to float
  %i.an = fdiv float %i.r, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = fneg float %i.r
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !359
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !409
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  %.val.i61 = load i8, ptr %i.at, align 1, !tbaa !11
  %i.au = getelementptr i8, ptr %i.as, i64 19
  %.val3.i = load i8, ptr %i.au, align 1, !tbaa !11
  %i.av = zext i8 %.val.i61 to i16
  %i.aw = shl nuw i16 %i.av, 8
end_hunk_5
begin_hunk_6_@stbtt_PackFontRangesGatherRects:bb.a
  %spec.select = select i1 %i.ce, i32 1, i32 %.186
  br label %bb.u

bb.u:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.k
  %.pre104.pre117 = phi i32 [ %.pre104.pre116, %bb.k ], [ %.pre104.pre118, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %.pre104114 = phi i32 [ %.pre104113, %bb.k ], [ %.pre104, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.gn = phi i32 [ %i.br, %bb.k ], [ %.pre104, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %.2 = phi i32 [ %.186, %bb.k ], [ %spec.select, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %i.go = phi <2 x i32> [ %i.bs, %bb.k ], [ %i.gd, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.gp = phi <2 x i32> [ %i.bt, %bb.k ], [ %i.ge, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.gq = phi <2 x i32> [ %i.bu, %bb.k ], [ %i.gd, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.gr = sext i32 %i.gn to i64
  %i.gs = icmp slt i64 %indvars.iv.next96, %i.gr
  br i1 %i.gs, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !493

._crit_edge.loopexit:                             ; preds = %bb.u
  %i.gt = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.155.lcssa = phi i32 [ %.05489, %bb.e ], [ %i.gt, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.090, %bb.e ], [ %.2, %._crit_edge.loopexit ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge93, label %bb.b, !llvm.loop !494

._crit_edge93:                                    ; preds = %._crit_edge, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %.155.lcssa, %._crit_edge ]
  ret i32 %.054.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__h_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 2, 0) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.c = sub i32 %1, %4
  %i.d = zext i32 %4 to i64
  %.not113 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64
  %i.f = add i32 %1, 1
  %i.g = sub i32 %i.f, %4                         ; 12 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count172 = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64      ; 6 uses
  %i.h = add nsw i64 %wide.trip.count182, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count182, 1
  %i.i = icmp eq i64 %i.h, 0
  %unroll_iter = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.g to i1
  %xtraiter216 = and i64 %wide.trip.count182, 1
  %i.j = icmp eq i64 %i.h, 0
  %unroll_iter220 = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = trunc i32 %i.g to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph148, %._crit_edge
  %.095146 = phi i32 [ 0, %.lr.ph148 ], [ %i.fn, %._crit_edge ]
  %.096144 = phi ptr [ %0, %.lr.ph148 ], [ %i.fm, %._crit_edge ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false)
  switch i32 %4, label %.preheader [
    i32 2, label %.preheader105
    i32 3, label %.preheader107
    i32 4, label %.preheader109
    i32 5, label %.preheader111
  ]

.preheader111:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph

.preheader109:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader109
  br i1 %i.i, label %.lr.ph120.epil.preheader, label %.lr.ph120

.preheader107:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph126

.preheader105:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader105
  br i1 %i.j, label %.lr.ph132.epil.preheader, label %.lr.ph132

.preheader:                                       ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph138

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ] ; 6 uses
  %.0131 = phi i32 [ %i.ag, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv174 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = and i64 %indvars.iv174, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = load i8, ptr %i.o, align 2, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 %i.m, %i.q
  %i.s = add i32 %i.r, %.0131                     ; 2 uses
  %i.t = add nuw i64 %indvars.iv174, 2
  %i.u = and i64 %i.t, 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 %i.l, ptr %i.v, align 2, !tbaa !11
  %i.w = lshr i32 %i.s, 1
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.k, align 1, !tbaa !11
  %indvars.iv.next175 = or disjoint i64 %indvars.iv174, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next175 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i64 %indvars.iv.next175, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.aa, %i.ae
  %i.ag = add i32 %i.af, %i.s                     ; 4 uses
  %i.ah = add nuw i64 %indvars.iv174, 3
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.z, ptr %i.aj, align 1, !tbaa !11
  %i.ak = lshr i32 %i.ag, 1
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.y, align 1, !tbaa !11
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %niter221.next.1 = add nuw i64 %niter221, 2     ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %.loopexit.loopexit206.unr-lcssa, label %.lr.ph132, !llvm.loop !495

.lr.ph126:                                        ; preds = %.preheader107, %.lr.ph126
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.lr.ph126 ], [ 0, %.preheader107 ] ; 4 uses
  %.1125 = phi i32 [ %i.au, %.lr.ph126 ], [ 0, %.preheader107 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv169 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11  ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i64 %indvars.iv169, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ao, %i.as
  %i.au = add i32 %i.at, %.1125                   ; 3 uses
  %i.av = add nuw i64 %indvars.iv169, 3
  %i.aw = and i64 %i.av, 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  store i8 %i.an, ptr %i.ax, align 1, !tbaa !11
  %i.ay = udiv i32 %i.au, 3
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.am, align 1, !tbaa !11
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit, label %.lr.ph126, !llvm.loop !496

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ] ; 5 uses
  %.2119 = phi i32 [ %i.bx, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv164 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11  ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i64 %indvars.iv164, 6
  %i.be = and i64 %indvars.iv164, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !11
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 %i.bc, %i.bh
  %i.bj = add i32 %i.bi, %.2119                   ; 2 uses
  %i.bk = xor i64 %i.bd, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i8 %i.bb, ptr %i.bl, align 2, !tbaa !11
  %i.bm = lshr i32 %i.bj, 2
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !11
  %indvars.iv.next165 = or disjoint i64 %indvars.iv164, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next165 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11  ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i64 %indvars.iv.next165, 7
  %i.bs = and i64 %indvars.iv.next165, 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bq, %i.bv
  %i.bx = add i32 %i.bw, %i.bj                    ; 4 uses
  %i.by = xor i64 %i.br, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  store i8 %i.bp, ptr %i.bz, align 1, !tbaa !11
  %i.ca = lshr i32 %i.bx, 2
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bo, align 1, !tbaa !11
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %.lr.ph120, !llvm.loop !497

.lr.ph:                                           ; preds = %.preheader111, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader111 ] ; 4 uses
  %.3115 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.preheader111 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = and i64 %indvars.iv, 7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.ce, %i.ci
  %i.ck = add i32 %i.cj, %.3115                   ; 3 uses
  %i.cl = add nuw i64 %indvars.iv, 5
  %i.cm = and i64 %i.cl, 7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 %i.cd, ptr %i.cn, align 1, !tbaa !11
  %i.co = udiv i32 %i.ck, 5
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.cc, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !498

.lr.ph138:                                        ; preds = %.preheader, %.lr.ph138
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph138 ], [ 0, %.preheader ] ; 4 uses
  %.4137 = phi i32 [ %i.cz, %.lr.ph138 ], [ 0, %.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv179 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = trunc nuw nsw i64 %indvars.iv179 to i32
  %i.cu = and i64 %indvars.iv179, 7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %i.cs, %i.cx
  %i.cz = add i32 %i.cy, %.4137                   ; 3 uses
  %i.da = add i32 %4, %i.ct
  %i.db = and i32 %i.da, 7
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dc
  store i8 %i.cr, ptr %i.dd, align 1, !tbaa !11
  %i.de = udiv i32 %i.cz, %4
  %i.df = trunc i32 %i.de to i8
  store i8 %i.df, ptr %i.cq, align 1, !tbaa !11
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.loopexit, label %.lr.ph138, !llvm.loop !499

.loopexit.loopexit206.unr-lcssa:                  ; preds = %.lr.ph132
  br i1 %lcmp.mod217.not, label %.loopexit, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.loopexit.loopexit206.unr-lcssa, %.lr.ph132.preheader
  %indvars.iv174.epil.init = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next175.1, %.loopexit.loopexit206.unr-lcssa ] ; 3 uses
  %.0131.epil.init = phi i32 [ 0, %.lr.ph132.preheader ], [ %i.ag, %.loopexit.loopexit206.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.dg = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv174.epil.init ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = and i64 %indvars.iv174.epil.init, 7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !11
  %i.dm = zext i8 %i.dl to i32
  %i.dn = sub nsw i32 %i.di, %i.dm
  %i.do = add i32 %i.dn, %.0131.epil.init         ; 2 uses
  %i.dp = add nuw i64 %indvars.iv174.epil.init, 2
  %i.dq = and i64 %i.dp, 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  store i8 %i.dh, ptr %i.dr, align 1, !tbaa !11
  %i.ds = lshr i32 %i.do, 1
  %i.dt = trunc i32 %i.ds to i8
  store i8 %i.dt, ptr %i.dg, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit208.unr-lcssa:                  ; preds = %.lr.ph120
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph120.epil.preheader

.lr.ph120.epil.preheader:                         ; preds = %.loopexit.loopexit208.unr-lcssa, %.lr.ph120.preheader
  %indvars.iv164.epil.init = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next165.1, %.loopexit.loopexit208.unr-lcssa ] ; 3 uses
  %.2119.epil.init = phi i32 [ 0, %.lr.ph120.preheader ], [ %i.bx, %.loopexit.loopexit208.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.du = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv164.epil.init ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11  ; 2 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i64 %indvars.iv164.epil.init, 7
  %i.dy = and i64 %indvars.iv164.epil.init, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !11
  %i.eb = zext i8 %i.ea to i32
  %i.ec = sub nsw i32 %i.dw, %i.eb
  %i.ed = add i32 %i.ec, %.2119.epil.init         ; 2 uses
  %i.ee = xor i64 %i.dx, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  store i8 %i.dv, ptr %i.ef, align 1, !tbaa !11
  %i.eg = lshr i32 %i.ed, 2
  %i.eh = trunc i32 %i.eg to i8
  store i8 %i.eh, ptr %i.du, align 1, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph120.epil.preheader, %.loopexit.loopexit208.unr-lcssa, %.lr.ph126, %.lr.ph132.epil.preheader, %.loopexit.loopexit206.unr-lcssa, %.lr.ph138, %.preheader111, %.preheader109, %.preheader107, %.preheader105, %.preheader
  %.593 = phi i32 [ %i.g, %.lr.ph126 ], [ %i.g, %.lr.ph120.epil.preheader ], [ %i.g, %.lr.ph138 ], [ %i.g, %.lr.ph132.epil.preheader ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ 0, %.preheader111 ], [ %i.g, %.loopexit.loopexit206.unr-lcssa ], [ %i.g, %.loopexit.loopexit208.unr-lcssa ], [ %i.g, %.lr.ph ] ; 4 uses
  %.5 = phi i32 [ %i.au, %.lr.ph126 ], [ %i.ed, %.lr.ph120.epil.preheader ], [ %i.cz, %.lr.ph138 ], [ %i.do, %.lr.ph132.epil.preheader ], [ 0, %.preheader ], [ 0, %.preheader105 ], [ 0, %.preheader107 ], [ 0, %.preheader109 ], [ 0, %.preheader111 ], [ %i.ag, %.loopexit.loopexit206.unr-lcssa ], [ %i.bx, %.loopexit.loopexit208.unr-lcssa ], [ %i.ck, %.lr.ph ] ; 2 uses
  %i.ei = icmp slt i32 %.593, %1
  br i1 %i.ei, label %.lr.ph143.preheader, label %._crit_edge

.lr.ph143.preheader:                              ; preds = %.loopexit
  %i.ej = zext i32 %.593 to i64                   ; 4 uses
  %i.ek = sub i32 %1, %.593
  %.neg = add i32 %.593, 1
  %xtraiter222 = and i32 %i.ek, 1
  %lcmp.mod223.not = icmp eq i32 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph143.prol.loopexit, label %.lr.ph143.prol

.lr.ph143.prol:                                   ; preds = %.lr.ph143.preheader
  %i.el = and i64 %i.ej, 7
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11
  %i.eo = zext i8 %i.en to i32
  %i.ep = sub i32 %.5, %i.eo                      ; 2 uses
  %i.eq = udiv i32 %i.ep, %4
  %i.er = trunc i32 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.096144, i64 %i.ej
  store i8 %i.er, ptr %i.es, align 1, !tbaa !11
  %indvars.iv.next185.prol = add nuw nsw i64 %i.ej, 1
  br label %.lr.ph143.prol.loopexit

.lr.ph143.prol.loopexit:                          ; preds = %.lr.ph143.prol, %.lr.ph143.preheader
  %indvars.iv184.unr = phi i64 [ %i.ej, %.lr.ph143.preheader ], [ %indvars.iv.next185.prol, %.lr.ph143.prol ]
  %.6142.unr = phi i32 [ %.5, %.lr.ph143.preheader ], [ %i.ep, %.lr.ph143.prol ]
  %i.et = icmp eq i32 %1, %.neg
  br i1 %i.et, label %._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.1, %.lr.ph143 ], [ %indvars.iv184.unr, %.lr.ph143.prol.loopexit ] ; 4 uses
  %.6142 = phi i32 [ %i.fg, %.lr.ph143 ], [ %.6142.unr, %.lr.ph143.prol.loopexit ]
  %i.eu = and i64 %indvars.iv184, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !11
  %i.ex = zext i8 %i.ew to i32
  %i.ey = sub i32 %.6142, %i.ex                   ; 2 uses
  %i.ez = udiv i32 %i.ey, %4
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv184
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !11
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.fc = and i64 %indvars.iv.next185, 7
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !11
  %i.ff = zext i8 %i.fe to i32
  %i.fg = sub i32 %i.ey, %i.ff                    ; 2 uses
  %i.fh = udiv i32 %i.fg, %4
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next185
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !11
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %i.fk = trunc nuw i64 %indvars.iv.next185.1 to i32
  %i.fl = icmp sgt i32 %1, %i.fk
  br i1 %i.fl, label %.lr.ph143, label %._crit_edge, !llvm.loop !500

._crit_edge:                                      ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143, %.loopexit
  %i.fm = getelementptr inbounds i8, ptr %.096144, i64 %i.e
  %i.fn = add nuw nsw i32 %.095146, 1             ; 2 uses
  %exitcond187.not = icmp eq i32 %i.fn, %2
  br i1 %exitcond187.not, label %._crit_edge149, label %bb.b, !llvm.loop !501

._crit_edge149:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__v_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 2, 0) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.c = sub i32 %2, %4
  %i.d = zext i32 %4 to i64
  %.not128 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64                       ; 8 uses
  %i.f = add i32 %2, 1
  %i.g = sub i32 %i.f, %4                         ; 10 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64
  %wide.trip.count187 = zext i32 %i.g to i64
  %wide.trip.count192 = zext i32 %i.g to i64
  %wide.trip.count197 = zext i32 %i.g to i64
  %wide.trip.count202 = sext i32 %2 to i64        ; 3 uses
  %i.h = add nsw i64 %wide.trip.count202, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %._crit_edge
  %.0110161 = phi i32 [ 0, %.lr.ph163 ], [ %i.dn, %._crit_edge ]
  %.0111159 = phi ptr [ %0, %.lr.ph163 ], [ %i.dm, %._crit_edge ] ; 9 uses
end_hunk_6
begin_hunk_7_@stbtt_PackFontRangesRenderIntoRects:bb.a
  store i32 %i.hz, ptr %7, align 8, !tbaa !436
  store i32 %i.ib, ptr %i.y, align 4, !tbaa !439
  store i32 %i.hu, ptr %i.z, align 8, !tbaa !461
  %i.kq = icmp ne i32 %i.hz, 0
  %i.kr = icmp ne i32 %i.ib, 0
  %or.cond.i = and i1 %i.kq, %i.kr
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  br i1 %or.cond.i, label %bb.aa, label %stbtt_MakeGlyphBitmapSubpixel.exit

bb.aa:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.i
  %i.ks = load ptr, ptr %1, align 8, !tbaa !370
  %i.kt = extractelement <2 x i32> %i.kp, i64 0
  %i.ku = extractelement <2 x i32> %i.kp, i64 1
  %i.kv = extractelement <2 x float> %i.hp, i64 0
  %i.kw = extractelement <2 x float> %i.hp, i64 1
  call void @stbtt_Rasterize(ptr noundef nonnull %7, float noundef 3.500000e-01, ptr noundef %.pre.i, i32 noundef %i.ic, float noundef %i.kv, float noundef %i.kw, float noundef 0.000000e+00, float noundef 0.000000e+00, i32 noundef %i.kt, i32 noundef %i.ku, i32 noundef 1, ptr noundef %i.ks)
  br label %stbtt_MakeGlyphBitmapSubpixel.exit

stbtt_MakeGlyphBitmapSubpixel.exit:               ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.i, %bb.aa
  %i.kx = load ptr, ptr %1, align 8, !tbaa !370   ; 2 uses
  %.val.i162 = load ptr, ptr %i.kx, align 8
  %i.ky = getelementptr i8, ptr %i.kx, i64 16
  %.val20.i = load ptr, ptr %i.ky, align 8, !tbaa !385
  call void %.val20.i(ptr %.val.i162, ptr noundef %.pre.i) #50, !inline_history !510
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  %i.kz = load i32, ptr %i.d, align 4, !tbaa !481 ; 9 uses
  %i.la = icmp ugt i32 %i.kz, 1
  %.pre307.pre320 = load i32, ptr %i.dg, align 4, !tbaa !356 ; 3 uses
  %.pre309.pre322 = load i32, ptr %i.dj, align 4, !tbaa !357 ; 3 uses
  %.pre311.pre324 = load i32, ptr %i.cq, align 4, !tbaa !346 ; 7 uses
  %.pre313.pre326 = load i32, ptr %i.cs, align 4, !tbaa !347 ; 4 uses
  br i1 %i.la, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %stbtt_MakeGlyphBitmapSubpixel.exit
  %i.lb = load ptr, ptr %i.t, align 8, !tbaa !476
  %i.lc = load i32, ptr %i.u, align 8, !tbaa !480 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i64 0, ptr %i.b, align 8
  %i.ld = icmp sgt i32 %.pre313.pre326, 0
  br i1 %i.ld, label %.lr.ph148.i, label %stbtt__h_prefilter.exit

.lr.ph148.i:                                      ; preds = %bb.ab
  %i.le = sext i32 %.pre307.pre320 to i64
  %i.lf = getelementptr inbounds i8, ptr %i.lb, i64 %i.le
  %i.lg = mul nsw i32 %i.lc, %.pre309.pre322
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 %i.lh
  %i.lj = sub i32 %.pre311.pre324, %i.kz          ; 2 uses
  %i.lk = zext i32 %i.kz to i64
  %.not113.i = icmp slt i32 %i.lj, 0              ; 5 uses
  %i.ll = sext i32 %i.lc to i64
  %i.lm = add i32 %i.lj, 1                        ; 10 uses
  %wide.trip.count.i = zext i32 %i.lm to i64      ; 8 uses
  %i.ln = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.lo = icmp eq i64 %i.ln, 0
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod417 = trunc i32 %i.lm to i1
  %xtraiter418 = and i64 %wide.trip.count.i, 1
  %i.lp = icmp eq i64 %i.ln, 0
  %unroll_iter422 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  %lcmp.mod421 = trunc i32 %i.lm to i1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i, %.lr.ph148.i
  %.095146.i = phi i32 [ 0, %.lr.ph148.i ], [ %i.rq, %._crit_edge.i ]
  %.096144.i = phi ptr [ %i.li, %.lr.ph148.i ], [ %i.rp, %._crit_edge.i ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, i8 0, i64 %i.lk, i1 false)
  switch i32 %i.kz, label %.preheader.i [
    i32 2, label %.preheader105.i
    i32 3, label %.preheader107.i
    i32 4, label %.preheader109.i
    i32 5, label %.preheader111.i
  ]

.preheader111.i:                                  ; preds = %bb.ac
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %bb.ac
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph120.i.preheader

.lr.ph120.i.preheader:                            ; preds = %.preheader109.i
  br i1 %i.lo, label %.lr.ph120.i.epil.preheader, label %.lr.ph120.i

.preheader107.i:                                  ; preds = %bb.ac
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph126.i

.preheader105.i:                                  ; preds = %bb.ac
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph132.i.preheader:                            ; preds = %.preheader105.i
  br i1 %i.lp, label %.lr.ph132.i.epil.preheader, label %.lr.ph132.i

.preheader.i:                                     ; preds = %bb.ac
  br i1 %.not113.i, label %.loopexit.i, label %.lr.ph138.i

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %.lr.ph132.i
  %indvars.iv174.i = phi i64 [ %indvars.iv.next175.i.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ] ; 6 uses
  %.0131.i = phi i32 [ %i.mm, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %niter423 = phi i64 [ %niter423.next.1, %.lr.ph132.i ], [ 0, %.lr.ph132.i.preheader ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv174.i ; 2 uses
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !11  ; 2 uses
  %i.ls = zext i8 %i.lr to i32
  %i.lt = and i64 %indvars.iv174.i, 6
  %i.lu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !11
  %i.lw = zext i8 %i.lv to i32
  %i.lx = sub nsw i32 %i.ls, %i.lw
  %i.ly = add i32 %i.lx, %.0131.i                 ; 2 uses
  %i.lz = add nuw nsw i64 %indvars.iv174.i, 2
  %i.ma = and i64 %i.lz, 6
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ma
  store i8 %i.lr, ptr %i.mb, align 2, !tbaa !11
  %i.mc = lshr i32 %i.ly, 1
  %i.md = trunc i32 %i.mc to i8
  store i8 %i.md, ptr %i.lq, align 1, !tbaa !11
  %indvars.iv.next175.i = or disjoint i64 %indvars.iv174.i, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next175.i ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11  ; 2 uses
  %i.mg = zext i8 %i.mf to i32
  %i.mh = and i64 %indvars.iv.next175.i, 7
  %i.mi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !11
  %i.mk = zext i8 %i.mj to i32
  %i.ml = sub nsw i32 %i.mg, %i.mk
  %i.mm = add i32 %i.ml, %i.ly                    ; 4 uses
  %i.mn = add nuw nsw i64 %indvars.iv174.i, 3
  %i.mo = and i64 %i.mn, 7
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mo
  store i8 %i.mf, ptr %i.mp, align 1, !tbaa !11
  %i.mq = lshr i32 %i.mm, 1
  %i.mr = trunc i32 %i.mq to i8
  store i8 %i.mr, ptr %i.me, align 1, !tbaa !11
  %indvars.iv.next175.i.1 = add nuw nsw i64 %indvars.iv174.i, 2 ; 2 uses
  %niter423.next.1 = add nuw i64 %niter423, 2     ; 2 uses
  %niter423.ncmp.1 = icmp eq i64 %niter423.next.1, %unroll_iter422
  br i1 %niter423.ncmp.1, label %.loopexit.i.loopexit403.unr-lcssa, label %.lr.ph132.i, !llvm.loop !495

.lr.ph126.i:                                      ; preds = %.preheader107.i, %.lr.ph126.i
  %indvars.iv169.i = phi i64 [ %indvars.iv.next170.i, %.lr.ph126.i ], [ 0, %.preheader107.i ] ; 4 uses
  %.1125.i = phi i32 [ %i.na, %.lr.ph126.i ], [ 0, %.preheader107.i ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv169.i ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11  ; 2 uses
  %i.mu = zext i8 %i.mt to i32
  %i.mv = and i64 %indvars.iv169.i, 7
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !11
  %i.my = zext i8 %i.mx to i32
  %i.mz = sub nsw i32 %i.mu, %i.my
  %i.na = add i32 %i.mz, %.1125.i                 ; 3 uses
  %i.nb = add nuw nsw i64 %indvars.iv169.i, 3
  %i.nc = and i64 %i.nb, 7
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nc
  store i8 %i.mt, ptr %i.nd, align 1, !tbaa !11
  %i.ne = udiv i32 %i.na, 3
  %i.nf = trunc i32 %i.ne to i8
  store i8 %i.nf, ptr %i.ms, align 1, !tbaa !11
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next170.i, %wide.trip.count.i
  br i1 %exitcond173.not.i, label %.loopexit.i, label %.lr.ph126.i, !llvm.loop !496

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %.lr.ph120.i
  %indvars.iv164.i = phi i64 [ %indvars.iv.next165.i.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ] ; 4 uses
  %.2119.i = phi i32 [ %i.ob, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120.i ], [ 0, %.lr.ph120.i.preheader ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv164.i ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !11  ; 2 uses
  %i.ni = zext i8 %i.nh to i32
  %i.nj = and i64 %indvars.iv164.i, 6             ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nj
  %i.nl = load i8, ptr %i.nk, align 2, !tbaa !11
  %i.nm = zext i8 %i.nl to i32
  %i.nn = sub nsw i32 %i.ni, %i.nm
  %i.no = add i32 %i.nn, %.2119.i                 ; 2 uses
  %i.np = xor i64 %i.nj, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.np
  store i8 %i.nh, ptr %i.nq, align 2, !tbaa !11
  %i.nr = lshr i32 %i.no, 2
  %i.ns = trunc i32 %i.nr to i8
  store i8 %i.ns, ptr %i.ng, align 1, !tbaa !11
  %indvars.iv.next165.i = or disjoint i64 %indvars.iv164.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next165.i ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !11  ; 2 uses
  %i.nv = zext i8 %i.nu to i32
  %i.nw = and i64 %indvars.iv.next165.i, 7        ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !11
  %i.nz = zext i8 %i.ny to i32
  %i.oa = sub nsw i32 %i.nv, %i.nz
  %i.ob = add i32 %i.oa, %i.no                    ; 4 uses
  %i.oc = xor i64 %i.nw, 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oc
  store i8 %i.nu, ptr %i.od, align 1, !tbaa !11
  %i.oe = lshr i32 %i.ob, 2
  %i.of = trunc i32 %i.oe to i8
  store i8 %i.of, ptr %i.nt, align 1, !tbaa !11
  %indvars.iv.next165.i.1 = add nuw nsw i64 %indvars.iv164.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit405.unr-lcssa, label %.lr.ph120.i, !llvm.loop !497

.lr.ph.i:                                         ; preds = %.preheader111.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader111.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.oo, %.lr.ph.i ], [ 0, %.preheader111.i ]
  %i.og = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.i ; 2 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !11  ; 2 uses
  %i.oi = zext i8 %i.oh to i32
  %i.oj = and i64 %indvars.iv.i, 7
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !11
  %i.om = zext i8 %i.ol to i32
  %i.on = sub nsw i32 %i.oi, %i.om
  %i.oo = add i32 %i.on, %.3115.i                 ; 3 uses
  %i.op = add nuw nsw i64 %indvars.iv.i, 5
  %i.oq = and i64 %i.op, 7
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oq
  store i8 %i.oh, ptr %i.or, align 1, !tbaa !11
  %i.os = udiv i32 %i.oo, 5
  %i.ot = trunc i32 %i.os to i8
  store i8 %i.ot, ptr %i.og, align 1, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !498

.lr.ph138.i:                                      ; preds = %.preheader.i, %.lr.ph138.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.lr.ph138.i ], [ 0, %.preheader.i ] ; 4 uses
  %.4137.i = phi i32 [ %i.pd, %.lr.ph138.i ], [ 0, %.preheader.i ]
  %i.ou = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv179.i ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !11  ; 2 uses
  %i.ow = zext i8 %i.ov to i32
  %i.ox = trunc nuw nsw i64 %indvars.iv179.i to i32
  %i.oy = and i64 %indvars.iv179.i, 7
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !11
  %i.pb = zext i8 %i.pa to i32
  %i.pc = sub nsw i32 %i.ow, %i.pb
  %i.pd = add i32 %i.pc, %.4137.i                 ; 3 uses
  %i.pe = add i32 %i.kz, %i.ox
  %i.pf = and i32 %i.pe, 7
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pg
  store i8 %i.ov, ptr %i.ph, align 1, !tbaa !11
  %i.pi = udiv i32 %i.pd, %i.kz
  %i.pj = trunc i32 %i.pi to i8
  store i8 %i.pj, ptr %i.ou, align 1, !tbaa !11
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %wide.trip.count.i
  br i1 %exitcond183.not.i, label %.loopexit.i, label %.lr.ph138.i, !llvm.loop !499

.loopexit.i.loopexit403.unr-lcssa:                ; preds = %.lr.ph132.i
  br i1 %lcmp.mod419.not, label %.loopexit.i, label %.lr.ph132.i.epil.preheader

.lr.ph132.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit403.unr-lcssa, %.lr.ph132.i.preheader
  %indvars.iv174.i.epil.init = phi i64 [ 0, %.lr.ph132.i.preheader ], [ %indvars.iv.next175.i.1, %.loopexit.i.loopexit403.unr-lcssa ] ; 3 uses
  %.0131.i.epil.init = phi i32 [ 0, %.lr.ph132.i.preheader ], [ %i.mm, %.loopexit.i.loopexit403.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod421)
  %i.pk = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv174.i.epil.init ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !11  ; 2 uses
  %i.pm = zext i8 %i.pl to i32
  %i.pn = and i64 %indvars.iv174.i.epil.init, 7
  %i.po = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !11
  %i.pq = zext i8 %i.pp to i32
  %i.pr = sub nsw i32 %i.pm, %i.pq
  %i.ps = add i32 %i.pr, %.0131.i.epil.init       ; 2 uses
  %i.pt = add nuw nsw i64 %indvars.iv174.i.epil.init, 2
  %i.pu = and i64 %i.pt, 7
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pu
  store i8 %i.pl, ptr %i.pv, align 1, !tbaa !11
  %i.pw = lshr i32 %i.ps, 1
  %i.px = trunc i32 %i.pw to i8
  store i8 %i.px, ptr %i.pk, align 1, !tbaa !11
  br label %.loopexit.i

.loopexit.i.loopexit405.unr-lcssa:                ; preds = %.lr.ph120.i
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph120.i.epil.preheader

.lr.ph120.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit405.unr-lcssa, %.lr.ph120.i.preheader
  %indvars.iv164.i.epil.init = phi i64 [ 0, %.lr.ph120.i.preheader ], [ %indvars.iv.next165.i.1, %.loopexit.i.loopexit405.unr-lcssa ] ; 2 uses
  %.2119.i.epil.init = phi i32 [ 0, %.lr.ph120.i.preheader ], [ %i.ob, %.loopexit.i.loopexit405.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod417)
  %i.py = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv164.i.epil.init ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !11  ; 2 uses
  %i.qa = zext i8 %i.pz to i32
  %i.qb = and i64 %indvars.iv164.i.epil.init, 7   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !11
  %i.qe = zext i8 %i.qd to i32
  %i.qf = sub nsw i32 %i.qa, %i.qe
  %i.qg = add i32 %i.qf, %.2119.i.epil.init       ; 2 uses
  %i.qh = xor i64 %i.qb, 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qh
  store i8 %i.pz, ptr %i.qi, align 1, !tbaa !11
  %i.qj = lshr i32 %i.qg, 2
  %i.qk = trunc i32 %i.qj to i8
  store i8 %i.qk, ptr %i.py, align 1, !tbaa !11
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph120.i.epil.preheader, %.loopexit.i.loopexit405.unr-lcssa, %.lr.ph126.i, %.lr.ph132.i.epil.preheader, %.loopexit.i.loopexit403.unr-lcssa, %.lr.ph138.i, %.preheader.i, %.preheader105.i, %.preheader107.i, %.preheader109.i, %.preheader111.i
  %.593.i = phi i32 [ %i.lm, %.lr.ph138.i ], [ %i.lm, %.lr.ph132.i.epil.preheader ], [ %i.lm, %.lr.ph126.i ], [ %i.lm, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.lm, %.loopexit.i.loopexit403.unr-lcssa ], [ %i.lm, %.loopexit.i.loopexit405.unr-lcssa ], [ %i.lm, %.lr.ph.i ] ; 4 uses
  %.5.i = phi i32 [ %i.pd, %.lr.ph138.i ], [ %i.ps, %.lr.ph132.i.epil.preheader ], [ %i.na, %.lr.ph126.i ], [ %i.qg, %.lr.ph120.i.epil.preheader ], [ 0, %.preheader.i ], [ 0, %.preheader105.i ], [ 0, %.preheader107.i ], [ 0, %.preheader109.i ], [ 0, %.preheader111.i ], [ %i.mm, %.loopexit.i.loopexit403.unr-lcssa ], [ %i.ob, %.loopexit.i.loopexit405.unr-lcssa ], [ %i.oo, %.lr.ph.i ] ; 2 uses
  %i.ql = icmp slt i32 %.593.i, %.pre311.pre324
  br i1 %i.ql, label %.lr.ph143.preheader.i, label %._crit_edge.i

.lr.ph143.preheader.i:                            ; preds = %.loopexit.i
  %i.qm = zext i32 %.593.i to i64                 ; 4 uses
  %i.qn = sub i32 %.pre311.pre324, %.593.i
  %.neg = add i32 %.593.i, 1
  %xtraiter424 = and i32 %i.qn, 1
  %lcmp.mod425.not = icmp eq i32 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph143.i.prol.loopexit, label %.lr.ph143.i.prol

.lr.ph143.i.prol:                                 ; preds = %.lr.ph143.preheader.i
  %i.qo = and i64 %i.qm, 7
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !11
  %i.qr = zext i8 %i.qq to i32
  %i.qs = sub i32 %.5.i, %i.qr                    ; 2 uses
  %i.qt = udiv i32 %i.qs, %i.kz
  %i.qu = trunc i32 %i.qt to i8
  %i.qv = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %i.qm
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !11
  %indvars.iv.next185.i.prol = add nuw nsw i64 %i.qm, 1
  br label %.lr.ph143.i.prol.loopexit

.lr.ph143.i.prol.loopexit:                        ; preds = %.lr.ph143.i.prol, %.lr.ph143.preheader.i
  %indvars.iv184.i.unr = phi i64 [ %i.qm, %.lr.ph143.preheader.i ], [ %indvars.iv.next185.i.prol, %.lr.ph143.i.prol ]
  %.6142.i.unr = phi i32 [ %.5.i, %.lr.ph143.preheader.i ], [ %i.qs, %.lr.ph143.i.prol ]
  %i.qw = icmp eq i32 %.pre311.pre324, %.neg
  br i1 %i.qw, label %._crit_edge.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %.lr.ph143.i ], [ %indvars.iv184.i.unr, %.lr.ph143.i.prol.loopexit ] ; 4 uses
  %.6142.i = phi i32 [ %i.rj, %.lr.ph143.i ], [ %.6142.i.unr, %.lr.ph143.i.prol.loopexit ]
  %i.qx = and i64 %indvars.iv184.i, 7
  %i.qy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !11
  %i.ra = zext i8 %i.qz to i32
  %i.rb = sub i32 %.6142.i, %i.ra                 ; 2 uses
  %i.rc = udiv i32 %i.rb, %i.kz
  %i.rd = trunc i32 %i.rc to i8
  %i.re = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv184.i
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !11
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.rf = and i64 %indvars.iv.next185.i, 7
  %i.rg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !11
  %i.ri = zext i8 %i.rh to i32
  %i.rj = sub i32 %i.rb, %i.ri                    ; 2 uses
  %i.rk = udiv i32 %i.rj, %i.kz
  %i.rl = trunc i32 %i.rk to i8
  %i.rm = getelementptr inbounds nuw i8, ptr %.096144.i, i64 %indvars.iv.next185.i
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !11
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 2 uses
  %i.rn = trunc nuw i64 %indvars.iv.next185.i.1 to i32
  %i.ro = icmp sgt i32 %.pre311.pre324, %i.rn
  br i1 %i.ro, label %.lr.ph143.i, label %._crit_edge.i, !llvm.loop !500

._crit_edge.i:                                    ; preds = %.lr.ph143.i.prol.loopexit, %.lr.ph143.i, %.loopexit.i
  %i.rp = getelementptr inbounds i8, ptr %.096144.i, i64 %i.ll
  %i.rq = add nuw nsw i32 %.095146.i, 1           ; 2 uses
  %exitcond187.not.i = icmp eq i32 %i.rq, %.pre313.pre326
  br i1 %exitcond187.not.i, label %stbtt__h_prefilter.exit.loopexit, label %bb.ac, !llvm.loop !501

stbtt__h_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i
  %.pre307.pre.pre = load i32, ptr %i.dg, align 4, !tbaa !356
  %.pre309.pre.pre = load i32, ptr %i.dj, align 4, !tbaa !357
  %.pre311.pre.pre = load i32, ptr %i.cq, align 4, !tbaa !346
  %.pre313.pre.pre = load i32, ptr %i.cs, align 4, !tbaa !347
  br label %stbtt__h_prefilter.exit

stbtt__h_prefilter.exit:                          ; preds = %stbtt__h_prefilter.exit.loopexit, %bb.ab
  %.pre313.pre = phi i32 [ %.pre313.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre313.pre326, %bb.ab ]
  %.pre311.pre = phi i32 [ %.pre311.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre311.pre324, %bb.ab ]
  %.pre309.pre = phi i32 [ %.pre309.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre309.pre322, %bb.ab ]
  %.pre307.pre = phi i32 [ %.pre307.pre.pre, %stbtt__h_prefilter.exit.loopexit ], [ %.pre307.pre320, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %bb.ad

bb.ad:                                            ; preds = %stbtt__h_prefilter.exit, %stbtt_MakeGlyphBitmapSubpixel.exit
  %.pre313 = phi i32 [ %.pre313.pre, %stbtt__h_prefilter.exit ], [ %.pre313.pre326, %stbtt_MakeGlyphBitmapSubpixel.exit ] ; 6 uses
  %.pre311 = phi i32 [ %.pre311.pre, %stbtt__h_prefilter.exit ], [ %.pre311.pre324, %stbtt_MakeGlyphBitmapSubpixel.exit ] ; 4 uses
  %.pre309 = phi i32 [ %.pre309.pre, %stbtt__h_prefilter.exit ], [ %.pre309.pre322, %stbtt_MakeGlyphBitmapSubpixel.exit ] ; 3 uses
  %.pre307 = phi i32 [ %.pre307.pre, %stbtt__h_prefilter.exit ], [ %.pre307.pre320, %stbtt_MakeGlyphBitmapSubpixel.exit ] ; 3 uses
  %i.rr = load i32, ptr %i.e, align 8, !tbaa !482 ; 10 uses
  %i.rs = icmp ugt i32 %i.rr, 1
  br i1 %i.rs, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.rt = load ptr, ptr %i.t, align 8, !tbaa !476
  %i.ru = load i32, ptr %i.u, align 8, !tbaa !480 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8
  %i.rv = icmp sgt i32 %.pre311, 0
  br i1 %i.rv, label %.lr.ph163.i, label %stbtt__v_prefilter.exit

.lr.ph163.i:                                      ; preds = %bb.ae
  %i.rw = sext i32 %.pre307 to i64
  %i.rx = getelementptr inbounds i8, ptr %i.rt, i64 %i.rw
  %i.ry = mul nsw i32 %i.ru, %.pre309
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %i.rx, i64 %i.rz
  %i.sb = sub i32 %.pre313, %i.rr                 ; 2 uses
  %i.sc = zext i32 %i.rr to i64
  %.not128.i = icmp slt i32 %i.sb, 0              ; 5 uses
  %i.sd = sext i32 %i.ru to i64                   ; 10 uses
  %i.se = add i32 %i.sb, 1                        ; 8 uses
  %wide.trip.count.i163 = zext i32 %i.se to i64   ; 6 uses
  %wide.trip.count202.i = sext i32 %.pre313 to i64 ; 3 uses
  %xtraiter426 = and i64 %wide.trip.count.i163, 1
  %i.sf = icmp eq i32 %.pre313, %i.rr
  %unroll_iter430 = and i64 %wide.trip.count.i163, 4294967294
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  %lcmp.mod429 = trunc i32 %i.se to i1
  %i.sg = add nsw i64 %wide.trip.count202.i, -1
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i171, %.lr.ph163.i
  %.0110161.i = phi i32 [ 0, %.lr.ph163.i ], [ %i.xn, %._crit_edge.i171 ]
  %.0111159.i = phi ptr [ %i.sa, %.lr.ph163.i ], [ %i.xm, %._crit_edge.i171 ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.sc, i1 false)
  switch i32 %i.rr, label %.preheader.i177 [
    i32 2, label %.preheader120.i
    i32 3, label %.preheader122.i
    i32 4, label %.preheader124.i
    i32 5, label %.preheader126.i
  ]

.preheader126.i:                                  ; preds = %bb.af
  br i1 %.not128.i, label %.loopexit.i169, label %.lr.ph.i165

.preheader124.i:                                  ; preds = %bb.af
  br i1 %.not128.i, label %.loopexit.i169, label %.lr.ph135.i.preheader

.lr.ph135.i.preheader:                            ; preds = %.preheader124.i
  br i1 %i.sf, label %.lr.ph135.i.epil.preheader, label %.lr.ph135.i

.preheader122.i:                                  ; preds = %bb.af
  br i1 %.not128.i, label %.loopexit.i169, label %.lr.ph141.i

.preheader120.i:                                  ; preds = %bb.af
  br i1 %.not128.i, label %.loopexit.i169, label %.lr.ph147.i

.preheader.i177:                                  ; preds = %bb.af
  br i1 %.not128.i, label %.loopexit.i169, label %.lr.ph153.i

.lr.ph147.i:                                      ; preds = %.preheader120.i, %.lr.ph147.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %.lr.ph147.i ], [ 0, %.preheader120.i ] ; 4 uses
  %.0146.i = phi i32 [ %i.sq, %.lr.ph147.i ], [ 0, %.preheader120.i ]
  %i.sh = mul nsw i64 %indvars.iv189.i, %i.sd
  %i.si = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.sh ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !11  ; 2 uses
  %i.sk = zext i8 %i.sj to i32
  %i.sl = and i64 %indvars.iv189.i, 7
  %i.sm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !11
  %i.so = zext i8 %i.sn to i32
  %i.sp = sub nsw i32 %i.sk, %i.so
  %i.sq = add i32 %i.sp, %.0146.i                 ; 3 uses
  %i.sr = add nuw nsw i64 %indvars.iv189.i, 2
  %i.ss = and i64 %i.sr, 7
  %i.st = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ss
  store i8 %i.sj, ptr %i.st, align 1, !tbaa !11
  %i.su = lshr i32 %i.sq, 1
  %i.sv = trunc i32 %i.su to i8
  store i8 %i.sv, ptr %i.si, align 1, !tbaa !11
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count.i163
  br i1 %exitcond193.not.i, label %.loopexit.i169, label %.lr.ph147.i, !llvm.loop !502

.lr.ph141.i:                                      ; preds = %.preheader122.i, %.lr.ph141.i
  %indvars.iv184.i175 = phi i64 [ %indvars.iv.next185.i176, %.lr.ph141.i ], [ 0, %.preheader122.i ] ; 4 uses
  %.1140.i = phi i32 [ %i.tf, %.lr.ph141.i ], [ 0, %.preheader122.i ]
  %i.sw = mul nsw i64 %indvars.iv184.i175, %i.sd
  %i.sx = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.sw ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !11  ; 2 uses
  %i.sz = zext i8 %i.sy to i32
  %i.ta = and i64 %indvars.iv184.i175, 7
  %i.tb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !11
  %i.td = zext i8 %i.tc to i32
  %i.te = sub nsw i32 %i.sz, %i.td
  %i.tf = add i32 %i.te, %.1140.i                 ; 3 uses
  %i.tg = add nuw nsw i64 %indvars.iv184.i175, 3
  %i.th = and i64 %i.tg, 7
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.th
  store i8 %i.sy, ptr %i.ti, align 1, !tbaa !11
  %i.tj = udiv i32 %i.tf, 3
  %i.tk = trunc i32 %i.tj to i8
  store i8 %i.tk, ptr %i.sx, align 1, !tbaa !11
  %indvars.iv.next185.i176 = add nuw nsw i64 %indvars.iv184.i175, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i176, %wide.trip.count.i163
  br i1 %exitcond188.not.i, label %.loopexit.i169, label %.lr.ph141.i, !llvm.loop !503

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %indvars.iv179.i172 = phi i64 [ %indvars.iv.next180.i173.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ] ; 4 uses
  %.2134.i = phi i32 [ %i.ui, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %niter431 = phi i64 [ %niter431.next.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %i.tl = mul nsw i64 %indvars.iv179.i172, %i.sd
  %i.tm = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.tl ; 2 uses
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !11  ; 2 uses
  %i.to = zext i8 %i.tn to i32
  %i.tp = and i64 %indvars.iv179.i172, 6          ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tp
  %i.tr = load i8, ptr %i.tq, align 2, !tbaa !11
  %i.ts = zext i8 %i.tr to i32
  %i.tt = sub nsw i32 %i.to, %i.ts
  %i.tu = add i32 %i.tt, %.2134.i                 ; 2 uses
  %i.tv = xor i64 %i.tp, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tv
  store i8 %i.tn, ptr %i.tw, align 2, !tbaa !11
  %i.tx = lshr i32 %i.tu, 2
  %i.ty = trunc i32 %i.tx to i8
  store i8 %i.ty, ptr %i.tm, align 1, !tbaa !11
  %indvars.iv.next180.i173 = or disjoint i64 %indvars.iv179.i172, 1 ; 2 uses
  %i.tz = mul nsw i64 %indvars.iv.next180.i173, %i.sd
  %i.ua = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.tz ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !11  ; 2 uses
  %i.uc = zext i8 %i.ub to i32
  %i.ud = and i64 %indvars.iv.next180.i173, 7     ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !11
  %i.ug = zext i8 %i.uf to i32
  %i.uh = sub nsw i32 %i.uc, %i.ug
  %i.ui = add i32 %i.uh, %i.tu                    ; 4 uses
  %i.uj = xor i64 %i.ud, 4
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uj
  store i8 %i.ub, ptr %i.uk, align 1, !tbaa !11
  %i.ul = lshr i32 %i.ui, 2
  %i.um = trunc i32 %i.ul to i8
  store i8 %i.um, ptr %i.ua, align 1, !tbaa !11
  %indvars.iv.next180.i173.1 = add nuw nsw i64 %indvars.iv179.i172, 2 ; 2 uses
  %niter431.next.1 = add nuw i64 %niter431, 2     ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %.loopexit.i169.loopexit401.unr-lcssa, label %.lr.ph135.i, !llvm.loop !504

.lr.ph.i165:                                      ; preds = %.preheader126.i, %.lr.ph.i165
  %indvars.iv.i166 = phi i64 [ %indvars.iv.next.i167, %.lr.ph.i165 ], [ 0, %.preheader126.i ] ; 4 uses
  %.3130.i = phi i32 [ %i.uw, %.lr.ph.i165 ], [ 0, %.preheader126.i ]
  %i.un = mul nsw i64 %indvars.iv.i166, %i.sd
  %i.uo = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.un ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !11  ; 2 uses
  %i.uq = zext i8 %i.up to i32
  %i.ur = and i64 %indvars.iv.i166, 7
  %i.us = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !11
  %i.uu = zext i8 %i.ut to i32
  %i.uv = sub nsw i32 %i.uq, %i.uu
  %i.uw = add i32 %i.uv, %.3130.i                 ; 3 uses
  %i.ux = add nuw nsw i64 %indvars.iv.i166, 5
  %i.uy = and i64 %i.ux, 7
  %i.uz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uy
  store i8 %i.up, ptr %i.uz, align 1, !tbaa !11
  %i.va = udiv i32 %i.uw, 5
  %i.vb = trunc i32 %i.va to i8
  store i8 %i.vb, ptr %i.uo, align 1, !tbaa !11
  %indvars.iv.next.i167 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i168 = icmp eq i64 %indvars.iv.next.i167, %wide.trip.count.i163
  br i1 %exitcond.not.i168, label %.loopexit.i169, label %.lr.ph.i165, !llvm.loop !505

.lr.ph153.i:                                      ; preds = %.preheader.i177, %.lr.ph153.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i, %.lr.ph153.i ], [ 0, %.preheader.i177 ] ; 4 uses
  %.4152.i = phi i32 [ %i.vm, %.lr.ph153.i ], [ 0, %.preheader.i177 ]
  %i.vc = mul nsw i64 %indvars.iv194.i, %i.sd
  %i.vd = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.vc ; 2 uses
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !11  ; 2 uses
  %i.vf = zext i8 %i.ve to i32
  %i.vg = trunc nuw nsw i64 %indvars.iv194.i to i32
  %i.vh = and i64 %indvars.iv194.i, 7
  %i.vi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vh
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !11
  %i.vk = zext i8 %i.vj to i32
  %i.vl = sub nsw i32 %i.vf, %i.vk
  %i.vm = add i32 %i.vl, %.4152.i                 ; 3 uses
  %i.vn = add i32 %i.rr, %i.vg
  %i.vo = and i32 %i.vn, 7
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vp
  store i8 %i.ve, ptr %i.vq, align 1, !tbaa !11
  %i.vr = udiv i32 %i.vm, %i.rr
  %i.vs = trunc i32 %i.vr to i8
  store i8 %i.vs, ptr %i.vd, align 1, !tbaa !11
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %indvars.iv.next195.i, %wide.trip.count.i163
  br i1 %exitcond198.not.i, label %.loopexit.i169, label %.lr.ph153.i, !llvm.loop !506

.loopexit.i169.loopexit401.unr-lcssa:             ; preds = %.lr.ph135.i
  br i1 %lcmp.mod427.not, label %.loopexit.i169, label %.lr.ph135.i.epil.preheader

.lr.ph135.i.epil.preheader:                       ; preds = %.loopexit.i169.loopexit401.unr-lcssa, %.lr.ph135.i.preheader
  %indvars.iv179.i172.epil.init = phi i64 [ 0, %.lr.ph135.i.preheader ], [ %indvars.iv.next180.i173.1, %.loopexit.i169.loopexit401.unr-lcssa ] ; 2 uses
  %.2134.i.epil.init = phi i32 [ 0, %.lr.ph135.i.preheader ], [ %i.ui, %.loopexit.i169.loopexit401.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.vt = mul nsw i64 %indvars.iv179.i172.epil.init, %i.sd
  %i.vu = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.vt ; 2 uses
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !11  ; 2 uses
  %i.vw = zext i8 %i.vv to i32
  %i.vx = and i64 %indvars.iv179.i172.epil.init, 7 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !11
  %i.wa = zext i8 %i.vz to i32
  %i.wb = sub nsw i32 %i.vw, %i.wa
  %i.wc = add i32 %i.wb, %.2134.i.epil.init       ; 2 uses
  %i.wd = xor i64 %i.vx, 4
  %i.we = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wd
  store i8 %i.vv, ptr %i.we, align 1, !tbaa !11
  %i.wf = lshr i32 %i.wc, 2
  %i.wg = trunc i32 %i.wf to i8
  store i8 %i.wg, ptr %i.vu, align 1, !tbaa !11
  br label %.loopexit.i169

.loopexit.i169:                                   ; preds = %.lr.ph.i165, %.lr.ph135.i.epil.preheader, %.loopexit.i169.loopexit401.unr-lcssa, %.lr.ph141.i, %.lr.ph147.i, %.lr.ph153.i, %.preheader.i177, %.preheader120.i, %.preheader122.i, %.preheader124.i, %.preheader126.i
  %.5108.i = phi i32 [ %i.se, %.lr.ph153.i ], [ %i.se, %.lr.ph147.i ], [ %i.se, %.lr.ph141.i ], [ %i.se, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i177 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.se, %.loopexit.i169.loopexit401.unr-lcssa ], [ %i.se, %.lr.ph.i165 ] ; 2 uses
  %.5.i170 = phi i32 [ %i.vm, %.lr.ph153.i ], [ %i.sq, %.lr.ph147.i ], [ %i.tf, %.lr.ph141.i ], [ %i.wc, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i177 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.ui, %.loopexit.i169.loopexit401.unr-lcssa ], [ %i.uw, %.lr.ph.i165 ] ; 2 uses
  %i.wh = icmp slt i32 %.5108.i, %.pre313
  br i1 %i.wh, label %.lr.ph158.preheader.i, label %._crit_edge.i171

.lr.ph158.preheader.i:                            ; preds = %.loopexit.i169
  %i.wi = sext i32 %.5108.i to i64                ; 6 uses
  %i.wj = sub nsw i64 %wide.trip.count202.i, %i.wi
  %xtraiter432 = and i64 %i.wj, 1
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph158.i.prol.loopexit, label %.lr.ph158.i.prol

.lr.ph158.i.prol:                                 ; preds = %.lr.ph158.preheader.i
  %i.wk = and i64 %i.wi, 7
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !11
  %i.wn = zext i8 %i.wm to i32
  %i.wo = sub i32 %.5.i170, %i.wn                 ; 2 uses
  %i.wp = udiv i32 %i.wo, %i.rr
  %i.wq = trunc i32 %i.wp to i8
  %i.wr = mul nsw i64 %i.wi, %i.sd
  %i.ws = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.wr
  store i8 %i.wq, ptr %i.ws, align 1, !tbaa !11
  %indvars.iv.next200.i.prol = add nsw i64 %i.wi, 1
  br label %.lr.ph158.i.prol.loopexit

.lr.ph158.i.prol.loopexit:                        ; preds = %.lr.ph158.i.prol, %.lr.ph158.preheader.i
  %indvars.iv199.i.unr = phi i64 [ %i.wi, %.lr.ph158.preheader.i ], [ %indvars.iv.next200.i.prol, %.lr.ph158.i.prol ]
  %.6157.i.unr = phi i32 [ %.5.i170, %.lr.ph158.preheader.i ], [ %i.wo, %.lr.ph158.i.prol ]
  %i.wt = icmp eq i64 %i.sg, %i.wi
  br i1 %i.wt, label %._crit_edge.i171, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.i ], [ %indvars.iv199.i.unr, %.lr.ph158.i.prol.loopexit ] ; 4 uses
  %.6157.i = phi i32 [ %i.xh, %.lr.ph158.i ], [ %.6157.i.unr, %.lr.ph158.i.prol.loopexit ]
  %i.wu = and i64 %indvars.iv199.i, 7
  %i.wv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !11
  %i.wx = zext i8 %i.ww to i32
  %i.wy = sub i32 %.6157.i, %i.wx                 ; 2 uses
  %i.wz = udiv i32 %i.wy, %i.rr
  %i.xa = trunc i32 %i.wz to i8
  %i.xb = mul nsw i64 %indvars.iv199.i, %i.sd
  %i.xc = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.xb
  store i8 %i.xa, ptr %i.xc, align 1, !tbaa !11
  %indvars.iv.next200.i = add nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.xd = and i64 %indvars.iv.next200.i, 7
  %i.xe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xd
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !11
  %i.xg = zext i8 %i.xf to i32
  %i.xh = sub i32 %i.wy, %i.xg                    ; 2 uses
  %i.xi = udiv i32 %i.xh, %i.rr
  %i.xj = trunc i32 %i.xi to i8
  %i.xk = mul nsw i64 %indvars.iv.next200.i, %i.sd
  %i.xl = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.xk
  store i8 %i.xj, ptr %i.xl, align 1, !tbaa !11
  %indvars.iv.next200.i.1 = add nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %exitcond203.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %wide.trip.count202.i
  br i1 %exitcond203.not.i.1, label %._crit_edge.i171, label %.lr.ph158.i, !llvm.loop !507

._crit_edge.i171:                                 ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i, %.loopexit.i169
  %i.xm = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 1
  %i.xn = add nuw nsw i32 %.0110161.i, 1          ; 2 uses
  %exitcond204.not.i = icmp eq i32 %i.xn, %.pre311
  br i1 %exitcond204.not.i, label %stbtt__v_prefilter.exit.loopexit, label %bb.af, !llvm.loop !508

stbtt__v_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i171
  %.pre306.pre = load i32, ptr %i.dg, align 4, !tbaa !356
  %.pre308.pre = load i32, ptr %i.dj, align 4, !tbaa !357
  %.pre310.pre = load i32, ptr %i.cq, align 4, !tbaa !346
  %.pre312.pre = load i32, ptr %i.cs, align 4, !tbaa !347
  br label %stbtt__v_prefilter.exit

stbtt__v_prefilter.exit:                          ; preds = %stbtt__v_prefilter.exit.loopexit, %bb.ae
  %.pre312 = phi i32 [ %.pre312.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre313, %bb.ae ]
  %.pre310 = phi i32 [ %.pre310.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre311, %bb.ae ]
  %.pre308 = phi i32 [ %.pre308.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre309, %bb.ae ]
  %.pre306 = phi i32 [ %.pre306.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre307, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ag

bb.ag:                                            ; preds = %stbtt__v_prefilter.exit, %bb.ad
  %i.xo = phi i32 [ %.pre312, %stbtt__v_prefilter.exit ], [ %.pre313, %bb.ad ] ; 2 uses
  %i.xp = phi i32 [ %.pre310, %stbtt__v_prefilter.exit ], [ %.pre311, %bb.ad ] ; 2 uses
  %i.xq = phi i32 [ %.pre308, %stbtt__v_prefilter.exit ], [ %.pre309, %bb.ad ] ; 2 uses
  %i.xr = phi i32 [ %.pre306, %stbtt__v_prefilter.exit ], [ %.pre307, %bb.ad ] ; 2 uses
  %i.xs = trunc i32 %i.xr to i16
  store i16 %i.xs, ptr %i.cv, align 4, !tbaa !511
  %i.xt = trunc i32 %i.xq to i16
  %i.xu = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.xt, ptr %i.xu, align 2, !tbaa !513
  %i.xv = add nsw i32 %i.xp, %i.xr
  %i.xw = trunc i32 %i.xv to i16
  %i.xx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i16 %i.xw, ptr %i.xx, align 4, !tbaa !514
  %i.xy = add nsw i32 %i.xo, %i.xq
  %i.xz = trunc i32 %i.xy to i16
  %i.ya = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %i.xz, ptr %i.ya, align 2, !tbaa !515
  %i.yb = sitofp i16 %i.eo to float
  %i.yc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.yd = extractelement <2 x i32> %i.hq, i64 0
  %i.ye = add nsw i32 %i.xp, %i.yd
  %i.yf = sitofp i32 %i.ye to float
  %i.yg = shufflevector <2 x i32> %i.hq, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yh = sitofp <4 x i32> %i.yg to <4 x float>
  %i.yi = insertelement <4 x float> %i.yh, float %i.bm, i64 2
  %i.yj = insertelement <4 x float> %i.yi, float %i.yf, i64 3
  %i.yk = insertelement <4 x float> %i.ci, float %i.yb, i64 2
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ym = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yj, <4 x float> %i.yl, <4 x float> %i.cm)
  store <4 x float> %i.ym, ptr %i.yc, align 4, !tbaa !8
  %i.yn = extractelement <2 x i32> %i.hq, i64 1
  %i.yo = add nsw i32 %i.xo, %i.yn
  %i.yp = sitofp i32 %i.yo to float
  %i.yq = call float @llvm.fmuladd.f32(float %i.yp, float %i.cj, float %i.ch)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store float %i.yq, ptr %i.yr, align 4, !tbaa !516
  %i.ys = icmp eq i32 %i.de, 0
  %i.yt = trunc nuw nsw i64 %indvars.iv293 to i32
  %spec.select = select i1 %i.ys, i32 %i.yt, i32 %.1140262
  br label %.thread241

bb.ah:                                            ; preds = %bb.f
  %i.yu = load i32, ptr %i.aa, align 8, !tbaa !483
  %.not153.not = icmp eq i32 %i.yu, 0
  br i1 %.not153.not, label %bb.ai, label %.thread241

bb.ai:                                            ; preds = %bb.ah
  %i.yv = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !347
  %i.yx = icmp eq i32 %i.yw, 0
  %i.yy = icmp sgt i32 %.1140262, -1
  %or.cond = select i1 %i.yx, i1 %i.yy, i1 false
  br i1 %or.cond, label %bb.aj, label %.thread241

bb.aj:                                            ; preds = %bb.ai
  %i.yz = load ptr, ptr %i.cc, align 8, !tbaa !509 ; 2 uses
  %i.za = getelementptr inbounds nuw [28 x i8], ptr %i.yz, i64 %indvars.iv293
  %i.zb = zext nneg i32 %.1140262 to i64
  %i.zc = getelementptr inbounds nuw [28 x i8], ptr %i.yz, i64 %i.zb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.za, ptr noundef nonnull align 4 dereferenceable(28) %i.zc, i64 28, i1 false), !tbaa.struct !517
  br label %.thread241

.thread241:                                       ; preds = %bb.g, %bb.ah, %bb.e, %bb.ai, %bb.aj, %bb.ag
  %.3 = phi i32 [ %spec.select, %bb.ag ], [ %.1140262, %bb.ah ], [ %.1140262, %bb.aj ], [ %.1140262, %bb.ai ], [ %.1140262, %bb.e ], [ %.1140262, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1263, %bb.ag ], [ 0, %bb.ah ], [ %.1263, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.zd = load i32, ptr %i.bq, align 8, !tbaa !490
  %i.ze = sext i32 %i.zd to i64
  %i.zf = icmp slt i64 %indvars.iv.next294, %i.ze
  br i1 %i.zf, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !518

._crit_edge.loopexit:                             ; preds = %.thread241
  %i.zg = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %stbtt__oversample_shift.exit
  %.1143.lcssa = phi i32 [ %.0142267, %stbtt__oversample_shift.exit ], [ %i.zg, %._crit_edge.loopexit ]
  %.1140.lcssa = phi i32 [ %.0139268, %stbtt__oversample_shift.exit ], [ %.3, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0269, %stbtt__oversample_shift.exit ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge272, label %bb.b, !llvm.loop !519

._crit_edge272:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  store <2 x i32> %i.f, ptr %i.d, align 4, !tbaa !10
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @stbtt_PackFontRangesPackRects(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477
  %i.c = tail call i32 @stbrp_pack_rects(ptr noundef %i.b, ptr noundef %1, i32 noundef %2) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRanges(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %5 = alloca %struct.stbtt_fontinfo, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.preheader54.preheader, label %._crit_edge60

.preheader54.preheader:                           ; preds = %bb.a
  %wide.trip.count65 = zext nneg i32 %4 to i64    ; 3 uses
  br label %.preheader54

.preheader54:                                     ; preds = %.preheader54.preheader, %._crit_edge
  %indvars.iv62 = phi i64 [ 0, %.preheader54.preheader ], [ %indvars.iv.next63, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv62 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !490  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader54
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !509  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %wide.trip.count70 = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph59.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader
  %n.vec = and i64 %wide.trip.count65, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.y = load i32, ptr %i.q, align 8, !tbaa !490
  %i.z = load i32, ptr %i.r, align 8, !tbaa !490
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !490
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !490
  %i.ac = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 2
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 3
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !490
  %i.ah = load i32, ptr %i.v, align 8, !tbaa !490
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !490
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !490
  %i.ak = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 1
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 2
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 3
  %i.ao = add <4 x i32> %i.af, %vec.phi           ; 2 uses
  %i.ap = add <4 x i32> %i.an, %vec.phi74         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  br i1 %cmp.n, label %._crit_edge60.loopexit, label %.lr.ph59.preheader75

.lr.ph59.preheader75:                             ; preds = %.lr.ph59.preheader, %middle.block
  %indvars.iv67.ph = phi i64 [ 0, %.lr.ph59.preheader ], [ %n.vec, %middle.block ]
  %.058.ph = phi i32 [ 0, %.lr.ph59.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph59

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  store i64 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i64 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  store i64 0, ptr %i.ay, align 4
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !521

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.az = getelementptr inbounds nuw [28 x i8], ptr %i.g, i64 %indvars.iv.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  store i64 0, ptr %i.az, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !522

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.preheader54
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.lr.ph59.preheader, label %.preheader54, !llvm.loop !523

.lr.ph59:                                         ; preds = %.lr.ph59.preheader75, %.lr.ph59
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph59 ], [ %indvars.iv67.ph, %.lr.ph59.preheader75 ] ; 2 uses
  %.058 = phi i32 [ %i.bd, %.lr.ph59 ], [ %.058.ph, %.lr.ph59.preheader75 ]
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !490
  %i.bd = add nsw i32 %i.bc, %.058                ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge60.loopexit, label %.lr.ph59, !llvm.loop !524

._crit_edge60.loopexit:                           ; preds = %.lr.ph59, %middle.block
  %.lcssa = phi i32 [ %i.ar, %middle.block ], [ %i.bd, %.lr.ph59 ]
  %i.be = sext i32 %.lcssa to i64
  %i.bf = mul nsw i64 %i.be, 24
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %bb.a, %._crit_edge60.loopexit
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bf, %._crit_edge60.loopexit ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !472   ; 2 uses
  %.val = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val51 = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bi = tail call ptr %.val51(ptr %.val, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %.0.lcssa) #50, !inline_history !469 ; 5 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge60
  %i.bk = load ptr, ptr %0, align 8, !tbaa !472
  store ptr %i.bk, ptr %5, align 8, !tbaa !370
  %i.bl = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %1, i32 noundef %2)
  %i.bm = call i32 @stbtt_InitFont(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %i.bl) ; 0 uses
  %i.bn = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bi)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !477
  %i.bq = tail call i32 @stbrp_pack_rects(ptr noundef %i.bp, ptr noundef nonnull %i.bi, i32 noundef %i.bn) ; 0 uses
  %i.br = call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %i.bi)
  %i.bs = load ptr, ptr %0, align 8, !tbaa !472   ; 2 uses
  %.val52 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 16
  %.val53 = load ptr, ptr %i.bt, align 8, !tbaa !385
  tail call void %.val53(ptr %.val52, ptr noundef nonnull %i.bi) #50, !inline_history !410
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge60, %bb.d
  %.048 = phi i32 [ %i.br, %bb.d ], [ 0, %._crit_edge60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i32 %.048
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_InitFont(ptr nofree noundef captures(none) initializes((8, 20), (64, 80)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.stbtt__buf, align 8         ; 28 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !359
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.f, align 8, !tbaa !407
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %.val.i.i = load i8, ptr %i.j, align 1, !tbaa !11
  %i.k = getelementptr i8, ptr %i.i, i64 5        ; 9 uses
  %.val25.i.i = load i8, ptr %i.k, align 1, !tbaa !11
  %i.l = zext i8 %.val.i.i to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = zext i8 %.val25.i.i to i32
  %i.o = or disjoint i32 %i.m, %i.n               ; 2 uses
  %i.p = add i32 %2, 12                           ; 10 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %stbtt__find_table.exit141.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.q = shl i32 %indvars.iv.tr.i.i, 4
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = icmp eq i8 %i.x, 109
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  %i.ab = icmp eq i8 %i.aa, 97
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 112
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  br label %.lr.ph.i134.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.i134.i, label %bb.b, !llvm.loop !408

.lr.ph.i134.i:                                    ; preds = %bb.g, %bb.f
  %.2.i.i = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.g ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i134.i
  %indvars.iv.i136.i = phi i64 [ 0, %.lr.ph.i134.i ], [ %indvars.iv.next.i138.i, %bb.m ] ; 2 uses
  %indvars.iv.tr.i137.i = trunc i64 %indvars.iv.i136.i to i32
  %i.ai = shl i32 %indvars.iv.tr.i137.i, 4
  %i.aj = add i32 %i.ai, %i.p
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 5 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = icmp eq i8 %i.am, 108
  br i1 %i.an, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = icmp eq i8 %i.ap, 111
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = icmp eq i8 %i.as, 99
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = icmp eq i8 %i.av, 97
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  br label %stbtt__find_table.exit141.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %indvars.iv.next.i138.i = add nuw nsw i64 %indvars.iv.i136.i, 1 ; 2 uses
  %exitcond.not.i139.i = icmp eq i64 %indvars.iv.next.i138.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i139.i, label %stbtt__find_table.exit141.i, label %bb.h, !llvm.loop !408

stbtt__find_table.exit141.i:                      ; preds = %bb.m, %bb.l, %bb.a
  %.2.i342.i = phi i32 [ %.2.i.i, %bb.l ], [ 0, %bb.a ], [ %.2.i.i, %bb.m ] ; 4 uses
  %.2.i140.i = phi i32 [ %i.az, %bb.l ], [ 0, %bb.a ], [ 0, %bb.m ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_7
begin_hunk_8_@stbtt_InitFont:bb.a

bb.bq:                                            ; preds = %stbtt__buf_get8.exit.i.1.i225.i
  %.not.i.i228.i = icmp slt i32 %i.ks, %i.ho
  br i1 %.not.i.i228.i, label %bb.br, label %stbtt__buf_get8.exit.i229.i

bb.br:                                            ; preds = %bb.bq
  %i.kt = load ptr, ptr %3, align 8, !tbaa !528
  %i.ku = add nsw i32 %i.ks, 1
  %i.kv = sext i32 %i.ks to i64
  %i.kw = getelementptr inbounds i8, ptr %i.kt, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.ky = zext i8 %i.kx to i32
  br label %stbtt__buf_get8.exit.i229.i

stbtt__buf_get8.exit.i229.i:                      ; preds = %bb.br, %bb.bq
  %.promoted399.i = phi i32 [ %i.ku, %bb.br ], [ %i.ks, %bb.bq ]
  %.0.i.i230.i = phi i32 [ %i.ky, %bb.br ], [ 0, %bb.bq ] ; 6 uses
  %i.kz = mul nuw nsw i32 %.0.i.i230.i, %.0.i.i.1.i226.i
  %i.la = add nsw i32 %i.kz, %.promoted399.i      ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  %i.lc = tail call i32 @llvm.smin.i32(i32 %i.la, i32 %i.ho)
  %..i.i.i231.i = select i1 %i.lb, i32 %i.ho, i32 %i.lc ; 3 uses
  %.not.i13.i232.i = icmp eq i32 %.0.i.i230.i, 0
  br i1 %.not.i13.i232.i, label %stbtt__buf_get.exit21.i241.i, label %.lr.ph.i.i233.preheader.i

.lr.ph.i.i233.preheader.i:                        ; preds = %stbtt__buf_get8.exit.i229.i
  %i.ld = load ptr, ptr %3, align 8               ; 3 uses
  %xtraiter187 = and i32 %.0.i.i230.i, 1
  %i.le = icmp eq i32 %.0.i.i230.i, 1
  br i1 %i.le, label %.lr.ph.i.i233.i.epil.preheader, label %.lr.ph.i.i233.preheader.i.new

.lr.ph.i.i233.preheader.i.new:                    ; preds = %.lr.ph.i.i233.preheader.i
  %unroll_iter194 = and i32 %.0.i.i230.i, 254
  br label %.lr.ph.i.i233.i

.lr.ph.i.i233.i:                                  ; preds = %stbtt__buf_get8.exit.i18.i237.i.1, %.lr.ph.i.i233.preheader.i.new
  %i.lf = phi i32 [ %..i.i.i231.i, %.lr.ph.i.i233.preheader.i.new ], [ %i.lv, %stbtt__buf_get8.exit.i18.i237.i.1 ] ; 4 uses
  %.056.i16.i235.i = phi i32 [ 0, %.lr.ph.i.i233.preheader.i.new ], [ %.0.i.i19.i238.i.1, %stbtt__buf_get8.exit.i18.i237.i.1 ]
  %niter195 = phi i32 [ 0, %.lr.ph.i.i233.preheader.i.new ], [ %niter195.next.1, %stbtt__buf_get8.exit.i18.i237.i.1 ]
  %i.lg = shl i32 %.056.i16.i235.i, 8             ; 2 uses
  %.not.i.i17.i236.i = icmp slt i32 %i.lf, %i.ho
  br i1 %.not.i.i17.i236.i, label %bb.bs, label %stbtt__buf_get8.exit.i18.i237.i

bb.bs:                                            ; preds = %.lr.ph.i.i233.i
  %i.lh = add nsw i32 %i.lf, 1
  %i.li = sext i32 %i.lf to i64
  %i.lj = getelementptr inbounds i8, ptr %i.ld, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !11
  %i.ll = zext i8 %i.lk to i32
  %i.lm = or disjoint i32 %i.lg, %i.ll
  br label %stbtt__buf_get8.exit.i18.i237.i

stbtt__buf_get8.exit.i18.i237.i:                  ; preds = %bb.bs, %.lr.ph.i.i233.i
  %i.ln = phi i32 [ %i.lh, %bb.bs ], [ %i.lf, %.lr.ph.i.i233.i ] ; 4 uses
  %.0.i.i19.i238.i = phi i32 [ %i.lm, %bb.bs ], [ %i.lg, %.lr.ph.i.i233.i ]
  %i.lo = shl i32 %.0.i.i19.i238.i, 8             ; 2 uses
  %.not.i.i17.i236.i.1 = icmp slt i32 %i.ln, %i.ho
  br i1 %.not.i.i17.i236.i.1, label %bb.bt, label %stbtt__buf_get8.exit.i18.i237.i.1

bb.bt:                                            ; preds = %stbtt__buf_get8.exit.i18.i237.i
  %i.lp = add nsw i32 %i.ln, 1
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds i8, ptr %i.ld, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !11
  %i.lt = zext i8 %i.ls to i32
  %i.lu = or disjoint i32 %i.lo, %i.lt
  br label %stbtt__buf_get8.exit.i18.i237.i.1

stbtt__buf_get8.exit.i18.i237.i.1:                ; preds = %bb.bt, %stbtt__buf_get8.exit.i18.i237.i
  %i.lv = phi i32 [ %i.lp, %bb.bt ], [ %i.ln, %stbtt__buf_get8.exit.i18.i237.i ] ; 3 uses
  %.0.i.i19.i238.i.1 = phi i32 [ %i.lu, %bb.bt ], [ %i.lo, %stbtt__buf_get8.exit.i18.i237.i ] ; 3 uses
  %niter195.next.1 = add nuw nsw i32 %niter195, 2 ; 2 uses
  %niter195.ncmp.1 = icmp eq i32 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa, label %.lr.ph.i.i233.i, !llvm.loop !529

stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa:  ; preds = %stbtt__buf_get8.exit.i18.i237.i.1
  %lcmp.mod190.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod190.not, label %stbtt__buf_get.exit21.loopexit.i240.i, label %.lr.ph.i.i233.i.epil.preheader

.lr.ph.i.i233.i.epil.preheader:                   ; preds = %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa, %.lr.ph.i.i233.preheader.i
  %.epil.init189 = phi i32 [ %..i.i.i231.i, %.lr.ph.i.i233.preheader.i ], [ %i.lv, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ] ; 4 uses
  %.056.i16.i235.i.epil.init = phi i32 [ 0, %.lr.ph.i.i233.preheader.i ], [ %.0.i.i19.i238.i.1, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %.0.i.i230.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.lw = shl i32 %.056.i16.i235.i.epil.init, 8   ; 2 uses
  %.not.i.i17.i236.i.epil = icmp slt i32 %.epil.init189, %i.ho
  br i1 %.not.i.i17.i236.i.epil, label %bb.bu, label %stbtt__buf_get.exit21.loopexit.i240.i

bb.bu:                                            ; preds = %.lr.ph.i.i233.i.epil.preheader
  %i.lx = add nsw i32 %.epil.init189, 1
  %i.ly = sext i32 %.epil.init189 to i64
  %i.lz = getelementptr inbounds i8, ptr %i.ld, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !11
  %i.mb = zext i8 %i.ma to i32
  %i.mc = or disjoint i32 %i.lw, %i.mb
  br label %stbtt__buf_get.exit21.loopexit.i240.i

stbtt__buf_get.exit21.loopexit.i240.i:            ; preds = %.lr.ph.i.i233.i.epil.preheader, %bb.bu, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa
  %.lcssa164 = phi i32 [ %i.lv, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ], [ %i.lx, %bb.bu ], [ %.epil.init189, %.lr.ph.i.i233.i.epil.preheader ]
  %.0.i.i19.i238.i.lcssa = phi i32 [ %.0.i.i19.i238.i.1, %stbtt__buf_get.exit21.loopexit.i240.i.unr-lcssa ], [ %i.mc, %bb.bu ], [ %i.lw, %.lr.ph.i.i233.i.epil.preheader ]
  %i.md = add i32 %.0.i.i19.i238.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i241.i

stbtt__buf_get.exit21.i241.i:                     ; preds = %stbtt__buf_get.exit21.loopexit.i240.i, %stbtt__buf_get8.exit.i229.i
  %i.me = phi i32 [ %..i.i.i231.i, %stbtt__buf_get8.exit.i229.i ], [ %.lcssa164, %stbtt__buf_get.exit21.loopexit.i240.i ]
  %.05.lcssa.i.i242.i = phi i32 [ -1, %stbtt__buf_get8.exit.i229.i ], [ %i.md, %stbtt__buf_get.exit21.loopexit.i240.i ]
  %i.mf = add nsw i32 %.05.lcssa.i.i242.i, %i.me  ; 2 uses
  %i.mg = icmp slt i32 %i.mf, 0
  %i.mh = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 %i.ho)
  %..i.i22.i243.i = select i1 %i.mg, i32 %i.ho, i32 %i.mh ; 2 uses
  store i32 %..i.i22.i243.i, ptr %i.hk, align 8, !tbaa !526
  br label %bb.bv

bb.bv:                                            ; preds = %stbtt__buf_get.exit21.i241.i, %stbtt__buf_get8.exit.i.1.i225.i
  %i.mi = phi i32 [ %..i.i22.i243.i, %stbtt__buf_get.exit21.i241.i ], [ %i.ks, %stbtt__buf_get8.exit.i.1.i225.i ] ; 6 uses
  %i.mj = sub nsw i32 %i.mi, %i.kc                ; 14 uses
  %i.mk = or i32 %i.mj, %i.kc
  %or.cond.not.i.i244.i = icmp slt i32 %i.mk, 0
  %i.ml = icmp sgt i32 %i.mi, %i.ho
  %or.cond.i245.i = or i1 %i.ml, %or.cond.not.i.i244.i
  br i1 %or.cond.i245.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__cff_get_index.exit250.i

stbtt__cff_get_index.exit250.i:                   ; preds = %bb.bv
  %i.mm = load ptr, ptr %3, align 8, !tbaa !528
  %i.mn = zext nneg i32 %i.kc to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn ; 16 uses
  %.not.i.i.i251.not.i = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i.i251.not.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__buf_get8.exit.i.i252.i

stbtt__buf_get8.exit.i.i252.i:                    ; preds = %stbtt__cff_get_index.exit250.i
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !11
  %i.mq = zext i8 %i.mp to i32
  %i.mr = shl nuw nsw i32 %i.mq, 8                ; 2 uses
  %.not.i.i.1.i254.not.i = icmp eq i32 %i.mj, 1
  br i1 %.not.i.i.1.i254.not.i, label %stbtt__buf_get.exit28.i.i, label %stbtt__buf_get8.exit.i.1.i255.i

stbtt__buf_get8.exit.i.1.i255.i:                  ; preds = %stbtt__buf_get8.exit.i.i252.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11
  %i.mu = zext i8 %i.mt to i32
  %i.mv = or disjoint i32 %i.mr, %i.mu            ; 5 uses
  %.not.i.i257.i = icmp samesign ugt i32 %i.mj, 2
  br i1 %.not.i.i257.i, label %stbtt__buf_get8.exit.i263.i, label %stbtt__buf_get.exit28.i.i

stbtt__buf_get8.exit.i263.i:                      ; preds = %stbtt__buf_get8.exit.i.1.i255.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !11  ; 4 uses
  %i.my = zext i8 %i.mx to i32                    ; 8 uses
  %.not.i9.i.i = icmp eq i8 %i.mx, 0
  br i1 %.not.i9.i.i, label %stbtt__buf_get.exit28.i.i, label %.lr.ph.i.i265.i.preheader

.lr.ph.i.i265.i.preheader:                        ; preds = %stbtt__buf_get8.exit.i263.i
  %i.mz = add nsw i32 %i.my, -1                   ; 2 uses
  %xtraiter196 = and i32 %i.my, 1
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i265.i.epil.preheader, label %.lr.ph.i.i265.i.preheader.new

.lr.ph.i.i265.i.preheader.new:                    ; preds = %.lr.ph.i.i265.i.preheader
  %unroll_iter203 = and i32 %i.my, 254
  br label %.lr.ph.i.i265.i

.lr.ph.i.i265.i:                                  ; preds = %stbtt__buf_get8.exit.i14.i.i.1, %.lr.ph.i.i265.i.preheader.new
  %.sroa.6.3.i.i = phi i32 [ 3, %.lr.ph.i.i265.i.preheader.new ], [ %.sroa.6.4.i.i.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %i.nb = phi i32 [ 3, %.lr.ph.i.i265.i.preheader.new ], [ %i.nr, %stbtt__buf_get8.exit.i14.i.i.1 ] ; 4 uses
  %.056.i12.i.i = phi i32 [ 0, %.lr.ph.i.i265.i.preheader.new ], [ %.0.i.i15.i.i.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %niter204 = phi i32 [ 0, %.lr.ph.i.i265.i.preheader.new ], [ %niter204.next.1, %stbtt__buf_get8.exit.i14.i.i.1 ]
  %i.nc = shl i32 %.056.i12.i.i, 8                ; 2 uses
  %.not.i.i13.i.i = icmp slt i32 %i.nb, %i.mj
  br i1 %.not.i.i13.i.i, label %bb.bw, label %stbtt__buf_get8.exit.i14.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i265.i
  %i.nd = add nsw i32 %i.nb, 1                    ; 2 uses
  %i.ne = sext i32 %i.nb to i64
  %i.nf = getelementptr inbounds i8, ptr %i.mo, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !11
  %i.nh = zext i8 %i.ng to i32
  %i.ni = or disjoint i32 %i.nc, %i.nh
  br label %stbtt__buf_get8.exit.i14.i.i

stbtt__buf_get8.exit.i14.i.i:                     ; preds = %bb.bw, %.lr.ph.i.i265.i
  %.sroa.6.4.i.i = phi i32 [ %i.nd, %bb.bw ], [ %.sroa.6.3.i.i, %.lr.ph.i.i265.i ]
  %i.nj = phi i32 [ %i.nd, %bb.bw ], [ %i.nb, %.lr.ph.i.i265.i ] ; 4 uses
  %.0.i.i15.i.i = phi i32 [ %i.ni, %bb.bw ], [ %i.nc, %.lr.ph.i.i265.i ]
  %i.nk = shl i32 %.0.i.i15.i.i, 8                ; 2 uses
  %.not.i.i13.i.i.1 = icmp slt i32 %i.nj, %i.mj
  br i1 %.not.i.i13.i.i.1, label %bb.bx, label %stbtt__buf_get8.exit.i14.i.i.1

bb.bx:                                            ; preds = %stbtt__buf_get8.exit.i14.i.i
  %i.nl = add nsw i32 %i.nj, 1                    ; 2 uses
  %i.nm = sext i32 %i.nj to i64
  %i.nn = getelementptr inbounds i8, ptr %i.mo, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !11
  %i.np = zext i8 %i.no to i32
  %i.nq = or disjoint i32 %i.nk, %i.np
  br label %stbtt__buf_get8.exit.i14.i.i.1

stbtt__buf_get8.exit.i14.i.i.1:                   ; preds = %bb.bx, %stbtt__buf_get8.exit.i14.i.i
  %.sroa.6.4.i.i.1 = phi i32 [ %i.nl, %bb.bx ], [ %.sroa.6.4.i.i, %stbtt__buf_get8.exit.i14.i.i ] ; 3 uses
  %i.nr = phi i32 [ %i.nl, %bb.bx ], [ %i.nj, %stbtt__buf_get8.exit.i14.i.i ] ; 2 uses
  %.0.i.i15.i.i.1 = phi i32 [ %i.nq, %bb.bx ], [ %i.nk, %stbtt__buf_get8.exit.i14.i.i ] ; 3 uses
  %niter204.next.1 = add nuw i32 %niter204, 2     ; 2 uses
  %niter204.ncmp.1 = icmp eq i32 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %.lr.ph.i19.i.i.preheader.unr-lcssa, label %.lr.ph.i.i265.i, !llvm.loop !529

.lr.ph.i19.i.i.preheader.unr-lcssa:               ; preds = %stbtt__buf_get8.exit.i14.i.i.1
  %lcmp.mod199.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i19.i.i.preheader, label %.lr.ph.i.i265.i.epil.preheader

.lr.ph.i.i265.i.epil.preheader:                   ; preds = %.lr.ph.i19.i.i.preheader.unr-lcssa, %.lr.ph.i.i265.i.preheader
  %.sroa.6.3.i.i.epil.init = phi i32 [ 3, %.lr.ph.i.i265.i.preheader ], [ %.sroa.6.4.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ]
  %.epil.init198 = phi i32 [ 3, %.lr.ph.i.i265.i.preheader ], [ %i.nr, %.lr.ph.i19.i.i.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i265.i.preheader ], [ %.0.i.i15.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ]
  %lcmp.mod202 = trunc i8 %i.mx to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.ns = shl i32 %.056.i12.i.i.epil.init, 8      ; 2 uses
  %.not.i.i13.i.i.epil = icmp slt i32 %.epil.init198, %i.mj
  br i1 %.not.i.i13.i.i.epil, label %bb.by, label %.lr.ph.i19.i.i.preheader

bb.by:                                            ; preds = %.lr.ph.i.i265.i.epil.preheader
  %i.nt = add nsw i32 %.epil.init198, 1
  %i.nu = sext i32 %.epil.init198 to i64
  %i.nv = getelementptr inbounds i8, ptr %i.mo, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !11
  %i.nx = zext i8 %i.nw to i32
  %i.ny = or disjoint i32 %i.ns, %i.nx
  br label %.lr.ph.i19.i.i.preheader

.lr.ph.i19.i.i.preheader:                         ; preds = %.lr.ph.i.i265.i.epil.preheader, %bb.by, %.lr.ph.i19.i.i.preheader.unr-lcssa
  %.sroa.6.4.i.i.lcssa = phi i32 [ %.sroa.6.4.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ], [ %i.nt, %bb.by ], [ %.sroa.6.3.i.i.epil.init, %.lr.ph.i.i265.i.epil.preheader ] ; 2 uses
  %.0.i.i15.i.i.lcssa = phi i32 [ %.0.i.i15.i.i.1, %.lr.ph.i19.i.i.preheader.unr-lcssa ], [ %i.ny, %bb.by ], [ %i.ns, %.lr.ph.i.i265.i.epil.preheader ] ; 3 uses
  %xtraiter205 = and i32 %i.my, 1
  %i.nz = icmp eq i32 %i.mz, 0
  br i1 %i.nz, label %.lr.ph.i19.i.i.epil.preheader, label %.lr.ph.i19.i.i.preheader.new

.lr.ph.i19.i.i.preheader.new:                     ; preds = %.lr.ph.i19.i.i.preheader
  %unroll_iter211 = and i32 %i.my, 254
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %stbtt__buf_get8.exit.i24.i.i.1, %.lr.ph.i19.i.i.preheader.new
  %i.oa = phi i32 [ %.sroa.6.4.i.i.lcssa, %.lr.ph.i19.i.i.preheader.new ], [ %i.oq, %stbtt__buf_get8.exit.i24.i.i.1 ] ; 4 uses
  %.056.i22.i.i = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %.0.i.i25.i.i.1, %stbtt__buf_get8.exit.i24.i.i.1 ]
  %niter212 = phi i32 [ 0, %.lr.ph.i19.i.i.preheader.new ], [ %niter212.next.1, %stbtt__buf_get8.exit.i24.i.i.1 ]
  %i.ob = shl i32 %.056.i22.i.i, 8                ; 2 uses
  %.not.i.i23.i.i = icmp slt i32 %i.oa, %i.mj
  br i1 %.not.i.i23.i.i, label %bb.bz, label %stbtt__buf_get8.exit.i24.i.i

bb.bz:                                            ; preds = %.lr.ph.i19.i.i
  %i.oc = add nsw i32 %i.oa, 1
  %i.od = sext i32 %i.oa to i64
  %i.oe = getelementptr inbounds i8, ptr %i.mo, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !11
  %i.og = zext i8 %i.of to i32
  %i.oh = or disjoint i32 %i.ob, %i.og
  br label %stbtt__buf_get8.exit.i24.i.i

stbtt__buf_get8.exit.i24.i.i:                     ; preds = %bb.bz, %.lr.ph.i19.i.i
  %i.oi = phi i32 [ %i.oc, %bb.bz ], [ %i.oa, %.lr.ph.i19.i.i ] ; 4 uses
  %.0.i.i25.i.i = phi i32 [ %i.oh, %bb.bz ], [ %i.ob, %.lr.ph.i19.i.i ]
  %i.oj = shl i32 %.0.i.i25.i.i, 8                ; 2 uses
  %.not.i.i23.i.i.1 = icmp slt i32 %i.oi, %i.mj
  br i1 %.not.i.i23.i.i.1, label %bb.ca, label %stbtt__buf_get8.exit.i24.i.i.1

bb.ca:                                            ; preds = %stbtt__buf_get8.exit.i24.i.i
  %i.ok = add nsw i32 %i.oi, 1
  %i.ol = sext i32 %i.oi to i64
  %i.om = getelementptr inbounds i8, ptr %i.mo, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !11
  %i.oo = zext i8 %i.on to i32
  %i.op = or disjoint i32 %i.oj, %i.oo
  br label %stbtt__buf_get8.exit.i24.i.i.1

stbtt__buf_get8.exit.i24.i.i.1:                   ; preds = %bb.ca, %stbtt__buf_get8.exit.i24.i.i
  %i.oq = phi i32 [ %i.ok, %bb.ca ], [ %i.oi, %stbtt__buf_get8.exit.i24.i.i ] ; 2 uses
  %.0.i.i25.i.i.1 = phi i32 [ %i.op, %bb.ca ], [ %i.oj, %stbtt__buf_get8.exit.i24.i.i ] ; 3 uses
  %niter212.next.1 = add nuw i32 %niter212, 2     ; 2 uses
  %niter212.ncmp.1 = icmp eq i32 %niter212.next.1, %unroll_iter211
  br i1 %niter212.ncmp.1, label %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i, !llvm.loop !529

stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa:     ; preds = %stbtt__buf_get8.exit.i24.i.i.1
  %lcmp.mod208.not = icmp eq i32 %xtraiter205, 0
  br i1 %lcmp.mod208.not, label %stbtt__buf_get.exit28.i.i, label %.lr.ph.i19.i.i.epil.preheader

.lr.ph.i19.i.i.epil.preheader:                    ; preds = %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.preheader
  %.epil.init207 = phi i32 [ %.sroa.6.4.i.i.lcssa, %.lr.ph.i19.i.i.preheader ], [ %i.oq, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.i.i.epil.init = phi i32 [ 0, %.lr.ph.i19.i.i.preheader ], [ %.0.i.i25.i.i.1, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %lcmp.mod210 = trunc i8 %i.mx to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.or = shl i32 %.056.i22.i.i.epil.init, 8      ; 2 uses
  %.not.i.i23.i.i.epil = icmp slt i32 %.epil.init207, %i.mj
  br i1 %.not.i.i23.i.i.epil, label %bb.cb, label %stbtt__buf_get.exit28.i.i

bb.cb:                                            ; preds = %.lr.ph.i19.i.i.epil.preheader
  %i.os = sext i32 %.epil.init207 to i64
  %i.ot = getelementptr inbounds i8, ptr %i.mo, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !11
  %i.ov = zext i8 %i.ou to i32
  %i.ow = or disjoint i32 %i.or, %i.ov
  br label %stbtt__buf_get.exit28.i.i

stbtt__buf_get.exit28.i.i:                        ; preds = %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa, %bb.cb, %.lr.ph.i19.i.i.epil.preheader, %stbtt__buf_get8.exit.i.i252.i, %stbtt__buf_get8.exit.i263.i, %stbtt__buf_get8.exit.i.1.i255.i, %stbtt__cff_get_index.exit250.i, %bb.bv
  %.0.i.i.1.i256368.i = phi i32 [ %i.mv, %stbtt__buf_get8.exit.i263.i ], [ %i.mv, %stbtt__buf_get8.exit.i.1.i255.i ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ %i.mr, %stbtt__buf_get8.exit.i.i252.i ], [ %i.mv, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mv, %bb.cb ], [ %i.mv, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.sroa.18.8.extract.trunc.i353359367.i = phi i32 [ %i.mj, %stbtt__buf_get8.exit.i263.i ], [ 2, %stbtt__buf_get8.exit.i.1.i255.i ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 1, %stbtt__buf_get8.exit.i.i252.i ], [ %i.mj, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mj, %bb.cb ], [ %i.mj, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.0.i.i246352360366.i = phi ptr [ %i.mo, %stbtt__buf_get8.exit.i263.i ], [ %i.mo, %stbtt__buf_get8.exit.i.1.i255.i ], [ null, %bb.bv ], [ %i.mo, %stbtt__cff_get_index.exit250.i ], [ %i.mo, %stbtt__buf_get8.exit.i.i252.i ], [ %i.mo, %.lr.ph.i19.i.i.epil.preheader ], [ %i.mo, %bb.cb ], [ %i.mo, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.0.i55.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i ], [ %i.my, %.lr.ph.i19.i.i.epil.preheader ], [ %i.my, %bb.cb ], [ %i.my, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ]
  %.05.lcssa.i42.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i ], [ %.0.i.i15.i.i.lcssa, %.lr.ph.i19.i.i.epil.preheader ], [ %.0.i.i15.i.i.lcssa, %bb.cb ], [ %.0.i.i15.i.i.lcssa, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27.i.i = phi i32 [ 0, %stbtt__buf_get8.exit.i263.i ], [ 0, %stbtt__buf_get8.exit.i.1.i255.i ], [ 0, %bb.bv ], [ 0, %stbtt__cff_get_index.exit250.i ], [ 0, %stbtt__buf_get8.exit.i.i252.i ], [ %.0.i.i25.i.i.1, %stbtt__buf_get.exit28.i.i.loopexit.unr-lcssa ], [ %i.ow, %bb.cb ], [ %i.or, %.lr.ph.i19.i.i.epil.preheader ]
  %i.ox = add nuw nsw i32 %.0.i.i.1.i256368.i, 1
  %i.oy = mul nuw nsw i32 %.0.i55.i.i, %i.ox
  %i.oz = add nuw nsw i32 %i.oy, 2
  %i.pa = add nsw i32 %i.oz, %.05.lcssa.i42.i.i   ; 4 uses
  %i.pb = sub nsw i32 %.05.lcssa.i27.i.i, %.05.lcssa.i42.i.i ; 3 uses
  %i.pc = or i32 %i.pb, %i.pa
  %or.cond.not.i.i258.i = icmp sgt i32 %i.pc, -1
  br i1 %or.cond.not.i.i258.i, label %bb.cc, label %stbtt__cff_index_get.exit.i

bb.cc:                                            ; preds = %stbtt__buf_get.exit28.i.i
  %i.pd = icmp sgt i32 %i.pa, %.sroa.18.8.extract.trunc.i353359367.i
  %i.pe = sub nsw i32 %.sroa.18.8.extract.trunc.i353359367.i, %i.pa
  %i.pf = icmp sgt i32 %i.pb, %i.pe
  %or.cond.i.i.i = select i1 %i.pd, i1 true, i1 %i.pf
  br i1 %or.cond.i.i.i, label %stbtt__cff_index_get.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pg = zext nneg i32 %i.pa to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i246352360366.i, i64 %i.pg
  %i.pi = zext nneg i32 %i.pb to i64
  %i.pj = shl nuw nsw i64 %i.pi, 32
  br label %stbtt__cff_index_get.exit.i

stbtt__cff_index_get.exit.i:                      ; preds = %bb.cd, %bb.cc, %stbtt__buf_get.exit28.i.i
  %.sroa.0.0.i.i259.i = phi ptr [ null, %stbtt__buf_get.exit28.i.i ], [ null, %bb.cc ], [ %i.ph, %bb.cd ]
  %.sroa.5.0.i.i260.i = phi i64 [ 0, %stbtt__buf_get.exit28.i.i ], [ 0, %bb.cc ], [ %i.pj, %bb.cd ]
  store ptr %.sroa.0.0.i.i259.i, ptr %4, align 8, !tbaa !15
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i.i260.i, ptr %.sroa.414.0..sroa_idx.i, align 8
  %.not.i.i.i266.i = icmp slt i32 %i.mi, %i.ho
  br i1 %.not.i.i.i266.i, label %bb.ce, label %stbtt__buf_get8.exit.i.i267.i

bb.ce:                                            ; preds = %stbtt__cff_index_get.exit.i
  %i.pk = load ptr, ptr %3, align 8, !tbaa !528
  %i.pl = add nsw i32 %i.mi, 1                    ; 2 uses
  store i32 %i.pl, ptr %i.hk, align 8, !tbaa !526
  %i.pm = sext i32 %i.mi to i64
  %i.pn = getelementptr inbounds i8, ptr %i.pk, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !11
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  br label %stbtt__buf_get8.exit.i.i267.i

stbtt__buf_get8.exit.i.i267.i:                    ; preds = %bb.ce, %stbtt__cff_index_get.exit.i
  %i.pr = phi i32 [ %i.pl, %bb.ce ], [ %i.mi, %stbtt__cff_index_get.exit.i ] ; 4 uses
  %.0.i.i.i268.i = phi i32 [ %i.pq, %bb.ce ], [ 0, %stbtt__cff_index_get.exit.i ] ; 2 uses
  %.not.i.i.1.i269.i = icmp slt i32 %i.pr, %i.ho
  br i1 %.not.i.i.1.i269.i, label %bb.cf, label %stbtt__buf_get8.exit.i.1.i270.i

bb.cf:                                            ; preds = %stbtt__buf_get8.exit.i.i267.i
  %i.ps = load ptr, ptr %3, align 8, !tbaa !528
  %i.pt = add nsw i32 %i.pr, 1                    ; 2 uses
  store i32 %i.pt, ptr %i.hk, align 8, !tbaa !526
  %i.pu = sext i32 %i.pr to i64
  %i.pv = getelementptr inbounds i8, ptr %i.ps, i64 %i.pu
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !11
  %i.px = zext i8 %i.pw to i32
  %i.py = or disjoint i32 %.0.i.i.i268.i, %i.px
  br label %stbtt__buf_get8.exit.i.1.i270.i

stbtt__buf_get8.exit.i.1.i270.i:                  ; preds = %bb.cf, %stbtt__buf_get8.exit.i.i267.i
  %i.pz = phi i32 [ %i.pt, %bb.cf ], [ %i.pr, %stbtt__buf_get8.exit.i.i267.i ] ; 5 uses
  %.0.i.i.1.i271.i = phi i32 [ %i.py, %bb.cf ], [ %.0.i.i.i268.i, %stbtt__buf_get8.exit.i.i267.i ] ; 2 uses
  %.not.i272.i = icmp eq i32 %.0.i.i.1.i271.i, 0
  br i1 %.not.i272.i, label %stbtt__cff_get_index.exit295.i, label %bb.cg

bb.cg:                                            ; preds = %stbtt__buf_get8.exit.i.1.i270.i
  %.not.i.i273.i = icmp slt i32 %i.pz, %i.ho
  br i1 %.not.i.i273.i, label %bb.ch, label %stbtt__buf_get8.exit.i274.i

bb.ch:                                            ; preds = %bb.cg
  %i.qa = load ptr, ptr %3, align 8, !tbaa !528
  %i.qb = add nsw i32 %i.pz, 1
  %i.qc = sext i32 %i.pz to i64
  %i.qd = getelementptr inbounds i8, ptr %i.qa, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !11
  %i.qf = zext i8 %i.qe to i32
  br label %stbtt__buf_get8.exit.i274.i

stbtt__buf_get8.exit.i274.i:                      ; preds = %bb.ch, %bb.cg
  %.promoted401.i = phi i32 [ %i.qb, %bb.ch ], [ %i.pz, %bb.cg ]
  %.0.i.i275.i = phi i32 [ %i.qf, %bb.ch ], [ 0, %bb.cg ] ; 6 uses
  %i.qg = mul nuw nsw i32 %.0.i.i275.i, %.0.i.i.1.i271.i
  %i.qh = add nsw i32 %i.qg, %.promoted401.i      ; 2 uses
  %i.qi = icmp slt i32 %i.qh, 0
  %i.qj = tail call i32 @llvm.smin.i32(i32 %i.qh, i32 %i.ho)
  %..i.i.i276.i = select i1 %i.qi, i32 %i.ho, i32 %i.qj ; 3 uses
  %.not.i13.i277.i = icmp eq i32 %.0.i.i275.i, 0
  br i1 %.not.i13.i277.i, label %stbtt__buf_get.exit21.i286.i, label %.lr.ph.i.i278.preheader.i

.lr.ph.i.i278.preheader.i:                        ; preds = %stbtt__buf_get8.exit.i274.i
  %i.qk = load ptr, ptr %3, align 8               ; 3 uses
  %xtraiter213 = and i32 %.0.i.i275.i, 1
  %i.ql = icmp eq i32 %.0.i.i275.i, 1
  br i1 %i.ql, label %.lr.ph.i.i278.i.epil.preheader, label %.lr.ph.i.i278.preheader.i.new

.lr.ph.i.i278.preheader.i.new:                    ; preds = %.lr.ph.i.i278.preheader.i
  %unroll_iter220 = and i32 %.0.i.i275.i, 254
  br label %.lr.ph.i.i278.i

.lr.ph.i.i278.i:                                  ; preds = %stbtt__buf_get8.exit.i18.i282.i.1, %.lr.ph.i.i278.preheader.i.new
  %i.qm = phi i32 [ %..i.i.i276.i, %.lr.ph.i.i278.preheader.i.new ], [ %i.rc, %stbtt__buf_get8.exit.i18.i282.i.1 ] ; 4 uses
  %.056.i16.i280.i = phi i32 [ 0, %.lr.ph.i.i278.preheader.i.new ], [ %.0.i.i19.i283.i.1, %stbtt__buf_get8.exit.i18.i282.i.1 ]
  %niter221 = phi i32 [ 0, %.lr.ph.i.i278.preheader.i.new ], [ %niter221.next.1, %stbtt__buf_get8.exit.i18.i282.i.1 ]
  %i.qn = shl i32 %.056.i16.i280.i, 8             ; 2 uses
  %.not.i.i17.i281.i = icmp slt i32 %i.qm, %i.ho
  br i1 %.not.i.i17.i281.i, label %bb.ci, label %stbtt__buf_get8.exit.i18.i282.i

bb.ci:                                            ; preds = %.lr.ph.i.i278.i
  %i.qo = add nsw i32 %i.qm, 1
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds i8, ptr %i.qk, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !11
  %i.qs = zext i8 %i.qr to i32
  %i.qt = or disjoint i32 %i.qn, %i.qs
  br label %stbtt__buf_get8.exit.i18.i282.i

stbtt__buf_get8.exit.i18.i282.i:                  ; preds = %bb.ci, %.lr.ph.i.i278.i
  %i.qu = phi i32 [ %i.qo, %bb.ci ], [ %i.qm, %.lr.ph.i.i278.i ] ; 4 uses
  %.0.i.i19.i283.i = phi i32 [ %i.qt, %bb.ci ], [ %i.qn, %.lr.ph.i.i278.i ]
  %i.qv = shl i32 %.0.i.i19.i283.i, 8             ; 2 uses
  %.not.i.i17.i281.i.1 = icmp slt i32 %i.qu, %i.ho
  br i1 %.not.i.i17.i281.i.1, label %bb.cj, label %stbtt__buf_get8.exit.i18.i282.i.1

bb.cj:                                            ; preds = %stbtt__buf_get8.exit.i18.i282.i
  %i.qw = add nsw i32 %i.qu, 1
  %i.qx = sext i32 %i.qu to i64
  %i.qy = getelementptr inbounds i8, ptr %i.qk, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !11
  %i.ra = zext i8 %i.qz to i32
  %i.rb = or disjoint i32 %i.qv, %i.ra
  br label %stbtt__buf_get8.exit.i18.i282.i.1

stbtt__buf_get8.exit.i18.i282.i.1:                ; preds = %bb.cj, %stbtt__buf_get8.exit.i18.i282.i
  %i.rc = phi i32 [ %i.qw, %bb.cj ], [ %i.qu, %stbtt__buf_get8.exit.i18.i282.i ] ; 3 uses
  %.0.i.i19.i283.i.1 = phi i32 [ %i.rb, %bb.cj ], [ %i.qv, %stbtt__buf_get8.exit.i18.i282.i ] ; 3 uses
  %niter221.next.1 = add nuw nsw i32 %niter221, 2 ; 2 uses
  %niter221.ncmp.1 = icmp eq i32 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa, label %.lr.ph.i.i278.i, !llvm.loop !529

stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa:  ; preds = %stbtt__buf_get8.exit.i18.i282.i.1
  %lcmp.mod216.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod216.not, label %stbtt__buf_get.exit21.loopexit.i285.i, label %.lr.ph.i.i278.i.epil.preheader

.lr.ph.i.i278.i.epil.preheader:                   ; preds = %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa, %.lr.ph.i.i278.preheader.i
  %.epil.init215 = phi i32 [ %..i.i.i276.i, %.lr.ph.i.i278.preheader.i ], [ %i.rc, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ] ; 4 uses
  %.056.i16.i280.i.epil.init = phi i32 [ 0, %.lr.ph.i.i278.preheader.i ], [ %.0.i.i19.i283.i.1, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %.0.i.i275.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.rd = shl i32 %.056.i16.i280.i.epil.init, 8   ; 2 uses
  %.not.i.i17.i281.i.epil = icmp slt i32 %.epil.init215, %i.ho
  br i1 %.not.i.i17.i281.i.epil, label %bb.ck, label %stbtt__buf_get.exit21.loopexit.i285.i

bb.ck:                                            ; preds = %.lr.ph.i.i278.i.epil.preheader
  %i.re = add nsw i32 %.epil.init215, 1
  %i.rf = sext i32 %.epil.init215 to i64
  %i.rg = getelementptr inbounds i8, ptr %i.qk, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !11
  %i.ri = zext i8 %i.rh to i32
  %i.rj = or disjoint i32 %i.rd, %i.ri
  br label %stbtt__buf_get.exit21.loopexit.i285.i

stbtt__buf_get.exit21.loopexit.i285.i:            ; preds = %.lr.ph.i.i278.i.epil.preheader, %bb.ck, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa
  %.lcssa163 = phi i32 [ %i.rc, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ], [ %i.re, %bb.ck ], [ %.epil.init215, %.lr.ph.i.i278.i.epil.preheader ]
  %.0.i.i19.i283.i.lcssa = phi i32 [ %.0.i.i19.i283.i.1, %stbtt__buf_get.exit21.loopexit.i285.i.unr-lcssa ], [ %i.rj, %bb.ck ], [ %i.rd, %.lr.ph.i.i278.i.epil.preheader ]
  %i.rk = add i32 %.0.i.i19.i283.i.lcssa, -1
  br label %stbtt__buf_get.exit21.i286.i

stbtt__buf_get.exit21.i286.i:                     ; preds = %stbtt__buf_get.exit21.loopexit.i285.i, %stbtt__buf_get8.exit.i274.i
end_hunk_8
begin_hunk_9_@nk_font_bake_pack:bb.a
  store i32 %i.bo, ptr %3, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !356
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %4, align 2, !tbaa !662
  %i.bs = trunc i32 %i.bl to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !663
  %i.bu = load i32, ptr %i.az, align 4, !tbaa !346
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %i.aw, align 2, !tbaa !659
  %i.bw = trunc i32 %i.bm to i16
  store i16 %i.bw, ptr %i.ba, align 2, !tbaa !660
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  %i.bx = icmp sgt i32 %6, 0
  br i1 %i.bx, label %.preheader.lr.ph, label %._crit_edge230

.preheader.lr.ph:                                 ; preds = %.loopexit46.i.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
  %.0142229 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2.lcssa, %bb.s ]
  %.0143228 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dp, %bb.s ]
  %.0145227 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cu, %bb.s ]
  %.0147226 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next249, %bb.s ]
  %.2163225 = phi ptr [ %5, %.preheader.lr.ph ], [ %i.fj, %bb.s ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %._crit_edge224
  %indvars.iv248 = phi i64 [ %.0147226, %.preheader ], [ %indvars.iv.next249, %._crit_edge224 ] ; 2 uses
  %.2160 = phi ptr [ %.2163225, %.preheader ], [ %i.fh, %._crit_edge224 ] ; 5 uses
  %.1146 = phi i32 [ %.0145227, %.preheader ], [ %i.cu, %._crit_edge224 ] ; 2 uses
  %.1144 = phi i32 [ %.0143228, %.preheader ], [ %i.dp, %._crit_edge224 ] ; 2 uses
  %.1 = phi i32 [ %.0142229, %.preheader ], [ %.2.lcssa, %._crit_edge224 ] ; 2 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !622
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 3 uses
  %i.cc = getelementptr inbounds [184 x i8], ptr %i.cb, i64 %indvars.iv248 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2160, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !559 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10 ; 2 uses
  %.not182210 = icmp eq i32 %i.cf, 0
  br i1 %.not182210, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.cg = phi i32 [ %i.co, %bb.h ], [ %i.cf, %bb.g ]
  %.0213 = phi ptr [ %i.cn, %bb.h ], [ %i.ce, %bb.g ] ; 2 uses
  %.0141212 = phi i32 [ %i.cl, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.0153211 = phi i32 [ %i.cm, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0213, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !10 ; 2 uses
  %.not183 = icmp eq i32 %i.ci, 0
  br i1 %.not183, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cj = add i32 %.0141212, 1
  %i.ck = sub i32 %i.cj, %i.cg
  %i.cl = add i32 %i.ck, %i.ci                    ; 2 uses
  %i.cm = add nuw nsw i32 %.0153211, 1            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0213, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10 ; 2 uses
  %.not182 = icmp eq i32 %i.co, 0
  br i1 %.not182, label %.critedge, label %.lr.ph, !llvm.loop !664

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.0153.lcssa = phi i32 [ 0, %bb.g ], [ %i.cm, %bb.h ], [ %.0153211, %.lr.ph ] ; 5 uses
  %.0141.lcssa = phi i32 [ 0, %bb.g ], [ %i.cl, %bb.h ], [ %.0141212, %.lr.ph ]
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !628
  %i.cq = sext i32 %.1146 to i64
  %i.cr = getelementptr inbounds [40 x i8], ptr %i.cp, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 168
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !665
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  store i32 %.0153.lcssa, ptr %i.ct, align 8, !tbaa !667
  %i.cu = add nsw i32 %.0153.lcssa, %.1146        ; 2 uses
  %.not231 = icmp eq i32 %.0153.lcssa, 0
  br i1 %.not231, label %._crit_edge, label %.lr.ph220

.lr.ph220:                                        ; preds = %.critedge
  %i.cv = getelementptr inbounds nuw i8, ptr %.2160, i64 32
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !565
  %i.cx = load ptr, ptr %i.ca, align 8, !tbaa !626
  %wide.trip.count = zext i32 %.0153.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph220, %bb.i
  %indvars.iv240 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next241, %bb.i ] ; 3 uses
  %.2219 = phi i32 [ %.1, %.lr.ph220 ], [ %i.dk, %bb.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv240, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 2 uses
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.cr, i64 %indvars.iv240 ; 4 uses
  store float %i.cw, ptr %i.cz, align 8, !tbaa !485
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !10 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !492
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !10
  %i.de = sub i32 %i.dd, %i.da
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !490
  %i.dh = sext i32 %.2219 to i64
  %i.di = getelementptr inbounds [28 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !509
  %i.dk = add nsw i32 %i.df, %.2219               ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !668

._crit_edge:                                      ; preds = %bb.i, %.critedge
  %.2.lcssa = phi i32 [ %.1, %.critedge ], [ %i.dk, %bb.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.bz, align 8, !tbaa !627
  %i.dm = sext i32 %.1144 to i64
  %i.dn = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 160 ; 3 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !669
  %i.dp = add nsw i32 %.0141.lcssa, %.1144        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2160, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !566 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2160, i64 27
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !567 ; 2 uses
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = icmp ult i8 %i.dr, 9
  br i1 %i.dv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.dw = zext nneg i8 %i.dr to i32
  store i32 %i.dw, ptr %i.be, align 4, !tbaa !481
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.dx = icmp ult i8 %i.dt, 9
  br i1 %i.dx, label %bb.l, label %stbtt_PackSetOversampling.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.du, ptr %i.bf, align 8, !tbaa !482
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.k, %bb.l
  %i.dy = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %i.au, ptr noundef nonnull %i.cc, ptr noundef %i.cr, i32 noundef %.0153.lcssa, ptr noundef %i.dn) ; 5 uses
  %i.dz = load ptr, ptr %i.bg, align 8, !tbaa !661
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !669
  %i.eb = call i32 @stbrp_pack_rects(ptr noundef %i.dz, ptr noundef %i.ea, i32 noundef %i.dy) ; 0 uses
  %i.ec = icmp sgt i32 %i.dy, 0
  br i1 %i.ec, label %.lr.ph223, label %._crit_edge224

.lr.ph223:                                        ; preds = %stbtt_PackSetOversampling.exit
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !669 ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.dy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count246, 1
  %i.ee = icmp eq i32 %i.dy, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph223.new

.lr.ph223.new:                                    ; preds = %.lr.ph223
  %unroll_iter = and i64 %wide.trip.count246, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph223.new
  %indvars.iv243 = phi i64 [ 0, %.lr.ph223.new ], [ %indvars.iv.next244.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph223.new ], [ %niter.next.1, %bb.q ]
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !342
  %.not185 = icmp eq i32 %i.eh, 0
  br i1 %.not185, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = load i32, ptr %3, align 4, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !357
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !347
  %i.en = add nsw i32 %i.em, %i.ek
  %. = call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.en)
  store i32 %., ptr %3, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !342
  %.not185.1 = icmp eq i32 %i.eq, 0
  br i1 %.not185.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %3, align 4, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load i32, ptr %i.es, align 4, !tbaa !357
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !347
  %i.ew = add nsw i32 %i.ev, %i.et
  %..1 = call i32 @llvm.smax.i32(i32 %i.er, i32 %i.ew)
  store i32 %..1, ptr %3, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge224.loopexit.unr-lcssa, label %bb.m, !llvm.loop !670

._crit_edge224.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge224, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223
  %indvars.iv243.epil.init = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next244.1, %._crit_edge224.loopexit.unr-lcssa ]
  %lcmp.mod284 = trunc i32 %i.dy to i1
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243.epil.init ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !342
  %.not185.epil = icmp eq i32 %i.ez, 0
  br i1 %.not185.epil, label %._crit_edge224, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.fa = load i32, ptr %3, align 4, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !357
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !347
  %i.ff = add nsw i32 %i.fe, %i.fc
  %..epil = call i32 @llvm.smax.i32(i32 %i.fa, i32 %i.ff)
  store i32 %..epil, ptr %3, align 4, !tbaa !10
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit.unr-lcssa, %bb.r, %.epil.preheader, %stbtt_PackSetOversampling.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.2160, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !563 ; 2 uses
  %.not184 = icmp eq ptr %i.fh, %.2163225
  br i1 %.not184, label %bb.s, label %bb.g, !llvm.loop !671

bb.s:                                             ; preds = %._crit_edge224
  %i.fi = trunc nsw i64 %indvars.iv.next249 to i32
  %i.fj = load ptr, ptr %.2163225, align 8, !tbaa !583 ; 2 uses
  %i.fk = icmp sgt i32 %6, %i.fi
  %i.fl = icmp ne ptr %i.fj, null
  %i.fm = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %i.fm, label %.preheader, label %._crit_edge230.loopexit, !llvm.loop !672

._crit_edge230.loopexit:                          ; preds = %bb.s
  %.pre = load i32, ptr %3, align 4, !tbaa !10
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.loopexit46.i.i.thread
  %i.fn = phi i32 [ %.pre, %._crit_edge230.loopexit ], [ %i.bo, %.loopexit46.i.i.thread ]
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  %i.fp = lshr i32 %i.fo, 1
  %i.fq = or i32 %i.fp, %i.fo                     ; 2 uses
  %i.fr = lshr i32 %i.fq, 2
  %i.fs = or i32 %i.fr, %i.fq                     ; 2 uses
  %i.ft = lshr i32 %i.fs, 4
  %i.fu = or i32 %i.ft, %i.fs                     ; 2 uses
  %i.fv = lshr i32 %i.fu, 8
  %i.fw = or i32 %i.fv, %i.fu                     ; 2 uses
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = or i32 %i.fx, %i.fw
  %i.fz = add i32 %i.fy, 1                        ; 2 uses
  store i32 %i.fz, ptr %3, align 4, !tbaa !10
  %i.ga = load i32, ptr %2, align 4, !tbaa !10
  %i.gb = sext i32 %i.ga to i64
  %i.gc = sext i32 %i.fz to i64
  %i.gd = mul nsw i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %1, align 8, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge230
  %.3167 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge230 ], [ 0, %bb.d ]
  ret i32 %.3167
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_font_bake(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address) %6, i32 noundef %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %6, null
  %or.cond5 = and i1 %or.cond3, %i.c
  %i.d = icmp ne i32 %7, 0
  %or.cond7 = and i1 %or.cond5, %i.d
  %i.e = icmp ne ptr %4, null
  %or.cond9 = and i1 %i.e, %or.cond7
  %i.f = icmp ne i32 %5, 0
  %or.cond11 = and i1 %i.f, %or.cond9
  br i1 %or.cond11, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 4 uses
  %i.j = icmp ult i64 %i.i, 12
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %bb.c

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 range(i64 -4611686016279904256, 4611686018427387905) %i.i, i1 false), !tbaa !11
  br label %nk_zero.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.k, 3                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.loopexit46.i.i, label %.loopexit46.loopexit.i.i

.loopexit46.loopexit.i.i:                         ; preds = %bb.c
  %i.m = sub nuw nsw i64 4, %i.l                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 %i.m, i1 false), !tbaa !11
  %i.n = sub nuw nsw i64 %i.i, %i.m
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.m
  br label %.loopexit46.i.i

.loopexit46.i.i:                                  ; preds = %.loopexit46.loopexit.i.i, %bb.c
  %.132.i.i = phi i64 [ %i.i, %bb.c ], [ %i.n, %.loopexit46.loopexit.i.i ] ; 2 uses
  %.230.i.i = phi ptr [ %1, %bb.c ], [ %scevgep.i.i, %.loopexit46.loopexit.i.i ] ; 2 uses
  %i.o = and i64 %.132.i.i, -4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i.i, i8 0, i64 %i.o, i1 false), !tbaa !10
  %i.p = and i64 %.132.i.i, 3                     ; 2 uses
  %.not41.i.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i.i, label %nk_zero.exit, label %.preheader44.preheader.i.i

.preheader44.preheader.i.i:                       ; preds = %.loopexit46.i.i
  %scevgep53.i.i = getelementptr i8, ptr %.230.i.i, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.p, i1 false), !tbaa !11
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.lr.ph.preheader.i.i, %.loopexit46.i.i, %.preheader44.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.r, align 8, !tbaa !673
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.s, align 4, !tbaa !674
  %i.t = icmp sgt i32 %7, 0                       ; 2 uses
  br i1 %i.t, label %.preheader160.lr.ph, label %._crit_edge

.preheader160.lr.ph:                              ; preds = %nk_zero.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader160.lr.ph, %bb.h
  %.0133164 = phi i64 [ 0, %.preheader160.lr.ph ], [ %indvars.iv.next, %bb.h ]
  %.0139163 = phi ptr [ %6, %.preheader160.lr.ph ], [ %i.ar, %bb.h ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader160, %stbtt_PackSetOversampling.exit
  %indvars.iv = phi i64 [ %.0133164, %.preheader160 ], [ %indvars.iv.next, %stbtt_PackSetOversampling.exit ] ; 2 uses
  %.0137 = phi ptr [ %.0139163, %.preheader160 ], [ %i.ap, %stbtt_PackSetOversampling.exit ] ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !622
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.y = getelementptr inbounds [184 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0137, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !566  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0137, i64 27
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !567 ; 2 uses
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = icmp ult i8 %i.aa, 9
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = zext nneg i8 %i.aa to i32
  store i32 %i.af, ptr %i.v, align 4, !tbaa !481
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = icmp ult i8 %i.ac, 9
  br i1 %i.ag, label %bb.g, label %stbtt_PackSetOversampling.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !482
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !665
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !667
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !669
  %i.an = tail call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %i.q, ptr noundef %i.y, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0137, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !563 ; 2 uses
  %.not146 = icmp eq ptr %i.ap, %.0139163
  br i1 %.not146, label %bb.h, label %bb.d, !llvm.loop !675

bb.h:                                             ; preds = %stbtt_PackSetOversampling.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32
  %i.ar = load ptr, ptr %.0139163, align 8, !tbaa !583 ; 2 uses
  %i.as = icmp sgt i32 %7, %i.aq
  %i.at = icmp ne ptr %i.ar, null
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.preheader160, label %._crit_edge, !llvm.loop !676

._crit_edge:                                      ; preds = %bb.h, %nk_zero.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !478
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !472 ; 2 uses
  %.val5.i = load ptr, ptr %i.ax, align 8
end_hunk_9
begin_hunk_10_@nk_layout_row_push:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %.not27 = icmp eq ptr %i.d, null
  br i1 %.not27, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !935
  switch i32 %i.f, label %.critedge [
    i32 1, label %bb.e
    i32 5, label %.critedge.sink.split
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.h = load float, ptr %i.g, align 4, !tbaa !936 ; 2 uses
  %i.i = fadd float %1, %i.h
  %i.j = fcmp ule float %i.i, 1.000000e+00
  br i1 %i.j, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt float %1, 0.000000e+00
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fcmp ogt float %1, 1.000000e+00
  %i.m = select i1 %i.l, float 1.000000e+00, float %1
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.f
  %i.n = fsub float 1.000000e+00, %i.h
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.d, %bb.g, %bb.h
  %.sink = phi float [ %i.n, %bb.h ], [ %i.m, %bb.g ], [ %1, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %.sink, ptr %i.o, align 8, !tbaa !855
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !935
  switch i32 %i.f, label %bb.f [
    i32 5, label %bb.e
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !855
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !934
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_row(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 5 uses
  %.not46 = icmp eq ptr %i.b, null
  br i1 %.not46, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 11 uses
  %.not47 = icmp eq ptr %i.d, null
  br i1 %.not47, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !852
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !857
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !860
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !860
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %3, ptr %i.m, align 8, !tbaa !853
  %i.n = fcmp oeq float %2, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !760 ; 2 uses
  %i.q = fcmp olt float %2, %i.p
  %..i = select i1 %i.q, float %i.p, float %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %2, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !857
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !934
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !846
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !835
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !833
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = icmp eq i32 %1, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %4, ptr %i.ad, align 8, !tbaa !854
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %nk_panel_layout.exit
  %i.ae = icmp sgt i32 %3, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %3, 1
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.050 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ] ; 2 uses
  %.03849 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.139.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !8 ; 2 uses
  %i.ai = fcmp olt float %i.ah, 0.000000e+00      ; 2 uses
  %i.aj = fadd float %.050, %i.ah
  %i.ak = zext i1 %i.ai to i32
  %.139 = add nuw nsw i32 %.03849, %i.ak
  %.1 = select i1 %i.ai, float %.050, float %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !8 ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00      ; 2 uses
  %i.ap = fadd float %.1, %i.an
  %i.aq = zext i1 %i.ao to i32
  %.139.1 = add nuw nsw i32 %.139, %i.aq          ; 3 uses
  %.1.1 = select i1 %i.ao, float %.1, float %i.ap ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !937

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.050.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03849.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.139.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.as = load float, ptr %i.ar, align 4, !tbaa !8 ; 2 uses
  %i.at = fcmp olt float %i.as, 0.000000e+00      ; 2 uses
  %i.au = fadd float %.050.epil.init, %i.as
  %i.av = zext i1 %i.at to i32
  %.139.epil = add nuw nsw i32 %.03849.epil.init, %i.av
  %.1.epil = select i1 %i.at, float %.050.epil.init, float %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.038.lcssa = phi i32 [ 0, %bb.h ], [ %.139.1, %._crit_edge.loopexit.unr-lcssa ], [ %.139.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %.0.lcssa = phi float [ 0.000000e+00, %bb.h ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ]
  %i.aw = fsub float 1.000000e+00, %.0.lcssa      ; 2 uses
  %i.ax = fcmp ogt float %i.aw, 1.000000e+00
  %i.ay = select i1 %i.ax, float 1.000000e+00, float %i.aw ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00      ; 2 uses
  %i.ba = select i1 %i.az, float %i.ay, float 0.000000e+00
  store i32 3, ptr %i.ac, align 8, !tbaa !935
  %i.bb = icmp ne i32 %.038.lcssa, 0
  %or.cond = select i1 %i.az, i1 %i.bb, i1 false
  %i.bc = uitofp nneg i32 %.038.lcssa to float
  %i.bd = fdiv float %i.ba, %i.bc
  %i.be = select i1 %or.cond, float %i.bd, float 0.000000e+00
  br label %bb.j

bb.i:                                             ; preds = %nk_panel_layout.exit
  store i32 7, ptr %i.ac, align 8, !tbaa !935
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %i.be, %._crit_edge ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float %.sink, ptr %i.bf, align 8, !tbaa !855
  store <2 x float> zeroinitializer, ptr %i.r, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_row_template_begin(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 5 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 10 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !852
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !857
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !860
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !860
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  store i32 1, ptr %i.m, align 8, !tbaa !853
  %i.n = fcmp oeq float %1, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !760 ; 2 uses
  %i.q = fcmp olt float %1, %i.p
  %..i = select i1 %i.q, float %i.p, float %1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %1, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !857
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !934
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !846
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !835
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !833
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 8, ptr %i.ab, align 8, !tbaa !935
  store i32 0, ptr %i.m, align 8, !tbaa !853
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_panel_layout.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_template_push_dynamic(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !935
  %.not14 = icmp eq i32 %i.f, 8
  br i1 %.not14, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !853  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 15
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.k = add nsw i32 %i.h, 1
  store i32 %i.k, ptr %i.g, align 8, !tbaa !853
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l
  store float -1.000000e+00, ptr %i.m, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_row_template_push_variable(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 4 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load i32, ptr %i.e, align 8, !tbaa !935
  %.not15 = icmp eq i32 %i.f, 8
end_hunk_10
begin_hunk_11_@nk_property:bb.a
  %i.bc = and i32 %i.bb, 4096
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %i.n, 3
  %or.cond = or i1 %i.be, %i.bd
  %spec.select = select i1 %or.cond, ptr null, ptr %0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi ptr [ null, %bb.k ], [ %spec.select, %bb.l ] ; 24 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 2 uses
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !754 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1055 ; 2 uses
  %i.bm = load <2 x float>, ptr %6, align 8       ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bo = load <2 x float>, ptr %i.bn, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !166 ; 5 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %.sroa.729.8.vec.insert.i = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0394.0.vec.extract.i = extractelement <2 x float> %i.bm, i64 0 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 4 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.bu = fadd float %.sroa.0394.0.vec.extract.i, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 3 uses
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !1146
  %i.bx = fadd float %i.bu, %i.bw                 ; 2 uses
  %.sroa.025.0.vec.insert.i = insertelement <2 x float> poison, float %i.bx, i64 0
  %.sroa.0394.4.vec.extract402.i = extractelement <2 x float> %i.bm, i64 1 ; 13 uses
  %i.by = fadd float %.sroa.0394.4.vec.extract402.i, %i.bt
  %.sroa.8403.12.vec.extract409.i = extractelement <2 x float> %i.bo, i64 1 ; 6 uses
  %i.bz = fmul float %.sroa.8403.12.vec.extract409.i, 5.000000e-01
  %i.ca = fadd float %i.bz, %i.by
  %i.cb = fmul float %i.bq, 5.000000e-01
  %i.cc = fsub float %i.ca, %i.cb                 ; 2 uses
  %.sroa.025.4.vec.insert.i = insertelement <2 x float> %.sroa.025.0.vec.insert.i, float %i.cc, i64 1
  %i.cd = load i8, ptr %.0111, align 1, !tbaa !11
  switch i8 %i.cd, label %.lr.ph.i.preheader.i [
    i8 35, label %nk_strlen.exit.i
    i8 0, label %nk_strlen.exit.i
  ]

.lr.ph.i.preheader.i:                             ; preds = %bb.m
  %scevgep.i = getelementptr i8, ptr %.0111, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.ce = trunc i64 %strlen.i to i32
  %i.cf = add i32 %i.ce, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader.i, %bb.m, %bb.m
  %.0286.i = phi i32 [ 0, %bb.m ], [ 0, %bb.m ], [ %i.cf, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.ci = load ptr, ptr %i.bj, align 8
  %i.cj = tail call float %i.ch(ptr %i.ci, float noundef %i.bq, ptr noundef nonnull %.0111, i32 noundef %.0286.i) #50, !inline_history !1147
  %i.ck = fadd float %i.bq, %i.bx
  %i.cl = load float, ptr %i.bv, align 8, !tbaa !1146 ; 3 uses
  %i.cm = fadd float %i.ck, %i.cl                 ; 3 uses
  %.sroa.0.0.vec.insert381.i = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cn = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.co = fadd float %.sroa.0394.4.vec.extract402.i, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3516
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !1148 ; 2 uses
  %i.cr = fadd float %i.co, %i.cq                 ; 3 uses
  %.sroa.0.4.vec.insert385.i = insertelement <2 x float> %.sroa.0.0.vec.insert381.i, float %i.cr, i64 1
  %i.cs = fmul float %i.cq, 2.000000e+00
  %i.ct = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cn, i64 1
  %i.cv = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cs, i64 1
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float 2.000000e+00), <2 x float> %i.cw) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bo, %i.cx ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop, i64 1
  %.sroa.8.12.vec.insert392.i = shufflevector <2 x float> %i.cx, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop206 = fadd <2 x float> %i.bm, %i.bo
  %i.cz = extractelement <2 x float> %foldExtExtBinop206, i64 0 ; 5 uses
  %i.da = fadd float %i.bq, %i.cl
  %i.db = fsub float %i.cz, %i.da                 ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %.sroa.016.0.vec.insert.i = insertelement <2 x float> %i.dc, float %i.cc, i64 1
  %i.dd = load i32, ptr %.0110, align 4, !tbaa !10
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.n, label %bb.o

bb.n:                                             ; preds = %nk_strlen.exit.i
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.dg = load float, ptr %i.bp, align 8, !tbaa !166
  %i.dh = load i32, ptr %.0107, align 4, !tbaa !10
  %i.di = load ptr, ptr %i.bj, align 8
  %i.dj = call float %i.df(ptr %i.di, float noundef %i.dg, ptr noundef nonnull %.0108, i32 noundef %i.dh) #50, !inline_history !1147
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4460
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !1149
  %i.dm = fadd float %i.dj, %i.dl
  br label %bb.af

bb.o:                                             ; preds = %nk_strlen.exit.i
  %i.dn = load i32, ptr %2, align 8, !tbaa !1150
  switch i32 %i.dn, label %bb.ae [
    i32 0, label %bb.p
    i32 1, label %bb.u
    i32 2, label %bb.z
  ]

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !11 ; 3 uses
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %nk_itoa.exit.thread.i, label %bb.q

nk_itoa.exit.thread.i:                            ; preds = %bb.p
  store i8 48, ptr %i.b, align 16, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ds, align 1, !tbaa !11
  br label %.lr.ph.i360.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.dt = icmp slt i32 %i.dp, 0
  br i1 %i.dt, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  store i8 45, ptr %i.b, align 16, !tbaa !11
  %i.du = sub nsw i64 0, %i.dq
  br label %.preheader

.preheader:                                       ; preds = %bb.r, %bb.q
  %.127.i.i.ph = phi i64 [ 0, %bb.q ], [ 1, %bb.r ]
  %.12226.i.i.ph = phi i64 [ %i.dq, %bb.q ], [ %i.du, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %bb.s
  %.127.i.i = phi i64 [ %i.dy, %bb.s ], [ %.127.i.i.ph, %.preheader ] ; 2 uses
  %.12226.i.i = phi i64 [ %i.ea, %bb.s ], [ %.12226.i.i.ph, %.preheader ] ; 3 uses
  %i.dv = urem i64 %.12226.i.i, 10
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  %i.dx = or disjoint i8 %i.dw, 48
  %i.dy = add nuw nsw i64 %.127.i.i, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %.127.i.i
  store i8 %i.dx, ptr %i.dz, align 1, !tbaa !11
  %i.ea = udiv i64 %.12226.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.12226.i.i, 10
  br i1 %.not.i.i, label %bb.t, label %bb.s, !llvm.loop !1152

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dy
  store i8 0, ptr %i.eb, align 1, !tbaa !11
  %i.ec = load i8, ptr %i.b, align 16, !tbaa !11  ; 3 uses
  %i.ed = icmp eq i8 %i.ec, 45                    ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %spec.select.idx.i.sroa.sel.i = select i1 %i.ed, ptr %.sroa.gep.i, ptr %i.b ; 5 uses
  %i.ee = load i8, ptr %spec.select.idx.i.sroa.sel.i, align 1, !tbaa !11
  %.not4.i15.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not4.i15.i.i.i, label %nk_itoa.exit.i, label %nk_strlen.exit.i.i.i

nk_strlen.exit.i.i.i:                             ; preds = %bb.t
  %.sroa.gep.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %spec.select.idx.i.sroa.sel.sroa.sel.i = select i1 %i.ed, ptr %.sroa.gep.sroa.gep.i, ptr %.sroa.gep.i
  %strlen.i.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %spec.select.idx.i.sroa.sel.sroa.sel.i)
  %i.ef = trunc i64 %strlen.i.i.i to i32
  %i.eg = add i32 %i.ef, 1                        ; 2 uses
  %i.eh = lshr i32 %i.eg, 1                       ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i, label %nk_itoa.exit.i, label %.lr.ph19.preheader.i.i.i

.lr.ph19.preheader.i.i.i:                         ; preds = %nk_strlen.exit.i.i.i
  %i.ei = sext i32 %i.eg to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.eh to i64 ; 2 uses
  %i.ej = getelementptr i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %i.ei ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.ek = icmp eq i32 %i.eh, 1
  br i1 %i.ek, label %.lr.ph19.i.i.i.epil.preheader, label %.lr.ph19.preheader.i.i.i.new

.lr.ph19.preheader.i.i.i.new:                     ; preds = %.lr.ph19.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %.lr.ph19.i.i.i

.lr.ph19.i.i.i:                                   ; preds = %.lr.ph19.i.i.i, %.lr.ph19.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph19.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph19.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph19.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph19.i.i.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = xor i64 %indvars.iv.i.i.i, -1
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.en  ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !11
  store i8 %i.ep, ptr %i.el, align 1, !tbaa !11
  store i8 %i.em, ptr %i.eo, align 1, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !11
  %i.et = xor i64 %indvars.iv.i.i.i, -2
  %i.eu = getelementptr i8, ptr %i.ej, i64 %i.et  ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !11
  store i8 %i.ev, ptr %i.er, align 1, !tbaa !11
  store i8 %i.es, ptr %i.eu, align 1, !tbaa !11
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %nk_itoa.exit.loopexit.i.unr-lcssa, label %.lr.ph19.i.i.i, !llvm.loop !1153

nk_itoa.exit.loopexit.i.unr-lcssa:                ; preds = %.lr.ph19.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %nk_itoa.exit.loopexit.i, label %.lr.ph19.i.i.i.epil.preheader

.lr.ph19.i.i.i.epil.preheader:                    ; preds = %nk_itoa.exit.loopexit.i.unr-lcssa, %.lr.ph19.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph19.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %nk_itoa.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod215 = trunc i32 %i.eh to i1
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.ew = getelementptr inbounds nuw i8, ptr %spec.select.idx.i.sroa.sel.i, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11
  %i.ey = xor i64 %indvars.iv.i.i.i.epil.init, -1
  %i.ez = getelementptr i8, ptr %i.ej, i64 %i.ey  ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !11
  store i8 %i.fa, ptr %i.ew, align 1, !tbaa !11
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !11
  br label %nk_itoa.exit.loopexit.i

nk_itoa.exit.loopexit.i:                          ; preds = %nk_itoa.exit.loopexit.i.unr-lcssa, %.lr.ph19.i.i.i.epil.preheader
  %.pre.i = load i8, ptr %i.b, align 16, !tbaa !11
  br label %nk_itoa.exit.i

nk_itoa.exit.i:                                   ; preds = %nk_itoa.exit.loopexit.i, %nk_strlen.exit.i.i.i, %bb.t
  %i.fb = phi i8 [ %.pre.i, %nk_itoa.exit.loopexit.i ], [ %i.ec, %nk_strlen.exit.i.i.i ], [ %i.ec, %bb.t ]
  %.not4.i363420.i = icmp eq i8 %i.fb, 0
  br i1 %.not4.i363420.i, label %.sink.split.i, label %.lr.ph.i360.preheader.i

.lr.ph.i360.preheader.i:                          ; preds = %nk_itoa.exit.i, %nk_itoa.exit.thread.i
  %scevgep431.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %strlen432.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep431.i)
  %i.fc = trunc i64 %strlen432.i to i32
  %i.fd = add i32 %i.fc, 1
  br label %.sink.split.i

bb.u:                                             ; preds = %bb.o
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = load float, ptr %i.fe, align 8, !tbaa !11
  %i.fg = fpext float %i.ff to double
  %i.fh = call fastcc ptr @nk_dtoa(ptr noundef %i.b, double noundef %i.fg) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge.i.i, %bb.u
  %.011.i.i = phi i32 [ 0, %bb.u ], [ %.011.be.i.i, %.backedge.i.i ] ; 3 uses
  %.0.i365.i = phi ptr [ %i.b, %bb.u ], [ %.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.fi = load i8, ptr %.0.i365.i, align 1, !tbaa !11
  switch i8 %i.fi, label %bb.w [
    i8 0, label %nk_string_float_limit.exit.i
    i8 46, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.y, %bb.v
  %.011.be.i.i = phi i32 [ %spec.select.i366.i, %bb.y ], [ 1, %bb.v ]
  %.0.be.i.i = getelementptr inbounds nuw i8, ptr %.0.i365.i, i64 1
  br label %bb.v, !llvm.loop !1154

bb.w:                                             ; preds = %bb.v
  %i.fj = icmp eq i32 %.011.i.i, 3
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %.0.i365.i, align 1, !tbaa !11
  br label %nk_string_float_limit.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fk = icmp sgt i32 %.011.i.i, 0
  %i.fl = zext i1 %i.fk to i32
  %spec.select.i366.i = add nuw nsw i32 %.011.i.i, %i.fl
  br label %.backedge.i.i

nk_string_float_limit.exit.i:                     ; preds = %bb.v, %bb.x
  %i.fm = ptrtoint ptr %.0.i365.i to i64
  %i.fn = ptrtoint ptr %i.b to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = trunc i64 %i.fo to i32
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.o
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !11
  %i.fs = call fastcc ptr @nk_dtoa(ptr noundef %i.b, double noundef %i.fr) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge.i369.i, %bb.z
  %.011.i367.i = phi i32 [ 0, %bb.z ], [ %.011.be.i370.i, %.backedge.i369.i ] ; 3 uses
  %.0.i368.i = phi ptr [ %i.b, %bb.z ], [ %.0.be.i371.i, %.backedge.i369.i ] ; 4 uses
  %i.ft = load i8, ptr %.0.i368.i, align 1, !tbaa !11
  switch i8 %i.ft, label %bb.ab [
    i8 0, label %nk_string_float_limit.exit373.i
    i8 46, label %.backedge.i369.i
  ]

.backedge.i369.i:                                 ; preds = %bb.ad, %bb.aa
  %.011.be.i370.i = phi i32 [ %spec.select.i372.i, %bb.ad ], [ 1, %bb.aa ]
  %.0.be.i371.i = getelementptr inbounds nuw i8, ptr %.0.i368.i, i64 1
  br label %bb.aa, !llvm.loop !1154

bb.ab:                                            ; preds = %bb.aa
  %i.fu = icmp eq i32 %.011.i367.i, 3
  br i1 %i.fu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %.0.i368.i, align 1, !tbaa !11
  br label %nk_string_float_limit.exit373.i

bb.ad:                                            ; preds = %bb.ab
  %i.fv = icmp sgt i32 %.011.i367.i, 0
  %i.fw = zext i1 %i.fv to i32
  %spec.select.i372.i = add nuw nsw i32 %.011.i367.i, %i.fw
  br label %.backedge.i369.i

nk_string_float_limit.exit373.i:                  ; preds = %bb.aa, %bb.ac
  %i.fx = ptrtoint ptr %.0.i368.i to i64
  %i.fy = ptrtoint ptr %i.b to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %nk_string_float_limit.exit373.i, %nk_string_float_limit.exit.i, %.lr.ph.i360.preheader.i, %nk_itoa.exit.i
  %.sink.i = phi i32 [ %i.ga, %nk_string_float_limit.exit373.i ], [ %i.fp, %nk_string_float_limit.exit.i ], [ 0, %nk_itoa.exit.i ], [ %i.fd, %.lr.ph.i360.preheader.i ] ; 2 uses
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !10
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split.i, %bb.o
  %.0..0..0..i = phi i32 [ 0, %bb.o ], [ %.sink.i, %.sink.split.i ]
  %i.gb = load ptr, ptr %i.cg, align 8, !tbaa !164
  %i.gc = load float, ptr %i.bp, align 8, !tbaa !166
  %i.gd = load ptr, ptr %i.bj, align 8
  %i.ge = call float %i.gb(ptr %i.gd, float noundef %i.gc, ptr noundef nonnull %i.b, i32 noundef %.0..0..0..i) #50, !inline_history !1147
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.n
  %.0285.i = phi float [ %i.dm, %bb.n ], [ %i.ge, %bb.ae ]
  %.0283.i = phi ptr [ %.0108, %bb.n ], [ %i.b, %bb.ae ] ; 2 uses
  %.0.i = phi ptr [ %.0107, %bb.n ], [ %i.a, %bb.ae ] ; 4 uses
  %i.gf = load float, ptr %i.bv, align 8, !tbaa !1146 ; 2 uses
  %i.gg = extractelement <2 x float> %i.cx, i64 0
  %i.gh = fadd float %i.cm, %i.gg                 ; 5 uses
  %i.gi = fsub float %i.db, %i.gh                 ; 2 uses
  %i.gj = load float, ptr %i.bs, align 8, !tbaa !1145 ; 2 uses
  %i.gk = fadd float %.sroa.0394.4.vec.extract402.i, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gj, i64 1
  %i.gn = insertelement <2 x float> %i.bo, float %.0285.i, i64 0
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> <float 2.000000e+00, float -2.000000e+00>, <2 x float> %i.gn) ; 2 uses
  %i.gp = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gq = fcmp olt float %i.gp, %i.gi
  %..i = select i1 %i.gq, float %i.gp, float %i.gi ; 2 uses
  %i.gr = fadd float %i.gf, %..i
  %i.gs = fsub float %i.db, %i.gr                 ; 2 uses
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.gs, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.gk, i64 1 ; 2 uses
  %i.gt = insertelement <2 x float> %i.go, float %..i, i64 0 ; 2 uses
  %i.gu = fsub float %i.gs, %i.gh
  %i.gv = load i32, ptr %.0110, align 4, !tbaa !10
  %i.gw = icmp ne i32 %i.gv, 1
  %i.gx = load i32, ptr %i.bg, align 8, !tbaa !10
  %i.gy = and i32 %i.gx, 2
  %..i.i = or disjoint i32 %i.gy, 4               ; 2 uses
  store i32 %..i.i, ptr %i.bg, align 8, !tbaa !10
  %.not25.i.i = icmp eq ptr %i.bf, null           ; 3 uses
  %.pr53.i.i = load i32, ptr %.0110, align 4, !tbaa !10 ; 2 uses
  br i1 %.not25.i.i, label %.thread52.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %.pr53.i.i, label %nk_property_behavior.exit.i [
    i32 0, label %bb.ah
    i32 2, label %..thread49_crit_edge.i.i
  ]

..thread49_crit_edge.i.i:                         ; preds = %bb.ag
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 268
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !712
  br label %.thread49.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gz = call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.bg, <2 x float> %.sroa.03.4.vec.insert.i, <2 x float> %i.gt, ptr noundef nonnull readonly %i.bf, i32 noundef 0)
  br i1 %i.gz, label %.sink.split.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bf, i64 268
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !712 ; 7 uses
  %i.hc = fcmp ole float %i.cm, %i.hb
  %i.hd = fcmp olt float %i.hb, %i.gh
  %or.cond.i.i.i.i.i = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond.i.i.i.i.i, label %nk_input_has_mouse_click_in_rect.exit.i.i.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i

nk_input_has_mouse_click_in_rect.exit.i.i.i.i:    ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %i.bf, i64 272
  %i.hf = load float, ptr %i.he, align 4, !tbaa !713 ; 2 uses
  %i.hg = fcmp ole float %i.cr, %i.hf
  %i.hh = fadd float %i.cr, %i.cy
  %i.hi = fcmp olt float %i.hf, %i.hh
  %or.cond16.i.i.i.i.i = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %or.cond16.i.i.i.i.i, label %nk_input_has_mouse_click_down_in_rect.exit.i.i.i, label %nk_input_is_mouse_click_down_in_rect.exit.thread.i.i

nk_input_has_mouse_click_down_in_rect.exit.i.i.i: ; preds = %nk_input_has_mouse_click_in_rect.exit.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bf, i64 260
  %i.hk = load i8, ptr %i.hj, align 4, !tbaa !709, !range !79, !noundef !80
end_hunk_11
begin_hunk_12_@nk_chart_push_slot:bb.a
  %i.ft = fcmp olt float %i.fs, 0.000000e+00
  %i.fu = fneg float %i.fs
  %i.fv = select i1 %i.ft, float %i.fu, float %i.fs
  %i.fw = fmul float %i.fp, %i.fv                 ; 3 uses
  %.sroa.13.12.vec.insert.i = insertelement <2 x float> %.sroa.13.0.i, float %i.fw, i64 1
  %i.fx = fcmp ult float %1, 0.000000e+00
  br i1 %i.fx, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !1176 ; 3 uses
  %i.ga = fcmp olt float %i.fz, 0.000000e+00
  %i.gb = fneg float %i.fz
  %i.gc = select i1 %i.ga, float %i.gb, float %i.fz
  %i.gd = fadd float %1, %i.gc
  %i.ge = fcmp olt float %i.fr, 0.000000e+00
  %i.gf = fneg float %i.fr
  %i.gg = select i1 %i.ge, float %i.gf, float %i.fr
  %i.gh = fdiv float %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !1186
  %i.gk = fadd float %i.fp, %i.gj
  %i.gl = fneg float %i.fp
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gh, float %i.gk)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.go = load float, ptr %i.gn, align 4, !tbaa !1177
  %i.gp = fsub float %1, %i.go
  %i.gq = fdiv float %i.gp, %i.fr                 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !1186
  %i.gt = fcmp olt float %i.gq, 0.000000e+00
  %i.gu = fneg float %i.gq
  %i.gv = select i1 %i.gt, float %i.gu, float %i.gq
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.gv, float %i.gs)
  %i.gx = fsub float %i.gw, %i.fw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i = phi float [ %i.gx, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !1184
  %i.ha = sitofp i32 %i.fd to float               ; 2 uses
  %.sroa.13.8.vec.extract.i = extractelement <2 x float> %.sroa.13.0.i, i64 0 ; 2 uses
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.ha, float %.sroa.13.8.vec.extract.i, float %i.gz)
  %i.hc = fadd float %i.hb, %i.ha                 ; 3 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %.sroa.0.0.vec.insert5.i = insertelement <2 x float> %i.hd, float %.sink.i, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !846
  %i.hg = and i32 %i.hf, 4096
  %i.hh = icmp ne i32 %i.hg, 0
  %or.cond.not.i29 = or i1 %i.hh, %i.fb
  br i1 %or.cond.not.i29, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !714 ; 2 uses
  %i.hl = fcmp ole float %i.hc, %i.hk
  %i.hm = fadd float %.sroa.13.8.vec.extract.i, %i.hc
  %i.hn = fcmp olt float %i.hk, %i.hm
  %or.cond.i30 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond.i30, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hp = load float, ptr %i.ho, align 8, !tbaa !715 ; 2 uses
  %i.hq = fcmp ole float %.sink.i, %i.hp
  %i.hr = fadd float %i.fw, %.sink.i
  %i.hs = fcmp olt float %i.hp, %i.hr
  %or.cond117.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond117.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ht = load i8, ptr %i.hi, align 4, !tbaa !709, !range !79, !noundef !80
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !700
  %.not114.i = icmp eq i32 %i.hw, 0
  %i.hx = select i1 %.not114.i, i32 1, i32 3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hy = phi i32 [ 1, %bb.af ], [ %i.hx, %bb.ag ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.022.0.copyload23.i = load i32, ptr %i.hz, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad, %bb.ac
  %.099.i = phi i32 [ %i.hy, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.ac ]
  %.sroa.022.0.i = phi i32 [ %.sroa.022.0.copyload23.i, %bb.ah ], [ %.sroa.022.0.copyload.i, %bb.ad ], [ %.sroa.022.0.copyload.i, %bb.ae ], [ %.sroa.022.0.copyload.i, %bb.ac ]
  tail call void @nk_fill_rect(ptr noundef nonnull %i.ey, <2 x float> %.sroa.0.0.vec.insert5.i, <2 x float> %.sroa.13.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.022.0.i)
  %i.ia = load i32, ptr %i.fc, align 4, !tbaa !1183
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %i.fc, align 4, !tbaa !1183
  br label %nk_chart_push_column.exit

nk_chart_push_column.exit:                        ; preds = %bb.ai, %bb.w, %nk_chart_push_line.exit, %bb.d, %bb.c, %bb.a, %bb.b
  %.022 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %.0.i, %nk_chart_push_line.exit ], [ %.099.i, %bb.ai ], [ 0, %bb.w ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_chart_push(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @nk_chart_push_slot(ptr noundef %0, float noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_chart_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_memset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %nk_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 3                          ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %.loopexit46.i.thread, label %.loopexit46.i

.loopexit46.i.thread:                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.e, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_memset.exit

.loopexit46.i:                                    ; preds = %bb.c
  %i.h = sub nuw nsw i64 4, %i.g                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 0, i64 %i.h, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.h ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i = getelementptr i8, ptr %scevgep.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i, i8 0, i64 %i.g, i1 false), !tbaa !11
  br label %nk_memset.exit

nk_memset.exit:                                   ; preds = %.loopexit46.i, %.loopexit46.i.thread, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %3, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %4 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %2, i64 %i.d
  %i.f = load float, ptr %i.e, align 4, !tbaa !8  ; 6 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.d ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.050 = phi float [ %i.f, %.lr.ph.preheader.new ], [ %i.q, %.lr.ph ] ; 2 uses
  %.04149 = phi float [ %i.f, %.lr.ph.preheader.new ], [ %..041.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.i = load float, ptr %gep, align 4, !tbaa !8  ; 4 uses
  %i.j = fcmp olt float %i.i, %.04149
  %..041 = select i1 %i.j, float %i.i, float %.04149 ; 2 uses
  %i.k = fcmp olt float %i.i, %.050
  %i.l = select i1 %i.k, float %.050, float %i.i  ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.m, i64 4
  %i.n = load float, ptr %gep.1, align 4, !tbaa !8 ; 4 uses
  %i.o = fcmp olt float %i.n, %..041
  %..041.1 = select i1 %i.o, float %i.n, float %..041 ; 3 uses
  %i.p = fcmp olt float %i.n, %i.l
  %i.q = select i1 %i.p, float %i.l, float %i.n   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1190

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.050.epil.init = phi float [ %i.f, %.lr.ph.preheader ], [ %i.q, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04149.epil.init = phi float [ %i.f, %.lr.ph.preheader ], [ %..041.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.r = load float, ptr %gep.epil, align 4, !tbaa !8 ; 4 uses
  %i.s = fcmp olt float %i.r, %.04149.epil.init
  %..041.epil = select i1 %i.s, float %i.r, float %.04149.epil.init
  %i.t = fcmp olt float %i.r, %.050.epil.init
  %i.u = select i1 %i.t, float %.050.epil.init, float %i.r
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %..041.lcssa = phi float [ %..041.1, %._crit_edge.unr-lcssa ], [ %..041.epil, %.lr.ph.epil.preheader ]
  %.lcssa = phi float [ %i.q, %._crit_edge.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.x = load i32, ptr %i.v, align 8
  %i.y = load i32, ptr %i.w, align 4
  %i.z = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.x, i32 %i.y, i32 noundef %3, float noundef %..041.lcssa, float noundef %.lcssa)
  br i1 %i.z, label %.lr.ph53.preheader, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.ac = load i32, ptr %i.aa, align 8
  %i.ad = load i32, ptr %i.ab, align 4
  %i.ae = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.ac, i32 %i.ad, i32 noundef %3, float noundef %i.f, float noundef %i.f)
  br i1 %i.ae, label %._crit_edge54, label %nk_chart_end.exit

.lr.ph53.preheader:                               ; preds = %._crit_edge
  %wide.trip.count59 = zext nneg i32 %3 to i64
  %invariant.gep67 = getelementptr [4 x i8], ptr %2, i64 %i.d
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv56 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next57, %.lr.ph53 ] ; 2 uses
  %gep68 = getelementptr [4 x i8], ptr %invariant.gep67, i64 %indvars.iv56
  %i.af = load float, ptr %gep68, align 4, !tbaa !8
  %i.ag = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.af, i32 noundef 0) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1191

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !757
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.ao, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.an, i1 false), !tbaa !11
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge54, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot_function(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %4, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float %3(ptr noundef %2, i32 noundef %5) #50 ; 4 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.044 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.03743 = phi float [ %i.k, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.03842 = phi float [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = add nsw i32 %.044, %5
  %i.g = tail call float %3(ptr noundef %2, i32 noundef %i.f) #50 ; 4 uses
  %i.h = fcmp olt float %i.g, %.03842
  %i.i = select i1 %i.h, float %i.g, float %.03842 ; 2 uses
  %i.j = fcmp olt float %i.g, %.03743
  %i.k = select i1 %i.j, float %.03743, float %i.g ; 2 uses
  %i.l = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1192

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 4
  %i.q = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.o, i32 %i.p, i32 noundef %4, float noundef %i.i, float noundef %i.k)
  br i1 %i.q, label %.lr.ph47, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.t = load i32, ptr %i.r, align 8
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.t, i32 %i.u, i32 noundef %4, float noundef %i.d, float noundef %i.d)
  br i1 %i.v, label %._crit_edge48, label %nk_chart_end.exit

.lr.ph47:                                         ; preds = %._crit_edge, %.lr.ph47
  %.146 = phi i32 [ %i.z, %.lr.ph47 ], [ 0, %._crit_edge ] ; 2 uses
  %i.w = add nsw i32 %.146, %5
  %i.x = tail call float %3(ptr noundef %2, i32 noundef %i.w) #50
  %i.y = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.x, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.146, 1                 ; 2 uses
  %exitcond50.not = icmp eq i32 %i.z, %4
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1193

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !756 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !757
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !10
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !11
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge48, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_color_pick(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_do_color_picker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !756  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !757  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_do_color_picker.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_do_color_picker.exit
    i32 1, label %bb.e
  ]
end_hunk_12
begin_hunk_13_@stbtt__run_charstring:bb.a

stbtt__buf_get8.exit.i330:                        ; preds = %bb.et, %bb.es
  %i.uw = phi i32 [ %i.uq, %bb.et ], [ %i.ar, %bb.es ] ; 4 uses
  %.0.i.i = phi i32 [ %i.uv, %bb.et ], [ 0, %bb.es ] ; 2 uses
  %.not.i.i329.1 = icmp slt i32 %i.uw, %i.ao
  br i1 %.not.i.i329.1, label %bb.eu, label %stbtt__buf_get8.exit.i330.1

bb.eu:                                            ; preds = %stbtt__buf_get8.exit.i330
  %i.ux = add nsw i32 %i.uw, 1
  %i.uy = sext i32 %i.uw to i64
  %i.uz = getelementptr inbounds i8, ptr %i.aq, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !11
  %i.vb = zext i8 %i.va to i32
  %i.vc = or disjoint i32 %.0.i.i, %i.vb
  br label %stbtt__buf_get8.exit.i330.1

stbtt__buf_get8.exit.i330.1:                      ; preds = %bb.eu, %stbtt__buf_get8.exit.i330
  %i.vd = phi i32 [ %i.ux, %bb.eu ], [ %i.uw, %stbtt__buf_get8.exit.i330 ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.vc, %bb.eu ], [ %.0.i.i, %stbtt__buf_get8.exit.i330 ]
  %i.ve = shl nuw nsw i32 %.0.i.i.1, 8            ; 2 uses
  %.not.i.i329.2 = icmp slt i32 %i.vd, %i.ao
  br i1 %.not.i.i329.2, label %bb.ev, label %stbtt__buf_get8.exit.i330.2

bb.ev:                                            ; preds = %stbtt__buf_get8.exit.i330.1
  %i.vf = add nsw i32 %i.vd, 1
  %i.vg = sext i32 %i.vd to i64
  %i.vh = getelementptr inbounds i8, ptr %i.aq, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !11
  %i.vj = zext i8 %i.vi to i32
  %i.vk = or disjoint i32 %i.ve, %i.vj
  br label %stbtt__buf_get8.exit.i330.2

stbtt__buf_get8.exit.i330.2:                      ; preds = %bb.ev, %stbtt__buf_get8.exit.i330.1
  %i.vl = phi i32 [ %i.vf, %bb.ev ], [ %i.vd, %stbtt__buf_get8.exit.i330.1 ] ; 4 uses
  %.0.i.i.2 = phi i32 [ %i.vk, %bb.ev ], [ %i.ve, %stbtt__buf_get8.exit.i330.1 ]
  %i.vm = shl nuw i32 %.0.i.i.2, 8                ; 2 uses
  %.not.i.i329.3 = icmp slt i32 %i.vl, %i.ao
  br i1 %.not.i.i329.3, label %bb.ew, label %stbtt__buf_get8.exit.i330.3

bb.ew:                                            ; preds = %stbtt__buf_get8.exit.i330.2
  %i.vn = add nsw i32 %i.vl, 1
  %i.vo = sext i32 %i.vl to i64
  %i.vp = getelementptr inbounds i8, ptr %i.aq, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !11
  %i.vr = zext i8 %i.vq to i32
  %i.vs = or disjoint i32 %i.vm, %i.vr
  br label %stbtt__buf_get8.exit.i330.3

stbtt__buf_get8.exit.i330.3:                      ; preds = %bb.ew, %stbtt__buf_get8.exit.i330.2
  %i.vt = phi i32 [ %i.vn, %bb.ew ], [ %i.vl, %stbtt__buf_get8.exit.i330.2 ]
  %.0.i.i.3 = phi i32 [ %i.vs, %bb.ew ], [ %i.vm, %stbtt__buf_get8.exit.i330.2 ]
  store i32 %i.vt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.vu = sitofp i32 %.0.i.i.3 to float
  %i.vv = fmul nnan float %i.vu, f0x37800000
  br label %bb.ey

bb.ex:                                            ; preds = %bb.er
  %i.vw = icmp slt i32 %i.ap, 0
  %i.vx = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ao)
  %..i.i333 = select i1 %i.vw, i32 %i.ao, i32 %i.vx
  store i32 %..i.i333, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !526
  %i.vy = call fastcc i32 @stbtt__cff_int(ptr noundef %4)
  %i.vz = trunc i32 %i.vy to i16
  %i.wa = sitofp i16 %i.vz to float
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %stbtt__buf_get8.exit.i330.3
  %.2244 = phi float [ %i.vv, %stbtt__buf_get8.exit.i330.3 ], [ %i.wa, %bb.ex ]
  %i.wb = icmp sgt i32 %.0253366, 47
  br i1 %i.wb, label %.critedge, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wc = add nsw i32 %.0253366, 1
  %i.wd = sext i32 %.0253366 to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.wd
  store float %.2244, ptr %i.we, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader349, %stbtt__csctx_rline_to.exit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.cv, %bb.ep, %bb.en, %bb.el, %bb.ej, %bb.ct, %stbtt__csctx_rline_to.exit302, %bb.bh, %bb.bl, %bb.ab, %bb.aq, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.ez, %bb.dr, %bb.dp
  %.1235348 = phi i32 [ %.0234374, %bb.dr ], [ %.0234374, %bb.ez ], [ %.0234374, %bb.dp ], [ %.0234374, %bb.ep ], [ %.0234374, %bb.en ], [ %.0234374, %bb.el ], [ %.0234374, %bb.ej ], [ %.0234374, %bb.cv ], [ %.0234374, %bb.ct ], [ %.0234374, %stbtt__csctx_rline_to.exit302 ], [ %.0234374, %.lr.ph.split.us.preheader ], [ %.0234374, %bb.bh ], [ %.0234374, %bb.bl ], [ %.0234374, %bb.ab ], [ %.0234374, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ %.0234374, %bb.e ], [ %.0234374, %.lr.ph.split.preheader ], [ %.0234374, %.preheader349 ], [ %.0234374, %.lr.ph.split.us ], [ %.0234374, %stbtt__csctx_rline_to.exit ], [ %.0234374, %.lr.ph.split ]
  %.2239347 = phi i32 [ %.0237373, %bb.dr ], [ %.0237373, %bb.ez ], [ %.0237373, %bb.dp ], [ %.0237373, %bb.ep ], [ %.0237373, %bb.en ], [ %.0237373, %bb.el ], [ %.0237373, %bb.ej ], [ %.0237373, %bb.cv ], [ %.0237373, %bb.ct ], [ %.0237373, %stbtt__csctx_rline_to.exit302 ], [ %.0237373, %.lr.ph.split.us.preheader ], [ %.0237373, %bb.bh ], [ %.0237373, %bb.bl ], [ %.0237373, %bb.ab ], [ %.0237373, %bb.aq ], [ %.1238, %bb.d ], [ %.0237373, %bb.k ], [ %.0237373, %bb.i ], [ %.0237373, %bb.g ], [ %i.bd, %bb.e ], [ %.0237373, %.lr.ph.split.preheader ], [ %.0237373, %.preheader349 ], [ %.0237373, %.lr.ph.split.us ], [ %.0237373, %stbtt__csctx_rline_to.exit ], [ %.0237373, %.lr.ph.split ]
  %.1241346 = phi i32 [ %i.qo, %bb.dr ], [ %.0240372, %bb.ez ], [ %i.pp, %bb.dp ], [ %.0240372, %bb.ep ], [ %.0240372, %bb.en ], [ %.0240372, %bb.el ], [ %.0240372, %bb.ej ], [ %.0240372, %bb.cv ], [ %.0240372, %bb.ct ], [ %.0240372, %stbtt__csctx_rline_to.exit302 ], [ %.0240372, %.lr.ph.split.us.preheader ], [ %.0240372, %bb.bh ], [ %.0240372, %bb.bl ], [ %.0240372, %bb.ab ], [ %.0240372, %bb.aq ], [ %.0240372, %bb.d ], [ %.0240372, %bb.k ], [ %.0240372, %bb.i ], [ %.0240372, %bb.g ], [ %.0240372, %bb.e ], [ %.0240372, %.lr.ph.split.preheader ], [ %.0240372, %.preheader349 ], [ %.0240372, %.lr.ph.split.us ], [ %.0240372, %stbtt__csctx_rline_to.exit ], [ %.0240372, %.lr.ph.split ]
  %.sroa.073.3345 = phi ptr [ %.sroa.073.0371, %bb.dr ], [ %.sroa.073.0371, %bb.ez ], [ %.sroa.073.2, %bb.dp ], [ %.sroa.073.0371, %bb.ep ], [ %.sroa.073.0371, %bb.en ], [ %.sroa.073.0371, %bb.el ], [ %.sroa.073.0371, %bb.ej ], [ %.sroa.073.0371, %bb.cv ], [ %.sroa.073.0371, %bb.ct ], [ %.sroa.073.0371, %stbtt__csctx_rline_to.exit302 ], [ %.sroa.073.0371, %.lr.ph.split.us.preheader ], [ %.sroa.073.0371, %bb.bh ], [ %.sroa.073.0371, %bb.bl ], [ %.sroa.073.0371, %bb.ab ], [ %.sroa.073.0371, %bb.aq ], [ %.sroa.073.0371, %bb.d ], [ %.sroa.073.0371, %bb.k ], [ %.sroa.073.0371, %bb.i ], [ %.sroa.073.0371, %bb.g ], [ %.sroa.073.0371, %bb.e ], [ %.sroa.073.0371, %.lr.ph.split.preheader ], [ %.sroa.073.0371, %.preheader349 ], [ %.sroa.073.0371, %.lr.ph.split.us ], [ %.sroa.073.0371, %stbtt__csctx_rline_to.exit ], [ %.sroa.073.0371, %.lr.ph.split ]
  %.sroa.5.3344 = phi i64 [ %.sroa.5.0370, %bb.dr ], [ %.sroa.5.0370, %bb.ez ], [ %.sroa.5.2, %bb.dp ], [ %.sroa.5.0370, %bb.ep ], [ %.sroa.5.0370, %bb.en ], [ %.sroa.5.0370, %bb.el ], [ %.sroa.5.0370, %bb.ej ], [ %.sroa.5.0370, %bb.cv ], [ %.sroa.5.0370, %bb.ct ], [ %.sroa.5.0370, %stbtt__csctx_rline_to.exit302 ], [ %.sroa.5.0370, %.lr.ph.split.us.preheader ], [ %.sroa.5.0370, %bb.bh ], [ %.sroa.5.0370, %bb.bl ], [ %.sroa.5.0370, %bb.ab ], [ %.sroa.5.0370, %bb.aq ], [ %.sroa.5.0370, %bb.d ], [ %.sroa.5.0370, %bb.k ], [ %.sroa.5.0370, %bb.i ], [ %.sroa.5.0370, %bb.g ], [ %.sroa.5.0370, %bb.e ], [ %.sroa.5.0370, %.lr.ph.split.preheader ], [ %.sroa.5.0370, %.preheader349 ], [ %.sroa.5.0370, %.lr.ph.split.us ], [ %.sroa.5.0370, %stbtt__csctx_rline_to.exit ], [ %.sroa.5.0370, %.lr.ph.split ]
  %.2248343 = phi i32 [ %.0246369, %bb.dr ], [ %.0246369, %bb.ez ], [ %.1247, %bb.dp ], [ %.0246369, %bb.ep ], [ %.0246369, %bb.en ], [ %.0246369, %bb.el ], [ %.0246369, %bb.ej ], [ %.0246369, %bb.cv ], [ %.0246369, %bb.ct ], [ %.0246369, %stbtt__csctx_rline_to.exit302 ], [ %.0246369, %.lr.ph.split.us.preheader ], [ %.0246369, %bb.bh ], [ %.0246369, %bb.bl ], [ %.0246369, %bb.ab ], [ %.0246369, %bb.aq ], [ %.0246369, %bb.d ], [ %.0246369, %bb.k ], [ %.0246369, %bb.i ], [ %.0246369, %bb.g ], [ %.0246369, %bb.e ], [ %.0246369, %.lr.ph.split.preheader ], [ %.0246369, %.preheader349 ], [ %.0246369, %.lr.ph.split.us ], [ %.0246369, %stbtt__csctx_rline_to.exit ], [ %.0246369, %.lr.ph.split ]
  %i.wf = phi i32 [ %.0253366, %bb.dr ], [ %i.wc, %bb.ez ], [ %i.pj, %bb.dp ], [ 0, %bb.ep ], [ 0, %bb.en ], [ 0, %bb.el ], [ 0, %bb.ej ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %stbtt__csctx_rline_to.exit302 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 0, %bb.ab ], [ 0, %bb.aq ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %.lr.ph.split.preheader ], [ 0, %.preheader349 ], [ 0, %.lr.ph.split.us ], [ 0, %stbtt__csctx_rline_to.exit ], [ 0, %.lr.ph.split ]
  %i.wg = load i32, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !526 ; 2 uses
  %i.wh = load i32, ptr %i.j, align 4, !tbaa !527 ; 2 uses
  %i.wi = icmp slt i32 %i.wg, %i.wh
  br i1 %i.wi, label %stbtt__buf_get8.exit, label %.critedge, !llvm.loop !1231

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.z, %bb.aa, %bb.bf, %bb.bg, %bb.bp, %bb.bq, %._crit_edge361, %bb.cf, %._crit_edge, %bb.cu, %bb.dh, %bb.di, %stbtt__get_subr.exit, %bb.dq, %bb.eq, %bb.ey, %.thread, %bb.ek, %bb.ei, %stbtt__buf_get8.exit327, %bb.em, %bb.eo, %bb.eh, %bb.a, %stbtt__csctx_v.exit.i, %bb.dt
  %.3 = phi i32 [ 1, %bb.dt ], [ 1, %stbtt__csctx_v.exit.i ], [ 0, %bb.a ], [ 0, %bb.eh ], [ 0, %bb.eo ], [ 0, %bb.em ], [ 0, %stbtt__buf_get8.exit327 ], [ 0, %bb.ei ], [ 0, %bb.ek ], [ 0, %.thread ], [ 0, %bb.ey ], [ 0, %bb.eq ], [ 0, %bb.dq ], [ 0, %stbtt__get_subr.exit ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.cu ], [ 0, %._crit_edge ], [ 0, %bb.cf ], [ 0, %._crit_edge361 ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { ptr, i64 } @stbtt__cff_index_get(ptr %0, i64 %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %.sroa.18.8.extract.shift = lshr i64 %1, 32
  %.sroa.18.8.extract.trunc = trunc nuw i64 %.sroa.18.8.extract.shift to i32 ; 14 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %.sroa.18.8.extract.trunc, i32 0) ; 2 uses
  %.not.i.i = icmp sgt i32 %.sroa.18.8.extract.trunc, 0
  br i1 %.not.i.i, label %bb.b, label %stbtt__buf_get8.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 8
  br label %stbtt__buf_get8.exit.i

stbtt__buf_get8.exit.i:                           ; preds = %bb.b, %bb.a
  %.sroa.6.1 = phi i32 [ 1, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i.i.1 = icmp slt i32 %.sroa.6.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i.1, label %bb.c, label %stbtt__buf_get8.exit.i.1

bb.c:                                             ; preds = %stbtt__buf_get8.exit.i
  %i.g = add nsw i32 %.sroa.6.1, 1
  %i.h = sext i32 %.sroa.6.1 to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %.0.i.i, %i.k
  br label %stbtt__buf_get8.exit.i.1

stbtt__buf_get8.exit.i.1:                         ; preds = %bb.c, %stbtt__buf_get8.exit.i
  %.sroa.6.1.1 = phi i32 [ %i.g, %bb.c ], [ %.sroa.6.1, %stbtt__buf_get8.exit.i ] ; 3 uses
  %.0.i.i.1 = phi i32 [ %i.l, %bb.c ], [ %.0.i.i, %stbtt__buf_get8.exit.i ]
  %.not.i = icmp slt i32 %.sroa.6.1.1, %.sroa.18.8.extract.trunc
  br i1 %.not.i, label %stbtt__buf_get8.exit, label %stbtt__buf_get.exit28

stbtt__buf_get8.exit:                             ; preds = %stbtt__buf_get8.exit.i.1
  %i.m = sext i32 %.sroa.6.1.1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11    ; 4 uses
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %.not.i9 = icmp eq i8 %i.o, 0
  br i1 %.not.i9, label %stbtt__buf_get.exit28, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %stbtt__buf_get8.exit
  %i.q = add nsw i32 %.sroa.6.1.1, 1
  %i.r = mul nsw i32 %2, %i.p
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.sroa.18.8.extract.trunc)
  %..i.i = select i1 %i.t, i32 %.sroa.18.8.extract.trunc, i32 %i.u ; 4 uses
  %i.v = add nsw i32 %i.p, -1                     ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.p, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %stbtt__buf_get8.exit.i14.1, %.lr.ph.i.preheader.new
  %.sroa.6.3 = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %.sroa.6.4.1, %stbtt__buf_get8.exit.i14.1 ]
  %i.x = phi i32 [ %..i.i, %.lr.ph.i.preheader.new ], [ %i.an, %stbtt__buf_get8.exit.i14.1 ] ; 4 uses
  %.056.i12 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.0.i.i15.1, %stbtt__buf_get8.exit.i14.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %stbtt__buf_get8.exit.i14.1 ]
  %i.y = shl i32 %.056.i12, 8                     ; 2 uses
  %.not.i.i13 = icmp slt i32 %i.x, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13, label %bb.d, label %stbtt__buf_get8.exit.i14

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.x, 1                      ; 2 uses
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.y, %i.ad
  br label %stbtt__buf_get8.exit.i14

stbtt__buf_get8.exit.i14:                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.6.4 = phi i32 [ %i.z, %bb.d ], [ %.sroa.6.3, %.lr.ph.i ]
  %i.af = phi i32 [ %i.z, %bb.d ], [ %i.x, %.lr.ph.i ] ; 4 uses
  %.0.i.i15 = phi i32 [ %i.ae, %bb.d ], [ %i.y, %.lr.ph.i ]
  %i.ag = shl i32 %.0.i.i15, 8                    ; 2 uses
  %.not.i.i13.1 = icmp slt i32 %i.af, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.1, label %bb.e, label %stbtt__buf_get8.exit.i14.1

bb.e:                                             ; preds = %stbtt__buf_get8.exit.i14
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  br label %stbtt__buf_get8.exit.i14.1

stbtt__buf_get8.exit.i14.1:                       ; preds = %bb.e, %stbtt__buf_get8.exit.i14
  %.sroa.6.4.1 = phi i32 [ %i.ah, %bb.e ], [ %.sroa.6.4, %stbtt__buf_get8.exit.i14 ] ; 3 uses
  %i.an = phi i32 [ %i.ah, %bb.e ], [ %i.af, %stbtt__buf_get8.exit.i14 ] ; 2 uses
  %.0.i.i15.1 = phi i32 [ %i.am, %bb.e ], [ %i.ag, %stbtt__buf_get8.exit.i14 ] ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i19.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !529

.lr.ph.i19.preheader.unr-lcssa:                   ; preds = %stbtt__buf_get8.exit.i14.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i19.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i19.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.6.3.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %.epil.init = phi i32 [ %..i.i, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i19.preheader.unr-lcssa ] ; 3 uses
  %.056.i12.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ao = shl i32 %.056.i12.epil.init, 8          ; 2 uses
  %.not.i.i13.epil = icmp slt i32 %.epil.init, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i13.epil, label %bb.f, label %.lr.ph.i19.preheader

bb.f:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ap = add nsw i32 %.epil.init, 1
  %i.aq = sext i32 %.epil.init to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.ao, %i.at
  br label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %.lr.ph.i.epil.preheader, %bb.f, %.lr.ph.i19.preheader.unr-lcssa
  %.sroa.6.4.lcssa = phi i32 [ %.sroa.6.4.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.ap, %bb.f ], [ %.sroa.6.3.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0.i.i15.lcssa = phi i32 [ %.0.i.i15.1, %.lr.ph.i19.preheader.unr-lcssa ], [ %i.au, %bb.f ], [ %i.ao, %.lr.ph.i.epil.preheader ] ; 3 uses
  %xtraiter59 = and i32 %i.p, 1
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.lr.ph.i19.epil.preheader, label %.lr.ph.i19.preheader.new

.lr.ph.i19.preheader.new:                         ; preds = %.lr.ph.i19.preheader
  %unroll_iter65 = and i32 %i.p, 254
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %stbtt__buf_get8.exit.i24.1, %.lr.ph.i19.preheader.new
  %i.aw = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader.new ], [ %i.bm, %stbtt__buf_get8.exit.i24.1 ] ; 4 uses
  %.056.i22 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %.0.i.i25.1, %stbtt__buf_get8.exit.i24.1 ]
  %niter66 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %niter66.next.1, %stbtt__buf_get8.exit.i24.1 ]
  %i.ax = shl i32 %.056.i22, 8                    ; 2 uses
  %.not.i.i23 = icmp slt i32 %i.aw, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23, label %bb.g, label %stbtt__buf_get8.exit.i24

bb.g:                                             ; preds = %.lr.ph.i19
  %i.ay = add nsw i32 %i.aw, 1
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ax, %i.bc
  br label %stbtt__buf_get8.exit.i24

stbtt__buf_get8.exit.i24:                         ; preds = %bb.g, %.lr.ph.i19
  %i.be = phi i32 [ %i.ay, %bb.g ], [ %i.aw, %.lr.ph.i19 ] ; 4 uses
  %.0.i.i25 = phi i32 [ %i.bd, %bb.g ], [ %i.ax, %.lr.ph.i19 ]
  %i.bf = shl i32 %.0.i.i25, 8                    ; 2 uses
  %.not.i.i23.1 = icmp slt i32 %i.be, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.1, label %bb.h, label %stbtt__buf_get8.exit.i24.1

bb.h:                                             ; preds = %stbtt__buf_get8.exit.i24
  %i.bg = add nsw i32 %i.be, 1
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bf, %i.bk
  br label %stbtt__buf_get8.exit.i24.1

stbtt__buf_get8.exit.i24.1:                       ; preds = %bb.h, %stbtt__buf_get8.exit.i24
  %i.bm = phi i32 [ %i.bg, %bb.h ], [ %i.be, %stbtt__buf_get8.exit.i24 ] ; 2 uses
  %.0.i.i25.1 = phi i32 [ %i.bl, %bb.h ], [ %i.bf, %stbtt__buf_get8.exit.i24 ] ; 3 uses
  %niter66.next.1 = add nuw i32 %niter66, 2       ; 2 uses
  %niter66.ncmp.1 = icmp eq i32 %niter66.next.1, %unroll_iter65
  br i1 %niter66.ncmp.1, label %stbtt__buf_get.exit28.loopexit.unr-lcssa, label %.lr.ph.i19, !llvm.loop !529

stbtt__buf_get.exit28.loopexit.unr-lcssa:         ; preds = %stbtt__buf_get8.exit.i24.1
  %lcmp.mod62.not = icmp eq i32 %xtraiter59, 0
  br i1 %lcmp.mod62.not, label %stbtt__buf_get.exit28, label %.lr.ph.i19.epil.preheader

.lr.ph.i19.epil.preheader:                        ; preds = %stbtt__buf_get.exit28.loopexit.unr-lcssa, %.lr.ph.i19.preheader
  %.epil.init61 = phi i32 [ %.sroa.6.4.lcssa, %.lr.ph.i19.preheader ], [ %i.bm, %stbtt__buf_get.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.056.i22.epil.init = phi i32 [ 0, %.lr.ph.i19.preheader ], [ %.0.i.i25.1, %stbtt__buf_get.exit28.loopexit.unr-lcssa ]
  %lcmp.mod64 = trunc i8 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bn = shl i32 %.056.i22.epil.init, 8          ; 2 uses
  %.not.i.i23.epil = icmp slt i32 %.epil.init61, %.sroa.18.8.extract.trunc
  br i1 %.not.i.i23.epil, label %bb.i, label %stbtt__buf_get.exit28

bb.i:                                             ; preds = %.lr.ph.i19.epil.preheader
  %i.bo = sext i32 %.epil.init61 to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bn, %i.br
  br label %stbtt__buf_get.exit28

stbtt__buf_get.exit28:                            ; preds = %stbtt__buf_get.exit28.loopexit.unr-lcssa, %bb.i, %.lr.ph.i19.epil.preheader, %stbtt__buf_get8.exit.i.1, %stbtt__buf_get8.exit
  %.0.i55 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %i.p, %.lr.ph.i19.epil.preheader ], [ %i.p, %bb.i ], [ %i.p, %stbtt__buf_get.exit28.loopexit.unr-lcssa ]
  %.05.lcssa.i42 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i15.lcssa, %.lr.ph.i19.epil.preheader ], [ %.0.i.i15.lcssa, %bb.i ], [ %.0.i.i15.lcssa, %stbtt__buf_get.exit28.loopexit.unr-lcssa ] ; 2 uses
  %.05.lcssa.i27 = phi i32 [ 0, %stbtt__buf_get8.exit ], [ 0, %stbtt__buf_get8.exit.i.1 ], [ %.0.i.i25.1, %stbtt__buf_get.exit28.loopexit.unr-lcssa ], [ %i.bs, %bb.i ], [ %i.bn, %.lr.ph.i19.epil.preheader ]
  %i.bt = add nuw nsw i32 %.0.i.i.1, 1
  %i.bu = mul nuw nsw i32 %.0.i55, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, %.05.lcssa.i42       ; 4 uses
  %i.bx = sub nsw i32 %.05.lcssa.i27, %.05.lcssa.i42 ; 3 uses
  %i.by = or i32 %i.bx, %i.bw
  %or.cond.not.i = icmp sgt i32 %i.by, -1
  br i1 %or.cond.not.i, label %bb.j, label %stbtt__buf_range.exit

bb.j:                                             ; preds = %stbtt__buf_get.exit28
  %i.bz = icmp sgt i32 %i.bw, %.sroa.18.8.extract.trunc
  %i.ca = sub nsw i32 %.sroa.18.8.extract.trunc, %i.bw
  %i.cb = icmp sgt i32 %i.bx, %i.ca
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %stbtt__buf_range.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = zext nneg i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = zext nneg i32 %i.bx to i64
  %i.cf = shl nuw nsw i64 %i.ce, 32
  br label %stbtt__buf_range.exit

stbtt__buf_range.exit:                            ; preds = %stbtt__buf_get.exit28, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ null, %stbtt__buf_get.exit28 ], [ null, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.5.0.i = phi i64 [ 0, %stbtt__buf_get.exit28 ], [ 0, %bb.j ], [ %i.cf, %bb.k ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbtt__csctx_rmove_to(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !1229 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !1230 ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge.i, label %stbtt__csctx_close_shape.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !1214
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1215
  %i.o = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1216
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.o, ptr %i.m, align 4, !tbaa !1215
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1217
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1216
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !1217
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1218
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1216
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !1218
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1219
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1216
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %stbtt__track_vertex.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !1219
  br label %stbtt__track_vertex.exit.i.i

stbtt__track_vertex.exit.i.i:                     ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !1216
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !388
  br label %stbtt__csctx_v.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !391
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !388 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !372
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !1229
  br label %stbtt__csctx_v.exit.i

stbtt__csctx_v.exit.i:                            ; preds = %bb.o, %stbtt__track_vertex.exit.i.i
  %.pre = phi float [ %i.c, %stbtt__track_vertex.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %stbtt__track_vertex.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !388
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !1230
  br label %stbtt__csctx_close_shape.exit

stbtt__csctx_close_shape.exit:                    ; preds = %bb.b, %stbtt__csctx_v.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %stbtt__csctx_v.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %stbtt__csctx_v.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !1229
  store float %i.ax, ptr %i.a, align 8, !tbaa !1232
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !1230
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !1233
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !1214
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %stbtt__csctx_close_shape.exit
end_hunk_13
begin_hunk_14_@nk_property_save:bb.a
    i8 32, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  br label %.preheader.i, !llvm.loop !12

bb.c:                                             ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 1, !tbaa !11
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.c
  %i.g = phi i8 [ %.pre.i, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %.018.i = phi i32 [ -1, %bb.c ], [ 1, %.preheader.i ]
  %.1.i = phi ptr [ %i.f, %bb.c ], [ %.017.i, %.preheader.i ]
  %i.h = add i8 %i.g, -48
  %or.cond2628.i = icmp ult i8 %i.h, 10
  br i1 %or.cond2628.i, label %.lr.ph.i, label %nk_strtoi.exit

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i ], [ %i.g, %.loopexit.i ]
  %.030.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %.loopexit.i ]
  %.229.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.1.i, %.loopexit.i ]
  %i.j = mul nsw i32 %.030.i, 10
  %narrow.i = add nsw i8 %i.i, -48
  %i.k = zext nneg i8 %narrow.i to i32
  %i.l = add nsw i32 %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.229.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11    ; 2 uses
  %i.o = add i8 %i.n, -48
  %or.cond26.i = icmp ult i8 %i.o, 10
  br i1 %or.cond26.i, label %.lr.ph.i, label %.critedge.loopexit.i, !llvm.loop !14

.critedge.loopexit.i:                             ; preds = %.lr.ph.i
  %i.p = mul nsw i32 %i.l, %.018.i
  br label %nk_strtoi.exit

nk_strtoi.exit:                                   ; preds = %.loopexit.i, %.critedge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %.loopexit.i ], [ %i.p, %.critedge.loopexit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !11
  %. = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i, i32 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !11
  %spec.select = tail call i32 @llvm.smax.i32(i32 %., i32 %i.u)
  store i32 %spec.select, ptr %i.q, align 8, !tbaa !11
  br label %bb.v

.preheader:                                       ; preds = %bb.a, %.backedge.i
  %.011.i = phi i32 [ %.011.be.i, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %1, %bb.a ] ; 3 uses
  %i.v = load i8, ptr %.0.i, align 1, !tbaa !11
  switch i8 %i.v, label %bb.d [
    i8 0, label %.preheader77.i75.preheader
    i8 46, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.f, %.preheader
  %.011.be.i = phi i32 [ %spec.select.i, %bb.f ], [ 1, %.preheader ]
  %.0.be.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader, !llvm.loop !1154

bb.d:                                             ; preds = %.preheader
  %i.w = icmp eq i32 %.011.i, 3
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %.0.i, align 1, !tbaa !11
  br label %.preheader77.i75.preheader

.preheader77.i75.preheader:                       ; preds = %.preheader, %bb.e
  br label %.preheader77.i75

bb.f:                                             ; preds = %bb.d
  %i.x = icmp sgt i32 %.011.i, 0
  %i.y = zext i1 %i.x to i32
  %spec.select.i = add nuw nsw i32 %.011.i, %i.y
  br label %.backedge.i

.preheader77.i75:                                 ; preds = %.preheader77.i75.preheader, %bb.g
  %.051.i76 = phi ptr [ %i.aa, %bb.g ], [ %1, %.preheader77.i75.preheader ] ; 4 uses
  %i.z = load i8, ptr %.051.i76, align 1, !tbaa !11
  switch i8 %i.z, label %.loopexit.i77 [
    i8 32, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %.preheader77.i75
  %i.aa = getelementptr inbounds nuw i8, ptr %.051.i76, i64 1
  br label %.preheader77.i75, !llvm.loop !18

bb.h:                                             ; preds = %.preheader77.i75
  %i.ab = getelementptr inbounds nuw i8, ptr %.051.i76, i64 1
  br label %.loopexit.i77

.loopexit.i77:                                    ; preds = %.preheader77.i75, %bb.h
  %.056.i78 = phi double [ -1.000000e+00, %bb.h ], [ 1.000000e+00, %.preheader77.i75 ]
  %.152.i79 = phi ptr [ %i.ab, %bb.h ], [ %.051.i76, %.preheader77.i75 ]
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i77
  %.253.i80 = phi ptr [ %.152.i79, %.loopexit.i77 ], [ %i.ah, %bb.j ] ; 5 uses
  %.050.i81 = phi double [ 0.000000e+00, %.loopexit.i77 ], [ %i.ag, %bb.j ] ; 4 uses
  %i.ac = load i8, ptr %.253.i80, align 1, !tbaa !11 ; 4 uses
  switch i8 %i.ac, label %bb.j [
    i8 46, label %.preheader76.i103
    i8 0, label %.critedge2.i82
    i8 101, label %.critedge2.i82
  ]

bb.j:                                             ; preds = %bb.i
  %i.ad = sext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48
  %i.af = sitofp i32 %i.ae to double
  %i.ag = tail call double @llvm.fmuladd.f64(double %.050.i81, double 1.000000e+01, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %.253.i80, i64 1
  br label %bb.i, !llvm.loop !19

.preheader76.i103:                                ; preds = %bb.i, %bb.k
  %.057.i104 = phi double [ %i.an, %bb.k ], [ 1.000000e-01, %bb.i ] ; 2 uses
  %.253.pn.i105 = phi ptr [ %.354.i107, %bb.k ], [ %.253.i80, %bb.i ]
  %.1.i106 = phi double [ %i.am, %bb.k ], [ %.050.i81, %bb.i ] ; 3 uses
  %.354.i107 = getelementptr inbounds nuw i8, ptr %.253.pn.i105, i64 1 ; 4 uses
  %i.ai = load i8, ptr %.354.i107, align 1, !tbaa !11 ; 4 uses
  switch i8 %i.ai, label %bb.k [
    i8 0, label %.critedge2.i82
    i8 101, label %.critedge2.i82
  ]

bb.k:                                             ; preds = %.preheader76.i103
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = sitofp i32 %i.ak to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %.057.i104, double %.1.i106)
  %i.an = fmul double %.057.i104, 1.000000e-01
  br label %.preheader76.i103, !llvm.loop !20

.critedge2.i82:                                   ; preds = %bb.i, %bb.i, %.preheader76.i103, %.preheader76.i103
  %i.ao = phi i8 [ %i.ai, %.preheader76.i103 ], [ %i.ai, %.preheader76.i103 ], [ %i.ac, %bb.i ], [ %i.ac, %bb.i ]
  %.455.i83 = phi ptr [ %.354.i107, %.preheader76.i103 ], [ %.354.i107, %.preheader76.i103 ], [ %.253.i80, %bb.i ], [ %.253.i80, %bb.i ] ; 2 uses
  %.2.i84 = phi double [ %.1.i106, %.preheader76.i103 ], [ %.1.i106, %.preheader76.i103 ], [ %.050.i81, %bb.i ], [ %.050.i81, %bb.i ] ; 3 uses
  %i.ap = icmp eq i8 %i.ao, 101
  br i1 %i.ap, label %bb.l, label %nk_strtod.exit108

bb.l:                                             ; preds = %.critedge2.i82
  %i.aq = getelementptr inbounds nuw i8, ptr %.455.i83, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11  ; 2 uses
  %.not74.i87 = icmp eq i8 %i.ar, 45              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.455.i83, i64 2
  %i.at = icmp eq i8 %i.ar, 43
  %i.au = or i1 %.not74.i87, %i.at
  %.5.i88 = select i1 %i.au, ptr %i.as, ptr %i.aq ; 2 uses
  %i.av = load i8, ptr %.5.i88, align 1, !tbaa !11 ; 2 uses
  %.not7281.i89 = icmp eq i8 %i.av, 0
  br i1 %.not7281.i89, label %._crit_edge.i95, label %.lr.ph.i90

.preheader.i94:                                   ; preds = %.lr.ph.i90
  %i.aw = icmp sgt i32 %i.bg, 0
  br i1 %i.aw, label %.lr.ph87.i99.preheader, label %._crit_edge.i95

.lr.ph87.i99.preheader:                           ; preds = %.preheader.i94
  %i.ax = mul i32 %.04883.i91, 10
  %i.ay = add i32 %i.ax, -49
  %i.az = sext i8 %i.bc to i32
  %i.ba = add i32 %i.ay, %i.az
  %xtraiter232 = and i32 %i.bg, 7                 ; 3 uses
  %i.bb = icmp ult i32 %i.ba, 7
  br i1 %i.bb, label %.lr.ph87.i99.epil.preheader, label %.lr.ph87.i99.preheader.new

.lr.ph87.i99.preheader.new:                       ; preds = %.lr.ph87.i99.preheader
  %unroll_iter237 = and i32 %i.bg, 2147483640
  br label %.lr.ph87.i99

.lr.ph.i90:                                       ; preds = %bb.l, %.lr.ph.i90
  %i.bc = phi i8 [ %i.bi, %.lr.ph.i90 ], [ %i.av, %bb.l ] ; 2 uses
  %.04883.i91 = phi i32 [ %i.bg, %.lr.ph.i90 ], [ 0, %bb.l ] ; 2 uses
  %.682.i92 = phi ptr [ %i.bh, %.lr.ph.i90 ], [ %.5.i88, %bb.l ]
  %i.bd = mul nsw i32 %.04883.i91, 10
  %i.be = sext i8 %i.bc to i32
  %i.bf = add nsw i32 %i.be, -48
  %i.bg = add i32 %i.bf, %i.bd                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.682.i92, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11  ; 2 uses
  %.not72.i93 = icmp eq i8 %i.bi, 0
  br i1 %.not72.i93, label %.preheader.i94, label %.lr.ph.i90, !llvm.loop !21

.lr.ph87.i99:                                     ; preds = %.lr.ph87.i99, %.lr.ph87.i99.preheader.new
  %.15885.i101 = phi double [ 1.000000e+00, %.lr.ph87.i99.preheader.new ], [ %i.bq, %.lr.ph87.i99 ]
  %niter238 = phi i32 [ 0, %.lr.ph87.i99.preheader.new ], [ %niter238.next.7, %.lr.ph87.i99 ]
  %i.bj = fmul double %.15885.i101, 1.000000e+01
  %i.bk = fmul double %i.bj, 1.000000e+01
  %i.bl = fmul double %i.bk, 1.000000e+01
  %i.bm = fmul double %i.bl, 1.000000e+01
  %i.bn = fmul double %i.bm, 1.000000e+01
  %i.bo = fmul double %i.bn, 1.000000e+01
  %i.bp = fmul double %i.bo, 1.000000e+01
  %i.bq = fmul double %i.bp, 1.000000e+01         ; 3 uses
  %niter238.next.7 = add nuw i32 %niter238, 8     ; 2 uses
  %niter238.ncmp.7 = icmp eq i32 %niter238.next.7, %unroll_iter237
  br i1 %niter238.ncmp.7, label %._crit_edge.i95.loopexit.unr-lcssa, label %.lr.ph87.i99, !llvm.loop !22

._crit_edge.i95.loopexit.unr-lcssa:               ; preds = %.lr.ph87.i99
  %lcmp.mod234.not = icmp eq i32 %xtraiter232, 0
  br i1 %lcmp.mod234.not, label %._crit_edge.i95, label %.lr.ph87.i99.epil.preheader

.lr.ph87.i99.epil.preheader:                      ; preds = %._crit_edge.i95.loopexit.unr-lcssa, %.lr.ph87.i99.preheader
  %.15885.i101.epil.init = phi double [ 1.000000e+00, %.lr.ph87.i99.preheader ], [ %i.bq, %._crit_edge.i95.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i32 %xtraiter232, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph87.i99.epil

.lr.ph87.i99.epil:                                ; preds = %.lr.ph87.i99.epil, %.lr.ph87.i99.epil.preheader
  %.15885.i101.epil = phi double [ %i.br, %.lr.ph87.i99.epil ], [ %.15885.i101.epil.init, %.lr.ph87.i99.epil.preheader ]
  %epil.iter233 = phi i32 [ %epil.iter233.next, %.lr.ph87.i99.epil ], [ 0, %.lr.ph87.i99.epil.preheader ]
  %i.br = fmul double %.15885.i101.epil, 1.000000e+01 ; 2 uses
  %epil.iter233.next = add i32 %epil.iter233, 1   ; 2 uses
  %epil.iter233.cmp.not = icmp eq i32 %epil.iter233.next, %xtraiter232
  br i1 %epil.iter233.cmp.not, label %._crit_edge.i95, label %.lr.ph87.i99.epil, !llvm.loop !1274

._crit_edge.i95:                                  ; preds = %._crit_edge.i95.loopexit.unr-lcssa, %.lr.ph87.i99.epil, %.preheader.i94, %bb.l
  %.158.lcssa.i97 = phi double [ 1.000000e+00, %.preheader.i94 ], [ 1.000000e+00, %bb.l ], [ %i.bq, %._crit_edge.i95.loopexit.unr-lcssa ], [ %i.br, %.lr.ph87.i99.epil ] ; 2 uses
  %i.bs = fdiv double %.2.i84, %.158.lcssa.i97
  %i.bt = fmul double %.2.i84, %.158.lcssa.i97
  %.3.i98 = select i1 %.not74.i87, double %i.bs, double %i.bt
  br label %nk_strtod.exit108

nk_strtod.exit108:                                ; preds = %.critedge2.i82, %._crit_edge.i95
  %.4.i86 = phi double [ %.3.i98, %._crit_edge.i95 ], [ %.2.i84, %.critedge2.i82 ]
  %i.bu = fmul double %.056.i78, %.4.i86
  %i.bv = fptrunc double %i.bu to float           ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load float, ptr %i.bx, align 8, !tbaa !11 ; 2 uses
  %i.bz = fcmp ogt float %i.by, %i.bv
  %.58 = select i1 %i.bz, float %i.bv, float %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !11 ; 2 uses
  %i.cc = fcmp olt float %.58, %i.cb
  %i.cd = select i1 %i.cc, float %i.cb, float %.58
  store float %i.cd, ptr %i.bw, align 8, !tbaa !11
  br label %bb.v

.preheader111:                                    ; preds = %bb.a, %.backedge.i65
  %.011.i63 = phi i32 [ %.011.be.i66, %.backedge.i65 ], [ 0, %bb.a ] ; 3 uses
  %.0.i64 = phi ptr [ %.0.be.i67, %.backedge.i65 ], [ %1, %bb.a ] ; 3 uses
  %i.ce = load i8, ptr %.0.i64, align 1, !tbaa !11
  switch i8 %i.ce, label %bb.m [
    i8 0, label %.preheader77.i.preheader
    i8 46, label %.backedge.i65
  ]

.backedge.i65:                                    ; preds = %bb.o, %.preheader111
  %.011.be.i66 = phi i32 [ %spec.select.i69, %bb.o ], [ 1, %.preheader111 ]
  %.0.be.i67 = getelementptr inbounds nuw i8, ptr %.0.i64, i64 1
  br label %.preheader111, !llvm.loop !1154

bb.m:                                             ; preds = %.preheader111
  %i.cf = icmp eq i32 %.011.i63, 3
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %.0.i64, align 1, !tbaa !11
  br label %.preheader77.i.preheader

.preheader77.i.preheader:                         ; preds = %.preheader111, %bb.n
  br label %.preheader77.i

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp sgt i32 %.011.i63, 0
  %i.ch = zext i1 %i.cg to i32
  %spec.select.i69 = add nuw nsw i32 %.011.i63, %i.ch
  br label %.backedge.i65

.preheader77.i:                                   ; preds = %.preheader77.i.preheader, %bb.p
  %.051.i = phi ptr [ %i.cj, %bb.p ], [ %1, %.preheader77.i.preheader ] ; 4 uses
  %i.ci = load i8, ptr %.051.i, align 1, !tbaa !11
  switch i8 %i.ci, label %.loopexit.i71 [
    i8 32, label %bb.p
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %.preheader77.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.051.i, i64 1
  br label %.preheader77.i, !llvm.loop !18

bb.q:                                             ; preds = %.preheader77.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.051.i, i64 1
  br label %.loopexit.i71

.loopexit.i71:                                    ; preds = %.preheader77.i, %bb.q
  %.056.i = phi double [ -1.000000e+00, %bb.q ], [ 1.000000e+00, %.preheader77.i ]
  %.152.i = phi ptr [ %i.ck, %bb.q ], [ %.051.i, %.preheader77.i ]
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.loopexit.i71
  %.253.i = phi ptr [ %.152.i, %.loopexit.i71 ], [ %i.cq, %bb.s ] ; 5 uses
  %.050.i = phi double [ 0.000000e+00, %.loopexit.i71 ], [ %i.cp, %bb.s ] ; 4 uses
  %i.cl = load i8, ptr %.253.i, align 1, !tbaa !11 ; 4 uses
  switch i8 %i.cl, label %bb.s [
    i8 46, label %.preheader76.i
    i8 0, label %.critedge2.i
    i8 101, label %.critedge2.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48
  %i.co = sitofp i32 %i.cn to double
  %i.cp = tail call double @llvm.fmuladd.f64(double %.050.i, double 1.000000e+01, double %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %.253.i, i64 1
  br label %bb.r, !llvm.loop !19

.preheader76.i:                                   ; preds = %bb.r, %bb.t
  %.057.i = phi double [ %i.cw, %bb.t ], [ 1.000000e-01, %bb.r ] ; 2 uses
  %.253.pn.i = phi ptr [ %.354.i, %bb.t ], [ %.253.i, %bb.r ]
  %.1.i74 = phi double [ %i.cv, %bb.t ], [ %.050.i, %bb.r ] ; 3 uses
  %.354.i = getelementptr inbounds nuw i8, ptr %.253.pn.i, i64 1 ; 4 uses
  %i.cr = load i8, ptr %.354.i, align 1, !tbaa !11 ; 4 uses
  switch i8 %i.cr, label %bb.t [
    i8 0, label %.critedge2.i
    i8 101, label %.critedge2.i
  ]

bb.t:                                             ; preds = %.preheader76.i
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -48
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %.057.i, double %.1.i74)
  %i.cw = fmul double %.057.i, 1.000000e-01
  br label %.preheader76.i, !llvm.loop !20

.critedge2.i:                                     ; preds = %bb.r, %bb.r, %.preheader76.i, %.preheader76.i
  %i.cx = phi i8 [ %i.cr, %.preheader76.i ], [ %i.cr, %.preheader76.i ], [ %i.cl, %bb.r ], [ %i.cl, %bb.r ]
  %.455.i = phi ptr [ %.354.i, %.preheader76.i ], [ %.354.i, %.preheader76.i ], [ %.253.i, %bb.r ], [ %.253.i, %bb.r ] ; 2 uses
  %.2.i = phi double [ %.1.i74, %.preheader76.i ], [ %.1.i74, %.preheader76.i ], [ %.050.i, %bb.r ], [ %.050.i, %bb.r ] ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 101
  br i1 %i.cy, label %bb.u, label %nk_strtod.exit

bb.u:                                             ; preds = %.critedge2.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.455.i, i64 1 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11  ; 2 uses
  %.not74.i = icmp eq i8 %i.da, 45                ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.455.i, i64 2
  %i.dc = icmp eq i8 %i.da, 43
  %i.dd = or i1 %.not74.i, %i.dc
  %.5.i = select i1 %i.dd, ptr %i.db, ptr %i.cz   ; 2 uses
  %i.de = load i8, ptr %.5.i, align 1, !tbaa !11  ; 2 uses
  %.not7281.i = icmp eq i8 %i.de, 0
  br i1 %.not7281.i, label %._crit_edge.i, label %.lr.ph.i72

.preheader.i73:                                   ; preds = %.lr.ph.i72
  %i.df = icmp sgt i32 %i.dp, 0
  br i1 %i.df, label %.lr.ph87.i.preheader, label %._crit_edge.i

.lr.ph87.i.preheader:                             ; preds = %.preheader.i73
  %i.dg = mul i32 %.04883.i, 10
  %i.dh = add i32 %i.dg, -49
  %i.di = sext i8 %i.dl to i32
  %i.dj = add i32 %i.dh, %i.di
  %xtraiter = and i32 %i.dp, 7                    ; 3 uses
  %i.dk = icmp ult i32 %i.dj, 7
  br i1 %i.dk, label %.lr.ph87.i.epil.preheader, label %.lr.ph87.i.preheader.new

.lr.ph87.i.preheader.new:                         ; preds = %.lr.ph87.i.preheader
  %unroll_iter = and i32 %i.dp, 2147483640
  br label %.lr.ph87.i

.lr.ph.i72:                                       ; preds = %bb.u, %.lr.ph.i72
  %i.dl = phi i8 [ %i.dr, %.lr.ph.i72 ], [ %i.de, %bb.u ] ; 2 uses
  %.04883.i = phi i32 [ %i.dp, %.lr.ph.i72 ], [ 0, %bb.u ] ; 2 uses
  %.682.i = phi ptr [ %i.dq, %.lr.ph.i72 ], [ %.5.i, %bb.u ]
  %i.dm = mul nsw i32 %.04883.i, 10
  %i.dn = sext i8 %i.dl to i32
  %i.do = add nsw i32 %i.dn, -48
  %i.dp = add i32 %i.do, %i.dm                    ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.682.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !11  ; 2 uses
  %.not72.i = icmp eq i8 %i.dr, 0
  br i1 %.not72.i, label %.preheader.i73, label %.lr.ph.i72, !llvm.loop !21

.lr.ph87.i:                                       ; preds = %.lr.ph87.i, %.lr.ph87.i.preheader.new
  %.15885.i = phi double [ 1.000000e+00, %.lr.ph87.i.preheader.new ], [ %i.dz, %.lr.ph87.i ]
  %niter = phi i32 [ 0, %.lr.ph87.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i ]
  %i.ds = fmul double %.15885.i, 1.000000e+01
  %i.dt = fmul double %i.ds, 1.000000e+01
  %i.du = fmul double %i.dt, 1.000000e+01
  %i.dv = fmul double %i.du, 1.000000e+01
  %i.dw = fmul double %i.dv, 1.000000e+01
  %i.dx = fmul double %i.dw, 1.000000e+01
  %i.dy = fmul double %i.dx, 1.000000e+01
  %i.dz = fmul double %i.dy, 1.000000e+01         ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph87.i, !llvm.loop !22

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph87.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph87.i.epil.preheader

.lr.ph87.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.preheader
  %.15885.i.epil.init = phi double [ 1.000000e+00, %.lr.ph87.i.preheader ], [ %i.dz, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod230 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph87.i.epil

.lr.ph87.i.epil:                                  ; preds = %.lr.ph87.i.epil, %.lr.ph87.i.epil.preheader
  %.15885.i.epil = phi double [ %i.ea, %.lr.ph87.i.epil ], [ %.15885.i.epil.init, %.lr.ph87.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph87.i.epil ], [ 0, %.lr.ph87.i.epil.preheader ]
  %i.ea = fmul double %.15885.i.epil, 1.000000e+01 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph87.i.epil, !llvm.loop !1275

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.epil, %.preheader.i73, %bb.u
  %.158.lcssa.i = phi double [ 1.000000e+00, %.preheader.i73 ], [ 1.000000e+00, %bb.u ], [ %i.dz, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ea, %.lr.ph87.i.epil ] ; 2 uses
  %i.eb = fdiv double %.2.i, %.158.lcssa.i
  %i.ec = fmul double %.2.i, %.158.lcssa.i
  %.3.i = select i1 %.not74.i, double %i.eb, double %i.ec
  br label %nk_strtod.exit

nk_strtod.exit:                                   ; preds = %.critedge2.i, %._crit_edge.i
  %.4.i = phi double [ %.3.i, %._crit_edge.i ], [ %.2.i, %.critedge2.i ]
  %i.ed = fmul double %.056.i, %.4.i              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %i.eh = fcmp olt double %i.ed, %i.eg
  %.60 = select i1 %i.eh, double %i.ed, double %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11 ; 2 uses
  %i.ek = fcmp olt double %.60, %i.ej
  %i.el = select i1 %i.ek, double %i.ej, double %.60
  store double %i.el, ptr %i.ee, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %nk_strtod.exit, %nk_strtod.exit108, %nk_strtoi.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @nk_dtoa(ptr nofree noundef nonnull returned captures(ret: address, provenance) %0, double noundef %1) unnamed_addr #45 {
bb.a:
  %i.a = fcmp oeq double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr %0, align 1, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !11
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00         ; 3 uses
  %i.d = fneg double %1
  %.087 = select i1 %i.c, double %i.d, double %1  ; 3 uses
  %.in.i = tail call double @llvm.fabs.f64(double %1)
  %i.e = fptosi double %.in.i to i32              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 9
  br i1 %i.f, label %.lr.ph.i, label %nk_log10.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.c ]
  %.0913.i = phi i32 [ %i.g, %.lr.ph.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.g = udiv i32 %.0913.i, 10
  %i.h = add nuw nsw i32 %.014.i, 1               ; 2 uses
  %i.i = icmp samesign ugt i32 %.0913.i, 99
  br i1 %i.i, label %.lr.ph.i, label %nk_log10.exit, !llvm.loop !1276

nk_log10.exit:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.j = fcmp olt double %.087, 0.000000e+00
  %i.k = sub nsw i32 0, %.0.lcssa.i
  %.1.i = select i1 %i.j, i32 %i.k, i32 %.0.lcssa.i
  %.1.i.fr = freeze i32 %.1.i                     ; 5 uses
  %i.l = icmp sgt i32 %.1.i.fr, 8
  %or.cond = and i1 %i.c, %i.l
  %i.m = add i32 %.1.i.fr, -14
  %i.n = icmp ult i32 %i.m, -22
  %i.o = or i1 %i.n, %or.cond                     ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %nk_log10.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_log10.exit
  %.078 = phi ptr [ %i.p, %bb.d ], [ %0, %nk_log10.exit ]
  br i1 %i.o, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.1.i.fr.lobit = ashr i32 %.1.i.fr, 31
  %spec.select = add nsw i32 %.1.i.fr.lobit, %.1.i.fr ; 3 uses
  %i.q = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i
  %.019.i = phi double [ %.1.i100, %.lr.ph.i99 ], [ 1.000000e+00, %.lr.ph.preheader.i ] ; 2 uses
  %.01318.i = phi i32 [ %i.t, %.lr.ph.i99 ], [ %i.q, %.lr.ph.preheader.i ] ; 2 uses
  %.01417.i = phi double [ %i.u, %.lr.ph.i99 ], [ 1.000000e+01, %.lr.ph.preheader.i ] ; 3 uses
  %i.r = and i32 %.01318.i, 1
  %.not15.i = icmp eq i32 %i.r, 0
  %i.s = fmul double %.019.i, %.01417.i
  %.1.i100 = select i1 %.not15.i, double %.019.i, double %i.s ; 3 uses
  %i.t = lshr i32 %.01318.i, 1                    ; 2 uses
  %i.u = fmul double %.01417.i, %.01417.i
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i99, !llvm.loop !1277

.thread:                                          ; preds = %.lr.ph.i99
  %i.v = fdiv double 1.000000e+00, %.1.i100
  %i.w = icmp slt i32 %spec.select, 0
  %i.x = select i1 %i.w, double %i.v, double %.1.i100
  %i.y = fdiv double %.087, %i.x
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.select121 = tail call i32 @llvm.smax.i32(i32 %.1.i.fr, i32 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.079119 = phi i32 [ 0, %bb.f ], [ %spec.select, %.thread ] ; 4 uses
  %.188117 = phi double [ %.087, %bb.f ], [ %i.y, %.thread ]
  %i.z = phi i32 [ %spec.select121, %bb.f ], [ 0, %.thread ]
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.l
  %.1124 = phi ptr [ %.078, %bb.g ], [ %.3, %bb.l ] ; 3 uses
  %.385123 = phi i32 [ %i.z, %bb.g ], [ %i.av, %bb.l ] ; 5 uses
  %.289122 = phi double [ %.188117, %bb.g ], [ %.390, %bb.l ] ; 3 uses
  %.not16.i102 = icmp eq i32 %.385123, 0          ; 2 uses
  br i1 %.not16.i102, label %nk_pow.exit112, label %.lr.ph.preheader.i103

.lr.ph.preheader.i103:                            ; preds = %bb.h
  %i.aa = tail call i32 @llvm.abs.i32(i32 %.385123, i1 true)
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.lr.ph.i104, %.lr.ph.preheader.i103
  %.019.i105 = phi double [ %.1.i109, %.lr.ph.i104 ], [ 1.000000e+00, %.lr.ph.preheader.i103 ] ; 2 uses
  %.01318.i106 = phi i32 [ %i.ad, %.lr.ph.i104 ], [ %i.aa, %.lr.ph.preheader.i103 ] ; 2 uses
  %.01417.i107 = phi double [ %i.ae, %.lr.ph.i104 ], [ 1.000000e+01, %.lr.ph.preheader.i103 ] ; 3 uses
  %i.ab = and i32 %.01318.i106, 1
  %.not15.i108 = icmp eq i32 %i.ab, 0
  %i.ac = fmul double %.019.i105, %.01417.i107
  %.1.i109 = select i1 %.not15.i108, double %.019.i105, double %i.ac ; 2 uses
  %i.ad = lshr i32 %.01318.i106, 1                ; 2 uses
  %i.ae = fmul double %.01417.i107, %.01417.i107
  %.not.i110 = icmp eq i32 %i.ad, 0
  br i1 %.not.i110, label %nk_pow.exit112, label %.lr.ph.i104, !llvm.loop !1277

nk_pow.exit112:                                   ; preds = %.lr.ph.i104, %bb.h
  %.0.lcssa.i111 = phi double [ 1.000000e+00, %bb.h ], [ %.1.i109, %.lr.ph.i104 ] ; 2 uses
  %i.af = fdiv double 1.000000e+00, %.0.lcssa.i111
  %i.ag = icmp slt i32 %.385123, 0
  %i.ah = select i1 %i.ag, double %i.af, double %.0.lcssa.i111 ; 3 uses
  %i.ai = fcmp ogt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nk_pow.exit112
  %i.aj = fdiv double %.289122, %i.ah             ; 2 uses
  %i.ak = fptosi double %i.aj to i32
  %i.al = fcmp olt double %i.aj, 0.000000e+00
  %.neg.i = sext i1 %i.al to i32
  %i.am = add i32 %.neg.i, %i.ak                  ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = fneg double %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.ah, double %.289122)
  %i.aq = trunc i32 %i.am to i8
  %i.ar = add i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.1124, i64 1
  store i8 %i.ar, ptr %.1124, align 1, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %nk_pow.exit112
  %.390 = phi double [ %i.ap, %bb.i ], [ %.289122, %nk_pow.exit112 ] ; 3 uses
  %.2 = phi ptr [ %i.as, %bb.i ], [ %.1124, %nk_pow.exit112 ] ; 3 uses
  %i.at = fcmp ogt double %.390, 0.000000e+00
  %or.cond3 = select i1 %.not16.i102, i1 %i.at, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 46, ptr %.2, align 1, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi ptr [ %i.au, %bb.k ], [ %.2, %bb.j ]  ; 6 uses
  %i.av = add nsw i32 %.385123, -1
  %i.aw = fcmp ogt double %.390, f0x3D06849B86A12B9B
  %i.ax = icmp sgt i32 %.385123, 0
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.m, !llvm.loop !1278
end_hunk_14
