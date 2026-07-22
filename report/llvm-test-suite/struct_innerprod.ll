loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@final_innerprod_result = dso_local global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define dso_local double @hypre_StructInnerProd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge276

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv293 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next294, %._crit_edge ] ; 6 uses
  %.0186274 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1187.lcssa, %._crit_edge ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv293 ; 4 uses
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv293 ; 5 uses
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv293 ; 5 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv293
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad ; 3 uses
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv293
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aj ; 3 uses
  %i.al = call i32 @hypre_BoxGetSize(ptr noundef %i.s, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.am = load i32, ptr %i.s, align 4, !tbaa !4   ; 2 uses
  %i.an = load i32, ptr %i.v, align 4, !tbaa !4   ; 2 uses
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.at = sub i32 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sub nsw i32 %i.ax, %i.as                ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1                  ; 2 uses
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.au, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sub nsw i32 %i.ba, %i.bc
  %i.be = add nuw nsw i32 %i.ay, 1
  %i.bf = mul nsw i32 %i.bd, %i.be
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bg = phi i32 [ %i.bf, %bb.c ], [ 0, %bb.b ]
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bi = sub i32 %i.bh, %i.an                    ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, -1                  ; 2 uses
  %i.bk = add nsw i32 %i.at, %i.bg
  %i.bl = add i32 %i.bi, 1                        ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bk
  %i.bn = select i1 %i.bj, i32 %i.bm, i32 0
  %i.bo = add nsw i32 %i.ao, %i.bn
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !4   ; 2 uses
  %i.bq = sub i32 %i.am, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 2 uses
  %i.bt = sub i32 %i.aq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = sub nsw i32 %i.bw, %i.bs                ; 3 uses
  %i.by = icmp sgt i32 %i.bx, -1                  ; 2 uses
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = load i32, ptr %i.au, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = sub nsw i32 %i.bz, %i.cb
  %i.cd = add nuw nsw i32 %i.bx, 1
  %i.ce = mul nsw i32 %i.cc, %i.cd
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cf = phi i32 [ %i.ce, %bb.e ], [ 0, %bb.d ]
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !4   ; 6 uses
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !4   ; 5 uses
  %i.ci = load i32, ptr %i.q, align 4, !tbaa !4   ; 3 uses
  %.0182 = call i32 @llvm.smax.i32(i32 %i.ch, i32 %i.cg)
  %.1183 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %.0182)
  %i.cj = icmp sgt i32 %.1183, 0
  br i1 %i.cj, label %.preheader224.lr.ph, label %._crit_edge

.preheader224.lr.ph:                              ; preds = %bb.f
  %i.ck = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.cl = sub i32 %i.ck, %i.bp                    ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1                  ; 2 uses
  %i.cn = add i32 %i.cl, 1                        ; 2 uses
  %i.co = select i1 %i.cm, i32 %i.cn, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.co, %i.ch
  %i.cp = select i1 %i.bj, i32 %i.bl, i32 0       ; 3 uses
  %factor.op.mul257 = mul i32 %i.ch, %i.cp
  %i.cq = add nuw nsw i32 %i.bx, 1
  %i.cr = mul nsw i32 %i.co, %i.cq
  %i.cs = select i1 %i.by, i32 %i.cr, i32 0
  %i.ct = add nuw nsw i32 %i.ay, 1
  %i.cu = mul nsw i32 %i.cp, %i.ct
  %i.cv = select i1 %i.az, i32 %i.cu, i32 0
  %i.cw = icmp slt i32 %i.ci, 1
  %i.cx = icmp slt i32 %i.cg, 1
  %2 = sub i32 %i.cv, %factor.op.mul257
  %3 = sub i32 %i.cs, %factor.op.mul
  %i.cy = icmp slt i32 %i.ch, 1
  %or.cond.not306 = or i1 %i.cw, %i.cy
  %brmerge = or i1 %or.cond.not306, %i.cx
  br i1 %brmerge, label %._crit_edge, label %.preheader223.us.us.us.us.us.preheader

.preheader223.us.us.us.us.us.preheader:           ; preds = %.preheader224.lr.ph
  %i.cz = add nsw i32 %i.bt, %i.cf
  %i.da = mul nsw i32 %i.cn, %i.cz
  %i.db = select i1 %i.cm, i32 %i.da, i32 0
  %i.dc = add nsw i32 %i.bq, %i.db
  %xtraiter = and i32 %i.cg, 1
  %i.dd = icmp eq i32 %i.cg, 1
  %unroll_iter = and i32 %i.cg, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod312 = trunc i32 %i.cg to i1
  br label %.preheader223.us.us.us.us.us

