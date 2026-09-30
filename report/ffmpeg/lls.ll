Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lls?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @avpriv_solve_lls(ptr nofree noundef captures(none) %0, double noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18816
  %i.d = load i32, ptr %i.c, align 16, !tbaa !11  ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader133.preheader, label %.preheader131

.preheader133.preheader:                          ; preds = %bb.a
  %wide.trip.count192 = zext nneg i32 %i.d to i64 ; 3 uses
  %exitcond190.not.peel = icmp eq i32 %i.d, 1
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.preheader, %.split.us
  %indvars.iv179.a = phi i64 [ 0, %.preheader133.preheader ], [ %indvars.iv.next180, %.split.us ] ; 11 uses
  %i.f = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %indvars.iv179.a ; 3 uses
  %.not.not130134.not = icmp eq i64 %indvars.iv179.a, 0
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv179.a ; 6 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv179.a ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv179.a ; 2 uses
  br i1 %.not.not130134.not, label %.preheader133.split.peel, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader133
  %xtraiter = and i64 %indvars.iv179.a, 3         ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv179.a, 4
  %unroll_iter = and i64 %indvars.iv179.a, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod237 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.preheader133.split.peel:                         ; preds = %.preheader133
  %i.j = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.k = fcmp nsz olt double %i.j, %1
  %i.l = tail call nsz double @llvm.sqrt.f64(double %i.j)
  %i.m = select i1 %i.k, double 1.000000e+00, double %i.l
  store double %i.m, ptr %i.h, align 8, !tbaa !13
  br i1 %exitcond190.not.peel, label %.split.us, label %.preheader133.split

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.d
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.d ], [ %indvars.iv179.a, %.lr.ph.us.preheader ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv181
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv181 ; 5 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 6 uses
  %.0117136.us = phi double [ %i.an, %.lr.ph.us.new ], [ %i.o, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.r = load double, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !13
  %i.u = fneg nsz double %i.r
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.u, double %i.t, double %.0117136.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.x = load double, ptr %i.w, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !13
  %i.aa = fneg nsz double %i.x
  %i.ab = tail call nsz double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %i.v)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fneg nsz double %i.ad
  %i.ah = tail call nsz double @llvm.fmuladd.f64(double %i.ag, double %i.af, double %i.ab)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = fneg nsz double %i.aj
  %i.an = tail call nsz double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.ah) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !15

