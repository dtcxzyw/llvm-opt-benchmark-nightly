Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ludcmp?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@main:bb.a
  %i.is = getelementptr inbounds nuw [16000 x i8], ptr %i.g, i64 %indvars.iv162.i83 ; 5 uses
  %xtraiter207 = and i64 %indvar205, 3            ; 2 uses
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %.prol.loopexit204, label %.prol.preheader203

.prol.preheader203:                               ; preds = %.lr.ph125.i88, %.prol.preheader203
  %indvars.iv164.i89.prol = phi i64 [ %indvars.iv.next165.i91.prol, %.prol.preheader203 ], [ %indvars.iv162.i83, %.lr.ph125.i88 ]
  %.3123.i90.prol = phi double [ %i.iy, %.prol.preheader203 ], [ %i.iq, %.lr.ph125.i88 ]
  %prol.iter209 = phi i64 [ %prol.iter209.next, %.prol.preheader203 ], [ 0, %.lr.ph125.i88 ]
  %indvars.iv.next165.i91.prol = add nuw nsw i64 %indvars.iv164.i89.prol, 1 ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next165.i91.prol
  %i.iu = load double, ptr %i.it, align 8, !tbaa !8
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next165.i91.prol
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !8
  %i.ix = fmul double %i.iu, %i.iw
  %i.iy = fsub double %.3123.i90.prol, %i.ix      ; 3 uses
  %prol.iter209.next = add i64 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i64 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.prol.loopexit204, label %.prol.preheader203, !llvm.loop !37

.prol.loopexit204:                                ; preds = %.prol.preheader203, %.lr.ph125.i88
  %.lcssa155.unr = phi double [ poison, %.lr.ph125.i88 ], [ %i.iy, %.prol.preheader203 ]
  %indvars.iv164.i89.unr = phi i64 [ %indvars.iv162.i83, %.lr.ph125.i88 ], [ %indvars.iv.next165.i91.prol, %.prol.preheader203 ]
  %.3123.i90.unr = phi double [ %i.iq, %.lr.ph125.i88 ], [ %i.iy, %.prol.preheader203 ]
  %i.iz = icmp ult i64 %i.io, 3
  br i1 %i.iz, label %._crit_edge126.i84, label %.lr.ph125.i88.new

.lr.ph125.i88.new:                                ; preds = %.prol.loopexit204, %.lr.ph125.i88.new
  %indvars.iv164.i89 = phi i64 [ %indvars.iv.next165.i91.3, %.lr.ph125.i88.new ], [ %indvars.iv164.i89.unr, %.prol.loopexit204 ] ; 4 uses
  %.3123.i90 = phi double [ %i.jx, %.lr.ph125.i88.new ], [ %.3123.i90.unr, %.prol.loopexit204 ]
  %indvars.iv.next165.i91 = add nuw nsw i64 %indvars.iv164.i89, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next165.i91
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next165.i91
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !8
  %i.je = fmul double %i.jb, %i.jd
  %i.jf = fsub double %.3123.i90, %i.je
  %indvars.iv.next165.i91.1 = add nuw nsw i64 %indvars.iv164.i89, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next165.i91.1
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !8
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next165.i91.1
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !8
  %i.jk = fmul double %i.jh, %i.jj
  %i.jl = fsub double %i.jf, %i.jk
  %indvars.iv.next165.i91.2 = add nuw nsw i64 %indvars.iv164.i89, 3 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next165.i91.2
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next165.i91.2
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !8
  %i.jq = fmul double %i.jn, %i.jp
  %i.jr = fsub double %i.jl, %i.jq
  %indvars.iv.next165.i91.3 = add nuw nsw i64 %indvars.iv164.i89, 4 ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next165.i91.3
  %i.jt = load double, ptr %i.js, align 8, !tbaa !8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next165.i91.3
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !8
  %i.jw = fmul double %i.jt, %i.jv
  %i.jx = fsub double %i.jr, %i.jw                ; 2 uses
  %exitcond167.not.i92.3 = icmp eq i64 %indvars.iv.next165.i91.3, 1999
  br i1 %exitcond167.not.i92.3, label %._crit_edge126.i84, label %.lr.ph125.i88.new, !llvm.loop !38