.preheader223.us.us.us.us.us:                     ; preds = %.preheader223.us.us.us.us.us.preheader, %._crit_edge235.split.us.us.us.us.us.us
  %.2246.us.us.us.us.us = phi double [ %.lcssa, %._crit_edge235.split.us.us.us.us.us.us ], [ %.0186274, %.preheader223.us.us.us.us.us.preheader ]
  %.0188245.us.us.us.us.us = phi i32 [ %i.ea, %._crit_edge235.split.us.us.us.us.us.us ], [ %i.bo, %.preheader223.us.us.us.us.us.preheader ]
  %.0191244.us.us.us.us.us = phi i32 [ %i.eb, %._crit_edge235.split.us.us.us.us.us.us ], [ %i.dc, %.preheader223.us.us.us.us.us.preheader ]
  %.1203243.us.us.us.us.us = phi i32 [ %i.ec, %._crit_edge235.split.us.us.us.us.us.us ], [ 0, %.preheader223.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader223.us.us.us.us.us
  %.3234.us.us.us.us.us.us = phi double [ %.2246.us.us.us.us.us, %.preheader223.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us ] ; 2 uses
  %.1189233.us.us.us.us.us.us = phi i32 [ %.0188245.us.us.us.us.us, %.preheader223.us.us.us.us.us ], [ %i.dx, %._crit_edge.us.us.us.us.us.us ] ; 2 uses
  %.1192232.us.us.us.us.us.us = phi i32 [ %.0191244.us.us.us.us.us, %.preheader223.us.us.us.us.us ], [ %i.dy, %._crit_edge.us.us.us.us.us.us ] ; 2 uses
  %.1201231.us.us.us.us.us.us = phi i32 [ 0, %.preheader223.us.us.us.us.us ], [ %i.dz, %._crit_edge.us.us.us.us.us.us ]
  %i.de = sext i32 %.1189233.us.us.us.us.us.us to i64 ; 2 uses
  %i.df = sext i32 %.1192232.us.us.us.us.us.us to i64 ; 2 uses
  br i1 %i.dd, label %.epil.preheader, label %.preheader.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.new:                 ; preds = %.preheader.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.new
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.1, %.preheader.us.us.us.us.us.us.new ], [ %i.df, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.us.us.us.us.us.new ], [ %i.de, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %.4228.us.us.us.us.us.us = phi double [ %i.dr, %.preheader.us.us.us.us.us.us.new ], [ %.3234.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ]
  %niter = phi i32 [ %niter.next.1, %.preheader.us.us.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us.us.us ]
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !25
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv286
  %i.dj = load double, ptr %i.di, align 8, !tbaa !25
  %i.dk = call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double %.4228.us.us.us.us.us.us)
  %i.dl = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !25
  %i.do = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv286
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !25
  %i.dr = call double @llvm.fmuladd.f64(double %i.dn, double %i.dq, double %i.dk) ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next287.1 = add nsw i64 %indvars.iv286, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.new, !llvm.loop !27

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.preheader.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us
  %indvars.iv286.epil.init = phi i64 [ %i.df, %.preheader.us.us.us.us.us.us ], [ %indvars.iv.next287.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ %i.de, %.preheader.us.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  %.4228.us.us.us.us.us.us.epil.init = phi double [ %.3234.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us ], [ %i.dr, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod312)
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.epil.init
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv286.epil.init
  %i.dv = load double, ptr %i.du, align 8, !tbaa !25
  %i.dw = call double @llvm.fmuladd.f64(double %i.dt, double %i.dv, double %.4228.us.us.us.us.us.us.epil.init)
  br label %._crit_edge.us.us.us.us.us.us

._crit_edge.us.us.us.us.us.us:                    ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.dr, %._crit_edge.us.us.us.us.us.us.unr-lcssa ], [ %i.dw, %.epil.preheader ] ; 3 uses
  %i.dx = add i32 %i.cp, %.1189233.us.us.us.us.us.us ; 2 uses
  %i.dy = add i32 %i.co, %.1192232.us.us.us.us.us.us ; 2 uses
  %i.dz = add nuw nsw i32 %.1201231.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond291.not = icmp eq i32 %i.dz, %i.ch
  br i1 %exitcond291.not, label %._crit_edge235.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !29

._crit_edge235.split.us.us.us.us.us.us:           ; preds = %._crit_edge.us.us.us.us.us.us
  %i.ea = add nsw i32 %2, %i.dx
  %i.eb = add nsw i32 %3, %i.dy
  %i.ec = add nuw nsw i32 %.1203243.us.us.us.us.us, 1 ; 2 uses
  %exitcond292.not = icmp eq i32 %i.ec, %i.ci
  br i1 %exitcond292.not, label %._crit_edge, label %.preheader223.us.us.us.us.us, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge235.split.us.us.us.us.us.us, %.preheader224.lr.ph, %bb.f
  %.1187.lcssa = phi double [ %.0186274, %bb.f ], [ %.0186274, %.preheader224.lr.ph ], [ %.lcssa, %._crit_edge235.split.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.ed = load i32, ptr %i.g, align 8, !tbaa !19
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %indvars.iv.next294, %i.ee
  br i1 %i.ef, label %bb.b, label %._crit_edge276, !llvm.loop !31

._crit_edge276:                                   ; preds = %._crit_edge, %bb.a
  %.0186.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1187.lcssa, %._crit_edge ]
  store double %.0186.lcssa, ptr %i.a, align 8, !tbaa !25
  %i.eg = load i32, ptr %0, align 8, !tbaa !32
  %i.eh = call i32 @hypre_MPI_Allreduce(ptr noundef nonnull %i.a, ptr noundef nonnull @final_innerprod_result, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %i.eg) #5 ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !33
  %i.ek = shl nsw i32 %i.ej, 1
  %i.el = call i32 @hypre_IncFLOPCount(i32 noundef %i.ek) #5 ; 0 uses
  %i.em = load double, ptr @final_innerprod_result, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %i.em
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"hypre_StructVector_struct", !5, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!10 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!16, !12, i64 8}
!16 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !12, i64 8, !14, i64 16, !17, i64 24, !5, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!17 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!18 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"hypre_BoxArray_struct", !18, i64 0, !5, i64 8, !5, i64 12}
!21 = !{!20, !18, i64 0}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !13, i64 24}
!24 = !{!9, !14, i64 40}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!9, !5, i64 0}
!33 = !{!9, !5, i64 72}
end_hunk_0
