Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlapmt?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dlapmt_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !25     ; 5 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64                  ; 5 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 -4 ; 6 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 5 uses
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %5, i64 %index ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.k, align 4, !tbaa !25
  %wide.load182 = load <8 x i32>, ptr %i.l, align 4, !tbaa !25
  %wide.load183 = load <8 x i32>, ptr %i.m, align 4, !tbaa !25
  %wide.load184 = load <8 x i32>, ptr %i.n, align 4, !tbaa !25
  %i.o = sub nsw <8 x i32> zeroinitializer, %wide.load
  %i.p = sub nsw <8 x i32> zeroinitializer, %wide.load182
  %i.q = sub nsw <8 x i32> zeroinitializer, %wide.load183
  %i.r = sub nsw <8 x i32> zeroinitializer, %wide.load184
  store <8 x i32> %i.o, ptr %i.k, align 4, !tbaa !25
  store <8 x i32> %i.p, ptr %i.l, align 4, !tbaa !25
  store <8 x i32> %i.q, ptr %i.m, align 4, !tbaa !25
  store <8 x i32> %i.r, ptr %i.n, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %.loopexit237, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec185 = and i64 %i.h, 2147483640            ; 3 uses
  %i.t = or disjoint i64 %n.vec185, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ] ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %5, i64 %index186 ; 2 uses
  %wide.load187 = load <8 x i32>, ptr %i.u, align 4, !tbaa !25
  %i.v = sub nsw <8 x i32> zeroinitializer, %wide.load187
  store <8 x i32> %i.v, ptr %i.u, align 4, !tbaa !25
  %index.next188 = add nuw i64 %index186, 8       ; 2 uses
  %i.w = icmp eq i64 %index.next188, %n.vec185
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n189 = icmp eq i64 %n.vec185, %i.h
  br i1 %cmp.n189, label %.loopexit237, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = sub nsw i32 0, %i.y
  store i32 %i.z, ptr %i.x, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit237, label %.preheader, !llvm.loop !10

.loopexit237:                                     ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %i.aa = load i32, ptr %0, align 4, !tbaa !25
  %.not106 = icmp eq i32 %i.aa, 0
  %i.ab = load i32, ptr %2, align 4, !tbaa !25    ; 3 uses
  %.not107134 = icmp slt i32 %i.ab, 1             ; 2 uses
  br i1 %.not106, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit237
  br i1 %.not107134, label %.loopexit111, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %bb.b
  %i.ac = add nuw i32 %i.ab, 1
  %wide.trip.count151 = zext i32 %i.ac to i64
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.loopexit112
  %indvars.iv148 = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next149, %.loopexit112 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv148 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.loopexit112, label %bb.c