bb.b:                                             ; preds = %._crit_edge.us
  %i.ao = load double, ptr %i.h, align 8, !tbaa !13
  %i.ap = fdiv nsz double %.lcssa235, %i.ao
  %gep.us = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep, i64 %indvars.iv181
  store double %i.ap, ptr %gep.us, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.us
  %i.aq = fcmp nsz olt double %.lcssa235, %1
  %i.ar = tail call nsz double @llvm.sqrt.f64(double %.lcssa235)
  %i.as = select i1 %i.aq, double 1.000000e+00, double %i.ar
  store double %i.as, ptr %i.h, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count192
  br i1 %exitcond185.not, label %.split.us, label %.lr.ph.us, !llvm.loop !16

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0117136.us.epil.init = phi double [ %i.o, %.lr.ph.us ], [ %i.an, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 3 uses
  %.0117136.us.epil = phi double [ %.0117136.us.epil.init, %.epil.preheader ], [ %i.ay, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.au = load double, ptr %i.at, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13
  %i.ax = fneg nsz double %i.au
  %i.ay = tail call nsz double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double %.0117136.us.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.e, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.e, %._crit_edge.us.unr-lcssa
  %.lcssa235 = phi double [ %i.an, %._crit_edge.us.unr-lcssa ], [ %i.ay, %bb.e ] ; 3 uses
  %i.az = icmp eq i64 %indvars.iv179.a, %indvars.iv181
  br i1 %i.az, label %bb.c, label %bb.b

.lr.ph143:                                        ; preds = %.split.us
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10368 ; 6 uses
  %wide.trip.count201 = zext nneg i32 %i.d to i64
  br label %bb.f

.preheader133.split:                              ; preds = %.preheader133.split.peel, %.preheader133.split
  %indvars.iv186 = phi i64 [ %indvars.iv.next187, %.preheader133.split ], [ 1, %.preheader133.split.peel ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv186
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13
  %i.bd = load double, ptr %i.h, align 8, !tbaa !13
  %i.be = fdiv nsz double %i.bc, %i.bd
  %gep = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep, i64 %indvars.iv186
  store double %i.be, ptr %gep, align 8, !tbaa !13
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count192
  br i1 %exitcond190.not, label %.split.us, label %.preheader133.split, !llvm.loop !18

.split.us:                                        ; preds = %bb.d, %.preheader133.split.peel, %.preheader133.split
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179.a, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count192
  br i1 %exitcond193.not, label %.lr.ph143, label %.preheader133, !llvm.loop !19

.preheader131:                                    ; preds = %._crit_edge, %bb.a
  %i.bf = zext i16 %2 to i32
  %.not.not170 = icmp sgt i32 %i.d, %i.bf
  br i1 %.not.not170, label %.preheader.lr.ph, label %._crit_edge173

.preheader.lr.ph:                                 ; preds = %.preheader131
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10368 ; 3 uses
  %i.bh = load double, ptr %0, align 16, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.bj = add nsw i32 %i.d, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = zext nneg i32 %i.d to i64
  %i.bm = zext i16 %2 to i64
  br label %.lr.ph154

bb.f:                                             ; preds = %.lr.ph143, %._crit_edge
  %indvars.iv198 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next199, %._crit_edge ] ; 9 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next199
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 3 uses
  %.not.not129139.not = icmp eq i64 %indvars.iv198, 0
  br i1 %.not.not129139.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv198 ; 5 uses
  %xtraiter240 = and i64 %indvars.iv198, 3        ; 3 uses
  %i.bq = icmp samesign ult i64 %indvars.iv198, 4
  br i1 %i.bq, label %.epil.preheader239, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter245 = and i64 %indvars.iv198, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv194 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next195.3, %bb.g ] ; 6 uses
  %.0116141 = phi double [ %i.bo, %.lr.ph.new ], [ %i.co, %bb.g ]
  %niter246 = phi i64 [ 0, %.lr.ph.new ], [ %niter246.next.3, %bb.g ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv194
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv194
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = fneg nsz double %i.bs
  %i.bw = tail call nsz double @llvm.fmuladd.f64(double %i.bv, double %i.bu, double %.0116141)
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next195
  %i.by = load double, ptr %i.bx, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next195
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  %i.cb = fneg nsz double %i.by
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bw)
  %indvars.iv.next195.1 = or disjoint i64 %indvars.iv194, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next195.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next195.1
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13
  %i.ch = fneg nsz double %i.ce
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double %i.cg, double %i.cc)
  %indvars.iv.next195.2 = or disjoint i64 %indvars.iv194, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next195.2
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next195.2
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13
  %i.cn = fneg nsz double %i.ck
  %i.co = tail call nsz double @llvm.fmuladd.f64(double %i.cn, double %i.cm, double %i.ci) ; 3 uses
  %indvars.iv.next195.3 = add nuw nsw i64 %indvars.iv194, 4 ; 2 uses
  %niter246.next.3 = add i64 %niter246, 4         ; 2 uses
  %niter246.ncmp.3 = icmp eq i64 %niter246.next.3, %unroll_iter245
  br i1 %niter246.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !20

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod242.not, label %._crit_edge, label %.epil.preheader239

.epil.preheader239:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next195.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0116141.epil.init = phi double [ %i.bo, %.lr.ph ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter240, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader239
  %indvars.iv194.epil = phi i64 [ %indvars.iv194.epil.init, %.epil.preheader239 ], [ %indvars.iv.next195.epil, %bb.h ] ; 3 uses
  %.0116141.epil = phi double [ %.0116141.epil.init, %.epil.preheader239 ], [ %i.cu, %bb.h ]
  %epil.iter241 = phi i64 [ 0, %.epil.preheader239 ], [ %epil.iter241.next, %bb.h ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv194.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv194.epil
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13
  %i.ct = fneg nsz double %i.cq
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.cs, double %.0116141.epil) ; 2 uses
  %indvars.iv.next195.epil = add nuw nsw i64 %indvars.iv194.epil, 1
  %epil.iter241.next = add i64 %epil.iter241, 1   ; 2 uses
  %epil.iter241.cmp.not = icmp eq i64 %epil.iter241.next, %xtraiter240
  br i1 %epil.iter241.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !21

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.f
  %.0116.lcssa = phi double [ %i.bo, %bb.f ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %bb.h ]
  %i.cv = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv198
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv198
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13
  %i.cy = fdiv nsz double %.0116.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv198
  store double %i.cy, ptr %i.cz, align 8, !tbaa !13
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %.preheader131, label %bb.f, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge162
  %.not.not = icmp sgt i64 %indvars.iv.next221, %i.bm
  %indvars.iv.next204.a = add nsw i64 %indvars.iv203.a, -1
  br i1 %.not.not, label %.lr.ph154, label %._crit_edge173, !llvm.loop !23

.lr.ph154:                                        ; preds = %.loopexit, %.preheader.lr.ph
  %indvars.iv220 = phi i64 [ %i.bl, %.preheader.lr.ph ], [ %indvars.iv.next221, %.loopexit ] ; 2 uses
  %indvars.iv203.a = phi i64 [ %i.bk, %.preheader.lr.ph ], [ %indvars.iv.next204.a, %.loopexit ] ; 2 uses
  %indvars.iv.next221 = add nsw i64 %indvars.iv220, -1 ; 7 uses
  %i.da = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next221 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge151
  %indvars.iv205.a = phi i64 [ %indvars.iv203.a, %.lr.ph154 ], [ %indvars.iv.next206, %._crit_edge151 ] ; 9 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv205.a
  %i.dc = load double, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %invariant.gep144 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv205.a
  %.not.not128146 = icmp slt i64 %indvars.iv205.a, %indvars.iv.next221
  br i1 %.not.not128146, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.i, %.lr.ph150
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph150 ], [ %indvars.iv205.a, %bb.i ]
  %.0115148 = phi double [ %i.dh, %.lr.ph150 ], [ %i.dc, %bb.i ]
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 4 uses
  %gep145 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep144, i64 %indvars.iv.next208
  %i.dd = load double, ptr %gep145, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next208
  %i.df = load double, ptr %i.de, align 8, !tbaa !13
  %i.dg = fneg nsz double %i.dd
  %i.dh = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.df, double %.0115148) ; 2 uses
  %sext.a = shl i64 %indvars.iv.next208, 32
  %i.di = ashr exact i64 %sext.a, 32
  %.not.not128 = icmp slt i64 %i.di, %indvars.iv.next221
  br i1 %.not.not128, label %.lr.ph150, label %._crit_edge151, !llvm.loop !24

