Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ModifiedGS:bb.a
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  store double %i.o, ptr %i.r, align 8, !tbaa !14
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.t = fneg double %i.o
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.s, double noundef %i.t, ptr noundef %i.u, ptr noundef %i.s) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.w = tail call double @N_VDotProd(ptr noundef %i.v, ptr noundef %i.v) #5
  %i.x = tail call double @SUNRsqrt(double noundef %i.w) #5 ; 2 uses
  store double %i.x, ptr %4, align 8, !tbaa !14
  %i.y = fmul double %i.e, 1.000000e+03           ; 2 uses
  %i.z = fadd double %i.y, %i.x
  %i.aa = fcmp une double %i.z, %i.y
  %brmerge = or i1 %i.aa, %i.i
  br i1 %brmerge, label %._crit_edge82.thread, label %.lr.ph81

.lr.ph81:                                         ; preds = %._crit_edge
  %i.ab = zext nneg i32 %i.f to i64
  %i.ac = zext nneg i32 %i.h to i64
  %wide.trip.count87 = zext nneg i32 %2 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph81, %bb.e
  %indvars.iv84 = phi i64 [ %i.ac, %.lr.ph81 ], [ %indvars.iv.next85, %bb.e ] ; 3 uses
  %.080 = phi double [ 0.000000e+00, %.lr.ph81 ], [ %.1, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv84 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ag = tail call double @N_VDotProd(ptr noundef %i.ae, ptr noundef %i.af) #5 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ab ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %i.al = fmul double %i.ak, 1.000000e+03         ; 2 uses
  %i.am = fadd double %i.ag, %i.al
  %i.an = fcmp oeq double %i.am, %i.al
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = fadd double %i.ag, %i.ak
  store double %i.ao, ptr %i.aj, align 8, !tbaa !14
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.aq = fneg double %i.ag
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ap, double noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.ap) #5
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %.080)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi double [ %.080, %bb.c ], [ %i.as, %bb.d ] ; 3 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge82, label %bb.c, !llvm.loop !17

._crit_edge82:                                    ; preds = %bb.e
  %i.at = fcmp une double %.1, 0.000000e+00
  br i1 %i.at, label %bb.f, label %._crit_edge82.thread

bb.f:                                             ; preds = %._crit_edge82
  %i.au = load double, ptr %4, align 8, !tbaa !14 ; 2 uses
  %i.av = fneg double %.1
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.au, double %i.av) ; 2 uses
  %i.ax = fcmp ogt double %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call double @SUNRsqrt(double noundef %i.aw) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.az = phi double [ %i.ay, %bb.g ], [ 0.000000e+00, %bb.f ]
  store double %i.az, ptr %4, align 8, !tbaa !14
  br label %._crit_edge82.thread

._crit_edge82.thread:                             ; preds = %._crit_edge, %._crit_edge82, %bb.h
  ret i32 0
}

declare double @SUNRsqrt(double noundef) local_unnamed_addr #1

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define noundef i32 @ClassicalGS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 4 uses
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = tail call double @N_VDotProd(ptr noundef %i.d, ptr noundef %i.d) #5
  %i.f = tail call double @SUNRsqrt(double noundef %i.e) #5
  %i.g = sub nsw i32 %2, %3
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0) ; 7 uses
  %i.i = icmp slt i32 %i.h, %2                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = zext nneg i32 %i.a to i64
  %i.k = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

.lr.ph91:                                         ; preds = %bb.b
  %i.l = zext nneg i32 %i.a to i64
  %i.m = zext nneg i32 %i.h to i64
  %wide.trip.count104 = zext nneg i32 %2 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.q = tail call double @N_VDotProd(ptr noundef %i.o, ptr noundef %i.p) #5
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  store double %i.q, ptr %i.t, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph91, label %bb.b, !llvm.loop !18

