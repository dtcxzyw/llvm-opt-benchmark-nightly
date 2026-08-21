inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@main:bb.a
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
  %i.ak = shl i64 %indvar, 3
  %i.al = sub i64 15984, %i.ak
  %i.am = and i64 %i.al, 34359738360
  %i.an = add nuw nsw i64 %i.am, 8
  %i.ao = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvar ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv109, 2
  br i1 %min.iters.check, label %scalar.ph4.preheader, label %vector.ph5

vector.ph5:                                       ; preds = %.preheader87
  %n.vec = and i64 %indvars.iv109, 9223372036854775806 ; 3 uses
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph5
  %index7 = phi i64 [ 0, %vector.ph5 ], [ %index.next9, %vector.body6 ] ; 2 uses
  %vec.ind8 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph5 ], [ %vec.ind.next10, %vector.body6 ] ; 2 uses
  %i.ap = sub <2 x i32> zeroinitializer, %vec.ind8
  %i.aq = sitofp <2 x i32> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.aq, splat (double 2.000000e+03)
  %i.as = fadd <2 x double> %i.ar, splat (double 1.000000e+00)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index7
  store <2 x double> %i.as, ptr %i.at, align 8, !tbaa !8
  %index.next9 = add nuw i64 %index7, 2           ; 2 uses
  %vec.ind.next10 = add <2 x i32> %vec.ind8, splat (i32 2)
  %i.au = icmp eq i64 %index.next9, %n.vec
  br i1 %i.au, label %middle.block11, label %vector.body6, !llvm.loop !45

middle.block11:                                   ; preds = %vector.body6
  %cmp.n = icmp eq i64 %indvars.iv109, %n.vec
  br i1 %cmp.n, label %.loopexit37, label %scalar.ph4.preheader

scalar.ph4.preheader:                             ; preds = %.preheader87, %middle.block11
  %indvars.iv103.ph = phi i64 [ 0, %.preheader87 ], [ %n.vec, %middle.block11 ]
  br label %scalar.ph4

scalar.ph4:                                       ; preds = %scalar.ph4.preheader, %scalar.ph4
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph4 ], [ %indvars.iv103.ph, %scalar.ph4.preheader ] ; 3 uses
  %i.av = trunc i64 %indvars.iv103 to i32
  %i.aw = sub i32 0, %i.av
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fdiv double %i.ax, 2.000000e+03
  %i.az = fadd double %i.ay, 1.000000e+00
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv103
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %indvars.iv109
  br i1 %exitcond108.not, label %.loopexit37, label %scalar.ph4, !llvm.loop !46

.loopexit37:                                      ; preds = %scalar.ph4, %middle.block11
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bb = icmp samesign ult i64 %indvar, 1999
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit37
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvar
  store double 1.000000e+00, ptr %i.bc, align 8, !tbaa !8
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond117.not = icmp eq i64 %indvar.next, 2000
  br i1 %exitcond117.not, label %bb.a, label %.preheader87, !llvm.loop !47

bb.a:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.bd = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #14
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !10  ; 8 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = icmp eq ptr %i.be, null
  %i.bh = icmp ne i32 %i.bd, 0
  %or.cond.i.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bj = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bi) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.be, i8 0, i64 32000000, i1 false), !tbaa !8
  %scevgep13 = getelementptr i8, ptr %i.be, i64 32000000
  br label %.preheader84

.preheader84:                                     ; preds = %polybench_alloc_data.exit, %bb.c
  %indvars.iv133 = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next134, %bb.c ] ; 3 uses
  %i.bk = shl nuw nsw i64 %indvars.iv133, 3
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk
  %scevgep15 = getelementptr i8, ptr %i.bl, i64 31984008
  %invariant.gep96 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv133 ; 8 uses
  %bound0 = icmp ult ptr %i.be, %scevgep15
  %bound1 = icmp ult ptr %invariant.gep96, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader84, %middle.block25
  %indvars.iv129 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next130, %middle.block25 ] ; 3 uses
  %gep97 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv129 ; 3 uses
  %i.bm = getelementptr inbounds nuw [16000 x i8], ptr %i.be, i64 %indvars.iv129 ; 3 uses
  br i1 %found.conflict, label %scalar.ph19, label %vector.ph20