._crit_edge151:                                   ; preds = %.lr.ph150, %bb.i
  %.0115.lcssa = phi double [ %i.dc, %bb.i ], [ %i.dh, %.lr.ph150 ]
  %i.dj = getelementptr inbounds nuw [288 x i8], ptr %i.a, i64 %indvars.iv205.a
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv205.a
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !13
  %i.dm = fdiv nsz double %.0115.lcssa, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv205.a
  store double %i.dm, ptr %i.dn, align 8, !tbaa !13
  %indvars.iv.next206 = add nsw i64 %indvars.iv205.a, -1
  %i.do = icmp sgt i64 %indvars.iv205.a, 0
  br i1 %i.do, label %bb.i, label %.lr.ph168, !llvm.loop !25

.lr.ph168:                                        ; preds = %._crit_edge151
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next221 ; 2 uses
  store double %i.bh, ptr %i.dp, align 8, !tbaa !13
  %3 = getelementptr inbounds nuw [256 x i8], ptr %i.bg, i64 %indvars.iv.next221 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph168, %._crit_edge162
  %indvars.iv215 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next216, %._crit_edge162 ] ; 10 uses
  %storemerge165 = phi double [ %i.bh, %.lr.ph168 ], [ %i.ep, %._crit_edge162 ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv215
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.ds = getelementptr inbounds nuw [288 x i8], ptr %i.b, i64 %indvars.iv215
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv215
  %i.du = load double, ptr %i.dt, align 8, !tbaa !13
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next216
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !13
  %i.dx = fmul nsz double %i.dw, -2.000000e+00
  %i.dy = tail call nsz double @llvm.fmuladd.f64(double %i.dr, double %i.du, double %i.dx) ; 3 uses
  %invariant.gep156 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv215 ; 3 uses
  %.not = icmp eq i64 %indvars.iv215, 0
  br i1 %.not, label %._crit_edge162, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %bb.j
  %xtraiter247 = and i64 %indvars.iv215, 1
  %i.dz = icmp eq i64 %indvars.iv215, 1
  br i1 %i.dz, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter252 = and i64 %indvars.iv215, 9223372036854775806
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next212.1, %.lr.ph161 ] ; 4 uses
  %.0159 = phi double [ %i.dy, %.lr.ph161.preheader.new ], [ %i.ej, %.lr.ph161 ]
  %niter253 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter253.next.1, %.lr.ph161 ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv211
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !13
  %i.ec = fmul nsz double %i.eb, 2.000000e+00
  %gep157 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv211
  %i.ed = load double, ptr %gep157, align 8, !tbaa !13
  %i.ee = tail call nsz double @llvm.fmuladd.f64(double %i.ec, double %i.ed, double %.0159)
  %indvars.iv.next212 = or disjoint i64 %indvars.iv211, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next212
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !13
  %i.eh = fmul nsz double %i.eg, 2.000000e+00
  %gep157.1 = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv.next212
  %i.ei = load double, ptr %gep157.1, align 8, !tbaa !13
  %i.ej = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.ee) ; 3 uses
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !26

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod249.not = icmp eq i64 %xtraiter247, 0
  br i1 %lcmp.mod249.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next212.1, %._crit_edge162.loopexit.unr-lcssa ] ; 2 uses
  %.0159.epil.init = phi double [ %i.dy, %.lr.ph161.preheader ], [ %i.ej, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod251 = trunc i64 %indvars.iv215 to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv211.epil.init
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13
  %i.em = fmul nsz double %i.el, 2.000000e+00
  %gep157.epil = getelementptr inbounds nuw [288 x i8], ptr %invariant.gep156, i64 %indvars.iv211.epil.init
  %i.en = load double, ptr %gep157.epil, align 8, !tbaa !13
  %i.eo = tail call nsz double @llvm.fmuladd.f64(double %i.em, double %i.en, double %.0159.epil.init)
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %.lr.ph161.epil.preheader, %._crit_edge162.loopexit.unr-lcssa, %bb.j
  %.0.lcssa = phi double [ %i.dy, %bb.j ], [ %i.ej, %._crit_edge162.loopexit.unr-lcssa ], [ %i.eo, %.lr.ph161.epil.preheader ]
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.dr, double %.0.lcssa, double %storemerge165) ; 2 uses
  store double %i.ep, ptr %i.dp, align 8, !tbaa !13
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %indvars.iv220
  br i1 %exitcond219.not, label %.loopexit, label %bb.j, !llvm.loop !27