._crit_edge126.i84:                               ; preds = %.prol.loopexit204, %.lr.ph125.i88.new, %.preheader.i82
  %.3.lcssa.i85 = phi double [ %i.iq, %.preheader.i82 ], [ %.lcssa155.unr, %.prol.loopexit204 ], [ %i.jx, %.lr.ph125.i88.new ]
  %i.jy = getelementptr inbounds nuw [16000 x i8], ptr %i.g, i64 %indvars.iv162.i83
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv162.i83
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !8
  %i.kb = fdiv double %.3.lcssa.i85, %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv162.i83
  store double %i.kb, ptr %i.kc, align 8, !tbaa !8
  %indvars.iv.next163.i86 = add nsw i64 %indvars.iv162.i83, -1
  %.not169.i87 = icmp eq i64 %indvars.iv162.i83, 0
  %indvar.next206 = add i64 %indvar205, 1
  br i1 %.not169.i87, label %kernel_ludcmp_StrictFP.exit, label %.preheader.i82, !llvm.loop !39

kernel_ludcmp_StrictFP.exit:                      ; preds = %._crit_edge126.i84, %.critedge.i.1
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i94.1, %.critedge.i.1 ], [ 0, %._crit_edge126.i84 ] ; 5 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i93
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !8 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i93
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !8 ; 2 uses
  %i.kh = fsub double %i.ke, %i.kg
  %i.ki = call double @llvm.fabs.f64(double %i.kh)
  %i.kj = fcmp ule double %i.ki, 1.000000e-05
  br i1 %i.kj, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %kernel_ludcmp_StrictFP.exit
  %indvars.iv.i93.lcssa = phi i64 [ %indvars.iv.i93, %kernel_ludcmp_StrictFP.exit ], [ %indvars.iv.next.i94, %.critedge.i ]
  %.lcssa152 = phi double [ %i.ke, %kernel_ludcmp_StrictFP.exit ], [ %i.ko, %.critedge.i ]
  %.lcssa = phi double [ %i.kg, %kernel_ludcmp_StrictFP.exit ], [ %i.kq, %.critedge.i ]
  %i.kk = trunc nuw nsw i64 %indvars.iv.i93.lcssa to i32 ; 2 uses
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.km = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kl, ptr noundef nonnull @.str.2, i32 noundef %i.kk, double noundef %.lcssa152, i32 noundef %i.kk, double noundef %.lcssa, double noundef 1.000000e-05) #17 ; 0 uses
  br label %bb.n

.critedge.i:                                      ; preds = %kernel_ludcmp_StrictFP.exit
  %indvars.iv.next.i94 = or disjoint i64 %indvars.iv.i93, 1 ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i94
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !8 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i94
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !8 ; 2 uses
  %i.kr = fsub double %i.ko, %i.kq
  %i.ks = call double @llvm.fabs.f64(double %i.kr)
  %i.kt = fcmp ule double %i.ks, 1.000000e-05
  br i1 %i.kt, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i94.1 = add nuw nsw i64 %indvars.iv.i93, 2 ; 2 uses
  %exitcond.not.i95.1 = icmp eq i64 %indvars.iv.next.i94.1, 2000
  br i1 %exitcond.not.i95.1, label %check_FP.exit, label %kernel_ludcmp_StrictFP.exit, !llvm.loop !40

check_FP.exit:                                    ; preds = %.critedge.i.1
  call fastcc void @print_array(ptr noundef %i.y)
  call void @free(ptr noundef %i.g) #14
  call void @free(ptr noundef %i.m) #14
  call void @free(ptr noundef nonnull %i.s) #14
  call void @free(ptr noundef nonnull %i.y) #14
  call void @free(ptr noundef %i.ae) #14
  br label %bb.n

