Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/clause?download=true
inline.NumInlined: 1345
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@clause_Copy:bb.a
  %i.bh = shl i32 %i.bg, 3
  %i.bi = tail call ptr @memory_Malloc(i32 noundef %i.bh) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.bi, ptr %i.bj, align 8
  %i.bk = icmp sgt i32 %i.bg, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bl = getelementptr i8, ptr %0, i64 56
  %i.bm = getelementptr i8, ptr %i.a, i64 56      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bg to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.val45 = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val45, i64 %indvars.iv
  %i.bo = load ptr, ptr %i.bn, align 8            ; 4 uses
  %i.bp = tail call ptr @memory_Malloc(i32 noundef 32) #20 ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 24
  %.val.i = load ptr, ptr %i.bq, align 8
  %i.br = tail call ptr @term_Copy(ptr noundef %.val.i) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %i.bo, i64 8
  %.val10.i = load i32, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %.val10.i, ptr %i.bu, align 8
  %i.bv = load i32, ptr %i.bo, align 8
  store i32 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr null, ptr %i.bz, align 8
  %.val55 = load ptr, ptr %i.bm, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %indvars.iv
  store ptr %i.bp, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %i.bm, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.a, ptr %i.ce, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.e, %clause_SetSplitField.exit, %bb.d
  ret ptr %i.a
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @clause_LiteralMaxVar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @stack_POINTER, align 4    ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val18 = load ptr, ptr %i.b, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val18, align 8
  %i.c = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.c
  br i1 %.not.i, label %bb.b, label %clause_LiteralAtom.exit.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val18, i64 16
  %.val6.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.e, align 8
  br label %clause_LiteralAtom.exit.preheader

clause_LiteralAtom.exit.preheader:                ; preds = %bb.a, %bb.b
  %.011.ph = phi ptr [ %.val6.val.i, %bb.b ], [ %.val18, %bb.a ]
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %clause_LiteralAtom.exit.preheader, %.critedge
  %stack_POINTER.promoted32 = phi i32 [ %stack_POINTER.promoted33, %.critedge ], [ %i.a, %clause_LiteralAtom.exit.preheader ] ; 4 uses
  %.011 = phi ptr [ %.val, %.critedge ], [ %.011.ph, %clause_LiteralAtom.exit.preheader ] ; 2 uses
  %.0 = phi i32 [ %.1, %.critedge ], [ 0, %clause_LiteralAtom.exit.preheader ] ; 3 uses
  %i.f = getelementptr i8, ptr %.011, i64 16
  %.011.val20 = load ptr, ptr %i.f, align 8       ; 2 uses
  %.not25 = icmp eq ptr %.011.val20, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.g = add i32 %stack_POINTER.promoted32, 1     ; 2 uses
  store i32 %i.g, ptr @stack_POINTER, align 4
  %i.h = zext i32 %stack_POINTER.promoted32 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.h
  store ptr %.011.val20, ptr %i.i, align 8
  br label %bb.f

bb.d:                                             ; preds = %clause_LiteralAtom.exit
  %.011.val21 = load i32, ptr %.011, align 8      ; 2 uses
  %i.j = icmp slt i32 %.011.val21, 1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @llvm.smax.i32(i32 %.0, i32 %.011.val21)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %stack_POINTER.promoted34 = phi i32 [ %i.g, %bb.c ], [ %stack_POINTER.promoted32, %bb.e ], [ %stack_POINTER.promoted32, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.k, %bb.e ], [ %.0, %bb.d ] ; 2 uses
  %.not28 = icmp eq i32 %stack_POINTER.promoted34, %i.a
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %stack_POINTER.promoted33 = phi i32 [ %i.l, %bb.g ], [ %stack_POINTER.promoted34, %bb.f ] ; 2 uses
  %i.l = add i32 %stack_POINTER.promoted33, -1    ; 4 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  store i32 %i.l, ptr @stack_POINTER, align 4
  %.not = icmp eq i32 %i.l, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val = load ptr, ptr %i.p, align 8
  %.val22 = load ptr, ptr %i.o, align 8
  store ptr %.val22, ptr %i.n, align 8
  br label %clause_LiteralAtom.exit, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.f, %bb.g
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @clause_AtomMaxVar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @stack_POINTER, align 4    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %stack_POINTER.promoted30 = phi i32 [ %i.a, %bb.a ], [ %stack_POINTER.promoted31, %.critedge ] ; 4 uses
  %.010 = phi ptr [ %0, %bb.a ], [ %.val, %.critedge ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ] ; 3 uses
  %i.b = getelementptr i8, ptr %.010, i64 16
  %.010.val18 = load ptr, ptr %i.b, align 8       ; 2 uses
  %.not23 = icmp eq ptr %.010.val18, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %stack_POINTER.promoted30, 1     ; 2 uses
  store i32 %i.c, ptr @stack_POINTER, align 4
  %i.d = zext i32 %stack_POINTER.promoted30 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.d
  store ptr %.010.val18, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.010.val19 = load i32, ptr %.010, align 8      ; 2 uses
  %i.f = icmp slt i32 %.010.val19, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @llvm.smax.i32(i32 %.0, i32 %.010.val19)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %stack_POINTER.promoted32 = phi i32 [ %i.c, %bb.c ], [ %stack_POINTER.promoted30, %bb.e ], [ %stack_POINTER.promoted30, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.g, %bb.e ], [ %.0, %bb.d ] ; 2 uses
  %.not26 = icmp eq i32 %stack_POINTER.promoted32, %i.a
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %stack_POINTER.promoted31 = phi i32 [ %i.h, %bb.g ], [ %stack_POINTER.promoted32, %bb.f ] ; 2 uses
  %i.h = add i32 %stack_POINTER.promoted31, -1    ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  store i32 %i.h, ptr @stack_POINTER, align 4
  %.not = icmp eq i32 %i.h, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !56

