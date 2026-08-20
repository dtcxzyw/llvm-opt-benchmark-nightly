loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dlapmt_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 -4 ; 6 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !8      ; 5 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %.loopexit111, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = add nuw i32 %i.e, 1
  %wide.trip.count = zext i32 %i.g to i64
  %i.h = zext nneg i32 %i.e to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.h, 24
  %n.vec = and i64 %i.h, 2147483616               ; 4 uses
  %i.j = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %5, i64 %index ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.k, align 4, !tbaa !8
  %wide.load182 = load <8 x i32>, ptr %i.l, align 4, !tbaa !8
  %wide.load183 = load <8 x i32>, ptr %i.m, align 4, !tbaa !8
  %wide.load184 = load <8 x i32>, ptr %i.n, align 4, !tbaa !8
  %i.o = sub nsw <8 x i32> zeroinitializer, %wide.load
  %i.p = sub nsw <8 x i32> zeroinitializer, %wide.load182
  %i.q = sub nsw <8 x i32> zeroinitializer, %wide.load183
  %i.r = sub nsw <8 x i32> zeroinitializer, %wide.load184
  store <8 x i32> %i.o, ptr %i.k, align 4, !tbaa !8
  store <8 x i32> %i.p, ptr %i.l, align 4, !tbaa !8
  store <8 x i32> %i.q, ptr %i.m, align 4, !tbaa !8
  store <8 x i32> %i.r, ptr %i.n, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit235, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec185 = and i64 %i.h, 2147483640            ; 3 uses
  %i.t = or disjoint i64 %n.vec185, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ] ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %5, i64 %index186 ; 2 uses
  %wide.load187 = load <8 x i32>, ptr %i.u, align 4, !tbaa !8
  %i.v = sub nsw <8 x i32> zeroinitializer, %wide.load187
  store <8 x i32> %i.v, ptr %i.u, align 4, !tbaa !8
  %index.next188 = add nuw i64 %index186, 8       ; 2 uses
  %i.w = icmp eq i64 %index.next188, %n.vec185
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n189 = icmp eq i64 %n.vec185, %i.h
  br i1 %cmp.n189, label %.loopexit235, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = sub nsw i32 0, %i.y
  store i32 %i.z, ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit235, label %.preheader, !llvm.loop !15

.loopexit235:                                     ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %i.aa = load i32, ptr %0, align 4, !tbaa !8
  %.not106 = icmp eq i32 %i.aa, 0
  %i.ab = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %.not107134 = icmp slt i32 %i.ab, 1             ; 2 uses
  br i1 %.not106, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit235
  br i1 %.not107134, label %.loopexit111, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.b
  %i.ac = add nuw i32 %i.ab, 1
  %wide.trip.count151 = zext i32 %i.ac to i64
  %i.ad = shl nsw i64 %i.b, 3                     ; 3 uses
  %i.ae = add nsw i64 %i.ad, 8                    ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ae
  %scevgep192 = getelementptr i8, ptr %3, i64 %i.ad
  %scevgep194 = getelementptr i8, ptr %3, i64 %i.ae
  %scevgep196 = getelementptr i8, ptr %3, i64 %i.ad
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit112
  %indvars.iv148 = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next149, %.loopexit112 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv148 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8  ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit112, label %bb.c

