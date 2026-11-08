Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mri_tables?download=true
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@MRIStepCoupling_LoadTable:bb.a
  store double f0xC064000000000001, ptr %i.aqn, align 8, !tbaa !23
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aoz, i64 24
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !25 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 56
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !26 ; 3 uses
  store double f0xC038000000000010, ptr %i.aqr, align 8, !tbaa !23
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 32
  store <2 x double> <double f0x4047FFFFFFFFFFFF, double -2.160000e+02>, ptr %i.aqs, align 8, !tbaa !23
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 48
  store double f0x4068000000000002, ptr %i.aqt, align 8, !tbaa !23
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqp, i64 64
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !26 ; 2 uses
  store double f0xC038000000000010, ptr %i.aqv, align 8, !tbaa !23
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 32
  store double f0x4047FFFFFFFFFFFF, ptr %i.aqw, align 8, !tbaa !23
  %i.aqx = load ptr, ptr %i.amw, align 8, !tbaa !24
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 24
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !25 ; 4 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 64
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !26
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 40
  store <2 x double> <double -2.160000e+02, double f0x4068000000000002>, ptr %i.arc, align 8, !tbaa !23
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqz, i64 72
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !26 ; 3 uses
  store double f0xC038000000000010, ptr %i.are, align 8, !tbaa !23
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 32
  store <2 x double> <double f0x4047FFFFFFFFFFFF, double -2.160000e+02>, ptr %i.arf, align 8, !tbaa !23
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 48
  store double f0x4068000000000002, ptr %i.arg, align 8, !tbaa !23
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqz, i64 80
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !26 ; 3 uses
  store double f0xC011249249249240, ptr %i.ari, align 8, !tbaa !23
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 56
  store <2 x double> <double f0x406AC92492492496, double f0x404E000000000003>, ptr %i.arj, align 8, !tbaa !23
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ari, i64 72
  store double f0xC070E00000000002, ptr %i.ark, align 8, !tbaa !23
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqz, i64 88
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !26 ; 3 uses
  store double f0xC038000000000010, ptr %i.arm, align 8, !tbaa !23
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 32
  store <2 x double> <double f0x4047FFFFFFFFFFFF, double -2.160000e+02>, ptr %i.arn, align 8, !tbaa !23
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arm, i64 48
  store double f0x4068000000000002, ptr %i.aro, align 8, !tbaa !23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 48, ptr noundef nonnull @__func__.MRIStepCoupling_LoadTable, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.ad ], [ %i.alx, %bb.ac ], [ %i.e, %bb.b ], [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ %i.t, %bb.e ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.ay, %bb.h ], [ %i.bz, %bb.i ], [ %i.ds, %bb.j ], [ %i.ey, %bb.k ], [ %i.ez, %bb.l ], [ %i.fr, %bb.m ], [ %i.hb, %bb.n ], [ %i.lb, %bb.o ], [ %i.mn, %bb.p ], [ %i.oe, %bb.q ], [ %i.ox, %bb.r ], [ %i.pu, %bb.s ], [ %i.qu, %bb.t ], [ %i.st, %bb.u ], [ %i.uy, %bb.v ], [ %i.aah, %bb.w ], [ %i.abp, %bb.x ], [ %i.adr, %bb.y ], [ %i.agv, %bb.z ], [ %i.ahv, %bb.aa ], [ %i.ajf, %bb.ab ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ARKodeButcherTable_LoadERK(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @MRIStepCoupling_MIStoMRI(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !23
  %i.h = tail call double @llvm.fabs.f64(double %i.g) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !62   ; 14 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 3 uses
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp ult i32 %i.j, 4
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %.0129177 = phi double [ %i.h, %.lr.ph.new ], [ %i.ah, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !23
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fadd double %.0129177, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !23
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %i.s, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load double, ptr %i.z, align 8, !tbaa !23
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !23
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fadd double %i.ac, %i.ag                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0129177.epil.init = phi double [ %i.h, %.lr.ph ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod419 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod419)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.0129177.epil = phi double [ %.0129177.epil.init, %.epil.preheader ], [ %i.al, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !23
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %.0129177.epil, %i.ak       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !43

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %bb.d
  %.0129.lcssa = phi double [ %i.h, %bb.d ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.al, %bb.f ]
  %i.am = fcmp ogt double %.0129.lcssa, f0x3D19000000000000
  br i1 %i.am, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.an = sext i32 %i.j to i64                    ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.f, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !23 ; 3 uses
  %i.ar = fcmp ogt double %i.aq, f0x3FF0000000000064
  br i1 %i.ar, label %.loopexit, label %.preheader172

.preheader172:                                    ; preds = %bb.g
  %i.as = icmp sgt i32 %i.j, 1
  br i1 %i.as, label %.lr.ph180.preheader, label %.preheader171

.lr.ph180.preheader:                              ; preds = %.preheader172
  %wide.trip.count230 = zext nneg i32 %i.j to i64
  br label %.lr.ph180

bb.h:                                             ; preds = %.lr.ph180
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.preheader171, label %.lr.ph180

.preheader171:                                    ; preds = %bb.h, %.preheader172
  br i1 %i.k, label %.lr.ph188, label %.thread301

.thread301:                                       ; preds = %.preheader171
  %i.at = fadd double %i.aq, -1.000000e+00
  %i.au = tail call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp ule double %i.au, f0x3D19000000000000
  br label %._crit_edge195

.lr.ph188:                                        ; preds = %.preheader171
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count242 = zext nneg i32 %i.j to i64 ; 6 uses
  %i.ax = add nsw i64 %wide.trip.count242, -2
  br label %bb.i

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.h
  %indvars.iv227 = phi i64 [ 1, %.lr.ph180.preheader ], [ %indvars.iv.next228, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv227 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr i8, ptr %i.ay, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !23
  %i.bc = fsub double %i.az, %i.bb
  %i.bd = fcmp olt double %i.bc, f0xBD19000000000000
  br i1 %i.bd, label %.loopexit, label %bb.h

.loopexit170:                                     ; preds = %.prol.loopexit, %.lr.ph184.new, %bb.i
  %.2131.lcssa = phi double [ %.1130187, %bb.i ], [ %.lcssa415.unr, %.prol.loopexit ], [ %i.ci, %.lr.ph184.new ] ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge189, label %bb.i

bb.i:                                             ; preds = %.lr.ph188, %.loopexit170
  %indvars.iv232.a = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next240, %.loopexit170 ] ; 4 uses
  %.1130187 = phi double [ 0.000000e+00, %.lr.ph188 ], [ %.2131.lcssa, %.loopexit170 ] ; 3 uses
  %i.be = sub i64 %i.ax, %indvars.iv232.a
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv232.a, 1 ; 5 uses
  %i.bf = icmp slt i64 %indvars.iv.next240, %i.an
  br i1 %i.bf, label %.lr.ph184, label %.loopexit170

.lr.ph184:                                        ; preds = %bb.i
  %i.bg = xor i64 %indvars.iv232.a, -1
  %i.bh = add nsw i64 %i.bg, %wide.trip.count242
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv232.a
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26 ; 5 uses
  %xtraiter420.a = and i64 %i.bh, 3               ; 2 uses
  %lcmp.mod421.not.a = icmp eq i64 %xtraiter420.a, 0
  br i1 %lcmp.mod421.not.a, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph184, %.prol.preheader
  %indvars.iv234.prol = phi i64 [ %indvars.iv.next235.prol, %.prol.preheader ], [ %indvars.iv.next240, %.lr.ph184 ] ; 2 uses
  %.2131182.prol = phi double [ %i.bo, %.prol.preheader ], [ %.1130187, %.lr.ph184 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph184 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234.prol
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !23
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fadd double %.2131182.prol, %i.bn       ; 3 uses
  %indvars.iv.next235.prol = add nuw nsw i64 %indvars.iv234.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter420.a
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !44

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph184
  %.lcssa415.unr = phi double [ poison, %.lr.ph184 ], [ %i.bo, %.prol.preheader ]
  %indvars.iv234.unr = phi i64 [ %indvars.iv.next240, %.lr.ph184 ], [ %indvars.iv.next235.prol, %.prol.preheader ]
  %.2131182.unr = phi double [ %.1130187, %.lr.ph184 ], [ %i.bo, %.prol.preheader ]
  %i.bp = icmp ult i64 %i.be, 3
  br i1 %i.bp, label %.loopexit170, label %.lr.ph184.new

.lr.ph184.new:                                    ; preds = %.prol.loopexit, %.lr.ph184.new
  %indvars.iv234 = phi i64 [ %indvars.iv.next235.3, %.lr.ph184.new ], [ %indvars.iv234.unr, %.prol.loopexit ] ; 5 uses
  %.2131182 = phi double [ %i.ci, %.lr.ph184.new ], [ %.2131182.unr, %.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.br = load double, ptr %i.bq, align 8, !tbaa !23
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fadd double %.2131182, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !23
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = fadd double %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !23
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fadd double %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv234
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !23
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fadd double %i.cd, %i.ch                ; 2 uses
  %indvars.iv.next235.3 = add nuw nsw i64 %indvars.iv234, 4 ; 2 uses
  %exitcond238.not.3 = icmp eq i64 %indvars.iv.next235.3, %wide.trip.count242
  br i1 %exitcond238.not.3, label %.loopexit170, label %.lr.ph184.new

._crit_edge189:                                   ; preds = %.loopexit170
  %i.cj = fcmp ogt double %.2131.lcssa, f0x3D19000000000000
  br i1 %i.cj, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %._crit_edge189
  %i.ck = fadd double %i.aq, -1.000000e+00
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, f0x3D19000000000000
  %spec.select = zext i1 %i.cm to i32             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %i.an
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count247 = zext nneg i32 %i.j to i64
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph194
  %n.vec = and i64 %wide.trip.count242, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi307 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x double>, ptr %i.cu, align 8, !tbaa !23
  %wide.load308.a = load <2 x double>, ptr %i.cv, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load309 = load <2 x double>, ptr %i.cw, align 8, !tbaa !23
  %wide.load310 = load <2 x double>, ptr %i.cx, align 8, !tbaa !23
  %i.cy = fsub <2 x double> %wide.load, %wide.load309
  %i.cz = fsub <2 x double> %wide.load308.a, %wide.load310
  %i.da = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cy)
  %i.db = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cz)
  %i.dc = fcmp ogt <2 x double> %i.da, splat (double f0x3D19000000000000)
  %i.dd = fcmp ogt <2 x double> %i.db, splat (double f0x3D19000000000000)
  %i.de = or <2 x i1> %vec.phi, %i.dc             ; 2 uses
  %i.df = or <2 x i1> %vec.phi307, %i.dd          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.df, %i.de
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.dh = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not405 = icmp eq i2 %i.dh, 0
  %rdx.select = select i1 %.not405, i32 %spec.select, i32 1 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count242
  br i1 %cmp.n, label %._crit_edge195.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph194, %middle.block
  %indvars.iv244.ph = phi i64 [ 0, %.lr.ph194 ], [ %n.vec, %middle.block ]
  %.1133192.ph = phi i32 [ %spec.select, %.lr.ph194 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %scalar.ph ], [ %indvars.iv244.ph, %scalar.ph.preheader ] ; 3 uses
  %.1133192 = phi i32 [ %spec.select157, %scalar.ph ], [ %.1133192.ph, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv244
  %i.dj = load double, ptr %i.di, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv244
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !23
  %i.dm = fsub double %i.dj, %i.dl
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp ogt double %i.dn, f0x3D19000000000000
  %spec.select157 = select i1 %i.do, i32 1, i32 %.1133192 ; 2 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge195.loopexit, label %scalar.ph, !llvm.loop !46

._crit_edge195.loopexit:                          ; preds = %scalar.ph, %middle.block
  %spec.select157.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select157, %scalar.ph ]
  %i.dp = icmp eq i32 %spec.select157.lcssa, 0
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.thread301
  %.1133.lcssa = phi i1 [ %i.av, %.thread301 ], [ %i.dp, %._crit_edge195.loopexit ] ; 2 uses
  br i1 %i.a, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge195
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.ds = add nsw i32 %i.j, -1
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dt
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !23
  %i.dy = tail call double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ule double %i.dy, f0x3D19000000000000
  %or.cond = select i1 %i.dz, i1 %.1133.lcssa, i1 false
  br i1 %or.cond, label %bb.l, label %.thread

bb.k:                                             ; preds = %._crit_edge195
  br i1 %.1133.lcssa, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.ea = add nsw i32 %i.j, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread
  %.not155162 = phi i1 [ false, %.thread ], [ true, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.eb = phi i32 [ %i.ea, %.thread ], [ %i.j, %bb.k ], [ %i.j, %bb.j ] ; 7 uses
  br i1 %i.k, label %.preheader169.lr.ph, label %._crit_edge201

.preheader169.lr.ph:                              ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %wide.trip.count257 = zext nneg i32 %i.j to i64 ; 3 uses
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %.loopexit404
  %indvars.iv249 = phi i64 [ 0, %.preheader169.lr.ph ], [ %indvars.iv.next250, %.loopexit404 ] ; 6 uses
  %.0200 = phi i32 [ 0, %.preheader169.lr.ph ], [ %spec.select159.lcssa, %.loopexit404 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv249
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !26 ; 2 uses
  %i.eg = sub nsw i64 %wide.trip.count257, %indvars.iv249 ; 3 uses
  %min.iters.check312 = icmp ult i64 %i.eg, 4
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.preheader169
  %n.vec314 = and i64 %i.eg, -4                   ; 3 uses
  %i.eh = add i64 %indvars.iv249, %n.vec314
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv249
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next321, %vector.body315 ] ; 2 uses
  %vec.phi317 = phi <2 x i1> [ zeroinitializer, %vector.ph313 ], [ %i.ep, %vector.body315 ]
  %vec.phi318 = phi <2 x i1> [ zeroinitializer, %vector.ph313 ], [ %i.eq, %vector.body315 ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index316 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load319 = load <2 x double>, ptr %i.ej, align 8, !tbaa !23
  %wide.load320 = load <2 x double>, ptr %i.ek, align 8, !tbaa !23
  %i.el = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load319)
  %i.em = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load320)
  %i.en = fcmp ogt <2 x double> %i.el, splat (double f0x3D19000000000000)
  %i.eo = fcmp ogt <2 x double> %i.em, splat (double f0x3D19000000000000)
  %i.ep = or <2 x i1> %vec.phi317, %i.en          ; 2 uses
  %i.eq = or <2 x i1> %vec.phi318, %i.eo          ; 2 uses
  %index.next321 = add nuw i64 %index316, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next321, %n.vec314
  br i1 %i.er, label %middle.block322, label %vector.body315, !llvm.loop !47

middle.block322:                                  ; preds = %vector.body315
  %bin.rdx323 = or <2 x i1> %i.eq, %i.ep
  %bin.rdx323.fr = freeze <2 x i1> %bin.rdx323
  %i.es = bitcast <2 x i1> %bin.rdx323.fr to i2
  %.not406 = icmp eq i2 %i.es, 0
  %rdx.select324 = select i1 %.not406, i32 %.0200, i32 1 ; 2 uses
  %cmp.n325 = icmp eq i64 %i.eg, %n.vec314
  br i1 %cmp.n325, label %.loopexit404, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %.preheader169, %middle.block322
  %indvars.iv251.ph = phi i64 [ %indvars.iv249, %.preheader169 ], [ %i.eh, %middle.block322 ]
  %.1198.ph = phi i32 [ %.0200, %.preheader169 ], [ %rdx.select324, %middle.block322 ]
  br label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.preheader, %scalar.ph311
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %scalar.ph311 ], [ %indvars.iv251.ph, %scalar.ph311.preheader ] ; 2 uses
  %.1198 = phi i32 [ %spec.select159, %scalar.ph311 ], [ %.1198.ph, %scalar.ph311.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv251
  %i.eu = load double, ptr %i.et, align 8, !tbaa !23
end_hunk_0