.critedge:                                        ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val = load ptr, ptr %i.l, align 8
  %.val20 = load ptr, ptr %i.k, align 8
  store ptr %.val20, ptr %i.j, align 8
  br label %bb.b, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.f, %bb.g
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SetMaxLitFlags(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, %.val4.i                   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 2
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %clause_RemoveFlag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -2
  store i32 %i.i, ptr %i.f, align 8
  br label %clause_RemoveFlag.exit

clause_RemoveFlag.exit:                           ; preds = %bb.a, %bb.b
  %i.j = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %clause_RemoveFlag.exit
  %i.k = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.e, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %.val63 = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val63, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8
  store i32 0, ptr %i.n, align 8
  %.val63.1 = load ptr, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val63.1, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  store i32 0, ptr %i.q, align 8
  %.val63.2 = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val63.2, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  store i32 0, ptr %i.t, align 8
  %.val63.3 = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val63.3, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  store i32 0, ptr %i.w, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !58

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %.val63.epil = load ptr, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val63.epil, i64 %indvars.iv.epil
  %i.y = load ptr, ptr %i.x, align 8
  store i32 0, ptr %i.y, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !59

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %clause_RemoveFlag.exit
  %i.z = load i32, ptr @clause_STAMPID, align 4
  %i.aa = tail call i32 @term_StampOverflow(i32 noundef %i.z) #20
  %.not = icmp ne i32 %i.aa, 0
  %or.cond = and i1 %.not, %i.j
  br i1 %or.cond, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %._crit_edge
  %i.ab = getelementptr i8, ptr %0, i64 56        ; 5 uses
  %wide.trip.count90 = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter101 = and i64 %wide.trip.count90, 3    ; 3 uses
  %i.ac = icmp ult i32 %i.e, 4
  br i1 %i.ac, label %.epil.preheader100, label %.lr.ph75.new

.lr.ph75.new:                                     ; preds = %.lr.ph75
  %unroll_iter105 = and i64 %wide.trip.count90, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph75.new
  %indvars.iv87 = phi i64 [ 0, %.lr.ph75.new ], [ %indvars.iv.next88.3, %bb.e ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph75.new ], [ %niter106.next.3, %bb.e ]
  %.val62 = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %indvars.iv87
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %.val59 = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val59, i64 24
  store i32 0, ptr %i.ag, align 8
  %.val62.1 = load ptr, ptr %i.ab, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val62.1, i64 %indvars.iv87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 24
  %.val59.1 = load ptr, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val59.1, i64 24
  store i32 0, ptr %i.al, align 8
  %.val62.2 = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val62.2, i64 %indvars.iv87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val59.2 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.val59.2, i64 24
  store i32 0, ptr %i.aq, align 8
  %.val62.3 = load ptr, ptr %i.ab, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val62.3, i64 %indvars.iv87
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %.val59.3 = load ptr, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.val59.3, i64 24
  store i32 0, ptr %i.av, align 8
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !60

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.loopexit, label %.epil.preheader100

.epil.preheader100:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph75
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next88.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter101, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader100
  %indvars.iv87.epil = phi i64 [ %indvars.iv87.epil.init, %.epil.preheader100 ], [ %indvars.iv.next88.epil, %bb.f ] ; 2 uses
  %epil.iter102 = phi i64 [ 0, %.epil.preheader100 ], [ %epil.iter102.next, %bb.f ]
  %.val62.epil = load ptr, ptr %i.ab, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val62.epil, i64 %indvars.iv87.epil
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.val59.epil = load ptr, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.val59.epil, i64 24
  store i32 0, ptr %i.az, align 8
  %indvars.iv.next88.epil = add nuw nsw i64 %indvars.iv87.epil, 1
  %epil.iter102.next = add i64 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i64 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !61

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %._crit_edge
  %i.ba = load i32, ptr @term_STAMP, align 4
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @term_STAMP, align 4
  %i.bc = icmp slt i32 %.val.i, %i.e
  br i1 %i.bc, label %.lr.ph83.split.us.preheader, label %._crit_edge84

.lr.ph83.split.us.preheader:                      ; preds = %.loopexit
  %i.bd = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.be = sext i32 %.val.i to i64                 ; 2 uses
  %i.bf = sext i32 %i.e to i64
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %bb.m
  %indvars.iv95 = phi i64 [ %i.be, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next96, %bb.m ] ; 3 uses
  %.val61.us = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds [8 x i8], ptr %.val61.us, i64 %indvars.iv95
  %i.bh = load ptr, ptr %i.bg, align 8            ; 5 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  %.val58.us = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val58.us, i64 24
  %.val67.us = load i32, ptr %i.bj, align 8
  %i.bk = load i32, ptr @term_STAMP, align 4
  %.not68.us = icmp eq i32 %.val67.us, %i.bk
  br i1 %.not68.us, label %bb.m, label %.preheader.us

bb.g:                                             ; preds = %.preheader.us, %bb.j
  %indvars.iv92 = phi i64 [ %i.be, %.preheader.us ], [ %indvars.iv.next93, %bb.j ] ; 3 uses
  %.077.us = phi i32 [ 0, %.preheader.us ], [ %.2.us, %bb.j ] ; 2 uses
  %i.bl = icmp eq i64 %indvars.iv92, %indvars.iv95
  br i1 %i.bl, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val60.us = load ptr, ptr %i.bd, align 8
  %i.bm = getelementptr inbounds [8 x i8], ptr %.val60.us, i64 %indvars.iv92
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.val57.us = load ptr, ptr %i.bi, align 8
  %.val66.us = load i32, ptr %i.by, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  %.val56.us = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val65.us = load i32, ptr %i.bp, align 8
  %i.bq = tail call i32 @ord_LiteralCompare(ptr noundef %.val57.us, i32 noundef %.val66.us, ptr noundef %.val56.us, i32 noundef %.val65.us, i32 noundef 0, ptr noundef %1, ptr noundef %2) #20 ; 3 uses
  %.not69.us = icmp eq i32 %i.bq, 2
  %spec.select.us = select i1 %.not69.us, i32 1, i32 %.077.us ; 2 uses
  %.not70.us = icmp ne i32 %i.bq, 1
  %.not71.us = icmp eq i32 %i.bq, 3
  br i1 %.not71.us, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val.us = load ptr, ptr %i.bo, align 8
  %i.br = load i32, ptr @term_STAMP, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.us, i64 24
  store i32 %i.br, ptr %i.bs, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.244.shrunk.us = phi i1 [ true, %bb.i ], [ %.not70.us, %bb.h ], [ true, %bb.g ] ; 2 uses
  %.2.us = phi i32 [ %spec.select.us, %bb.i ], [ %spec.select.us, %bb.h ], [ %.077.us, %bb.g ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.bt = icmp slt i64 %indvars.iv.next93, %i.bf
  %i.bu = and i1 %i.bt, %.244.shrunk.us
  br i1 %i.bu, label %bb.g, label %._crit_edge79.us, !llvm.loop !62

bb.k:                                             ; preds = %._crit_edge79.us
  %i.bv = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bw = or i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bh, align 8
  %.not51.us = icmp eq i32 %.2.us, 0
  br i1 %.not51.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = or i32 %i.bv, 3
  store i32 %i.bx, ptr %i.bh, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge79.us, %.lr.ph83.split.us
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next96 to i32
  %exitcond98.not = icmp eq i32 %i.e, %lftr.wideiv
  br i1 %exitcond98.not, label %._crit_edge84, label %.lr.ph83.split.us, !llvm.loop !63

.preheader.us:                                    ; preds = %.lr.ph83.split.us
  %i.by = getelementptr i8, ptr %i.bh, i64 8
  br label %bb.g

._crit_edge79.us:                                 ; preds = %bb.j
  br i1 %.244.shrunk.us, label %bb.k, label %bb.m

._crit_edge84:                                    ; preds = %bb.m, %.loopexit
  ret void
}

declare i32 @term_StampOverflow(i32 noundef) local_unnamed_addr #3

declare i32 @ord_LiteralCompare(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, -2147483648) i32 @clause_SearchMaxVar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %stack_POINTER.promoted = load i32, ptr @stack_POINTER, align 4
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i32, ptr @fol_NOT, align 4
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_LiteralMaxVar.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_LiteralMaxVar.exit ] ; 2 uses
  %.026 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %clause_LiteralMaxVar.exit ]
  %i.i = phi i32 [ %stack_POINTER.promoted, %.lr.ph ], [ %i.ag, %clause_LiteralMaxVar.exit ] ; 5 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val18.i = load ptr, ptr %i.l, align 8         ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val18.i, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %clause_LiteralAtom.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val18.i, i64 16
  %.val6.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.n, align 8
  br label %clause_LiteralAtom.exit.i.preheader