bb.c:                                             ; preds = %.lr.ph91, %bb.c
  %indvars.iv101 = phi i64 [ %i.m, %.lr.ph91 ], [ %indvars.iv.next102, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv101
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.l
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = fneg double %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.u, double noundef %i.z, ptr noundef %i.ab, ptr noundef %i.u) #5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %bb.c, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.ad = tail call double @N_VDotProd(ptr noundef %i.ac, ptr noundef %i.ac) #5
  %i.ae = tail call double @SUNRsqrt(double noundef %i.ad) #5 ; 2 uses
  store double %i.ae, ptr %4, align 8, !tbaa !14
  %i.af = fmul double %i.ae, 1.000000e+03
  %i.ag = fcmp olt double %i.af, %i.f
  br i1 %i.ag, label %.preheader, label %bb.f

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.i, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.preheader
  %i.ah = zext nneg i32 %i.h to i64
  %wide.trip.count109 = zext nneg i32 %2 to i64
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %indvars.iv106 = phi i64 [ %i.ah, %.lr.ph93.preheader ], [ %indvars.iv.next107, %.lr.ph93 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv106
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.al = tail call double @N_VDotProd(ptr noundef %i.aj, ptr noundef %i.ak) #5
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv106
  store double %i.al, ptr %i.am, align 8, !tbaa !14
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %bb.d, label %.lr.ph93, !llvm.loop !20

bb.d:                                             ; preds = %.lr.ph93
  %i.an = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.an ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10
  tail call void @N_VScale(double noundef %i.ap, ptr noundef %i.ar, ptr noundef %5) #5
  %i.as = load double, ptr %i.ao, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  %i.av = zext nneg i32 %i.a to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14
  %i.ay = fadd double %i.as, %i.ax
  store double %i.ay, ptr %i.aw, align 8, !tbaa !14
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %.preheader, %bb.d
  %.395 = add nuw nsw i32 %i.h, 1
  %i.az = icmp slt i32 %.395, %2
  br i1 %i.az, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %._crit_edge94
  %i.ba = zext nneg i32 %i.a to i64
  %narrow = add nuw nsw i32 %i.h, 1
  %i.bb = zext nneg i32 %narrow to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph98, %bb.e
  %indvars.iv111 = phi i64 [ %i.bb, %.lr.ph98 ], [ %indvars.iv.next112, %bb.e ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv111 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv111
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef %i.bd, ptr noundef %i.bf, double noundef 1.000000e+00, ptr noundef %5, ptr noundef %5) #5
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv111
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ba ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !14
  %i.bl = fadd double %i.bg, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !14
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv.next112 to i32
  %i.bn = icmp sgt i32 %2, %i.bm
  br i1 %i.bn, label %bb.e, label %._crit_edge99, !llvm.loop !21

._crit_edge99:                                    ; preds = %bb.e, %._crit_edge94
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bo, double noundef -1.000000e+00, ptr noundef %5, ptr noundef %i.bo) #5
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.bq = tail call double @N_VDotProd(ptr noundef %i.bp, ptr noundef %i.bp) #5
  %i.br = tail call double @SUNRsqrt(double noundef %i.bq) #5
  store double %i.br, ptr %4, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge99, %._crit_edge
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @QRfact(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %.preheader145, label %bb.g

.preheader145:                                    ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader145
  %wide.trip.count163 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv160 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next161, %bb.f ] ; 10 uses
  %indvars.iv156 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next157, %bb.f ] ; 2 uses
  %.0151 = phi i32 [ 0, %.preheader.preheader ], [ %spec.select, %bb.f ]
  %i.b = icmp samesign ugt i64 %indvars.iv160, 1
  br i1 %i.b, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %.preheader
  %wide.trip.count158 = zext i32 %indvars.iv156 to i64
  %.pre166 = load ptr, ptr %1, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert167 = getelementptr inbounds nuw [8 x i8], ptr %.pre166, i64 %indvars.iv160
  %.pre168 = load double, ptr %.phi.trans.insert167, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph148, %bb.b
  %i.c = phi double [ %.pre168, %.lr.ph148 ], [ %i.u, %bb.b ]
  %i.d = phi ptr [ %.pre166, %.lr.ph148 ], [ %i.g, %bb.b ]
  %indvars.iv153 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next154, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv160
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next154
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv160 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %.idx172 = shl nuw nsw i64 %indvars.iv153, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx172
  %i.k = fneg double %i.i
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fmul <2 x double> %i.l, %i.n
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.r, <2 x double> %i.p) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.e, align 8, !tbaa !14
  %i.u = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  store double %i.u, ptr %i.h, align 8, !tbaa !14
  %exitcond159.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge149, label %bb.b, !llvm.loop !22

._crit_edge149:                                   ; preds = %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv160 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv160
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 4 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next161
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv160
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14 ; 5 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge149
  %i.ae = tail call double @SUNRabs(double noundef %i.ac) #5
  %i.af = tail call double @SUNRabs(double noundef %i.y) #5
  %i.ag = fcmp ult double %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.d

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
  store double %.0138, ptr %i.at, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.0136, ptr %i.au, align 8, !tbaa !14
  %i.av = fneg double %i.ac
  %i.aw = fmul double %.0136, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %.0138, double %i.y, double %i.aw) ; 2 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv160
  store double %i.ax, ptr %i.az, align 8, !tbaa !14
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
  %.pre = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.be
  %.pre165 = load double, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.bf = phi double [ %.pre165, %.lr.ph ], [ %i.bx, %bb.h ]
  %i.bg = phi ptr [ %.pre, %.lr.ph ], [ %i.bj, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.be ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bn = fneg double %i.bl
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bn, i64 1
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bu, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  store double %i.bw, ptr %i.bh, align 8, !tbaa !14
  %i.bx = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  store double %i.bx, ptr %i.bk, align 8, !tbaa !14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre169, %.._crit_edge_crit_edge ], [ %i.be, %bb.h ] ; 4 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.pre-phi
end_hunk_0
