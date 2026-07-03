inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@mp_idiv
define dso_local range(i32 -1, 1) i32 @mp_idiv(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %mp_load_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %.sink = select i1 %i.b, i32 %i.c, i32 %i.d
  store i32 %.sink, ptr %4, align 4, !tbaa !4
  %i.e = load i32, ptr %2, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not4.i = icmp slt i32 %0, -1
  br i1 %.not4.i, label %mp_load_0.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = add i32 %0, 2
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 0, i64 %i.i, i1 false), !tbaa !4
  br label %mp_load_0.exit

bb.d:                                             ; preds = %bb.b
  %.016 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.j = sitofp i32 %1 to double                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = uitofp nneg i32 %.016 to double          ; 3 uses
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = sext i32 %0 to i64                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %.057.i = phi double [ %.158.i, %bb.g ], [ 0.000000e+00, %bb.d ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = fmul double %.057.i, %i.j                ; 2 uses
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.n
  br i1 %.not.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = fadd double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.158.i = phi double [ %i.s, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = fcmp olt double %.158.i, %i.m
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.t, label %bb.e, label %bb.h, !llvm.loop !102

bb.h:                                             ; preds = %bb.g
  %indvars19.le = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.v = fdiv double 1.000000e+00, %i.l           ; 3 uses
  %i.w = fadd double %.158.i, 5.000000e-01        ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fneg double %i.l                        ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !4
  %i.ae = sub nsw i32 %i.ad, %indvars19.le
  store i32 %i.ae, ptr %i.u, align 4, !tbaa !4
  %i.af = add nsw i32 %0, -1                      ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %indvars19.le, i32 %i.af) ; 3 uses
  %i.ag = sub i32 %0, %spec.select.i              ; 2 uses
  %.06168.i = fptosi double %i.ab to i32          ; 2 uses
  %.not6669.i = icmp slt i32 %i.ag, 2
  br i1 %.not6669.i, label %.preheader.i, label %.lr.ph.preheader.i18

.lr.ph.preheader.i18:                             ; preds = %bb.h
  %i.ah = sext i32 %spec.select.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.k, i64 %i.ah
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.af)
  %i.ai = sub i32 %0, %smin
  %i.aj = zext i32 %i.ai to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.h
  %.061.lcssa.i = phi i32 [ %.06168.i, %bb.h ], [ %.061.i, %.lr.ph.i ]
  %.not67.not73.i = icmp sgt i32 %spec.select.i, 0
  br i1 %.not67.not73.i, label %.lr.ph76.preheader.i, label %mp_load_0.exit

.lr.ph76.preheader.i:                             ; preds = %.preheader.i
  %i.ak = sext i32 %i.ag to i64
  br label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i18
  %indvars.iv79.i = phi i64 [ 2, %.lr.ph.preheader.i18 ], [ %indvars.iv.next80.i, %.lr.ph.i ] ; 4 uses
  %.06171.i = phi i32 [ %.06168.i, %.lr.ph.preheader.i18 ], [ %.061.i, %.lr.ph.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv79.i
  %i.al = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.am = sitofp i32 %i.al to double
  %i.an = sitofp i32 %.06171.i to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.j, double %i.an, double %i.am)
  %i.ap = fadd double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = fmul double %i.v, %i.ap
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv79.i
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %.061.i = fptosi double %i.at to i32            ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv79.i, %i.aj
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph.i, !llvm.loop !103

.lr.ph76.i:                                       ; preds = %.lr.ph76.i, %.lr.ph76.preheader.i
  %indvars.iv84.i = phi i64 [ %i.ak, %.lr.ph76.preheader.i ], [ %indvars.iv.next85.i, %.lr.ph76.i ]
  %.16274.i = phi i32 [ %.061.lcssa.i, %.lr.ph76.preheader.i ], [ %i.bb, %.lr.ph76.i ]
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 3 uses
  %i.av = sitofp i32 %.16274.i to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.j, double %i.av, double 5.000000e-01) ; 2 uses
  %i.ax = fmul double %i.v, %i.aw
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.aw)
  %i.bb = fptosi double %i.ba to i32
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next85.i
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !4
  %.not67.not.i = icmp slt i64 %indvars.iv.next85.i, %i.n
  br i1 %.not67.not.i, label %.lr.ph76.i, label %mp_load_0.exit, !llvm.loop !104

