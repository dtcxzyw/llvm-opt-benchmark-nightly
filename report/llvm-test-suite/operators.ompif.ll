Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/operators.ompif?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@shift_grid:bb.a
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !39   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = add nsw i32 %i.o, 1
  %i.af = add nsw i32 %i.ae, %i.q
  %i.ag = mul nsw i32 %i.s, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah ; 4 uses
  %i.an = icmp sgt i32 %i.v, 0
  br i1 %i.an, label %.preheader65.lr.ph, label %._crit_edge70.split

.preheader65.lr.ph:                               ; preds = %bb.b
  %i.ao = icmp slt i32 %i.x, 1
  %i.ap = icmp slt i32 %i.y, 1
  %brmerge = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %brmerge, label %._crit_edge70.split, label %.preheader65.preheader

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 6 uses
  %i.aq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = icmp ugt i64 %i.aq, 4294967295
  %i.at = sub i64 %i.al, %i.ad
  %diff.check = icmp ugt i64 %i.at, -32
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge68
  %.069 = phi i32 [ %i.ch, %._crit_edge68 ], [ 0, %.preheader65.preheader ] ; 2 uses
  %i.av = mul nsw i32 %.069, %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader65, %._crit_edge
  %.06267 = phi i32 [ 0, %.preheader65 ], [ %i.cg, %._crit_edge ] ; 2 uses
  %i.aw = mul nsw i32 %.06267, %i.o
  %i.ax = add i32 %i.aw, %i.av                    ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ay = add i32 %i.ax, %i.ar
  %i.az = icmp slt i32 %i.ay, %i.ax
  %i.ba = or i1 %i.az, %i.as
  %or.cond = select i1 %i.ba, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bb = trunc nuw nsw i64 %index to i32
  %i.bc = add i32 %i.ax, %i.bb
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !28
  %wide.load89 = load <2 x double>, ptr %i.bf, align 8, !tbaa !28
  %i.bg = fadd <2 x double> %broadcast.splat, %wide.load
  %i.bh = fadd <2 x double> %broadcast.splat, %wide.load89
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bd ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x double> %i.bg, ptr %i.bi, align 8, !tbaa !28
  store <2 x double> %i.bh, ptr %i.bj, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bl = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bm = add i32 %i.ax, %i.bl
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !28
  %i.bq = fadd double %4, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bn
  store double %i.bq, ptr %i.br, align 8, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bs = icmp eq i64 %indvars.iv.ph, %i.au
  br i1 %i.bs, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.ax
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = add i32 %i.ax, %i.bt
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !28
  %i.by = fadd double %4, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bv
  store double %i.by, ptr %i.bz, align 8, !tbaa !28
  %i.ca = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.ca, %invariant.op
  %i.cb = sext i32 %.reass to i64                 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !28
  %i.ce = fadd double %4, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cb
  store double %i.ce, ptr %i.cf, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cg = add nuw nsw i32 %.06267, 1              ; 2 uses
  %exitcond77.not = icmp eq i32 %i.cg, %i.x
  br i1 %exitcond77.not, label %._crit_edge68, label %.preheader, !llvm.loop !333

._crit_edge68:                                    ; preds = %._crit_edge
  %i.ch = add nuw nsw i32 %.069, 1                ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ch, %i.v
  br i1 %exitcond78.not, label %._crit_edge70.split, label %.preheader65, !llvm.loop !334

._crit_edge70.split:                              ; preds = %._crit_edge68, %.preheader65.lr.ph, %bb.b
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge74, label %bb.b, !llvm.loop !335