bb.c:                                             ; preds = %.lr.ph125
  %i.ai = sub nsw i32 0, %i.ag                    ; 3 uses
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !8
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8  ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.loopexit112, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.c
  %i.an = trunc nuw nsw i64 %indvars.iv148 to i32
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %._crit_edge
  %i.ao = phi i32 [ %i.ca, %._crit_edge ], [ %i.al, %.lr.ph120.preheader ]
  %i.ap = phi ptr [ %i.bz, %._crit_edge ], [ %i.ak, %.lr.ph120.preheader ]
  %.0118 = phi i32 [ %i.bx, %._crit_edge ], [ %i.ai, %.lr.ph120.preheader ] ; 2 uses
  %.099117 = phi i32 [ %.0118, %._crit_edge ], [ %i.an, %.lr.ph120.preheader ]
  %i.aq = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %.not110115 = icmp slt i32 %i.aq, 1
  br i1 %.not110115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph120
  %i.ar = mul nsw i32 %.099117, %i.a
  %i.as = mul nsw i32 %.0118, %i.a
  %i.at = sext i32 %i.ar to i64                   ; 2 uses
  %i.au = sext i32 %i.as to i64                   ; 2 uses
  %i.av = add nuw i32 %i.aq, 1
  %wide.trip.count146 = zext i32 %i.av to i64     ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.at ; 6 uses
  %invariant.gep174 = getelementptr [8 x i8], ptr %i.c, i64 %i.au ; 6 uses
  %i.aw = zext nneg i32 %i.aq to i64              ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check198, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ax = shl nsw i64 %i.at, 3                    ; 2 uses
  %scevgep191 = getelementptr i8, ptr %scevgep, i64 %i.ax
  %i.ay = shl nuw nsw i64 %wide.trip.count146, 3  ; 2 uses
  %i.az = getelementptr i8, ptr %scevgep192, i64 %i.ax
  %scevgep193 = getelementptr i8, ptr %i.az, i64 %i.ay
  %i.ba = shl nsw i64 %i.au, 3                    ; 2 uses
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.ba
  %i.bb = getelementptr i8, ptr %scevgep196, i64 %i.ba
  %scevgep197 = getelementptr i8, ptr %i.bb, i64 %i.ay
  %bound0 = icmp ult ptr %scevgep191, %scevgep197
  %bound1 = icmp ult ptr %scevgep195, %scevgep193
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %vector.memcheck
  %n.vec200 = and i64 %i.aw, 2147483640           ; 3 uses
  %i.bc = or disjoint i64 %n.vec200, 1
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body201 ] ; 2 uses
  %i.bd = or disjoint i64 %index202, 1            ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bd ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 32     ; 2 uses
  %wide.load203 = load <4 x double>, ptr %i.be, align 8, !tbaa !16, !alias.scope !18, !noalias !21
  %wide.load204 = load <4 x double>, ptr %i.bf, align 8, !tbaa !16, !alias.scope !18, !noalias !21
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep174, i64 %i.bd ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %wide.load205 = load <4 x double>, ptr %i.bg, align 8, !tbaa !16, !alias.scope !21
  %wide.load206 = load <4 x double>, ptr %i.bh, align 8, !tbaa !16, !alias.scope !21
  store <4 x double> %wide.load205, ptr %i.be, align 8, !tbaa !16, !alias.scope !18, !noalias !21
  store <4 x double> %wide.load206, ptr %i.bf, align 8, !tbaa !16, !alias.scope !18, !noalias !21
  store <4 x double> %wide.load203, ptr %i.bg, align 8, !tbaa !16, !alias.scope !21
  store <4 x double> %wide.load204, ptr %i.bh, align 8, !tbaa !16, !alias.scope !21
  %index.next207 = add nuw i64 %index202, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.bi, label %middle.block208, label %vector.body201, !llvm.loop !23

