inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@commongappick_record:bb.a

.preheader30.lr.ph.split:                         ; preds = %.preheader30.lr.ph
  %.not29 = icmp eq i32 %0, 0
  br i1 %.not29, label %._crit_edge40, label %.preheader30.preheader

.preheader30.preheader:                           ; preds = %.preheader30.lr.ph.split
  %i.ar = add nuw nsw i64 %i.b, 1                 ; 2 uses
  %wide.trip.count = and i64 %i.ar, 4294967295    ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.preheader30.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.preheader30.preheader
  %n.vec = and i64 %i.ar, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %vec.ind, ptr %i.as, align 4, !tbaa !4
  store <4 x i32> %step.add, ptr %i.at, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge40, label %.preheader30.preheader90

.preheader30.preheader90:                         ; preds = %.preheader30.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader30.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader90, %.preheader30
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader30 ], [ %indvars.iv.ph, %.preheader30.preheader90 ] ; 3 uses
  %indvars52 = trunc i64 %indvars.iv to i32
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %indvars52, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge40, label %.preheader30, !llvm.loop !376

._crit_edge40:                                    ; preds = %.preheader30, %._crit_edge.us.us.thread, %middle.block, %.preheader30.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @commongappick(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not34 = icmp eq i64 %i.c, 0
  %i.d = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not34, %i.d
  br i1 %or.cond, label %.preheader27.us.us.preheader, label %._crit_edge38

.preheader27.us.us.preheader:                     ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 1
  %wide.trip.count50 = and i64 %i.e, 4294967295
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  br label %.preheader27.us.us

.preheader27.us.us:                               ; preds = %.preheader27.us.us.preheader, %._crit_edge.us.us.thread
  %indvars.iv47 = phi i64 [ 0, %.preheader27.us.us.preheader ], [ %indvars.iv.next48, %._crit_edge.us.us.thread ] ; 7 uses
  %.02135.us.us = phi i32 [ 0, %.preheader27.us.us.preheader ], [ %.1.us.us, %._crit_edge.us.us.thread ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader27.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader27.us.us ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv47
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %.not25.us.us = icmp eq i8 %i.j, 45
  br i1 %.not25.us.us, label %bb.c, label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %.not26.us.us = icmp eq i32 %0, %i.k
  br i1 %.not26.us.us, label %._crit_edge.us.us.thread, label %.preheader.us.us

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv47
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.ai
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv47
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.ai
  store i8 %i.u, ptr %i.v, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv47
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.ai
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv47
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !8
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge33.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !377

._crit_edge.us.us.thread:                         ; preds = %bb.c, %._crit_edge33.us.us, %._crit_edge.us.us
  %.1.us.us = phi i32 [ %i.ao, %._crit_edge33.us.us ], [ %.02135.us.us, %._crit_edge.us.us ], [ %.02135.us.us, %bb.c ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge38, label %.preheader27.us.us, !llvm.loop !378

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.thread, label %bb.b, !llvm.loop !379

.preheader.us.us:                                 ; preds = %._crit_edge.us.us
  %i.ai = sext i32 %.02135.us.us to i64           ; 5 uses
  br i1 %i.f, label %.epil.preheader, label %.preheader.us.us.new

._crit_edge33.us.us.unr-lcssa:                    ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge33.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge33.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv42.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next43.3, %._crit_edge33.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv42.epil = phi i64 [ %indvars.iv42.epil.init, %.epil.preheader ], [ %indvars.iv.next43.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv47
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.ai
  store i8 %i.am, ptr %i.an, align 1, !tbaa !8
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge33.us.us, label %bb.d, !llvm.loop !380

._crit_edge33.us.us:                              ; preds = %bb.d, %._crit_edge33.us.us.unr-lcssa
  %i.ao = add nsw i32 %.02135.us.us, 1
  br label %._crit_edge.us.us.thread

._crit_edge38:                                    ; preds = %._crit_edge.us.us.thread, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @score_calc0(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @scmtd, align 4, !tbaa !4  ; 2 uses
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @score_calc3(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 poison) ; 0 uses
  %.pr = load i32, ptr @scmtd, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %.pr, %bb.b ], [ %i.a, %bb.a ]
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call double @score_calc4(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 poison) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = tail call double @score_calc5(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret double %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @strins(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #24 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %2 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.d = add i64 %i.c, %i.b
  %sext = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext, 32                 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 6 uses
  %i.g = shl i64 %i.b, 32                         ; 2 uses
  %sext19 = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext19, 32               ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h ; 6 uses
  %i.j = ashr exact i64 %i.g, 32                  ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %.not22 = icmp slt i64 %i.e, %i.j
  br i1 %.not22, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.l = sub nsw i64 0, %i.j                      ; 3 uses
  %i.m = add i64 %i.e, %2                         ; 2 uses
  %i.n = add i64 %i.j, %2
  %i.o = add i64 %i.n, -1
  %i.p = add i64 %i.m, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p)
  %i.q = sub i64 %i.m, %umin                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 24
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.r = sub i64 0, %n.vec
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.t ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 %i.l ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -15
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -31
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !8
  %wide.load34 = load <16 x i8>, ptr %i.w, align 1, !tbaa !8
  %i.x = getelementptr i8, ptr %next.gep, i64 -15
  %i.y = getelementptr i8, ptr %next.gep, i64 -31
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !8
  store <16 x i8> %wide.load34, ptr %i.y, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !382

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.q, -8                     ; 3 uses
  %i.aa = sub i64 0, %n.vec36
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.aa   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = sub i64 0, %index37
  %next.gep38 = getelementptr i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %next.gep38, i64 %i.l
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -7
  %wide.load39 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !8
  %i.af = getelementptr i8, ptr %next.gep38, i64 -7
  store <8 x i8> %wide.load39, ptr %i.af, align 1, !tbaa !8
  %index.next40 = add nuw i64 %index37, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !383

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.q, %n.vec36
  br i1 %cmp.n41, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01823.ph = phi ptr [ %i.f, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.018.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.ab, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.be, %vec.epilog.scalar.ph ] ; 8 uses
  %.018.lcssa44 = ptrtoaddr ptr %.018.lcssa to i64 ; 3 uses
  %.not2124 = icmp ult ptr %.018.lcssa, %1
  br i1 %.not2124, label %._crit_edge, label %iter.check65

iter.check65:                                     ; preds = %.preheader
  %i.ah = add i64 %.018.lcssa44, -1
  %i.ai = add i64 %2, -1
  %umin47 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = sub i64 %.018.lcssa44, %umin47          ; 7 uses
  %min.iters.check48 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check48, label %.lr.ph27.preheader, label %vector.memcheck43

vector.memcheck43:                                ; preds = %iter.check65
  %i.ak = add i64 %i.h, %i.a
  %i.al = sub i64 %.018.lcssa44, %i.ak
  %diff.check45 = icmp ugt i64 %i.al, -32
  br i1 %diff.check45, label %.lr.ph27.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.memcheck43
  %min.iters.check50 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check50, label %vec.epilog.ph69, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %n.mod.vf52 = and i64 %i.aj, 24
  %n.vec53 = and i64 %i.aj, -32                   ; 4 uses
  %i.am = sub i64 0, %n.vec53                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %.018.lcssa, i64 %i.am
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.ap = sub i64 0, %index55                     ; 2 uses
  %next.gep56.a = getelementptr i8, ptr %i.i, i64 %i.ap ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.018.lcssa, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep56.a, i64 -15
  %i.ar = getelementptr i8, ptr %next.gep56.a, i64 -31
  %wide.load58.a = load <16 x i8>, ptr %i.aq, align 1, !tbaa !8
  %wide.load59 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !8
  %i.as = getelementptr i8, ptr %next.gep57, i64 -15
  %i.at = getelementptr i8, ptr %next.gep57, i64 -31
  store <16 x i8> %wide.load58.a, ptr %i.as, align 1, !tbaa !8
  store <16 x i8> %wide.load59, ptr %i.at, align 1, !tbaa !8
  %index.next60 = add nuw i64 %index55, 32        ; 2 uses
  %i.au = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.au, label %middle.block61, label %vector.body54, !llvm.loop !384

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.aj, %n.vec53
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block61
  %min.epilog.iters.check68 = icmp eq i64 %n.mod.vf52, 0
  br i1 %min.epilog.iters.check68, label %.lr.ph27.preheader, label %vec.epilog.ph69, !prof !382

vec.epilog.ph69:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check67
  %vec.epilog.resume.val63 = phi i64 [ %n.vec53, %vec.epilog.iter.check67 ], [ 0, %vector.main.loop.iter.check49 ]
  %n.vec71 = and i64 %i.aj, -8                    ; 3 uses
  %i.av = sub i64 0, %n.vec71                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %.018.lcssa, i64 %i.av
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph69
  %index73 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph69 ], [ %index.next77, %vec.epilog.vector.body72 ] ; 2 uses
  %i.ay = sub i64 0, %index73                     ; 2 uses
  %next.gep74.a = getelementptr i8, ptr %i.i, i64 %i.ay
  %next.gep75 = getelementptr i8, ptr %.018.lcssa, i64 %i.ay
  %i.az = getelementptr i8, ptr %next.gep74.a, i64 -7
  %wide.load76 = load <8 x i8>, ptr %i.az, align 1, !tbaa !8
  %i.ba = getelementptr i8, ptr %next.gep75, i64 -7
  store <8 x i8> %wide.load76, ptr %i.ba, align 1, !tbaa !8
  %index.next77 = add nuw i64 %index73, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bb, label %vec.epilog.middle.block78, label %vec.epilog.vector.body72, !llvm.loop !385

vec.epilog.middle.block78:                        ; preds = %vec.epilog.vector.body72
  %cmp.n79 = icmp eq i64 %i.aj, %n.vec71
  br i1 %cmp.n79, label %._crit_edge, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %vector.memcheck43, %iter.check65, %vec.epilog.iter.check67, %vec.epilog.middle.block78
  %.026.ph = phi ptr [ %i.i, %iter.check65 ], [ %i.i, %vector.memcheck43 ], [ %i.an, %vec.epilog.iter.check67 ], [ %i.aw, %vec.epilog.middle.block78 ]
  %.125.ph = phi ptr [ %.018.lcssa, %iter.check65 ], [ %.018.lcssa, %vector.memcheck43 ], [ %i.ao, %vec.epilog.iter.check67 ], [ %i.ax, %vec.epilog.middle.block78 ]
  br label %.lr.ph27

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.01823 = phi ptr [ %i.be, %vec.epilog.scalar.ph ], [ %.01823.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.01823, i64 %i.l
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  store i8 %i.bd, ptr %.01823, align 1, !tbaa !8
  %i.be = getelementptr inbounds i8, ptr %.01823, i64 -1 ; 3 uses
  %.not = icmp ult ptr %i.be, %i.k
  br i1 %.not, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !386

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %.026 = phi ptr [ %i.bf, %.lr.ph27 ], [ %.026.ph, %.lr.ph27.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.bh, %.lr.ph27 ], [ %.125.ph, %.lr.ph27.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.026, i64 -1
  %i.bg = load i8, ptr %.026, align 1, !tbaa !8
  %i.bh = getelementptr inbounds i8, ptr %.125, i64 -1 ; 2 uses
  store i8 %i.bg, ptr %.125, align 1, !tbaa !8
  %.not21 = icmp ult ptr %i.bh, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph27, !llvm.loop !387

._crit_edge:                                      ; preds = %.lr.ph27, %middle.block61, %vec.epilog.middle.block78, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @isaligned(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !388

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #29
  %.not = icmp eq i64 %i.g, %i.d
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local double @score_calc_for_score(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %.fr = freeze i64 %i.b
  %i.c = trunc i64 %.fr to i32                    ; 3 uses
  %i.d = add i32 %0, -1
  %i.e = icmp sgt i32 %0, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -2                     ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  %i.h = load i32, ptr @penalty, align 4
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 96), align 16
  %i.j = sub nsw i32 %i.h, %i.i
  %i.k = sitofp i32 %i.j to double                ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count94 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph73.us

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph73.us, !llvm.loop !389

.lr.ph73.us:                                      ; preds = %.loopexit.us, %.lr.ph.split.us.preheader
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next92, %.loopexit.us ] ; 2 uses
  %indvars.iv85 = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next86, %.loopexit.us ] ; 2 uses
  %.05175.us = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %i.bb, %.loopexit.us ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv91
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph73.us
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge.us.us ], [ %indvars.iv85, %.lr.ph73.us ] ; 2 uses
  %.15270.us.us = phi double [ %i.bb, %._crit_edge.us.us ], [ %.05175.us, %.lr.ph73.us ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv87
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.us.us
  %.05062.us.us = phi double [ 0.000000e+00, %.lr.ph.us.us ], [ %.1.us.us, %bb.i ] ; 3 uses
  %.05361.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.bc, %bb.i ] ; 3 uses
  %.05660.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %.157.us.us, %bb.i ] ; 3 uses
  %i.p = sext i32 %.05361.us.us to i64            ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %i.s = icmp eq i8 %i.r, 45
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sext i8 %i.r to i64
  %i.u = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fadd double %.05062.us.us, %i.aa        ; 2 uses
  %i.ac = add nsw i32 %.05660.us.us, 1            ; 3 uses
  %i.ad = icmp eq i8 %i.w, 45
  br i1 %i.ad, label %.preheader, label %bb.i
end_hunk_0