clause_LiteralAtom.exit.i.preheader:              ; preds = %bb.c, %bb.b
  %.011.i.ph = phi ptr [ %.val18.i, %bb.b ], [ %.val6.val.i.i, %bb.c ]
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %clause_LiteralAtom.exit.i.preheader, %.critedge.i
  %i.o = phi i32 [ %.lcssa60, %.critedge.i ], [ %i.i, %clause_LiteralAtom.exit.i.preheader ] ; 2 uses
  %stack_POINTER.promoted32.i = phi i32 [ %stack_POINTER.promoted33.i.lcssa, %.critedge.i ], [ %i.i, %clause_LiteralAtom.exit.i.preheader ] ; 4 uses
  %.011.i = phi ptr [ %.val.i11, %.critedge.i ], [ %.011.i.ph, %clause_LiteralAtom.exit.i.preheader ] ; 2 uses
  %.0.i = phi i32 [ %.1.i, %.critedge.i ], [ 0, %clause_LiteralAtom.exit.i.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.011.i, i64 16
  %.011.val20.i = load ptr, ptr %i.p, align 8     ; 2 uses
  %.not25.i = icmp eq ptr %.011.val20.i, null
  br i1 %.not25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %clause_LiteralAtom.exit.i
  %i.q = add i32 %stack_POINTER.promoted32.i, 1   ; 3 uses
  store i32 %i.q, ptr @stack_POINTER, align 4
  %i.r = zext i32 %stack_POINTER.promoted32.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.r
  store ptr %.011.val20.i, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %clause_LiteralAtom.exit.i
  %.011.val21.i = load i32, ptr %.011.i, align 8  ; 2 uses
  %i.t = icmp slt i32 %.011.val21.i, 1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %.011.val21.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = phi i32 [ %i.q, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %stack_POINTER.promoted34.i = phi i32 [ %i.q, %bb.d ], [ %stack_POINTER.promoted32.i, %bb.f ], [ %stack_POINTER.promoted32.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %.0.i, %bb.d ], [ %i.u, %bb.f ], [ %.0.i, %bb.e ] ; 2 uses
  %.not28.i = icmp eq i32 %stack_POINTER.promoted34.i, %i.i
  br i1 %.not28.i, label %clause_LiteralMaxVar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.w = add i32 %stack_POINTER.promoted34.i, -1  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not26.i66 = icmp eq ptr %i.z, null
  br i1 %.not26.i66, label %.lr.ph67, label %.critedge.i

.lr.ph.i:                                         ; preds = %.lr.ph67
  %i.aa = add i32 %i.ae, -1                       ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.ad, null
  br i1 %.not26.i, label %.lr.ph67, label %.critedge.i.loopexit, !llvm.loop !10

.lr.ph67:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ae = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.w, %.lr.ph.i.preheader ] ; 6 uses
  %.not.i = icmp eq i32 %i.ae, %i.i
  br i1 %.not.i, label %clause_LiteralMaxVar.exit.loopexit, label %.lr.ph.i, !llvm.loop !10

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  store i32 %i.ae, ptr @stack_POINTER, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.lr.ph.i.preheader
  %.lcssa60 = phi i32 [ %i.v, %.lr.ph.i.preheader ], [ %i.ae, %.critedge.i.loopexit ]
  %stack_POINTER.promoted33.i.lcssa = phi i32 [ %stack_POINTER.promoted34.i, %.lr.ph.i.preheader ], [ %i.ae, %.critedge.i.loopexit ]
  %.lcssa57 = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ac, %.critedge.i.loopexit ]
  %.lcssa = phi ptr [ %i.z, %.lr.ph.i.preheader ], [ %i.ad, %.critedge.i.loopexit ] ; 2 uses
  %i.af = getelementptr i8, ptr %.lcssa, i64 8
  %.val.i11 = load ptr, ptr %i.af, align 8
  %.val22.i = load ptr, ptr %.lcssa, align 8
  store ptr %.val22.i, ptr %.lcssa57, align 8
  br label %clause_LiteralAtom.exit.i, !llvm.loop !11