middle.block208:                                  ; preds = %vector.body201
  %cmp.n209 = icmp eq i64 %n.vec200, %i.aw
  br i1 %cmp.n209, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block208
  %indvars.iv143.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.bc, %middle.block208 ] ; 4 uses
  %i.bj = sub nsw i64 %wide.trip.count146, %indvars.iv143.ph
  %i.bk = zext nneg i32 %i.aq to i64
  %i.bl = sub nsw i64 %i.bk, %indvars.iv143.ph
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %scalar.ph.prol ], [ %indvars.iv143.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv143.prol ; 2 uses
  %i.bm = load double, ptr %gep.prol, align 8, !tbaa !16
  %gep175.prol = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv143.prol ; 2 uses
  %i.bn = load double, ptr %gep175.prol, align 8, !tbaa !16
  store double %i.bn, ptr %gep.prol, align 8, !tbaa !16
  store double %i.bm, ptr %gep175.prol, align 8, !tbaa !16
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !24

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %scalar.ph.preheader ], [ %indvars.iv.next144.prol, %scalar.ph.prol ]
  %i.bo = icmp ult i64 %i.bl, 3
  br i1 %i.bo, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %scalar.ph ], [ %indvars.iv143.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv143 ; 2 uses
  %i.bp = load double, ptr %gep, align 8, !tbaa !16
  %gep175 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv143 ; 2 uses
  %i.bq = load double, ptr %gep175, align 8, !tbaa !16
  store double %i.bq, ptr %gep, align 8, !tbaa !16
  store double %i.bp, ptr %gep175, align 8, !tbaa !16
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144 ; 2 uses
  %i.br = load double, ptr %gep.1, align 8, !tbaa !16
  %gep175.1 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144 ; 2 uses
  %i.bs = load double, ptr %gep175.1, align 8, !tbaa !16
  store double %i.bs, ptr %gep.1, align 8, !tbaa !16
  store double %i.br, ptr %gep175.1, align 8, !tbaa !16
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144.1 ; 2 uses
  %i.bt = load double, ptr %gep.2, align 8, !tbaa !16
  %gep175.2 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144.1 ; 2 uses
  %i.bu = load double, ptr %gep175.2, align 8, !tbaa !16
  store double %i.bu, ptr %gep.2, align 8, !tbaa !16
  store double %i.bt, ptr %gep175.2, align 8, !tbaa !16
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144.2 ; 2 uses
  %i.bv = load double, ptr %gep.3, align 8, !tbaa !16
  %gep175.3 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144.2 ; 2 uses
  %i.bw = load double, ptr %gep175.3, align 8, !tbaa !16
  store double %i.bw, ptr %gep.3, align 8, !tbaa !16
  store double %i.bv, ptr %gep175.3, align 8, !tbaa !16
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond147.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count146
  br i1 %exitcond147.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block208, %.lr.ph120
  %i.bx = sub nsw i32 0, %i.ao                    ; 3 uses
  store i32 %i.bx, ptr %i.ap, align 4, !tbaa !8
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit112, label %.lr.ph120

.loopexit112:                                     ; preds = %._crit_edge, %bb.c, %.lr.ph125
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %.loopexit111, label %.lr.ph125, !llvm.loop !27

bb.d:                                             ; preds = %.loopexit235
  br i1 %.not107134, label %.loopexit111, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %bb.d
  %i.cc = sext i32 %i.a to i64                    ; 3 uses
  %i.cd = add nuw i32 %i.ab, 1
  %wide.trip.count163 = zext i32 %i.cd to i64
  %6 = shl nsw i64 %i.cc, 3                       ; 2 uses
  %i.ce = shl nsw i64 %i.b, 3                     ; 4 uses
  %7 = shl nsw i64 %i.cc, 3
  %8 = getelementptr i8, ptr %3, i64 %i.ce
  %scevgep214 = getelementptr i8, ptr %8, i64 8
  %i.cf = getelementptr i8, ptr %3, i64 %i.ce
  %scevgep214.a = getelementptr i8, ptr %3, i64 %6
  %scevgep216 = getelementptr i8, ptr %scevgep214.a, i64 %i.ce
  %i.cg = getelementptr i8, ptr %scevgep216, i64 8
  %i.ch = getelementptr i8, ptr %3, i64 %6
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv160 = phi i64 [ 1, %.lr.ph138.preheader ], [ %indvars.iv.next161, %.loopexit ] ; 5 uses
  %i.cj = mul i64 %7, %indvar                     ; 2 uses
  %scevgep211 = getelementptr i8, ptr %i.cg, i64 %i.cj
  %scevgep212 = getelementptr i8, ptr %i.ci, i64 %i.cj
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv160 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph138
  %i.cn = sub nsw i32 0, %i.cl                    ; 3 uses
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !8
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = icmp eq i64 %indvars.iv160, %i.co
  br i1 %i.cp, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.e
  %i.cq = mul nsw i64 %indvars.iv160, %i.cc
  %invariant.gep176 = getelementptr [8 x i8], ptr %i.c, i64 %i.cq ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph133, %._crit_edge130
  %.1100131 = phi i32 [ %i.cn, %.lr.ph133 ], [ %i.dx, %._crit_edge130 ] ; 2 uses
  %i.cr = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %.not108126 = icmp slt i32 %i.cr, 1
  br i1 %.not108126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.f
  %i.cs = mul nsw i32 %.1100131, %i.a
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = add nuw i32 %i.cr, 1
  %wide.trip.count158 = zext i32 %i.cu to i64     ; 3 uses
  %invariant.gep178 = getelementptr [8 x i8], ptr %i.c, i64 %i.ct ; 6 uses
  %i.cv = zext nneg i32 %i.cr to i64              ; 2 uses
  %min.iters.check222 = icmp ult i32 %i.cr, 8
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph129
  %i.cw = shl nuw nsw i64 %wide.trip.count158, 3  ; 2 uses
  %scevgep213 = getelementptr i8, ptr %scevgep212, i64 %i.cw
  %i.cx = shl nsw i64 %i.ct, 3                    ; 2 uses
  %scevgep215 = getelementptr i8, ptr %scevgep214, i64 %i.cx
  %i.cy = getelementptr i8, ptr %i.cf, i64 %i.cx
  %scevgep217 = getelementptr i8, ptr %i.cy, i64 %i.cw
  %bound0218 = icmp ult ptr %scevgep211, %scevgep217
  %bound1219 = icmp ult ptr %scevgep215, %scevgep213
  %found.conflict220 = and i1 %bound0218, %bound1219
  br i1 %found.conflict220, label %scalar.ph221.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck210
  %n.vec224 = and i64 %i.cv, 2147483640           ; 3 uses
  %i.cz = or disjoint i64 %n.vec224, 1
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph223
  %index226 = phi i64 [ 0, %vector.ph223 ], [ %index.next231, %vector.body225 ] ; 2 uses
  %i.da = or disjoint i64 %index226, 1            ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %invariant.gep176, i64 %i.da ; 3 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32     ; 2 uses
  %wide.load227 = load <4 x double>, ptr %i.db, align 8, !tbaa !16, !alias.scope !28, !noalias !31
  %wide.load228 = load <4 x double>, ptr %i.dc, align 8, !tbaa !16, !alias.scope !28, !noalias !31
  %i.dd = getelementptr [8 x i8], ptr %invariant.gep178, i64 %i.da ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 32     ; 2 uses
  %wide.load229 = load <4 x double>, ptr %i.dd, align 8, !tbaa !16, !alias.scope !31
  %wide.load230 = load <4 x double>, ptr %i.de, align 8, !tbaa !16, !alias.scope !31
  store <4 x double> %wide.load229, ptr %i.db, align 8, !tbaa !16, !alias.scope !28, !noalias !31
  store <4 x double> %wide.load230, ptr %i.dc, align 8, !tbaa !16, !alias.scope !28, !noalias !31
  store <4 x double> %wide.load227, ptr %i.dd, align 8, !tbaa !16, !alias.scope !31
  store <4 x double> %wide.load228, ptr %i.de, align 8, !tbaa !16, !alias.scope !31
  %index.next231 = add nuw i64 %index226, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next231, %n.vec224
  br i1 %i.df, label %middle.block232, label %vector.body225, !llvm.loop !33

middle.block232:                                  ; preds = %vector.body225
  %cmp.n233 = icmp eq i64 %n.vec224, %i.cv
  br i1 %cmp.n233, label %._crit_edge130, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %vector.memcheck210, %.lr.ph129, %middle.block232
  %indvars.iv155.ph = phi i64 [ 1, %vector.memcheck210 ], [ 1, %.lr.ph129 ], [ %i.cz, %middle.block232 ] ; 4 uses
  %i.dg = sub nsw i64 %wide.trip.count158, %indvars.iv155.ph
  %i.dh = zext nneg i32 %i.cr to i64
  %i.di = sub nsw i64 %i.dh, %indvars.iv155.ph
  %xtraiter237 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %scalar.ph221.prol.loopexit, label %scalar.ph221.prol

scalar.ph221.prol:                                ; preds = %scalar.ph221.preheader, %scalar.ph221.prol
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %scalar.ph221.prol ], [ %indvars.iv155.ph, %scalar.ph221.preheader ] ; 3 uses
  %prol.iter239 = phi i64 [ %prol.iter239.next, %scalar.ph221.prol ], [ 0, %scalar.ph221.preheader ]
  %gep177.prol = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv155.prol ; 2 uses
  %i.dj = load double, ptr %gep177.prol, align 8, !tbaa !16
  %gep179.prol = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv155.prol ; 2 uses
  %i.dk = load double, ptr %gep179.prol, align 8, !tbaa !16
  store double %i.dk, ptr %gep177.prol, align 8, !tbaa !16
  store double %i.dj, ptr %gep179.prol, align 8, !tbaa !16
  %indvars.iv.next156.prol = add nuw nsw i64 %indvars.iv155.prol, 1 ; 2 uses
  %prol.iter239.next = add i64 %prol.iter239, 1   ; 2 uses
  %prol.iter239.cmp.not = icmp eq i64 %prol.iter239.next, %xtraiter237
  br i1 %prol.iter239.cmp.not, label %scalar.ph221.prol.loopexit, label %scalar.ph221.prol, !llvm.loop !34