vector.ph20:                                      ; preds = %.preheader83
  %i.bn = load double, ptr %gep97, align 8, !tbaa !8, !alias.scope !48
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph20
  %index22 = phi i64 [ 0, %vector.ph20 ], [ %index.next24, %vector.body21 ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index22
  %i.bp = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16000
  %i.br = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32000
  %i.bt = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48000
  %i.bv = load double, ptr %i.bo, align 8, !tbaa !8, !alias.scope !51
  %i.bw = load double, ptr %i.bq, align 8, !tbaa !8, !alias.scope !51
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = load double, ptr %i.bs, align 8, !tbaa !8, !alias.scope !51
  %i.ca = load double, ptr %i.bu, align 8, !tbaa !8, !alias.scope !51
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = fmul <2 x double> %broadcast.splat, %i.by
  %i.ce = fmul <2 x double> %broadcast.splat, %i.cc
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index22 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %wide.load23 = load <2 x double>, ptr %i.cg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ch = fadd <2 x double> %wide.load, %i.cd
  %i.ci = fadd <2 x double> %wide.load23, %i.ce
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  store <2 x double> %i.ci, ptr %i.cg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next24, 2000
  br i1 %i.cj, label %middle.block25, label %vector.body21, !llvm.loop !56

scalar.ph19:                                      ; preds = %.preheader83, %scalar.ph19
  %indvars.iv125 = phi i64 [ %indvars.iv.next126.1, %scalar.ph19 ], [ 0, %.preheader83 ] ; 4 uses
  %i.ck = load double, ptr %gep97, align 8, !tbaa !8
  %gep = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv125
  %i.cl = load double, ptr %gep, align 8, !tbaa !8
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv125 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8
  %i.cp = fadd double %i.co, %i.cm
  store double %i.cp, ptr %i.cn, align 8, !tbaa !8
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.cq = load double, ptr %gep97, align 8, !tbaa !8
  %gep.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv.next126
  %i.cr = load double, ptr %gep.1, align 8, !tbaa !8
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next126 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cv = fadd double %i.cu, %i.cs
  store double %i.cv, ptr %i.ct, align 8, !tbaa !8
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %exitcond128.not.1 = icmp eq i64 %indvars.iv.next126.1, 2000
  br i1 %exitcond128.not.1, label %middle.block25, label %scalar.ph19, !llvm.loop !57

middle.block25:                                   ; preds = %vector.body21, %scalar.ph19
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next130, 2000
  br i1 %exitcond132.not, label %bb.c, label %.preheader83, !llvm.loop !58

bb.c:                                             ; preds = %middle.block25
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next134, 2000
  br i1 %exitcond136.not, label %.preheader.preheader, label %.preheader84, !llvm.loop !59

.preheader.preheader:                             ; preds = %bb.c
  %i.cw = sub i64 %i.bf, %i.a
  %diff.check27 = icmp ugt i64 %i.cw, -32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block35
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %middle.block35 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [16000 x i8], ptr %i.be, i64 %indvars.iv145 ; 9 uses
  %i.cy = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvars.iv145 ; 9 uses
  br i1 %diff.check27, label %scalar.ph28, label %vector.body30

vector.body30:                                    ; preds = %.preheader, %vector.body30
  %index31 = phi i64 [ %index.next34.3, %vector.body30 ], [ 0, %.preheader ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index31 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load32.a = load <2 x double>, ptr %i.cz, align 8, !tbaa !8
  %wide.load33 = load <2 x double>, ptr %i.da, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index31 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %wide.load32.a, ptr %i.db, align 8, !tbaa !8
  store <2 x double> %wide.load33, ptr %i.dc, align 8, !tbaa !8
  %index.next34 = or disjoint i64 %index31, 4     ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next34 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load32.1.a = load <2 x double>, ptr %i.dd, align 8, !tbaa !8
  %wide.load33.1 = load <2 x double>, ptr %i.de, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index.next34 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %wide.load32.1.a, ptr %i.df, align 8, !tbaa !8
  store <2 x double> %wide.load33.1, ptr %i.dg, align 8, !tbaa !8
  %index.next34.1 = or disjoint i64 %index31, 8   ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next34.1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load32.2.a = load <2 x double>, ptr %i.dh, align 8, !tbaa !8
  %wide.load33.2 = load <2 x double>, ptr %i.di, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index.next34.1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %wide.load32.2.a, ptr %i.dj, align 8, !tbaa !8
  store <2 x double> %wide.load33.2, ptr %i.dk, align 8, !tbaa !8
  %index.next34.2 = or disjoint i64 %index31, 12  ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next34.2 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load32.3.a = load <2 x double>, ptr %i.dl, align 8, !tbaa !8
  %wide.load33.3 = load <2 x double>, ptr %i.dm, align 8, !tbaa !8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index.next34.2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load32.3.a, ptr %i.dn, align 8, !tbaa !8
  store <2 x double> %wide.load33.3, ptr %i.do, align 8, !tbaa !8
  %index.next34.3 = add nuw nsw i64 %index31, 16  ; 2 uses
  %i.dp = icmp eq i64 %index.next34.3, 2000
  br i1 %i.dp, label %middle.block35, label %vector.body30, !llvm.loop !60

scalar.ph28:                                      ; preds = %.preheader, %scalar.ph28
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.4, %scalar.ph28 ], [ 0, %.preheader ] ; 7 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv141
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv141
  store double %i.dr, ptr %i.ds, align 8, !tbaa !8
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next142
  %i.du = load double, ptr %i.dt, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next142
  store double %i.du, ptr %i.dv, align 8, !tbaa !8
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next142.1
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next142.1
  store double %i.dx, ptr %i.dy, align 8, !tbaa !8
  %indvars.iv.next142.2 = add nuw nsw i64 %indvars.iv141, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next142.2
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next142.2
  store double %i.ea, ptr %i.eb, align 8, !tbaa !8
  %indvars.iv.next142.3 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next142.3
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next142.3
  store double %i.ed, ptr %i.ee, align 8, !tbaa !8
  %indvars.iv.next142.4 = add nuw nsw i64 %indvars.iv141, 5 ; 2 uses
  %exitcond144.not.4 = icmp eq i64 %indvars.iv.next142.4, 2000
  br i1 %exitcond144.not.4, label %middle.block35, label %scalar.ph28, !llvm.loop !61

middle.block35:                                   ; preds = %vector.body30, %scalar.ph28
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 2000
  br i1 %exitcond148.not, label %bb.d, label %.preheader, !llvm.loop !62

bb.d:                                             ; preds = %middle.block35
  call void @free(ptr noundef nonnull %i.be) #14
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.a) #15 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #17 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i16
  %i.e = urem i16 %.lhs.trunc, 20
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.7, double noundef %i.j) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !63
end_hunk_0