bb.n:                                             ; preds = %check_FP.exit.thread, %check_FP.exit
  %.0 = phi i32 [ 0, %check_FP.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.d, %i.e
  %diff.check1 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1
  %i.h = sub i64 %i.c, %i.e
  %diff.check2 = icmp ugt i64 %i.h, -16
  %conflict.rdx3 = or i1 %conflict.rdx, %diff.check2
  br i1 %conflict.rdx3, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %vector.memcheck ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> zeroinitializer, ptr %i.j, align 8, !tbaa !8
  %i.k = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.l = add <2 x i32> %i.k, splat (i32 1)
  %i.m = uitofp nneg <2 x i32> %i.l to <2 x double>
  %i.n = fdiv nnan <2 x double> %i.m, splat (double 2.000000e+03)
  %i.o = fmul nnan <2 x double> %i.n, splat (double 5.000000e-01)
  %i.p = fadd <2 x double> %i.o, splat (double 4.000000e+00)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x double> %i.p, ptr %i.q, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.r = icmp eq i64 %index.next, 2000
  br i1 %i.r, label %.preheader87.preheader, label %vector.body, !llvm.loop !41

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fdiv nnan double %i.v, 2.000000e+03
  %i.x = fmul nnan double %i.w, 5.000000e-01
  %i.y = fadd double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %i.ae = fdiv nnan double %i.ad, 2.000000e+03
  %i.af = fmul nnan double %i.ae, 5.000000e-01
  %i.ag = fadd double %i.af, 4.000000e+00
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store double %i.ag, ptr %i.ah, align 8, !tbaa !8
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 2000
  br i1 %exitcond.not.1, label %.preheader87.preheader, label %scalar.ph, !llvm.loop !44

.preheader87.preheader:                           ; preds = %vector.body, %scalar.ph
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %._crit_edge ], [ 1, %.preheader87.preheader ] ; 5 uses
  %indvar = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.preheader87.preheader ] ; 6 uses
  %i.ai = mul nuw nsw i64 %indvar, 16008
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = shl nuw nsw i64 %indvar, 3
  %i.al = sub nsw i64 15992, %i.ak
  %i.am = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvar ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv109, 4
  br i1 %min.iters.check, label %scalar.ph4.preheader, label %vector.ph5

vector.ph5:                                       ; preds = %.preheader87
  %n.vec = and i64 %indvars.iv109, 9223372036854775804 ; 3 uses
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph5
  %index7 = phi i64 [ 0, %vector.ph5 ], [ %index.next8, %vector.body6 ] ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index7 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %4, align 8, !tbaa !8
  store <2 x double> splat (double 1.000000e+00), ptr %5, align 8, !tbaa !8
  %index.next8 = add nuw i64 %index7, 4           ; 2 uses
  %i.an = icmp eq i64 %index.next8, %n.vec
  br i1 %i.an, label %middle.block9, label %vector.body6, !llvm.loop !45

middle.block9:                                    ; preds = %vector.body6
  %cmp.n = icmp eq i64 %indvars.iv109, %n.vec
  br i1 %cmp.n, label %.loopexit34, label %scalar.ph4.preheader

scalar.ph4.preheader:                             ; preds = %.preheader87, %middle.block9
  %indvars.iv103.ph = phi i64 [ 0, %.preheader87 ], [ %n.vec, %middle.block9 ]
  br label %scalar.ph4