._crit_edge173:                                   ; preds = %.loopexit, %.preheader131
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @avpriv_init_lls(ptr nofree noundef writeonly captures(none) initializes((0, 18848)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18848) %0, i8 0, i64 18848, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18816
  store i32 %1, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18824
  store ptr @update_lls, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18832
  store ptr @evaluate_lls, ptr %i.c, align 16, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @update_lls(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18816
  %i.b = load i32, ptr %i.a, align 16, !tbaa !11  ; 3 uses
  %.not16 = icmp slt i32 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = add nuw i32 %i.b, 1
  %wide.trip.count22 = zext i32 %i.c to i64       ; 5 uses
  %i.d = shl nuw nsw i64 %wide.trip.count22, 3    ; 2 uses
  %scevgep25 = getelementptr i8, ptr %1, i64 %i.d ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit ] ; 10 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.i = sub nsw i64 %wide.trip.count22, %indvars.iv ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.j = mul nuw nsw i64 %indvars.iv, 288
  %scevgep24 = getelementptr i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 296
  %scevgep = getelementptr i8, ptr %0, i64 %i.k   ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %i.g, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %scevgep, %scevgep25
  %bound127 = icmp ult ptr %1, %scevgep24
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.l = add i64 %indvars.iv, %n.vec
  %i.m = load double, ptr %i.g, align 8, !tbaa !13, !alias.scope !39
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add nuw i64 %indvars.iv, %index          ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !13, !alias.scope !40
  %wide.load29 = load <2 x double>, ptr %i.p, align 8, !tbaa !13, !alias.scope !40
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load30 = load <2 x double>, ptr %i.q, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %wide.load31 = load <2 x double>, ptr %i.r, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %i.s = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load30)
  %i.t = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load29, <2 x double> %wide.load31)
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !13, !alias.scope !41, !noalias !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.l, %middle.block ] ; 6 uses
  %i.v = sub i64 %wide.trip.count22, %indvars.iv18.ph
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = load double, ptr %i.g, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18.ph
  %i.y = load double, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv18.ph ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = tail call nsz double @llvm.fmuladd.f64(double %i.w, double %i.y, double %i.aa)
  store double %i.ab, ptr %i.z, align 8, !tbaa !13
  %indvars.iv.next19.prol = add nuw nsw i64 %indvars.iv18.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.unr = phi i64 [ %indvars.iv18.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.prol, %scalar.ph.prol ]
  %i.ac = icmp eq i64 %indvars.iv18.ph, %i.e
  br i1 %i.ac, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18 = phi i64 [ %indvars.iv.next19.1, %scalar.ph ], [ %indvars.iv18.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ad = load double, ptr %i.g, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv18 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ad, double %i.af, double %i.ah)
  store double %i.ai, ptr %i.ag, align 8, !tbaa !13
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.aj = load double, ptr %i.g, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next19
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next19 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !13
  %i.ao = tail call nsz double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %i.an)
  store double %i.ao, ptr %i.am, align 8, !tbaa !13
  %indvars.iv.next19.1 = add nuw nsw i64 %indvars.iv18, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next19.1, %wide.trip.count22
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge, label %.preheader, !llvm.loop !38

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @evaluate_lls(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10368
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [256 x i8], ptr %i.a, i64 %i.b
  %i.d = add nsw i32 %2, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call nsz double @ff_scalarproduct_double_c(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %i.e) #7
  ret double %i.f
}

declare double @ff_scalarproduct_double_c(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
end_hunk_0