mp_load_0.exit:                                   ; preds = %.lr.ph76.i, %.preheader.i, %.lr.ph.preheader.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %.lr.ph.preheader.i ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %.preheader.i ], [ 0, %.lr.ph76.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @mp_sprintf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 45, ptr %3, align 1, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi ptr [ %i.c, %bb.b ], [ %3, %bb.a ]  ; 14 uses
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.063 = phi i32 [ %1, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ]
  %.05162 = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.h = srem i32 %.05162, 10                     ; 2 uses
  %i.i = sdiv i32 %.05162, 10
  %i.j = trunc nsw i32 %i.h to i8
  %i.k = add nsw i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv
  store i8 %i.k, ptr %i.l, align 1, !tbaa !31
  %.not60 = icmp eq i32 %i.h, 0
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %.not60, i32 %.063, i32 %i.m ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.n = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i32 [ %1, %bb.c ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.o = sext i32 %.0.lcssa to i64                ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.056, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  store i8 %i.q, ptr %.056, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %.056, i64 1
  store i8 46, ptr %i.r, align 1, !tbaa !31
  %i.s = sub nsw i32 %1, %.0.lcssa                ; 3 uses
  %.not64 = icmp slt i32 %i.s, 1
  br i1 %.not64, label %._crit_edge68, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.t = add i32 %1, 1
  %i.u = sub i32 %i.t, %.0.lcssa
  %wide.trip.count = zext i32 %i.u to i64         ; 4 uses
  %invariant.gep = getelementptr i8, ptr %.056, i64 %i.o ; 7 uses
  %i.v = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.w = add nsw i64 %i.o, 30
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 4 uses
  %i.x = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = getelementptr i8, ptr %i.y, i64 17
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !31
  %wide.load99 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %.056, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  store <16 x i8> %wide.load, ptr %i.ac, align 1, !tbaa !31
  store <16 x i8> %wide.load99, ptr %i.ad, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.v, -8                    ; 3 uses
  %i.af = or disjoint i64 %n.vec101, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr i8, ptr %invariant.gep, i64 %index102
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %wide.load103 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %.056, i64 %index102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store <8 x i8> %wide.load103, ptr %i.aj, align 1, !tbaa !31
  %index.next104 = add nuw i64 %index102, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %i.v, %n.vec101
  br i1 %cmp.n105, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv86.ph = phi i64 [ 1, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 4 uses
  %i.al = sub nsw i64 %wide.trip.count, %indvars.iv86.ph
  %xtraiter = and i64 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %indvars.iv86.prol = phi i64 [ %indvars.iv.next87.prol, %.lr.ph67.prol ], [ %indvars.iv86.ph, %.lr.ph67.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv86.prol
  %i.am = load i8, ptr %gep.prol, align 1, !tbaa !31
  %indvars.iv.next87.prol = add nuw nsw i64 %indvars.iv86.prol, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !31
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !109

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %indvars.iv86.unr = phi i64 [ %indvars.iv86.ph, %.lr.ph67.preheader ], [ %indvars.iv.next87.prol, %.lr.ph67.prol ]
  %i.ao = sub nsw i64 %indvars.iv86.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv86 = phi i64 [ %indvars.iv.next87.3, %.lr.ph67 ], [ %indvars.iv86.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv86
  %i.aq = load i8, ptr %gep, align 1, !tbaa !31
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !31
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87
  %i.as = load i8, ptr %gep.1, align 1, !tbaa !31
  %indvars.iv.next87.1 = add nuw nsw i64 %indvars.iv86, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !31
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87.1
  %i.au = load i8, ptr %gep.2, align 1, !tbaa !31
  %indvars.iv.next87.2 = add nuw nsw i64 %indvars.iv86, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !31
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next87.2
  %i.aw = load i8, ptr %gep.3, align 1, !tbaa !31
  %indvars.iv.next87.3 = add nuw nsw i64 %indvars.iv86, 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.056, i64 %indvars.iv.next87.3
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !31
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next87.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge68, label %.lr.ph67, !llvm.loop !111

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.ay = sext i32 %i.s to i64
  %i.az = getelementptr i8, ptr %.056, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 2      ; 2 uses
  %.not5975 = icmp slt i32 %0, 2
  br i1 %.not5975, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %._crit_edge68
  %i.bb = sext i32 %1 to i64                      ; 2 uses
  br i1 %i.d, label %.lr.ph73.us.preheader, label %.lr.ph79.split.preheader

.lr.ph79.split.preheader:                         ; preds = %.lr.ph79
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = mul nsw i64 %i.bc, %i.bb
  %i.be = add nsw i64 %i.bd, 2
  %i.bf = sub nsw i64 %i.be, %i.o
  %scevgep = getelementptr i8, ptr %.056, i64 %i.bf
  br label %._crit_edge80

.lr.ph73.us.preheader:                            ; preds = %.lr.ph79
  %i.bg = zext nneg i32 %1 to i64                 ; 3 uses
  %i.bh = add nuw i32 %0, 2
  %wide.trip.count95 = zext i32 %i.bh to i64
  %xtraiter107 = and i64 %i.bg, 1
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  %indvars.iv.next90.prol = add nsw i64 %i.bg, -1 ; 2 uses
  %i.bi = icmp eq i32 %1, 1
  br label %.lr.ph73.us

.lr.ph73.us:                                      ; preds = %.lr.ph73.us.preheader, %._crit_edge74.us
  %indvars.iv92 = phi i64 [ 3, %.lr.ph73.us.preheader ], [ %indvars.iv.next93, %._crit_edge74.us ] ; 2 uses
  %.15776.us = phi ptr [ %i.ba, %.lr.ph73.us.preheader ], [ %i.cc, %._crit_edge74.us ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv92
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 3 uses
  br i1 %lcmp.mod108.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph73.us
  %i.bl = srem i32 %i.bk, 10
  %i.bm = sdiv i32 %i.bk, 10
  %i.bn = trunc nsw i32 %i.bl to i8
  %i.bo = add nsw i8 %i.bn, 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.15776.us, i64 %indvars.iv.next90.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !31
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph73.us
  %indvars.iv89.unr = phi i64 [ %i.bg, %.lr.ph73.us ], [ %indvars.iv.next90.prol, %.prol.loopexit.unr-lcssa ]
  %.15271.us.unr = phi i32 [ %i.bk, %.lr.ph73.us ], [ %i.bm, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bi, label %._crit_edge74.us, label %.lr.ph73.us.new

.lr.ph73.us.new:                                  ; preds = %.prol.loopexit, %.lr.ph73.us.new
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.1, %.lr.ph73.us.new ], [ %indvars.iv89.unr, %.prol.loopexit ] ; 3 uses
  %.15271.us = phi i32 [ %i.bx, %.lr.ph73.us.new ], [ %.15271.us.unr, %.prol.loopexit ] ; 3 uses
  %i.bq = srem i32 %.15271.us, 10
  %i.br = sdiv i32 %.15271.us, 10
  %i.bs = trunc nsw i32 %i.bq to i8
  %i.bt = add nsw i8 %i.bs, 48
  %i.bu = getelementptr i8, ptr %.15776.us, i64 %indvars.iv89
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !31
  %indvars.iv.next90.1 = add nsw i64 %indvars.iv89, -2 ; 2 uses
  %i.bw = srem i32 %i.br, 10
  %i.bx = sdiv i32 %.15271.us, 100
  %i.by = trunc nsw i32 %i.bw to i8
  %i.bz = add nsw i8 %i.by, 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.15776.us, i64 %indvars.iv.next90.1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !31
  %i.cb = icmp sgt i64 %indvars.iv89, 2
  br i1 %i.cb, label %.lr.ph73.us.new, label %._crit_edge74.us, !llvm.loop !112

._crit_edge74.us:                                 ; preds = %.lr.ph73.us.new, %.prol.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %.15776.us, i64 %i.bb ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96 = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96, label %._crit_edge80, label %.lr.ph73.us, !llvm.loop !113

._crit_edge80:                                    ; preds = %._crit_edge74.us, %.lr.ph79.split.preheader, %._crit_edge68
  %.157.lcssa = phi ptr [ %i.ba, %._crit_edge68 ], [ %scevgep, %.lr.ph79.split.preheader ], [ %i.cc, %._crit_edge74.us ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.157.lcssa, i64 1
  store i8 101, ptr %.157.lcssa, align 1, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = mul nsw i32 %i.cf, %1
  %i.ch = add nsw i32 %i.cg, %i.s
  %i.ci = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cd, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ch) #21 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

end_hunk_0
begin_hunk_1_@mp_unexp_sub:bb.a
.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %indvars.iv91 = phi i64 [ %i.q, %.lr.ph79.preheader ], [ %indvars.iv.next92, %.lr.ph79 ] ; 2 uses
  %.178 = phi i32 [ %.056.lcssa, %.lr.ph79.preheader ], [ %.lobit, %.lr.ph79 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = add nsw i32 %i.an, %.178                ; 2 uses
  %.lobit = ashr i32 %i.ao, 31                    ; 2 uses
  %i.ap = and i32 %.lobit, %1
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next92
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = icmp samesign ugt i64 %indvars.iv91, 1
  br i1 %i.as, label %.lr.ph79, label %.preheader69, !llvm.loop !51

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.b
  %indvars.iv101 = phi i32 [ %0, %.lr.ph81.preheader ], [ %indvars.iv.next102, %bb.b ] ; 3 uses
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next95, %bb.b ] ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph81
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  %indvars.iv.next102 = add i32 %indvars.iv101, -1
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph81, !llvm.loop !52

.critedge:                                        ; preds = %.lr.ph81
  %i.aw = trunc nuw nsw i64 %indvars.iv94 to i32  ; 2 uses
  %.not.not67 = icmp eq i64 %indvars.iv94, 0
  br i1 %.not.not67, label %.critedge.thread, label %.preheader68

.preheader68:                                     ; preds = %.critedge
  %i.ax = sub nsw i32 %0, %i.aw                   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph84.preheader, label %.lr.ph87.preheader

.lr.ph84.preheader:                               ; preds = %.preheader68
  %i.az = and i64 %indvars.iv94, 4294967295
  %wide.trip.count104 = zext i32 %indvars.iv101 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.az ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv101, 8
  br i1 %min.iters.check, label %.lr.ph84.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.preheader
  %n.vec = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4
  %wide.load117 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %wide.load, ptr %i.bc, align 4, !tbaa !4
  store <4 x i32> %wide.load117, ptr %i.bd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.lr.ph87.preheader, label %.lr.ph84.preheader118

.lr.ph84.preheader118:                            ; preds = %.lr.ph84.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph84.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph84

.lr.ph87.preheader:                               ; preds = %.lr.ph84, %middle.block, %.preheader68
  %i.bf = sext i32 %i.ax to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.bg
  %i.bh = add nuw i32 %0, 1
  %i.bi = trunc i64 %indvars.iv94 to i32
  %i.bj = sub i32 %i.bh, %i.bi
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.bj)
  %i.bk = xor i32 %0, -1
  %i.bl = trunc i64 %indvars.iv94 to i32
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = add i32 %smax, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bq, i1 false), !tbaa !4
  br label %.critedge.thread

.lr.ph84:                                         ; preds = %.lr.ph84.preheader118, %.lr.ph84
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph84 ], [ %indvars.iv98.ph, %.lr.ph84.preheader118 ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv98
  %i.br = load i32, ptr %gep, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv98
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count104
  br i1 %exitcond105.not, label %.lr.ph87.preheader, label %.lr.ph84, !llvm.loop !121

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph87.preheader, %.preheader69, %.critedge
  %.073 = phi i32 [ 0, %.preheader69 ], [ 0, %.critedge ], [ %i.aw, %.lr.ph87.preheader ], [ %0, %bb.b ]
  ret i32 %.073
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_imul(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fdiv double 1.000000e+00, %1             ; 8 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = fneg double %1
  %i.d = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.05158 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sitofp i32 %i.f to double
  %i.h = sitofp i32 %.05158 to double
  %i.i = tail call double @llvm.fmuladd.f64(double %3, double %i.g, double %i.h)
  %i.j = fadd double %i.i, 5.000000e-01           ; 2 uses
  %i.k = fmul double %i.a, %i.j
  %i.l = fptosi double %i.k to i32                ; 3 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.c, double %i.m, double %i.j)
  %i.o = fptosi double %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 6 uses
  %i.r = sitofp i32 %.051.lcssa to double
  %i.s = fadd double %i.r, 5.000000e-01           ; 2 uses
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  br i1 %i.t, label %.lr.ph63, label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %._crit_edge
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.u, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.lr.ph63:                                         ; preds = %._crit_edge, %.lr.ph63
  %indvar = phi i64 [ %indvar.next, %.lr.ph63 ], [ 0, %._crit_edge ] ; 4 uses
  %.04861 = phi double [ %i.v, %.lr.ph63 ], [ %i.s, %._crit_edge ]
  %.04960 = phi i32 [ %i.w, %.lr.ph63 ], [ 0, %._crit_edge ] ; 2 uses
  %i.v = fmul double %i.a, %.04861                ; 2 uses
  %i.w = add nuw nsw i32 %.04960, 1               ; 9 uses
  %i.x = fcmp ogt double %i.v, 1.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.x, label %.lr.ph63, label %.preheader57, !llvm.loop !123

.preheader57:                                     ; preds = %.lr.ph63
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %4, align 4, !tbaa !4
  %.not = icmp slt i32 %.04960, %0
  br i1 %.not, label %.preheader56, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader57
  %i.aa = trunc i64 %indvar to i32
  %reass.sub = sub i32 %i.aa, %0
  %i.ab = add i32 %reass.sub, 1
  %i.ac = trunc i64 %indvar to i32
  %i.ad = sub i32 %i.ac, %0
  %xtraiter = and i32 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader, %.lr.ph68.prol
  %.15067.prol = phi i32 [ %i.ah, %.lr.ph68.prol ], [ %i.w, %.lr.ph68.preheader ]
  %.15266.prol = phi i32 [ %i.ag, %.lr.ph68.prol ], [ %.051.lcssa, %.lr.ph68.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader ]
  %i.ae = sitofp i32 %.15266.prol to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ae, double 5.000000e-01)
  %i.ag = fptosi double %i.af to i32              ; 3 uses
  %i.ah = add nsw i32 %.15067.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !124

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader
  %.15067.unr = phi i32 [ %i.w, %.lr.ph68.preheader ], [ %i.ah, %.lr.ph68.prol ]
  %.15266.unr = phi i32 [ %.051.lcssa, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %i.ai = icmp ult i32 %i.ad, 3
  br i1 %i.ai, label %.preheader, label %.lr.ph68

.preheader56:                                     ; preds = %.preheader57
  %.not55.not71 = icmp sgt i32 %0, %i.w
  br i1 %.not55.not71, label %.lr.ph73.preheader, label %.lr.ph76

.lr.ph73.preheader:                               ; preds = %.preheader56
  %i.aj = sext i32 %0 to i64                      ; 5 uses
  %i.ak = zext nneg i32 %i.w to i64               ; 4 uses
  %i.al = add nsw i64 %i.aj, -1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.al)
  %i.am = sub i64 %i.aj, %smin                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  %5 = shl i64 %indvar, 2
  %diff.check = icmp ugt i64 %5, -36
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph73.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = sub i64 %i.aj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = sub i64 %i.aj, %index                   ; 2 uses
  %i.ap = sub nsw i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !4
  %wide.load103 = load <4 x i32>, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !4
  store <4 x i32> %wide.load103, ptr %i.av, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.lr.ph76, label %.lr.ph73.preheader104

.lr.ph73.preheader104:                            ; preds = %.lr.ph73.preheader, %middle.block
  %indvars.iv81.ph = phi i64 [ %i.aj, %.lr.ph73.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %.15067 = phi i32 [ %i.bj, %.lr.ph68 ], [ %.15067.unr, %.lr.ph68.prol.loopexit ]
  %.15266 = phi i32 [ %i.bi, %.lr.ph68 ], [ %.15266.unr, %.lr.ph68.prol.loopexit ]
  %i.ax = sitofp i32 %.15266 to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ax, double 5.000000e-01)
  %i.az = fptosi double %i.ay to i32
  %i.ba = sitofp i32 %i.az to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ba, double 5.000000e-01)
  %i.bc = fptosi double %i.bb to i32
  %i.bd = sitofp i32 %i.bc to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bd, double 5.000000e-01)
  %i.bf = fptosi double %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bg, double 5.000000e-01)
  %i.bi = fptosi double %i.bh to i32              ; 2 uses
  %i.bj = add nsw i32 %.15067, -4                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %0
  br i1 %i.bk, label %.lr.ph68, label %.preheader, !llvm.loop !126

