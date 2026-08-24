Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ClassicalGS:bb.a
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
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.al = tail call double @N_VDotProd(ptr noundef %i.aj, ptr noundef %i.ak) #5
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv106
  store double %i.al, ptr %i.am, align 8, !tbaa !13
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %bb.d, label %.lr.ph93, !llvm.loop !20

bb.d:                                             ; preds = %.lr.ph93
  %i.an = zext nneg i32 %i.h to i64               ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.an ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !8
  tail call void @N_VScale(double noundef %i.ap, ptr noundef %i.ar, ptr noundef %5) #5
  %i.as = load double, ptr %i.ao, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.av = zext nneg i32 %i.a to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = fadd double %i.as, %i.ax
  store double %i.ay, ptr %i.aw, align 8, !tbaa !13
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %.preheader, %bb.d
  %.395 = add nuw nsw i32 %i.h, 1
  %i.az = icmp slt i32 %.395, %2
  br i1 %i.az, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %._crit_edge94
  %i.ba = zext nneg i32 %i.a to i64
  %narrow = add nuw i32 %i.h, 1
  %i.bb = zext i32 %narrow to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph98, %bb.e
  %indvars.iv111 = phi i64 [ %i.bb, %.lr.ph98 ], [ %indvars.iv.next112, %bb.e ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv111 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv111
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8
  tail call void @N_VLinearSum(double noundef %i.bd, ptr noundef %i.bf, double noundef 1.000000e+00, ptr noundef %5, ptr noundef %5) #5
  %i.bg = load double, ptr %i.bc, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv111
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ba ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13
  %i.bl = fadd double %i.bg, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !13
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv.next112 to i32
  %i.bn = icmp sgt i32 %2, %i.bm
  br i1 %i.bn, label %bb.e, label %._crit_edge99, !llvm.loop !21

._crit_edge99:                                    ; preds = %bb.e, %._crit_edge94
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.bo, double noundef -1.000000e+00, ptr noundef %5, ptr noundef %i.bo) #5
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.bq = tail call double @N_VDotProd(ptr noundef %i.bp, ptr noundef %i.bp) #5
  %i.br = tail call double @SUNRsqrt(double noundef %i.bq) #5
  store double %i.br, ptr %4, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge99, %._crit_edge
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @QRfact(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %.preheader144, label %bb.g

.preheader144:                                    ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader144
  %wide.trip.count162 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv159 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next160, %bb.f ] ; 10 uses
  %indvars.iv155 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next156, %bb.f ] ; 2 uses
  %.0150 = phi i32 [ 0, %.preheader.preheader ], [ %.1, %bb.f ]
  %i.b = icmp samesign ugt i64 %indvars.iv159, 1
  br i1 %i.b, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %.preheader
  %wide.trip.count157 = zext i32 %indvars.iv155 to i64
  %.pre165 = load ptr, ptr %1, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert166 = getelementptr inbounds nuw [8 x i8], ptr %.pre165, i64 %indvars.iv159
  %.pre167 = load double, ptr %.phi.trans.insert166, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph147, %bb.b
  %i.c = phi double [ %.pre167, %.lr.ph147 ], [ %i.u, %bb.b ]
  %i.d = phi ptr [ %.pre165, %.lr.ph147 ], [ %i.g, %bb.b ]
  %indvars.iv152 = phi i64 [ 0, %.lr.ph147 ], [ %indvars.iv.next153, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv159
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next153
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv159 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %.idx171.a = shl nuw nsw i64 %indvars.iv152, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx171.a
  %i.k = fneg double %i.i
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = fmul <2 x double> %i.l, %i.n
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = insertelement <2 x double> poison, double %i.c, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.r, <2 x double> %i.p) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  store double %i.t, ptr %i.e, align 8, !tbaa !13
  %i.u = extractelement <2 x double> %i.s, i64 1  ; 2 uses
  store double %i.u, ptr %i.h, align 8, !tbaa !13
  %exitcond158.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge148, label %bb.b, !llvm.loop !22

._crit_edge148:                                   ; preds = %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv159 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv159
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 4 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv159
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 5 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge148
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

