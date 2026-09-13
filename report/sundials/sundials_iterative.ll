Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_iterative?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SUNClassicalGS:bb.a
  %i.ai = tail call double @N_VDotProd(ptr noundef %i.ah, ptr noundef %i.ah) #7
  %i.aj = fcmp ugt double %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.al = tail call double @N_VDotProd(ptr noundef %i.ak, ptr noundef %i.ak) #7
  %i.am = tail call double @sqrt(double noundef %i.al) #7
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.an = phi double [ %i.am, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  store double %i.an, ptr %4, align 8, !tbaa !14
  %i.ao = fmul double %i.an, 1.000000e+03
  %i.ap = fcmp olt double %i.ao, %i.q
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = tail call i32 @N_VDotProdMulti(i32 noundef %i.d, ptr noundef %i.aq, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ar) #7 ; 0 uses
  store double 1.000000e+00, ptr %5, align 8, !tbaa !14
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !10
  %i.au = icmp slt i32 %i.c, %2
  br i1 %i.au, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %bb.g
  %i.av = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph108, %bb.h
  %indvars.iv111 = phi i64 [ %i.i, %.lr.ph108 ], [ %indvars.iv.next112, %bb.h ] ; 3 uses
  %i.aw = sub nuw nsw i64 %indvars.iv111, %i.i    ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ax ; 3 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv111
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.av ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14
  %i.be = fadd double %i.az, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !14
  %i.bf = load double, ptr %i.ay, align 8, !tbaa !14
  %i.bg = fneg double %i.bf
  store double %i.bg, ptr %i.ay, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ax
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !10
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge109.loopexit, label %bb.h

._crit_edge109.loopexit:                          ; preds = %bb.h
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %bb.g
  %i.bk = phi ptr [ %.pre, %._crit_edge109.loopexit ], [ %i.at, %bb.g ]
  %i.bl = add nsw i32 %2, 1
  %i.bm = tail call i32 @N_VLinearCombination(i32 noundef %i.bl, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %i.bk) #7 ; 0 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.bo = tail call double @N_VDotProd(ptr noundef %i.bn, ptr noundef %i.bn) #7
  %i.bp = fcmp ugt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge109
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !10  ; 2 uses
  %i.br = tail call double @N_VDotProd(ptr noundef %i.bq, ptr noundef %i.bq) #7
  %i.bs = tail call double @sqrt(double noundef %i.br) #7
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge109, %bb.i
  %i.bt = phi double [ %i.bs, %bb.i ], [ 0.000000e+00, %._crit_edge109 ]
  store double %i.bt, ptr %4, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  ret i32 0
}

declare i32 @N_VDotProdMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SUNQRfact(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %.preheader156, label %bb.g

.preheader156:                                    ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader156
  %wide.trip.count174 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv171 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next172, %bb.f ] ; 9 uses
  %indvars.iv167 = phi i32 [ -1, %.preheader.preheader ], [ %indvars.iv.next168, %bb.f ] ; 2 uses
  %.0162 = phi i32 [ 0, %.preheader.preheader ], [ %spec.select, %bb.f ]
  %i.b = icmp samesign ugt i64 %indvars.iv171, 1
  br i1 %i.b, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %.preheader
  %wide.trip.count169 = zext i32 %indvars.iv167 to i64
  %.pre177 = load ptr, ptr %1, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert178 = getelementptr inbounds nuw [8 x i8], ptr %.pre177, i64 %indvars.iv171
  %.pre179 = load double, ptr %.phi.trans.insert178, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph159, %bb.b
  %i.c = phi double [ %.pre179, %.lr.ph159 ], [ %i.u, %bb.b ]
  %i.d = phi ptr [ %.pre177, %.lr.ph159 ], [ %i.g, %bb.b ]
  %indvars.iv164 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next165, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv171
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next165
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv171 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %.idx183.a = shl nuw nsw i64 %indvars.iv164, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx183.a
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
  %exitcond170.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge160, label %bb.b