scalar.ph4:                                       ; preds = %scalar.ph4.preheader, %scalar.ph4
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph4 ], [ %indvars.iv103.ph, %scalar.ph4.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv103
  store double 1.000000e+00, ptr %i.ao, align 8, !tbaa !8
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %indvars.iv109
  br i1 %exitcond108.not, label %.loopexit34, label %scalar.ph4, !llvm.loop !46

.loopexit34:                                      ; preds = %scalar.ph4, %middle.block9
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.ap = icmp samesign ult i64 %indvar, 1999
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit34
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.al, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit34
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvar
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !8
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond117.not = icmp eq i64 %indvar.next, 2000
  br i1 %exitcond117.not, label %bb.a, label %.preheader87, !llvm.loop !47

bb.a:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.ar = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #14
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !10  ; 8 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = icmp eq ptr %i.as, null
  %i.av = icmp ne i32 %i.ar, 0
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ax = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aw) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.as, i8 0, i64 32000000, i1 false), !tbaa !8
  %scevgep11 = getelementptr i8, ptr %i.as, i64 32000000
  br label %.preheader84

.preheader84:                                     ; preds = %polybench_alloc_data.exit, %bb.c
  %indvars.iv132 = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next133, %bb.c ] ; 3 uses
  %i.ay = shl nuw nsw i64 %indvars.iv132, 3
  %i.az = getelementptr i8, ptr %0, i64 %i.ay
  %scevgep12 = getelementptr i8, ptr %i.az, i64 31984008
  %invariant.gep96 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv132 ; 8 uses
  %bound0 = icmp ult ptr %i.as, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep96, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader84, %middle.block22
  %indvars.iv128 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next129, %middle.block22 ] ; 3 uses
  %gep97 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv128 ; 3 uses
  %i.ba = getelementptr inbounds nuw [16000 x i8], ptr %i.as, i64 %indvars.iv128 ; 3 uses
  br i1 %found.conflict, label %scalar.ph16, label %vector.ph17

vector.ph17:                                      ; preds = %.preheader83
  %i.bb = load double, ptr %gep97, align 8, !tbaa !8, !alias.scope !48
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph17
  %index19 = phi i64 [ 0, %vector.ph17 ], [ %index.next21, %vector.body18 ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index19
  %i.bd = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index19
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16000
  %i.bf = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32000
  %i.bh = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48000
  %i.bj = load double, ptr %i.bc, align 8, !tbaa !8, !alias.scope !51
  %i.bk = load double, ptr %i.be, align 8, !tbaa !8, !alias.scope !51
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = load double, ptr %i.bg, align 8, !tbaa !8, !alias.scope !51
  %i.bo = load double, ptr %i.bi, align 8, !tbaa !8, !alias.scope !51
  %i.bp = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bo, i64 1
  %i.br = fmul <2 x double> %broadcast.splat, %i.bm
  %i.bs = fmul <2 x double> %broadcast.splat, %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index19 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %wide.load20 = load <2 x double>, ptr %i.bu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.bv = fadd <2 x double> %wide.load, %i.br
  %i.bw = fadd <2 x double> %wide.load20, %i.bs
  store <2 x double> %i.bv, ptr %i.bt, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  store <2 x double> %i.bw, ptr %i.bu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next21, 2000
  br i1 %i.bx, label %middle.block22, label %vector.body18, !llvm.loop !56

scalar.ph16:                                      ; preds = %.preheader83, %scalar.ph16
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %scalar.ph16 ], [ 0, %.preheader83 ] ; 4 uses
  %i.by = load double, ptr %gep97, align 8, !tbaa !8
  %gep = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv124
  %i.bz = load double, ptr %gep, align 8, !tbaa !8
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv124 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !8
  %i.cd = fadd double %i.cc, %i.ca
  store double %i.cd, ptr %i.cb, align 8, !tbaa !8
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.ce = load double, ptr %gep97, align 8, !tbaa !8
  %gep.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv.next125
  %i.cf = load double, ptr %gep.1, align 8, !tbaa !8
  %i.cg = fmul double %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next125 ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !8
  %i.cj = fadd double %i.ci, %i.cg
  store double %i.cj, ptr %i.ch, align 8, !tbaa !8
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %exitcond127.not.1 = icmp eq i64 %indvars.iv.next125.1, 2000
  br i1 %exitcond127.not.1, label %middle.block22, label %scalar.ph16, !llvm.loop !57