bb.f:                                             ; preds = %._crit_edge148, %bb.d, %bb.e
  %.0138 = phi double [ %i.aq, %bb.e ], [ %i.am, %bb.d ], [ 1.000000e+00, %._crit_edge148 ] ; 2 uses
  %.0136 = phi double [ %i.as, %bb.e ], [ %i.ak, %bb.d ], [ 0.000000e+00, %._crit_edge148 ] ; 2 uses
  %.idx172 = shl nuw nsw i64 %indvars.iv159, 4
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %.idx172 ; 2 uses
  store double %.0138, ptr %i.at, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %.0136, ptr %i.au, align 8, !tbaa !13
  %i.av = fneg double %i.ac
  %i.aw = fmul double %.0136, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %.0138, double %i.y, double %i.aw) ; 2 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv159
  store double %i.ax, ptr %i.az, align 8, !tbaa !13
  %i.ba = fcmp oeq double %i.ax, 0.000000e+00
  %i.bb = trunc nuw nsw i64 %indvars.iv.next160 to i32
  %.1 = select i1 %i.ba, i32 %i.bb, i32 %.0150    ; 2 uses
  %indvars.iv.next156 = add nsw i32 %indvars.iv155, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit, label %.preheader, !llvm.loop !23

bb.g:                                             ; preds = %bb.a
  %i.bc = add i32 %0, -1                          ; 4 uses
  %i.bd = icmp sgt i32 %0, 1
  br i1 %i.bd, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre168 = sext i32 %i.bc to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %4 = zext nneg i32 %i.bc to i64                 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.bc to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !11    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %4
  %.pre164 = load double, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.be = phi double [ %.pre164, %.lr.ph ], [ %i.bw, %bb.h ]
  %i.bf = phi ptr [ %.pre, %.lr.ph ], [ %i.bi, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %4 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bm = fneg double %i.bk
  %i.bn = load <2 x double>, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bm, i64 1
  %i.bq = fmul <2 x double> %i.bn, %i.bp
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bt, <2 x double> %i.br) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  store double %i.bv, ptr %i.bg, align 8, !tbaa !13
  %i.bw = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  store double %i.bw, ptr %i.bj, align 8, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.h, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre168, %.._crit_edge_crit_edge ], [ %4, %bb.h ] ; 4 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.pre-phi
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13 ; 4 uses
  %i.cb = sext i32 %0 to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.pre-phi
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13 ; 5 uses
  %i.cg = fcmp oeq double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ch = tail call double @SUNRabs(double noundef %i.cf) #5
  %i.ci = tail call double @SUNRabs(double noundef %i.ca) #5
  %i.cj = fcmp ult double %i.ch, %i.ci
  br i1 %i.cj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = fdiv double %i.ca, %i.cf                ; 3 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double 1.000000e+00)
  %i.cm = tail call double @SUNRsqrt(double noundef %i.cl) #5
  %i.cn = fdiv double -1.000000e+00, %i.cm        ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = fmul double %i.ck, %i.co
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cq = fdiv double %i.cf, %i.ca                ; 3 uses
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double 1.000000e+00)
  %i.cs = tail call double @SUNRsqrt(double noundef %i.cr) #5
  %i.ct = fdiv double 1.000000e+00, %i.cs         ; 2 uses
  %i.cu = fneg double %i.ct
  %i.cv = fmul double %i.cq, %i.cu
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.k
  %.1139 = phi double [ %i.ct, %bb.k ], [ %i.cp, %bb.j ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %.1137 = phi double [ %i.cv, %bb.k ], [ %i.cn, %bb.j ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.cw = shl nsw i32 %i.bc, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx ; 2 uses
  store double %.1139, ptr %i.cy, align 8, !tbaa !13
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  store double %.1137, ptr %i.cz, align 8, !tbaa !13
  %i.da = fneg double %i.cf
  %i.db = fmul double %.1137, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %.1139, double %i.ca, double %i.db) ; 2 uses
  %i.dd = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %.pre-phi
  store double %i.dc, ptr %i.de, align 8, !tbaa !13
  %i.df = fcmp oeq double %i.dc, 0.000000e+00
  br i1 %i.df, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader144, %bb.l, %bb.m
  %.2 = phi i32 [ 0, %bb.l ], [ %0, %bb.m ], [ 0, %.preheader144 ], [ %.1, %bb.f ]
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
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

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
  %xtraiter = and i64 %indvars.iv6782, 1
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
end_hunk_0