clause_LiteralMaxVar.exit.loopexit:               ; preds = %.lr.ph67
  store i32 %i.ae, ptr @stack_POINTER, align 4
  br label %clause_LiteralMaxVar.exit

clause_LiteralMaxVar.exit:                        ; preds = %bb.g, %clause_LiteralMaxVar.exit.loopexit
  %i.ag = phi i32 [ %i.i, %clause_LiteralMaxVar.exit.loopexit ], [ %i.v, %bb.g ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 %.026) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !12

._crit_edge:                                      ; preds = %clause_LiteralMaxVar.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %clause_LiteralMaxVar.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_RenameVarsBiggerThan(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, %.val4.i                   ; 2 uses
  tail call void @term_StartMaxRenaming(i32 noundef %1) #20
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val.i8 = load ptr, ptr %i.j, align 8
  %i.k = tail call ptr @term_Rename(ptr noundef %.val.i8) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !64

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @term_StartMaxRenaming(i32 noundef) local_unnamed_addr #3

declare ptr @term_Rename(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @clause_Normalize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, %.val4.i                   ; 2 uses
  tail call void @term_StartMinRenaming() #20
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val.i5 = load ptr, ptr %i.j, align 8
  %i.k = tail call ptr @term_Rename(ptr noundef %.val.i5) #20 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare void @term_StartMinRenaming() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @clause_SubstApply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %1, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 56
  %wide.trip.count = zext nneg i32 %i.e to i64
  %.pre12 = load i32, ptr @fol_NOT, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_LiteralSetAtom.exit
  %i.h = phi i32 [ %.pre12, %.lr.ph ], [ %i.r, %clause_LiteralSetAtom.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_LiteralSetAtom.exit ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24       ; 3 uses
  %.val.i9 = load ptr, ptr %i.k, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val.i9, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.h
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.val.i9, i64 16
  %.val6.i.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.m, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val.i9, %bb.b ]
  %i.n = tail call ptr @subst_Apply(ptr noundef %0, ptr noundef %.0.i.i) #20 ; 2 uses
  %.val5.i = load ptr, ptr %i.k, align 8          ; 2 uses
  %.val5.val.i = load i32, ptr %.val5.i, align 8  ; 2 uses
  %i.o = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %clause_GetLiteralAtom.exit
  %i.p = getelementptr i8, ptr %.val5.i, i64 16
  %.val6.i = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  store ptr %i.n, ptr %i.q, align 8
  br label %clause_LiteralSetAtom.exit

bb.e:                                             ; preds = %clause_GetLiteralAtom.exit
  store ptr %i.n, ptr %i.k, align 8
  %.pre = load i32, ptr @fol_NOT, align 4
  br label %clause_LiteralSetAtom.exit

clause_LiteralSetAtom.exit:                       ; preds = %bb.d, %bb.e
  %i.r = phi i32 [ %.val5.val.i, %bb.d ], [ %.pre, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge:                                      ; preds = %clause_LiteralSetAtom.exit, %bb.a
  ret void
}

declare ptr @subst_Apply(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @clause_ReplaceVariable(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.a, align 8         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.b, align 4        ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.c, align 8        ; 2 uses
  %i.d = add i32 %.val.i.i, -1
  %i.e = add i32 %i.d, %.val3.i.i
  %i.f = add i32 %i.e, %.val4.i.i
  %.not7 = icmp slt i32 %i.f, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = add i32 %.val4.i.i, %.val3.i.i
  %i.i = add i32 %i.h, %.val.i.i
  %wide.trip.count = zext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit ] ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val.i = load ptr, ptr %i.l, align 8           ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val.i, align 8
  %i.m = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.m
  br i1 %.not.i.i, label %bb.c, label %clause_GetLiteralAtom.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.o, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %.val6.val.i.i, %bb.c ], [ %.val.i, %bb.b ]
  tail call void @term_ReplaceVariable(ptr noundef %.0.i.i, i32 noundef %1, ptr noundef %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !66

._crit_edge:                                      ; preds = %clause_GetLiteralAtom.exit, %bb.a
  ret void
}

declare void @term_ReplaceVariable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @clause_UpdateMaxVar(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i.i, %.val.i.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i.i             ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %clause_SearchMaxVar.exit

.lr.ph.i:                                         ; preds = %bb.a
  %stack_POINTER.promoted.i = load i32, ptr @stack_POINTER, align 4
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i32, ptr @fol_NOT, align 4
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %clause_LiteralMaxVar.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %clause_LiteralMaxVar.exit.i ] ; 2 uses
  %.026.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i, %clause_LiteralMaxVar.exit.i ]
  %i.i = phi i32 [ %stack_POINTER.promoted.i, %.lr.ph.i ], [ %i.ag, %clause_LiteralMaxVar.exit.i ] ; 7 uses
  %.val.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val18.i.i = load ptr, ptr %i.l, align 8       ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val18.i.i, align 8
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.h
  br i1 %.not.i.i.i, label %bb.c, label %clause_LiteralAtom.exit.i.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val18.i.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.n, align 8
  br label %clause_LiteralAtom.exit.i.i.preheader

clause_LiteralAtom.exit.i.i.preheader:            ; preds = %bb.c, %bb.b
  %.011.i.i.ph = phi ptr [ %.val18.i.i, %bb.b ], [ %.val6.val.i.i.i, %bb.c ]
  br label %clause_LiteralAtom.exit.i.i

clause_LiteralAtom.exit.i.i:                      ; preds = %clause_LiteralAtom.exit.i.i.preheader, %.critedge.i.i
  %i.o = phi i32 [ %.lcssa7, %.critedge.i.i ], [ %i.i, %clause_LiteralAtom.exit.i.i.preheader ] ; 2 uses
  %stack_POINTER.promoted32.i.i = phi i32 [ %stack_POINTER.promoted33.i.i.lcssa, %.critedge.i.i ], [ %i.i, %clause_LiteralAtom.exit.i.i.preheader ] ; 4 uses
  %.011.i.i = phi ptr [ %.val.i11.i, %.critedge.i.i ], [ %.011.i.i.ph, %clause_LiteralAtom.exit.i.i.preheader ] ; 2 uses
  %.0.i.i = phi i32 [ %.1.i.i, %.critedge.i.i ], [ 0, %clause_LiteralAtom.exit.i.i.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.011.i.i, i64 16
  %.011.val20.i.i = load ptr, ptr %i.p, align 8   ; 2 uses
  %.not25.i.i = icmp eq ptr %.011.val20.i.i, null
  br i1 %.not25.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %clause_LiteralAtom.exit.i.i
  %i.q = add i32 %stack_POINTER.promoted32.i.i, 1 ; 3 uses
  store i32 %i.q, ptr @stack_POINTER, align 4
  %i.r = zext i32 %stack_POINTER.promoted32.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.r
  store ptr %.011.val20.i.i, ptr %i.s, align 8
  br label %bb.g

bb.e:                                             ; preds = %clause_LiteralAtom.exit.i.i
  %.011.val21.i.i = load i32, ptr %.011.i.i, align 8 ; 2 uses
  %i.t = icmp slt i32 %.011.val21.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %.011.val21.i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.v = phi i32 [ %i.q, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %stack_POINTER.promoted34.i.i = phi i32 [ %i.q, %bb.d ], [ %stack_POINTER.promoted32.i.i, %bb.f ], [ %stack_POINTER.promoted32.i.i, %bb.e ] ; 3 uses
  %.1.i.i = phi i32 [ %.0.i.i, %bb.d ], [ %i.u, %bb.f ], [ %.0.i.i, %bb.e ] ; 2 uses
  %.not28.i.i = icmp eq i32 %stack_POINTER.promoted34.i.i, %i.i
  br i1 %.not28.i.i, label %clause_LiteralMaxVar.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.w = add i32 %stack_POINTER.promoted34.i.i, -1 ; 3 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not26.i.i13 = icmp eq ptr %i.z, null
  br i1 %.not26.i.i13, label %.lr.ph.preheader, label %.critedge.i.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.preheader
  %.not.i.i50 = icmp eq i32 %i.w, %i.i
  br i1 %.not.i.i50, label %.lr.ph.clause_LiteralMaxVar.exit.i.loopexit_crit_edge, label %.lr.ph.i.i.lr.ph, !llvm.loop !10

.lr.ph.i.i.lr.ph:                                 ; preds = %.lr.ph.preheader
  br label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %.lr.ph
  %i.aa = phi i32 [ %i.w, %.lr.ph.i.i.lr.ph ], [ %i.ab, %.lr.ph ] ; 4 uses
  %i.ab = add i32 %i.aa, -1                       ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ae, null
  br i1 %.not26.i.i, label %.lr.ph, label %.lr.ph.i.i..critedge.i.i_crit_edge, !llvm.loop !10

.lr.ph:                                           ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.ab, %i.i
  br i1 %.not.i.i, label %.lr.ph.clause_LiteralMaxVar.exit.i.loopexit_crit_edge, label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i..critedge.i.i_crit_edge:               ; preds = %.lr.ph.i.i
  store i32 %i.aa, ptr @stack_POINTER, align 4
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i..critedge.i.i_crit_edge, %.lr.ph.i.i.preheader
  %.lcssa7 = phi i32 [ %i.aa, %.lr.ph.i.i..critedge.i.i_crit_edge ], [ %i.v, %.lr.ph.i.i.preheader ]
  %stack_POINTER.promoted33.i.i.lcssa = phi i32 [ %i.aa, %.lr.ph.i.i..critedge.i.i_crit_edge ], [ %stack_POINTER.promoted34.i.i, %.lr.ph.i.i.preheader ]
  %.lcssa4 = phi ptr [ %i.ad, %.lr.ph.i.i..critedge.i.i_crit_edge ], [ %i.y, %.lr.ph.i.i.preheader ]
  %.lcssa = phi ptr [ %i.ae, %.lr.ph.i.i..critedge.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.af = getelementptr i8, ptr %.lcssa, i64 8
  %.val.i11.i = load ptr, ptr %i.af, align 8
  %.val22.i.i = load ptr, ptr %.lcssa, align 8
  store ptr %.val22.i.i, ptr %.lcssa4, align 8
  br label %clause_LiteralAtom.exit.i.i, !llvm.loop !11

.lr.ph.clause_LiteralMaxVar.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.preheader, %.lr.ph
  store i32 %i.i, ptr @stack_POINTER, align 4
  br label %clause_LiteralMaxVar.exit.i

clause_LiteralMaxVar.exit.i:                      ; preds = %bb.g, %.lr.ph.clause_LiteralMaxVar.exit.i.loopexit_crit_edge
  %i.ag = phi i32 [ %i.i, %.lr.ph.clause_LiteralMaxVar.exit.i.loopexit_crit_edge ], [ %i.v, %bb.g ]
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.1.i.i, i32 %.026.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %clause_SearchMaxVar.exit, label %bb.b, !llvm.loop !12

clause_SearchMaxVar.exit:                         ; preds = %clause_LiteralMaxVar.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %clause_LiteralMaxVar.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0.lcssa.i, ptr %i.ah, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_OrientEqualities(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.val19 = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
end_hunk_0
begin_hunk_1_@clause_FPrintOrigin:bb.a
bb.ab:                                            ; preds = %bb.a
  %fwrite29 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 3, i64 1, ptr %0) ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.40, i64 9, i64 1, ptr %0) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 3859) #22 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.41) #20
  %i.f = load ptr, ptr @stderr, align 8
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 132, i64 1, ptr %i.f) #23 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_PrintVerbose(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val11 = load i32, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val12 = load i32, ptr %i.c, align 8
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %.val, i32 noundef %.val11, i32 noundef %.val12) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val13 = load i32, ptr %i.h, align 8
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %.val13) ; 0 uses
  %i.j = getelementptr i8, ptr %0, i64 48
  %.val15 = load i32, ptr %i.j, align 8           ; 2 uses
  %i.k = and i32 %.val15, 1
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, ptr @.str.47, ptr @.str.46
  %i.m = and i32 %.val15, 2
  %.not10 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not10, ptr @.str.49, ptr @.str.48
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) ; 0 uses
  tail call void @clause_Print(ptr noundef %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @clause_GetNumberedCl(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi ptr [ %.0.val10, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.013, i64 8
  %.0.val9 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.val = load i32, ptr %.0.val9, align 8
  %.not7 = icmp eq i32 %.val, %0
  br i1 %.not7, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.0.val10 = load ptr, ptr %.013, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val10, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !122

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %.06 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.0.val9, %.lr.ph ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clause_NumberSort(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @list_Sort(ptr noundef %0, ptr noundef nonnull @clause_NumberLower) #20
  ret ptr %i.a
}

declare ptr @list_Sort(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @clause_NumberLower(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %.val2 = load i32, ptr %0, align 8
  %.val = load i32, ptr %1, align 8
  %i.a = icmp slt i32 %.val2, %.val
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clause_NumberDelete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %.0.val13, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.0915 = phi ptr [ %.110, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.016, i64 8
  %.0.val11 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.val = load i32, ptr %.0.val11, align 8
  %i.b = icmp eq i32 %.val, %1
  %.0.val13 = load ptr, ptr %.016, align 8        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call ptr @list_PointerDeleteOneElement(ptr noundef %.0915, ptr noundef nonnull %.0.val11) #20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.110 = phi ptr [ %i.c, %bb.b ], [ %.0915, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %.0.val13, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.09.lcssa = phi ptr [ null, %bb.a ], [ %.110, %bb.c ]
  ret ptr %.09.lcssa
}

declare ptr @list_PointerDeleteOneElement(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clause_NumberOfMaxAntecedentLits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val11 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val12 = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val11, -1
  %i.d = add i32 %i.c, %.val12                    ; 2 uses
  %.not14 = icmp ugt i32 %.val11, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi i32 [ %.val11, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %.0815 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.f = sext i32 %.016 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %.val13 = load i32, ptr %i.h, align 8
  %i.i = and i32 %.val13, 1
  %spec.select = add i32 %i.i, %.0815             ; 2 uses
  %i.j = add i32 %.016, 1                         ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.08.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SelectLiteral(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @clause_HasSolvedConstraint(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %clause_NumberOfMaxLits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val30 = load i32, ptr %i.b, align 8
  %i.c = and i32 %.val30, 2
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.c, label %clause_NumberOfMaxLits.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val26 = load i32, ptr %i.d, align 4           ; 4 uses
  %i.e = icmp sgt i32 %.val26, 0
  br i1 %i.e, label %bb.d, label %clause_NumberOfMaxLits.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %clause_NumberOfMaxLits.exit.thread [
    i32 2, label %._crit_edge36
    i32 1, label %bb.e
  ]

._crit_edge36:                                    ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 64
  %.val27.pre = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert38 = getelementptr i8, ptr %0, i64 56
  %.val24.pre = load ptr, ptr %.phi.trans.insert38, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.h, align 8         ; 5 uses
  %i.i = add nsw i32 %.val.i.i, %.val26
  %i.j = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.j, align 8        ; 2 uses
  %i.k = add nsw i32 %i.i, %.val4.i.i
  %i.l = icmp ult i32 %.val.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %clause_NumberOfMaxLits.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.m, align 8           ; 6 uses
  %i.n = add i32 %.val4.i.i, %.val26              ; 3 uses
  %i.o = add i32 %i.n, -1
  %xtraiter = and i32 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.n, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.012.i = phi i32 [ %.val.i.i, %.lr.ph.i.new ], [ %i.aj, %bb.f ] ; 5 uses
  %.0811.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.f ]
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.q = sext i32 %.012.i to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  %.val10.i = load i32, ptr %i.s, align 8
  %i.t = and i32 %.val10.i, 1
  %spec.select.i = add i32 %i.t, %.0811.i
  %i.u = add nuw i32 %.012.i, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %.val10.i.1 = load i32, ptr %i.x, align 8
  %i.y = and i32 %.val10.i.1, 1
  %spec.select.i.1 = add i32 %i.y, %spec.select.i
  %i.z = add nuw i32 %.012.i, 2
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %.val10.i.2 = load i32, ptr %i.ac, align 8
  %i.ad = and i32 %.val10.i.2, 1
  %spec.select.i.2 = add i32 %i.ad, %spec.select.i.1
  %i.ae = add nuw i32 %.012.i, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %.val10.i.3 = load i32, ptr %i.ah, align 8
  %i.ai = and i32 %.val10.i.3, 1
  %spec.select.i.3 = add i32 %i.ai, %spec.select.i.2 ; 3 uses
  %i.aj = add nuw i32 %.012.i, 4                  ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %clause_NumberOfMaxLits.exit.unr-lcssa, label %bb.f, !llvm.loop !125

clause_NumberOfMaxLits.exit.unr-lcssa:            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_NumberOfMaxLits.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_NumberOfMaxLits.exit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ %.val.i.i, %.lr.ph.i ], [ %i.aj, %clause_NumberOfMaxLits.exit.unr-lcssa ]
  %.0811.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %clause_NumberOfMaxLits.exit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.012.i.epil = phi i32 [ %.012.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.g ] ; 2 uses
  %.0811.i.epil = phi i32 [ %.0811.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.g ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ak = sext i32 %.012.i.epil to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %.val10.i.epil = load i32, ptr %i.am, align 8
  %i.an = and i32 %.val10.i.epil, 1
  %spec.select.i.epil = add i32 %i.an, %.0811.i.epil ; 2 uses
  %i.ao = add nuw i32 %.012.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %clause_NumberOfMaxLits.exit, label %bb.g, !llvm.loop !126

clause_NumberOfMaxLits.exit:                      ; preds = %bb.g, %clause_NumberOfMaxLits.exit.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %clause_NumberOfMaxLits.exit.unr-lcssa ], [ %spec.select.i.epil, %bb.g ]
  %i.ap = icmp ugt i32 %spec.select.i.lcssa, 1
  br i1 %i.ap, label %bb.h, label %clause_NumberOfMaxLits.exit.thread

bb.h:                                             ; preds = %._crit_edge36, %clause_NumberOfMaxLits.exit
  %.val24 = phi ptr [ %.val24.pre, %._crit_edge36 ], [ %.val.i, %clause_NumberOfMaxLits.exit ] ; 2 uses
  %.val27 = phi i32 [ %.val27.pre, %._crit_edge36 ], [ %.val.i.i, %clause_NumberOfMaxLits.exit ] ; 3 uses
  %i.aq = add nsw i32 %.val26, -1
  %i.ar = add i32 %i.aq, %.val27                  ; 2 uses
  %i.as = sext i32 %.val27 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val24, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.02032 = add i32 %.val27, 1                    ; 2 uses
  %.not2233 = icmp ugt i32 %.02032, %i.ar
  br i1 %.not2233, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %.phi.trans.insert40 = getelementptr i8, ptr %i.au, i64 4
  %.0.val.pre = load i32, ptr %.phi.trans.insert40, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0.val = phi i32 [ %i.ba, %.lr.ph ], [ %.0.val.pre, %.lr.ph.preheader ] ; 2 uses
  %.02035 = phi i32 [ %.020, %.lr.ph ], [ %.02032, %.lr.ph.preheader ] ; 2 uses
  %.034 = phi ptr [ %spec.select, %.lr.ph ], [ %i.au, %.lr.ph.preheader ]
  %i.av = sext i32 %.02035 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val24, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val29 = load i32, ptr %i.ay, align 4          ; 2 uses
  %i.az = icmp ult i32 %.0.val, %.val29
  %spec.select = select i1 %i.az, ptr %i.ax, ptr %.034 ; 2 uses
  %.020 = add i32 %.02035, 1                      ; 2 uses
  %.not22 = icmp ugt i32 %.020, %i.ar
  %i.ba = tail call i32 @llvm.umax.i32(i32 %.0.val, i32 %.val29)
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.0.lcssa = phi ptr [ %i.au, %bb.h ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.bb = load i32, ptr %.0.lcssa, align 8
  %i.bc = or i32 %i.bb, 4
  store i32 %i.bc, ptr %.0.lcssa, align 8
  %i.bd = load i32, ptr %i.b, align 8
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.b, align 8
  br label %clause_NumberOfMaxLits.exit.thread

clause_NumberOfMaxLits.exit.thread:               ; preds = %bb.d, %bb.e, %._crit_edge, %clause_NumberOfMaxLits.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SetSpecialFlags(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %clause_IsSortTheoryClause.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %.val9.i = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val9.i, 0
  br i1 %i.b, label %clause_IsSortTheoryClause.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val12.i = load i32, ptr %i.c, align 8
  %i.d = icmp sgt i32 %.val12.i, 1
  br i1 %i.d, label %clause_IsSortTheoryClause.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull readonly %0)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %clause_IsSortTheoryClause.exit.thread, label %clause_IsSortTheoryClause.exit

clause_IsSortTheoryClause.exit:                   ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val10.i = load i32, ptr %i.f, align 8
  %.val11.i = load i32, ptr %i.a, align 4
  %i.g = add nsw i32 %.val11.i, %.val10.i
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val8.i = load ptr, ptr %i.h, align 8
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val8.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val.i = load ptr, ptr %i.l, align 8
  %.val7.i = load i32, ptr %.val.i, align 8
  %i.m = sub nsw i32 0, %.val7.i
  %i.n = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.o = ashr i32 %i.m, %i.n
  %i.p = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %.not13.i.not = icmp eq i32 %i.u, 1
  br i1 %.not13.i.not, label %bb.e, label %clause_IsSortTheoryClause.exit.thread

bb.e:                                             ; preds = %clause_IsSortTheoryClause.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 32
  %.not7 = icmp eq i32 %i.x, 0
  br i1 %.not7, label %clause_IsSortTheoryClause.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, 32
  store i32 %i.aa, ptr %i.y, align 8
  br label %clause_IsSortTheoryClause.exit.thread

clause_IsSortTheoryClause.exit.thread:            ; preds = %bb.c, %bb.d, %bb.b, %bb.f, %bb.e, %clause_IsSortTheoryClause.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clause_ContainsPotPredDef(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 6 uses
  %.val119 = load i32, ptr %i.a, align 8          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 68         ; 6 uses
  %.val120 = load i32, ptr %i.b, align 4          ; 2 uses
  %i.c = add nsw i32 %.val120, %.val119           ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 5 uses
  %.val4.i237 = load i32, ptr %i.d, align 8       ; 2 uses
  %i.e = add nsw i32 %i.c, %.val4.i237
end_hunk_1