.preheader:                                       ; preds = %.lr.ph68, %.lr.ph68.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph68.prol.loopexit ], [ %i.bi, %.lr.ph68 ]
  %i.bl = icmp sgt i32 %0, 0
  br i1 %i.bl, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph73, %middle.block, %.preheader56, %.preheader
  %.152.lcssa9398 = phi i32 [ %.lcssa, %.preheader ], [ %.051.lcssa, %.preheader56 ], [ %.051.lcssa, %middle.block ], [ %.051.lcssa, %.lr.ph73 ]
  %.150.lcssa9497 = phi i32 [ %0, %.preheader ], [ %i.w, %.preheader56 ], [ %i.w, %middle.block ], [ %i.w, %.lr.ph73 ]
  %i.bm = fneg double %1
  %i.bn = zext nneg i32 %.150.lcssa9497 to i64
  br label %bb.c

.lr.ph73:                                         ; preds = %.lr.ph73.preheader104, %.lr.ph73
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph73 ], [ %indvars.iv81.ph, %.lr.ph73.preheader104 ] ; 3 uses
  %i.bo = sub nsw i64 %indvars.iv81, %i.ak
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv81
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1 ; 2 uses
  %.not55.not = icmp sgt i64 %indvars.iv.next82, %i.ak
  br i1 %.not55.not, label %.lr.ph73, label %.lr.ph76, !llvm.loop !127