._crit_edge74:                                    ; preds = %._crit_edge70.split, %bb.a
  %i.ci = tail call i64 (...) @CycleTime() #10
  %i.cj = sub i64 %i.ci, %i.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.b ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cn = add i64 %i.cj, %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @project_cell_to_face(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge85

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = sext i32 %2 to i64
  %i.i = sext i32 %3 to i64
  %wide.trip.count92 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge81.split
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %._crit_edge81.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv89
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds [216 x i8], ptr %i.l, i64 %i.b ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !39   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ae = add nsw i32 %i.o, 1
  %i.af = add nsw i32 %i.ae, %i.q
  %i.ag = mul nsw i32 %i.s, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah ; 8 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah ; 4 uses
  switch i32 %4, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.not79 = icmp slt i32 %i.v, 0
  br i1 %.not79, label %._crit_edge81.split, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %bb.e
  %.not7176 = icmp slt i32 %i.x, 0
  %.not7274 = icmp slt i32 %i.y, 0
  %brmerge = select i1 %.not7176, i1 true, i1 %.not7274
  br i1 %brmerge, label %._crit_edge81.split, label %.preheader73.preheader

.preheader73.preheader:                           ; preds = %.preheader73.lr.ph
  %i.an = add nuw i32 %i.y, 1
  %wide.trip.count = zext i32 %i.an to i64        ; 4 uses
  %i.ao = sext i32 %.0 to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %5 = add i64 %i.ap, %i.al
  %i.aq = zext nneg i32 %i.y to i64
  %min.iters.check = icmp ult i32 %i.y, 5
  %i.ar = sub i64 %i.ad, %i.al
  %diff.check = icmp ugt i64 %i.ar, -32
  %i.as = sub i64 %i.ad, %5
  %diff.check100 = icmp ugt i64 %i.as, -32
  %conflict.rdx = or i1 %diff.check, %diff.check100
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.preheader, %._crit_edge78
  %.06780 = phi i32 [ %i.cz, %._crit_edge78 ], [ 0, %.preheader73.preheader ] ; 3 uses
  %i.at = mul nsw i32 %.06780, %i.q
  br label %.preheader

.preheader:                                       ; preds = %.preheader73, %._crit_edge
  %.06877 = phi i32 [ 0, %.preheader73 ], [ %i.cy, %._crit_edge ] ; 3 uses
  %i.au = mul nsw i32 %.06877, %i.o
  %i.av = add i32 %i.au, %i.at                    ; 6 uses
  %i.aw = add i32 %i.av, %i.y
  %i.ax = icmp slt i32 %i.aw, %i.av
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ax
  %brmerge105 = select i1 %or.cond, i1 true, i1 %conflict.rdx
  br i1 %brmerge105, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %i.ay = trunc nuw nsw i64 %index to i32
  %i.az = add i32 %i.av, %i.ay                    ; 2 uses
  %i.ba = sub nsw i32 %i.az, %.0
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !28
  %wide.load101 = load <2 x double>, ptr %i.bd, align 8, !tbaa !28
  %i.be = sext i32 %i.az to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load102 = load <2 x double>, ptr %i.bf, align 8, !tbaa !28
  %wide.load103 = load <2 x double>, ptr %i.bg, align 8, !tbaa !28
  %i.bh = fadd <2 x double> %wide.load, %wide.load102
  %i.bi = fadd <2 x double> %wide.load101, %wide.load103
  %i.bj = fmul <2 x double> %i.bh, splat (double 5.000000e-01)
  %i.bk = fmul <2 x double> %i.bi, splat (double 5.000000e-01)
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x double> %i.bj, ptr %i.bl, align 8, !tbaa !28
  store <2 x double> %i.bk, ptr %i.bm, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bo = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bp = add i32 %i.av, %i.bo                    ; 2 uses
  %i.bq = sub nsw i32 %i.bp, %.0
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !28
  %i.bu = sext i32 %i.bp to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !28
  %i.bx = fadd double %i.bt, %i.bw
  %i.by = fmul double %i.bx, 5.000000e-01
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bu
  store double %i.by, ptr %i.bz, align 8, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ca = icmp eq i64 %indvars.iv.ph, %i.aq
  br i1 %i.ca, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.av
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = add i32 %i.av, %i.cb                    ; 2 uses
  %i.cd = sub nsw i32 %i.cc, %.0
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !28
  %i.ch = sext i32 %i.cc to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !28
  %i.ck = fadd double %i.cg, %i.cj
  %i.cl = fmul double %i.ck, 5.000000e-01
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ch
  store double %i.cl, ptr %i.cm, align 8, !tbaa !28
  %i.cn = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.cn, %invariant.op          ; 2 uses
  %i.co = sub nsw i32 %.reass, %.0
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !28
  %i.cs = sext i32 %.reass to i64                 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !28
  %i.cv = fadd double %i.cr, %i.cu
  %i.cw = fmul double %i.cv, 5.000000e-01
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.cs
  store double %i.cw, ptr %i.cx, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !337

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cy = add nuw i32 %.06877, 1
  %exitcond87.not = icmp eq i32 %.06877, %i.x
  br i1 %exitcond87.not, label %._crit_edge78, label %.preheader, !llvm.loop !338

._crit_edge78:                                    ; preds = %._crit_edge
  %i.cz = add nuw i32 %.06780, 1
  %exitcond88.not = icmp eq i32 %.06780, %i.v
  br i1 %exitcond88.not, label %._crit_edge81.split, label %.preheader73, !llvm.loop !339

._crit_edge81.split:                              ; preds = %._crit_edge78, %.preheader73.lr.ph, %bb.e
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %._crit_edge85, label %bb.b, !llvm.loop !340

._crit_edge85:                                    ; preds = %._crit_edge81.split, %bb.a
  %i.da = tail call i64 (...) @CycleTime() #10
  %i.db = sub i64 %i.da, %i.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.b ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !32
  %i.df = add i64 %i.db, %i.de
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @matmul_grids(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.preheader93.lr.ph, label %.._crit_edge115.split_crit_edge

.._crit_edge115.split_crit_edge:                  ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %._crit_edge115.split

.preheader93.lr.ph:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %6, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.f = sext i32 %1 to i64                       ; 3 uses
  br i1 %i.c, label %.preheader93.preheader, label %._crit_edge115.split

.preheader93.preheader:                           ; preds = %.preheader93.lr.ph
  %i.g = zext nneg i32 %5 to i64
  %i.h = zext nneg i32 %6 to i64                  ; 3 uses
  %wide.trip.count135 = zext nneg i32 %5 to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.preheader, %._crit_edge113
  %indvars.iv132 = phi i64 [ 0, %.preheader93.preheader ], [ %indvars.iv.next133, %._crit_edge113 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132
  %i.j = mul nuw nsw i64 %indvars.iv132, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %invariant.gep145 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132
  br label %bb.b

bb.b:                                             ; preds = %.preheader93, %bb.e
  %indvars.iv127 = phi i64 [ 0, %.preheader93 ], [ %indvars.iv.next128, %bb.e ] ; 6 uses
  %.not = icmp samesign ult i64 %indvars.iv127, %indvars.iv132
  br i1 %.not, label %bb.e, label %.preheader92

.preheader92:                                     ; preds = %bb.b
  %i.k = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge110

.lr.ph:                                           ; preds = %.preheader92
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.n = load i32, ptr %i.i, align 4, !tbaa !7
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv127
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = sext i32 %i.q to i64
  %wide.trip.count125 = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv122 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next123, %._crit_edge ] ; 2 uses
  %.085109 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cc, %._crit_edge ]
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.m, i64 %indvars.iv122
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds [216 x i8], ptr %i.u, i64 %i.f ; 7 uses
end_hunk_0