bb.c:                                             ; preds = %.lr.ph125
  %i.ag = sub nsw i32 0, %i.ae                    ; 3 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !25
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit112, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %indvars.iv148 to i32
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %._crit_edge
  %i.am = phi i32 [ %i.cc, %._crit_edge ], [ %i.aj, %.lr.ph120.preheader ]
  %i.an = phi ptr [ %i.cb, %._crit_edge ], [ %i.ai, %.lr.ph120.preheader ]
  %.0118 = phi i32 [ %i.bz, %._crit_edge ], [ %i.ag, %.lr.ph120.preheader ] ; 2 uses
  %.099117 = phi i32 [ %.0118, %._crit_edge ], [ %i.al, %.lr.ph120.preheader ]
  %i.ao = load i32, ptr %1, align 4, !tbaa !25    ; 5 uses
  %.not110115 = icmp slt i32 %i.ao, 1
  br i1 %.not110115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph120
  %i.ap = mul nsw i32 %.099117, %i.a
  %i.aq = mul nsw i32 %.0118, %i.a
  %i.ar = sext i32 %i.ap to i64                   ; 2 uses
  %i.as = sext i32 %i.aq to i64                   ; 2 uses
  %i.at = add nuw i32 %i.ao, 1
  %wide.trip.count146 = zext i32 %i.at to i64     ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.ar ; 6 uses
  %invariant.gep174 = getelementptr [8 x i8], ptr %i.c, i64 %i.as ; 6 uses
  %i.au = zext nneg i32 %i.ao to i64              ; 2 uses
  %min.iters.check197 = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check197, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %6 = add nsw i64 %i.ar, %i.b
  %i.av = shl nsw i64 %6, 3                       ; 2 uses
  %7 = getelementptr i8, ptr %3, i64 %i.av
  %i.aw = getelementptr i8, ptr %7, i64 8
  %i.ax = shl nuw nsw i64 %wide.trip.count146, 3  ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.av
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %8 = add nsw i64 %i.as, %i.b
  %i.ba = shl nsw i64 %8, 3                       ; 2 uses
  %9 = getelementptr i8, ptr %3, i64 %i.ba
  %i.bb = getelementptr i8, ptr %9, i64 8
  %i.bc = getelementptr i8, ptr %3, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.ax
  %bound0 = icmp ult ptr %i.aw, %i.bd
  %bound1 = icmp ult ptr %i.bb, %i.az
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck
  %n.vec199 = and i64 %i.au, 2147483640           ; 3 uses
  %i.be = or disjoint i64 %n.vec199, 1
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.bf = or disjoint i64 %index201, 1            ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %wide.load202 = load <4 x double>, ptr %i.bg, align 8, !tbaa !31, !alias.scope !32, !noalias !33
  %wide.load203 = load <4 x double>, ptr %i.bh, align 8, !tbaa !31, !alias.scope !32, !noalias !33
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep174, i64 %i.bf ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 32     ; 2 uses
  %wide.load204 = load <4 x double>, ptr %i.bi, align 8, !tbaa !31, !alias.scope !33
  %wide.load205 = load <4 x double>, ptr %i.bj, align 8, !tbaa !31, !alias.scope !33
  store <4 x double> %wide.load204, ptr %i.bg, align 8, !tbaa !31, !alias.scope !32, !noalias !33
  store <4 x double> %wide.load205, ptr %i.bh, align 8, !tbaa !31, !alias.scope !32, !noalias !33
  store <4 x double> %wide.load202, ptr %i.bi, align 8, !tbaa !31, !alias.scope !33
  store <4 x double> %wide.load203, ptr %i.bj, align 8, !tbaa !31, !alias.scope !33
  %index.next206 = add nuw i64 %index201, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.bk, label %middle.block207, label %vector.body200, !llvm.loop !14

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %n.vec199, %i.au
  br i1 %cmp.n208, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block207
  %indvars.iv143.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.be, %middle.block207 ] ; 4 uses
  %i.bl = sub nsw i64 %wide.trip.count146, %indvars.iv143.ph
  %i.bm = zext nneg i32 %i.ao to i64
  %i.bn = sub nsw i64 %i.bm, %indvars.iv143.ph
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %scalar.ph.prol ], [ %indvars.iv143.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv143.prol ; 2 uses
  %i.bo = load double, ptr %gep.prol, align 8, !tbaa !31
  %gep175.prol = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv143.prol ; 2 uses
  %i.bp = load double, ptr %gep175.prol, align 8, !tbaa !31
  store double %i.bp, ptr %gep.prol, align 8, !tbaa !31
  store double %i.bo, ptr %gep175.prol, align 8, !tbaa !31
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !15

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv143.unr = phi i64 [ %indvars.iv143.ph, %scalar.ph.preheader ], [ %indvars.iv.next144.prol, %scalar.ph.prol ]
  %i.bq = icmp ult i64 %i.bn, 3
  br i1 %i.bq, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %scalar.ph ], [ %indvars.iv143.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv143 ; 2 uses
  %i.br = load double, ptr %gep, align 8, !tbaa !31
  %gep175 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv143 ; 2 uses
  %i.bs = load double, ptr %gep175, align 8, !tbaa !31
  store double %i.bs, ptr %gep, align 8, !tbaa !31
  store double %i.br, ptr %gep175, align 8, !tbaa !31
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144 ; 2 uses
  %i.bt = load double, ptr %gep.1, align 8, !tbaa !31
  %gep175.1 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144 ; 2 uses
  %i.bu = load double, ptr %gep175.1, align 8, !tbaa !31
  store double %i.bu, ptr %gep.1, align 8, !tbaa !31
  store double %i.bt, ptr %gep175.1, align 8, !tbaa !31
  %indvars.iv.next144.1 = add nuw nsw i64 %indvars.iv143, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144.1 ; 2 uses
  %i.bv = load double, ptr %gep.2, align 8, !tbaa !31
  %gep175.2 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144.1 ; 2 uses
  %i.bw = load double, ptr %gep175.2, align 8, !tbaa !31
  store double %i.bw, ptr %gep.2, align 8, !tbaa !31
  store double %i.bv, ptr %gep175.2, align 8, !tbaa !31
  %indvars.iv.next144.2 = add nuw nsw i64 %indvars.iv143, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next144.2 ; 2 uses
  %i.bx = load double, ptr %gep.3, align 8, !tbaa !31
  %gep175.3 = getelementptr [8 x i8], ptr %invariant.gep174, i64 %indvars.iv.next144.2 ; 2 uses
  %i.by = load double, ptr %gep175.3, align 8, !tbaa !31
  store double %i.by, ptr %gep.3, align 8, !tbaa !31
  store double %i.bx, ptr %gep175.3, align 8, !tbaa !31
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %exitcond147.not.3 = icmp eq i64 %indvars.iv.next144.3, %wide.trip.count146
  br i1 %exitcond147.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block207, %.lr.ph120
  %i.bz = sub nsw i32 0, %i.am                    ; 3 uses
  store i32 %i.bz, ptr %i.an, align 4, !tbaa !25
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit112, label %.lr.ph120

.loopexit112:                                     ; preds = %._crit_edge, %bb.c, %.lr.ph125
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %.loopexit111, label %.lr.ph125, !llvm.loop !17

bb.d:                                             ; preds = %.loopexit237
  br i1 %.not107134, label %.loopexit111, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %bb.d
  %i.ce = sext i32 %i.a to i64                    ; 3 uses
  %i.cf = add nuw i32 %i.ab, 1
  %wide.trip.count163 = zext i32 %i.cf to i64
  %i.cg = or i64 %i.ce, %i.b
  %i.ch = shl nsw i64 %i.cg, 3                    ; 2 uses
  %i.ci = shl nsw i64 %i.ce, 3
  %i.cj = getelementptr i8, ptr %3, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = getelementptr i8, ptr %3, i64 %i.ch
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv160 = phi i64 [ 1, %.lr.ph138.preheader ], [ %indvars.iv.next161, %.loopexit ] ; 5 uses
  %i.cm = mul i64 %i.ci, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv160 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !25 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph138
  %i.cq = sub nsw i32 0, %i.co                    ; 3 uses
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !25
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = icmp eq i64 %indvars.iv160, %i.cr
  br i1 %i.cs, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.e
  %i.ct = mul nsw i64 %indvars.iv160, %i.ce
  %invariant.gep176 = getelementptr [8 x i8], ptr %i.c, i64 %i.ct ; 6 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 %i.cm
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph133, %._crit_edge130
  %.1100131 = phi i32 [ %i.cq, %.lr.ph133 ], [ %i.ee, %._crit_edge130 ] ; 2 uses
  %i.cv = load i32, ptr %1, align 4, !tbaa !25    ; 5 uses
  %.not108126 = icmp slt i32 %i.cv, 1
  br i1 %.not108126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.f
  %i.cw = mul nsw i32 %.1100131, %i.a
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = add nuw i32 %i.cv, 1
  %wide.trip.count158 = zext i32 %i.cy to i64     ; 3 uses
  %invariant.gep178 = getelementptr [8 x i8], ptr %i.c, i64 %i.cx ; 6 uses
  %i.cz = zext nneg i32 %i.cv to i64              ; 2 uses
  %min.iters.check220 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check220, label %scalar.ph219.preheader, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph129
  %i.da = shl nuw nsw i64 %wide.trip.count158, 3  ; 2 uses
  %i.db = getelementptr i8, ptr %i.cu, i64 %i.da
  %10 = add nsw i64 %i.cx, %i.b
  %i.dc = shl nsw i64 %10, 3                      ; 2 uses
  %11 = getelementptr i8, ptr %3, i64 %i.dc
  %i.dd = getelementptr i8, ptr %11, i64 8
  %i.de = getelementptr i8, ptr %3, i64 %i.dc
  %i.df = getelementptr i8, ptr %i.de, i64 %i.da
  %bound0222 = icmp ult ptr %scevgep, %i.df
  %bound1223 = icmp ult ptr %i.dd, %i.db
  %found.conflict224 = and i1 %bound0222, %bound1223
  br i1 %found.conflict224, label %scalar.ph219.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck221
  %n.vec226 = and i64 %i.cz, 2147483640           ; 3 uses
  %i.dg = or disjoint i64 %n.vec226, 1
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 2 uses
  %i.dh = or disjoint i64 %index228, 1            ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %invariant.gep176, i64 %i.dh ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 32     ; 2 uses
  %wide.load229 = load <4 x double>, ptr %i.di, align 8, !tbaa !31, !alias.scope !35, !noalias !36
  %wide.load230 = load <4 x double>, ptr %i.dj, align 8, !tbaa !31, !alias.scope !35, !noalias !36
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep178, i64 %i.dh ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 32     ; 2 uses
  %wide.load231 = load <4 x double>, ptr %i.dk, align 8, !tbaa !31, !alias.scope !36
  %wide.load232 = load <4 x double>, ptr %i.dl, align 8, !tbaa !31, !alias.scope !36
  store <4 x double> %wide.load231, ptr %i.di, align 8, !tbaa !31, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load232, ptr %i.dj, align 8, !tbaa !31, !alias.scope !35, !noalias !36
  store <4 x double> %wide.load229, ptr %i.dk, align 8, !tbaa !31, !alias.scope !36
  store <4 x double> %wide.load230, ptr %i.dl, align 8, !tbaa !31, !alias.scope !36
  %index.next233 = add nuw i64 %index228, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.dm, label %middle.block234, label %vector.body227, !llvm.loop !21

middle.block234:                                  ; preds = %vector.body227
  %cmp.n235 = icmp eq i64 %n.vec226, %i.cz
  br i1 %cmp.n235, label %._crit_edge130, label %scalar.ph219.preheader

scalar.ph219.preheader:                           ; preds = %vector.memcheck221, %.lr.ph129, %middle.block234
  %indvars.iv155.ph = phi i64 [ 1, %vector.memcheck221 ], [ 1, %.lr.ph129 ], [ %i.dg, %middle.block234 ] ; 4 uses
  %i.dn = sub nsw i64 %wide.trip.count158, %indvars.iv155.ph
  %i.do = zext nneg i32 %i.cv to i64
  %i.dp = sub nsw i64 %i.do, %indvars.iv155.ph
  %xtraiter239 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  br i1 %lcmp.mod240.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol

scalar.ph219.prol:                                ; preds = %scalar.ph219.preheader, %scalar.ph219.prol
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %scalar.ph219.prol ], [ %indvars.iv155.ph, %scalar.ph219.preheader ] ; 3 uses
  %prol.iter241 = phi i64 [ %prol.iter241.next, %scalar.ph219.prol ], [ 0, %scalar.ph219.preheader ]
  %gep177.prol = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv155.prol ; 2 uses
  %i.dq = load double, ptr %gep177.prol, align 8, !tbaa !31
  %gep179.prol = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv155.prol ; 2 uses
  %i.dr = load double, ptr %gep179.prol, align 8, !tbaa !31
  store double %i.dr, ptr %gep177.prol, align 8, !tbaa !31
  store double %i.dq, ptr %gep179.prol, align 8, !tbaa !31
  %indvars.iv.next156.prol = add nuw nsw i64 %indvars.iv155.prol, 1 ; 2 uses
  %prol.iter241.next = add i64 %prol.iter241, 1   ; 2 uses
  %prol.iter241.cmp.not = icmp eq i64 %prol.iter241.next, %xtraiter239
  br i1 %prol.iter241.cmp.not, label %scalar.ph219.prol.loopexit, label %scalar.ph219.prol, !llvm.loop !22