middle.block22:                                   ; preds = %vector.body18, %scalar.ph16
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 2000
  br i1 %exitcond131.not, label %bb.c, label %.preheader83, !llvm.loop !58

bb.c:                                             ; preds = %middle.block22
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next133, 2000
  br i1 %exitcond135.not, label %.preheader.preheader, label %.preheader84, !llvm.loop !59

.preheader.preheader:                             ; preds = %bb.c
  %i.ck = sub i64 %i.at, %i.a
  %diff.check24 = icmp ugt i64 %i.ck, -32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block32
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %middle.block32 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [16000 x i8], ptr %i.as, i64 %indvars.iv140 ; 9 uses
  %i.cm = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvars.iv140 ; 9 uses
  br i1 %diff.check24, label %scalar.ph25, label %vector.body27

vector.body27:                                    ; preds = %.preheader, %vector.body27
  %index28 = phi i64 [ %index.next31.3, %vector.body27 ], [ 0, %.preheader ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index28 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load29 = load <2 x double>, ptr %i.cn, align 8, !tbaa !8
  %wide.load30 = load <2 x double>, ptr %i.co, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index28 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x double> %wide.load29, ptr %i.cp, align 8, !tbaa !8
  store <2 x double> %wide.load30, ptr %i.cq, align 8, !tbaa !8
  %index.next31 = or disjoint i64 %index28, 4     ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index.next31 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load29.1 = load <2 x double>, ptr %i.cr, align 8, !tbaa !8
  %wide.load30.1 = load <2 x double>, ptr %i.cs, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index.next31 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x double> %wide.load29.1, ptr %i.ct, align 8, !tbaa !8
  store <2 x double> %wide.load30.1, ptr %i.cu, align 8, !tbaa !8
  %index.next31.1 = or disjoint i64 %index28, 8   ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index.next31.1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load29.2 = load <2 x double>, ptr %i.cv, align 8, !tbaa !8
  %wide.load30.2 = load <2 x double>, ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index.next31.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %wide.load29.2, ptr %i.cx, align 8, !tbaa !8
  store <2 x double> %wide.load30.2, ptr %i.cy, align 8, !tbaa !8
  %index.next31.2 = or disjoint i64 %index28, 12  ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index.next31.2 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load29.3 = load <2 x double>, ptr %i.cz, align 8, !tbaa !8
  %wide.load30.3 = load <2 x double>, ptr %i.da, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index.next31.2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %wide.load29.3, ptr %i.db, align 8, !tbaa !8
  store <2 x double> %wide.load30.3, ptr %i.dc, align 8, !tbaa !8
  %index.next31.3 = add nuw nsw i64 %index28, 16  ; 2 uses
  %i.dd = icmp eq i64 %index.next31.3, 2000
  br i1 %i.dd, label %middle.block32, label %vector.body27, !llvm.loop !60

scalar.ph25:                                      ; preds = %.preheader, %scalar.ph25
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.4, %scalar.ph25 ], [ 0, %.preheader ] ; 7 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv136
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv136
  store double %i.df, ptr %i.dg, align 8, !tbaa !8
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next137
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next137
  store double %i.di, ptr %i.dj, align 8, !tbaa !8
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next137.1
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next137.1
  store double %i.dl, ptr %i.dm, align 8, !tbaa !8
  %indvars.iv.next137.2 = add nuw nsw i64 %indvars.iv136, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next137.2
  %i.do = load double, ptr %i.dn, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next137.2
  store double %i.do, ptr %i.dp, align 8, !tbaa !8
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next137.3
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next137.3
  store double %i.dr, ptr %i.ds, align 8, !tbaa !8
  %indvars.iv.next137.4 = add nuw nsw i64 %indvars.iv136, 5 ; 2 uses
  %exitcond139.not.4 = icmp eq i64 %indvars.iv.next137.4, 2000
  br i1 %exitcond139.not.4, label %middle.block32, label %scalar.ph25, !llvm.loop !61
end_hunk_0