bb.c:                                             ; preds = %.lr.ph76, %bb.c
  %indvars.iv84 = phi i64 [ %i.bn, %.lr.ph76 ], [ %indvars.iv.next85, %bb.c ] ; 3 uses
  %.25374 = phi i32 [ %.152.lcssa9398, %.lr.ph76 ], [ %i.bv, %bb.c ]
  %i.bs = sitofp i32 %.25374 to double
  %i.bt = fadd double %i.bs, 5.000000e-01         ; 2 uses
  %i.bu = fmul double %i.a, %i.bt
  %i.bv = fptosi double %i.bu to i32              ; 2 uses
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bw, double %i.bt)
  %i.by = fptosi double %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv84
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !4
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  %i.ca = icmp samesign ugt i64 %indvars.iv84, 1
  br i1 %i.ca, label %bb.c, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %bb.c, %._crit_edge64.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_idiv(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fadd double %3, -5.000000e-01
  %i.b = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv82 = phi i32 [ %indvars.iv.next83, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.057 = phi double [ %.158, %bb.d ], [ 0.000000e+00, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = fmul double %1, %.057                    ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv, %i.b
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = sitofp i32 %i.e to double
  %i.g = fadd double %i.c, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.158 = phi double [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = fcmp olt double %.158, %i.a
  %indvars.iv.next83 = add nuw i32 %indvars.iv82, 1
  br i1 %i.h, label %bb.b, label %bb.e, !llvm.loop !102

bb.e:                                             ; preds = %bb.d
  %i.i = fdiv double 1.000000e+00, %3             ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.k = fadd double %.158, 5.000000e-01          ; 2 uses
  %i.l = fmul double %i.i, %i.k
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = sitofp i32 %i.m to double
  %i.o = fneg double %3                           ; 3 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.n, double %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.m, ptr %i.q, align 4, !tbaa !4
  %i.r = load i32, ptr %2, align 4, !tbaa !4
  %i.s = sub nsw i32 %i.r, %i.j
  store i32 %i.s, ptr %4, align 4, !tbaa !4
  %i.t = add nsw i32 %0, -1                       ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.t) ; 3 uses
  %i.u = sub nsw i32 %0, %spec.select             ; 2 uses
  %.06168 = fptosi double %i.p to i32             ; 2 uses
  %.not6669 = icmp slt i32 %i.u, 2
  br i1 %.not6669, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = sext i32 %spec.select to i64
  %i.w = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.v
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.e
  %.061.lcssa = phi i32 [ %.06168, %bb.e ], [ %.061, %.lr.ph ]
  %.not67.not73 = icmp sgt i32 %spec.select, 0
  br i1 %.not67.not73, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv82, i32 %i.t)
  %i.x = sub i32 %0, %smin
  %i.y = sext i32 %i.x to i64
  br label %.lr.ph76

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv79 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next80, %.lr.ph ] ; 4 uses
  %.06171 = phi i32 [ %.06168, %.lr.ph.preheader ], [ %.061, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv79
  %i.z = load i32, ptr %gep, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = sitofp i32 %.06171 to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %1, double %i.ab, double %i.aa)
  %i.ad = fadd double %i.ac, 5.000000e-01         ; 2 uses
  %i.ae = fmul double %i.i, %i.ad
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = sitofp i32 %i.af to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv79
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %.061 = fptosi double %i.ah to i32              ; 2 uses
  %.not66.not = icmp samesign ult i64 %indvars.iv79, %i.w
  br i1 %.not66.not, label %.lr.ph, label %.preheader, !llvm.loop !103

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %indvars.iv84 = phi i64 [ %i.y, %.lr.ph76.preheader ], [ %indvars.iv.next85, %.lr.ph76 ]
  %.16274 = phi i32 [ %.061.lcssa, %.lr.ph76.preheader ], [ %i.ap, %.lr.ph76 ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 3 uses
  %i.aj = sitofp i32 %.16274 to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.aj, double 5.000000e-01) ; 2 uses
  %i.al = fmul double %i.i, %i.ak
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.o, double %i.an, double %i.ak)
  %i.ap = fptosi double %i.ao to i32
  %i.aq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next85
  store i32 %i.am, ptr %i.aq, align 4, !tbaa !4
  %.not67.not = icmp slt i64 %indvars.iv.next85, %i.b
  br i1 %.not67.not, label %.lr.ph76, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph76, %.preheader
  ret void
}

declare void @rdft(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_csqu(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.b = insertelement <2 x double> %i.a, double 2.000000e+00, i64 0
  %i.c = fmul <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %1, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.f = fmul double %i.e, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = icmp sgt i32 %0, 3
  br i1 %i.g, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %0 to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64                  ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 5)
  %i.i = add nsw i64 %umax, -4
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1                  ; 3 uses
  %min.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

end_hunk_1