scalar.ph219.prol.loopexit:                       ; preds = %scalar.ph219.prol, %scalar.ph219.preheader
  %indvars.iv155.unr = phi i64 [ %indvars.iv155.ph, %scalar.ph219.preheader ], [ %indvars.iv.next156.prol, %scalar.ph219.prol ]
  %i.ds = icmp ult i64 %i.dp, 3
  br i1 %i.ds, label %._crit_edge130, label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.3, %scalar.ph219 ], [ %indvars.iv155.unr, %scalar.ph219.prol.loopexit ] ; 6 uses
  %gep177 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv155 ; 2 uses
  %i.dt = load double, ptr %gep177, align 8, !tbaa !31
  %gep179 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv155 ; 2 uses
  %i.du = load double, ptr %gep179, align 8, !tbaa !31
  store double %i.du, ptr %gep177, align 8, !tbaa !31
  store double %i.dt, ptr %gep179, align 8, !tbaa !31
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %gep177.1 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156 ; 2 uses
  %i.dv = load double, ptr %gep177.1, align 8, !tbaa !31
  %gep179.1 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156 ; 2 uses
  %i.dw = load double, ptr %gep179.1, align 8, !tbaa !31
  store double %i.dw, ptr %gep177.1, align 8, !tbaa !31
  store double %i.dv, ptr %gep179.1, align 8, !tbaa !31
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %gep177.2 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156.1 ; 2 uses
  %i.dx = load double, ptr %gep177.2, align 8, !tbaa !31
  %gep179.2 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156.1 ; 2 uses
  %i.dy = load double, ptr %gep179.2, align 8, !tbaa !31
  store double %i.dy, ptr %gep177.2, align 8, !tbaa !31
  store double %i.dx, ptr %gep179.2, align 8, !tbaa !31
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv155, 3 ; 2 uses
  %gep177.3 = getelementptr [8 x i8], ptr %invariant.gep176, i64 %indvars.iv.next156.2 ; 2 uses
  %i.dz = load double, ptr %gep177.3, align 8, !tbaa !31
  %gep179.3 = getelementptr [8 x i8], ptr %invariant.gep178, i64 %indvars.iv.next156.2 ; 2 uses
  %i.ea = load double, ptr %gep179.3, align 8, !tbaa !31
  store double %i.ea, ptr %gep177.3, align 8, !tbaa !31
  store double %i.dz, ptr %gep179.3, align 8, !tbaa !31
  %indvars.iv.next156.3 = add nuw nsw i64 %indvars.iv155, 4 ; 2 uses
  %exitcond159.not.3 = icmp eq i64 %indvars.iv.next156.3, %wide.trip.count158
  br i1 %exitcond159.not.3, label %._crit_edge130, label %scalar.ph219, !llvm.loop !23

