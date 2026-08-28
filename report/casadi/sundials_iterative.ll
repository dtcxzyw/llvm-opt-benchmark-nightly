Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@QRfact:bb.a

bb.d:                                             ; preds = %bb.c
  %i.ah = fdiv double %i.y, %i.ac                 ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double 1.000000e+00)
  %i.aj = tail call double @SUNRsqrt(double noundef %i.ai) #5
  %i.ak = fdiv double -1.000000e+00, %i.aj        ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fmul double %i.ah, %i.al
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fdiv double %i.ac, %i.y                 ; 3 uses
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.an, double 1.000000e+00)
  %i.ap = tail call double @SUNRsqrt(double noundef %i.ao) #5
  %i.aq = fdiv double 1.000000e+00, %i.ap         ; 2 uses
  %i.ar = fneg double %i.aq
  %i.as = fmul double %i.an, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge149, %bb.d, %bb.e
  %.0138 = phi double [ %i.aq, %bb.e ], [ %i.am, %bb.d ], [ 1.000000e+00, %._crit_edge149 ] ; 2 uses
  %.0136 = phi double [ %i.as, %bb.e ], [ %i.ak, %bb.d ], [ 0.000000e+00, %._crit_edge149 ] ; 2 uses
  %.idx173 = shl nuw nsw i64 %indvars.iv160, 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.idx173 ; 2 uses
  store double %.0138, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.0136, ptr %i.au, align 8, !tbaa !13
  %i.av = fneg double %i.ac
  %i.aw = fmul double %.0136, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %.0138, double %i.y, double %i.aw) ; 2 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv160
  store double %i.ax, ptr %i.az, align 8, !tbaa !13
  %i.ba = fcmp oeq double %i.ax, 0.000000e+00
  %i.bb = trunc nuw nsw i64 %indvars.iv.next161 to i32
  %spec.select = select i1 %i.ba, i32 %i.bb, i32 %.0151 ; 2 uses
  %indvars.iv.next157 = add nsw i32 %indvars.iv156, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %.loopexit, label %.preheader, !llvm.loop !23