scalar.ph221.prol.loopexit:                       ; preds = %scalar.ph221.prol, %scalar.ph221.preheader
  %indvars.iv155.unr = phi i64 [ %indvars.iv155.ph, %scalar.ph221.preheader ], [ %indvars.iv.next156.prol, %scalar.ph221.prol ]
  %i.dl = icmp ult i64 %i.di, 3
  br i1 %i.dl, label %._crit_edge130, label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.3, %scalar.ph221 ], [ %indvars.iv155.unr, %scalar.ph221.prol.loopexit ] ; 6 uses
  %gep177 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv155 ; 2 uses
  %i.dm = load double, ptr %gep177, align 8, !tbaa !16
  %gep179 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv155 ; 2 uses
  %i.dn = load double, ptr %gep179, align 8, !tbaa !16
  store double %i.dn, ptr %gep177, align 8, !tbaa !16
  store double %i.dm, ptr %gep179, align 8, !tbaa !16
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %gep177.1 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156 ; 2 uses
  %i.do = load double, ptr %gep177.1, align 8, !tbaa !16
  %gep179.1 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156 ; 2 uses
  %i.dp = load double, ptr %gep179.1, align 8, !tbaa !16
  store double %i.dp, ptr %gep177.1, align 8, !tbaa !16
  store double %i.do, ptr %gep179.1, align 8, !tbaa !16
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %gep177.2 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156.1 ; 2 uses
  %i.dq = load double, ptr %gep177.2, align 8, !tbaa !16
  %gep179.2 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156.1 ; 2 uses
  %i.dr = load double, ptr %gep179.2, align 8, !tbaa !16
  store double %i.dr, ptr %gep177.2, align 8, !tbaa !16
  store double %i.dq, ptr %gep179.2, align 8, !tbaa !16
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv155, 3 ; 2 uses
  %gep177.3 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156.2 ; 2 uses
  %i.ds = load double, ptr %gep177.3, align 8, !tbaa !16
  %gep179.3 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156.2 ; 2 uses
  %i.dt = load double, ptr %gep179.3, align 8, !tbaa !16
  store double %i.dt, ptr %gep177.3, align 8, !tbaa !16
  store double %i.ds, ptr %gep179.3, align 8, !tbaa !16
  %indvars.iv.next156.3 = add nuw nsw i64 %indvars.iv155, 4 ; 2 uses
  %exitcond159.not.3 = icmp eq i64 %indvars.iv.next156.3, %wide.trip.count158
  br i1 %exitcond159.not.3, label %._crit_edge130, label %scalar.ph221, !llvm.loop !35

._crit_edge130:                                   ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221, %middle.block232, %bb.f
  %i.du = sext i32 %.1100131 to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = sub nsw i32 0, %i.dw                    ; 3 uses
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !8
  %i.dy = zext i32 %i.dx to i64
  %i.dz = icmp eq i64 %indvars.iv160, %i.dy
  br i1 %i.dz, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %._crit_edge130, %bb.e, %.lr.ph138
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond164.not, label %.loopexit111, label %.lr.ph138, !llvm.loop !36

.loopexit111:                                     ; preds = %.loopexit112, %.loopexit, %bb.b, %bb.d, %bb.a
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 8, i32 24}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !12, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !10, !11, !12}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10}
end_hunk_0