._crit_edge130:                                   ; preds = %scalar.ph219.prol.loopexit, %scalar.ph219, %middle.block234, %bb.f
  %i.eb = sext i32 %.1100131 to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !25
  %i.ee = sub nsw i32 0, %i.ed                    ; 3 uses
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !25
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp eq i64 %indvars.iv160, %i.ef
  br i1 %i.eg, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %._crit_edge130, %bb.e, %.lr.ph138
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond164.not, label %.loopexit111, label %.lr.ph138, !llvm.loop !24

.loopexit111:                                     ; preds = %.loopexit112, %.loopexit, %bb.b, %bb.d, %bb.a
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !26, !27, !28}
!9 = distinct !{!9, !26, !27, !28}
!10 = distinct !{!10, !26, !28, !27}
!11 = distinct !{!11, i1 false, !"LVerDomain"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !26, !27, !28}
!15 = distinct !{!15, !34}
!16 = distinct !{!16, !26, !27}
!17 = distinct !{!17, !26}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !26, !27, !28}
!22 = distinct !{!22, !34}
!23 = distinct !{!23, !26, !27}
!24 = distinct !{!24, !26}
!25 = !{!5, !5, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 8, i32 24}
!30 = !{!"double", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!12}
!33 = !{!13}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!19}
!36 = !{!20}
end_hunk_0