bb.g:                                             ; preds = %bb.a
  %i.bc = add i32 %0, -1                          ; 4 uses
  %i.bd = icmp sgt i32 %0, 1
  br i1 %i.bd, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre169 = sext i32 %i.bc to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.be = zext nneg i32 %i.bc to i64              ; 4 uses
  %wide.trip.count = zext nneg i32 %i.bc to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.be
  %.pre165 = load double, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.bf = phi double [ %.pre165, %.lr.ph ], [ %i.bx, %bb.h ]
  %i.bg = phi ptr [ %.pre, %.lr.ph ], [ %i.bj, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.be ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bn = fneg double %i.bl
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bn, i64 1
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bu, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  store double %i.bw, ptr %i.bh, align 8, !tbaa !13
  %i.bx = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  store double %i.bx, ptr %i.bk, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre169, %.._crit_edge_crit_edge ], [ %i.be, %bb.h ] ; 4 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.pre-phi
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13 ; 4 uses
  %i.cc = sext i32 %0 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.pre-phi
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 5 uses
  %i.ch = fcmp oeq double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ci = tail call double @SUNRabs(double noundef %i.cg) #5
  %i.cj = tail call double @SUNRabs(double noundef %i.cb) #5
  %i.ck = fcmp ult double %i.ci, %i.cj
  br i1 %i.ck, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = fdiv double %i.cb, %i.cg                ; 3 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double 1.000000e+00)
  %i.cn = tail call double @SUNRsqrt(double noundef %i.cm) #5
  %i.co = fdiv double -1.000000e+00, %i.cn        ; 2 uses
  %i.cp = fneg double %i.co
  %i.cq = fmul double %i.cl, %i.cp
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cr = fdiv double %i.cg, %i.cb                ; 3 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double 1.000000e+00)
  %i.ct = tail call double @SUNRsqrt(double noundef %i.cs) #5
  %i.cu = fdiv double 1.000000e+00, %i.ct         ; 2 uses
  %i.cv = fneg double %i.cu
  %i.cw = fmul double %i.cr, %i.cv
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.k
  %.1139 = phi double [ %i.cu, %bb.k ], [ %i.cq, %bb.j ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %.1137 = phi double [ %i.cw, %bb.k ], [ %i.co, %bb.j ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.cx = shl nsw i32 %i.bc, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cy ; 2 uses
  store double %.1139, ptr %i.cz, align 8, !tbaa !13
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  store double %.1137, ptr %i.da, align 8, !tbaa !13
  %i.db = fneg double %i.cg
  %i.dc = fmul double %.1137, %i.db
  %i.dd = tail call double @llvm.fmuladd.f64(double %.1139, double %i.cb, double %i.dc) ; 2 uses
  %i.de = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.pre-phi
  store double %i.dd, ptr %i.df, align 8, !tbaa !13
  %i.dg = fcmp oeq double %i.dd, 0.000000e+00
  %spec.select144 = select i1 %i.dg, i32 %0, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader145, %bb.l
  %.2 = phi i32 [ %spec.select144, %bb.l ], [ 0, %.preheader145 ], [ %spec.select, %bb.f ]
  ret i32 %.2
}

declare double @SUNRabs(double noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @QRsol(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre = load double, ptr %3, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph56.preheader:                               ; preds = %.lr.ph
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %indvars.iv.next7080 = add nsw i64 %i.b, -1     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next7080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next7080
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph56.preheader
  %i.h = add nsw i32 %0, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.k = phi double [ %.pre, %.lr.ph.preheader ], [ %i.y, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = fneg double %i.o
  %i.q = load <2 x double>, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.w, <2 x double> %i.u) ; 2 uses
  store <2 x double> %i.x, ptr %i.m, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.y = extractelement <2 x double> %i.x, i64 1
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph, !llvm.loop !25

.loopexit.unr-lcssa:                              ; preds = %.lr.ph52
  %lcmp.mod.not = trunc i64 %indvars.iv6782 to i1
  br i1 %lcmp.mod.not, label %.lr.ph52.epil.preheader, label %.loopexit

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.unr-lcssa, %.lr.ph52.preheader
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next61.1, %.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %indvars.iv6782 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.epil.init
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next7083
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60.epil.init ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fneg double %i.z
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.lr.ph52.epil.preheader
  %indvars.iv.next68 = add nsw i64 %indvars.iv6782, -1
  %indvars.iv.next70 = add nsw i64 %indvars.iv.next7083, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next70
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, label %bb.b, !llvm.loop !26

bb.b:                                             ; preds = %.lr.ph84, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph84 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.an = phi double [ %i.f, %.lr.ph84 ], [ %i.al, %.loopexit ]
  %indvars.iv.next7083 = phi i64 [ %indvars.iv.next7080, %.lr.ph84 ], [ %indvars.iv.next70, %.loopexit ] ; 7 uses
  %indvars.iv6782 = phi i64 [ %i.i, %.lr.ph84 ], [ %indvars.iv.next68, %.loopexit ] ; 4 uses
  %indvars.iv6981 = phi i64 [ %i.b, %.lr.ph84 ], [ %indvars.iv.next7083, %.loopexit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next7083 ; 5 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = fdiv double %i.ap, %i.an
  store double %i.aq, ptr %i.ao, align 8, !tbaa !13
  %i.ar = icmp samesign ugt i64 %indvars.iv6981, 1
  br i1 %i.ar, label %.lr.ph52.preheader, label %._crit_edge

.lr.ph52.preheader:                               ; preds = %bb.b
  %i.as = icmp eq i64 %indvar, %i.j
  br i1 %i.as, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %indvars.iv6782, -2
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %indvars.iv60 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %indvars.iv.next61.1, %.lr.ph52 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.1, %.lr.ph52 ]
  %i.at = load double, ptr %i.ao, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next7083
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = fneg double %i.at
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.az)
  store double %i.bb, ptr %i.ay, align 8, !tbaa !13
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next7083
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next61 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13
  %i.bj = fneg double %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bg, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !13
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %.lr.ph52, !llvm.loop !27

.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge: ; preds = %.loopexit
  %i.bl = trunc nuw nsw i64 %indvars.iv.next7083 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph56.preheader, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %0, %.lr.ph56.preheader ], [ %i.bl, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS17_generic_N_Vector", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 double", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
end_hunk_0