._crit_edge160:                                   ; preds = %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv171
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv171 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 4 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next172
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv171
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14 ; 5 uses
  %i.ad = fcmp oeq double %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge160
  %i.ae = tail call double @llvm.fabs.f64(double %i.ac)
  %i.af = tail call double @llvm.fabs.f64(double %i.y)
  %i.ag = fcmp ult double %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = fdiv double %i.y, %i.ac                 ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fdiv double -1.000000e+00, %sqrt        ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = fmul double %i.ah, %i.ak
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.am = fdiv double %i.ac, %i.y                 ; 3 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double 1.000000e+00)
  %sqrt153 = tail call double @llvm.sqrt.f64(double %i.an)
  %i.ao = fdiv double 1.000000e+00, %sqrt153      ; 2 uses
  %i.ap = fneg double %i.ao
  %i.aq = fmul double %i.am, %i.ap
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge160, %bb.d, %bb.e
  %.0146 = phi double [ %i.ao, %bb.e ], [ %i.al, %bb.d ], [ 1.000000e+00, %._crit_edge160 ] ; 2 uses
  %.0144 = phi double [ %i.aq, %bb.e ], [ %i.aj, %bb.d ], [ 0.000000e+00, %._crit_edge160 ] ; 2 uses
  %.idx184 = shl nuw nsw i64 %indvars.iv171, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.idx184 ; 2 uses
  store double %.0146, ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %.0144, ptr %i.as, align 8, !tbaa !14
  %i.at = fneg double %i.ac
  %i.au = fmul double %.0144, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %.0146, double %i.y, double %i.au) ; 2 uses
  store double %i.av, ptr %i.x, align 8, !tbaa !14
  %i.aw = fcmp oeq double %i.av, 0.000000e+00
  %i.ax = trunc nuw nsw i64 %indvars.iv.next172 to i32
  %spec.select = select i1 %i.aw, i32 %i.ax, i32 %.0162 ; 2 uses
  %indvars.iv.next168 = add nsw i32 %indvars.iv167, 1
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.a
  %i.ay = add i32 %0, -1                          ; 3 uses
  %i.az = icmp sgt i32 %0, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %i.ay to i64   ; 4 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %wide.trip.count
  %.pre176 = load double, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.ba = phi double [ %.pre176, %.lr.ph ], [ %i.bs, %bb.h ]
  %i.bb = phi ptr [ %.pre, %.lr.ph ], [ %i.be, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %wide.trip.count
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %wide.trip.count ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.bi = fneg double %i.bg
  %i.bj = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bi, i64 1
  %i.bm = fmul <2 x double> %i.bj, %i.bl
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bp, <2 x double> %i.bn) ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  store double %i.br, ptr %i.bc, align 8, !tbaa !14
  %i.bs = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  store double %i.bs, ptr %i.bf, align 8, !tbaa !14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %4 = sext i32 %i.ay to i64                      ; 3 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %4
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %4 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !14 ; 4 uses
  %i.bx = sext i32 %0 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !12
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %4
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !14 ; 5 uses
  %i.cc = fcmp oeq double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cd = tail call double @llvm.fabs.f64(double %i.cb)
  %i.ce = tail call double @llvm.fabs.f64(double %i.bw)
  %i.cf = fcmp ult double %i.cd, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = fdiv double %i.bw, %i.cb                ; 3 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double 1.000000e+00)
  %sqrt154 = tail call double @llvm.sqrt.f64(double %i.ch)
  %i.ci = fdiv double -1.000000e+00, %sqrt154     ; 2 uses
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %i.cg, %i.cj
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cl = fdiv double %i.cb, %i.bw                ; 3 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double 1.000000e+00)
  %sqrt155 = tail call double @llvm.sqrt.f64(double %i.cm)
  %i.cn = fdiv double 1.000000e+00, %sqrt155      ; 2 uses
  %i.co = fneg double %i.cn
  %i.cp = fmul double %i.cl, %i.co
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.k
  %.1147 = phi double [ %i.cn, %bb.k ], [ %i.ck, %bb.j ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %.1145 = phi double [ %i.cp, %bb.k ], [ %i.ci, %bb.j ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.cq = shl nsw i32 %i.ay, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cr ; 2 uses
  store double %.1147, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  store double %.1145, ptr %i.ct, align 8, !tbaa !14
  %i.cu = fneg double %i.cb
  %i.cv = fmul double %.1145, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %.1147, double %i.bw, double %i.cv) ; 2 uses
  store double %i.cw, ptr %i.bv, align 8, !tbaa !14
  %i.cx = fcmp oeq double %i.cw, 0.000000e+00
  %spec.select152 = select i1 %i.cx, i32 %0, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader156, %bb.l
  %.2 = phi i32 [ %spec.select152, %bb.l ], [ 0, %.preheader156 ], [ %spec.select, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @SUNQRsol(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre = load double, ptr %3, align 8, !tbaa !14
  br label %.lr.ph

.lr.ph56.preheader:                               ; preds = %.lr.ph
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %indvars.iv.next7080 = add nsw i64 %i.b, -1     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next7080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next7080
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph56.preheader
  %i.h = add nsw i32 %0, -1
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
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
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fneg double %i.o
  %i.q = load <2 x double>, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.w, <2 x double> %i.u) ; 2 uses
  store <2 x double> %i.x, ptr %i.m, align 8, !tbaa !14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %i.y = extractelement <2 x double> %i.x, i64 1
  br i1 %exitcond.not, label %.lr.ph56.preheader, label %.lr.ph

.loopexit.unr-lcssa:                              ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %.loopexit.unr-lcssa, %.lr.ph52.preheader
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next61.1, %.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod86 = trunc i64 %indvars.iv6782 to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.z = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.epil.init
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next7083
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60.epil.init ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = fneg double %i.z
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ad, double %i.af)
  store double %i.ah, ptr %i.ae, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.unr-lcssa, %.lr.ph52.epil.preheader
  %indvars.iv.next68 = add nsw i64 %indvars.iv6782, -1
  %indvars.iv.next70 = add nsw i64 %indvars.iv.next7083, -1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next70
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph84 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.an = phi double [ %i.f, %.lr.ph84 ], [ %i.al, %.loopexit ]
  %indvars.iv.next7083 = phi i64 [ %indvars.iv.next7080, %.lr.ph84 ], [ %indvars.iv.next70, %.loopexit ] ; 7 uses
  %indvars.iv6782 = phi i64 [ %i.i, %.lr.ph84 ], [ %indvars.iv.next68, %.loopexit ] ; 4 uses
  %indvars.iv6981 = phi i64 [ %i.b, %.lr.ph84 ], [ %indvars.iv.next7083, %.loopexit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next7083 ; 5 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = fdiv double %i.ap, %i.an
  store double %i.aq, ptr %i.ao, align 8, !tbaa !14
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
  %i.at = load double, ptr %i.ao, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next7083
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv60 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !14
  %i.ba = fneg double %i.at
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.az)
  store double %i.bb, ptr %i.ay, align 8, !tbaa !14
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.bc = load double, ptr %i.ao, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next7083
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next61 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = fneg double %i.bc
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bg, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !14
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.unr-lcssa, label %.lr.ph52

.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge: ; preds = %.loopexit
  %i.bl = trunc nuw nsw i64 %indvars.iv.next7083 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph56.preheader, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %0, %.lr.ph56.preheader ], [ %i.bl, %.lr.ph56.._crit_edge.loopexit.split.loop.exit77_crit_edge ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_MGS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.a) #7
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = mul nsw i32 %4, %3
  %i.e = sext i32 %i.d to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = load ptr, ptr %5, align 8, !tbaa !16
  %i.i = tail call double @N_VDotProd(ptr noundef %i.g, ptr noundef %i.h) #7 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.048
  store double %i.i, ptr %gep, align 8, !tbaa !14
  %i.j = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.k = fneg double %i.i
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !10
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.j, double noundef %i.k, ptr noundef %i.l, ptr noundef %i.j) #7
  %i.m = add nuw nsw i64 %.048, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.o = tail call double @N_VDotProd(ptr noundef %i.n, ptr noundef %i.n) #7 ; 2 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = tail call double @sqrt(double noundef %i.o) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.r = phi double [ %i.q, %bb.c ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.s = add i32 %4, 1
  %i.t = mul i32 %i.s, %3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u
  store double %i.r, ptr %i.v, align 8, !tbaa !14
  %i.w = fdiv double 1.000000e+00, %i.r
  %i.x = load ptr, ptr %5, align 8, !tbaa !16
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  tail call void @N_VScale(double noundef %i.w, ptr noundef %i.x, ptr noundef %i.z) #7
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @SUNQRAdd_ICWY(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !16
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.a) #7
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %3, -1                       ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = mul nsw i32 %i.c, %4                     ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.l = tail call i32 @N_VDotProdMulti(i32 noundef %3, ptr noundef %i.f, ptr noundef %0, ptr noundef %i.k) #7 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.n = add nsw i32 %i.i, %i.c
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !14
  %i.q = load ptr, ptr %5, align 8, !tbaa !16
end_hunk_0
