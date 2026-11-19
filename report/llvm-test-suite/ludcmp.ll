Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ludcmp?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@main:bb.a
  br i1 %i.ke, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %kernel_ludcmp_StrictFP.exit
  %indvars.iv.i97.lcssa = phi i64 [ %indvars.iv.i97, %kernel_ludcmp_StrictFP.exit ], [ %indvars.iv.next.i98, %.critedge.i ]
  %.lcssa156 = phi double [ %i.jz, %kernel_ludcmp_StrictFP.exit ], [ %i.kj, %.critedge.i ]
  %.lcssa = phi double [ %i.kb, %kernel_ludcmp_StrictFP.exit ], [ %i.kl, %.critedge.i ]
  %i.kf = trunc nuw nsw i64 %indvars.iv.i97.lcssa to i32 ; 2 uses
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.kh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.2, i32 noundef %i.kf, double noundef %.lcssa156, i32 noundef %i.kf, double noundef %.lcssa, double noundef 1.000000e-05) #18 ; 0 uses
  br label %bb.n

.critedge.i:                                      ; preds = %kernel_ludcmp_StrictFP.exit
  %indvars.iv.next.i98 = or disjoint i64 %indvars.iv.i97, 1 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i98
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !24 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i98
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !24 ; 2 uses
  %i.km = fsub double %i.kj, %i.kl
  %i.kn = tail call double @llvm.fabs.f64(double %i.km)
  %i.ko = fcmp ule double %i.kn, 1.000000e-05
  br i1 %i.ko, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i98.1 = add nuw nsw i64 %indvars.iv.i97, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i98.1, 2000
  br i1 %exitcond.not.i99.1, label %check_FP.exit, label %kernel_ludcmp_StrictFP.exit, !llvm.loop !61

check_FP.exit:                                    ; preds = %.critedge.i.1
  tail call fastcc void @print_array(ptr noundef %i.v)
  tail call void @free(ptr noundef %i.g) #15
  tail call void @free(ptr noundef %i.l) #15
  tail call void @free(ptr noundef nonnull %i.q) #15
  tail call void @free(ptr noundef nonnull %i.v) #15
  tail call void @free(ptr noundef %i.aa) #15
  br label %bb.n

bb.n:                                             ; preds = %check_FP.exit.thread, %check_FP.exit
  %.0 = phi i32 [ 0, %check_FP.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 !guid !80 {
vector.memcheck:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.f = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.d, %i.e
  %diff.check4 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check4
  %i.h = sub i64 %i.c, %i.e
  %diff.check5 = icmp ugt i64 %i.h, -16
  %conflict.rdx6 = or i1 %conflict.rdx, %diff.check5
  br i1 %conflict.rdx6, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %vec.ind = phi <2 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1>, %vector.memcheck ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x double> zeroinitializer, ptr %i.j, align 8, !tbaa !24
  %i.k = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.l = add <2 x i32> %i.k, splat (i32 1)
  %i.m = uitofp nneg <2 x i32> %i.l to <2 x double>
  %i.n = fdiv nnan <2 x double> %i.m, splat (double 2.000000e+03)
  %i.o = fmul nnan <2 x double> %i.n, splat (double 5.000000e-01)
  %i.p = fadd <2 x double> %i.o, splat (double 4.000000e+00)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x double> %i.p, ptr %i.q, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.r = icmp eq i64 %index.next, 2000
  br i1 %i.r, label %.preheader87.preheader, label %vector.body, !llvm.loop !64

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.t, align 8, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fdiv nnan double %i.v, 2.000000e+03
  %i.x = fmul nnan double %i.w, 5.000000e-01
  %i.y = fadd double %i.x, 4.000000e+00
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %i.y, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %i.ae = fdiv nnan double %i.ad, 2.000000e+03
  %i.af = fmul nnan double %i.ae, 5.000000e-01
  %i.ag = fadd double %i.af, 4.000000e+00
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store double %i.ag, ptr %i.ah, align 8, !tbaa !24
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 2000
  br i1 %exitcond.not.1, label %.preheader87.preheader, label %scalar.ph, !llvm.loop !65

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
  br i1 %min.iters.check, label %scalar.ph7.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.preheader87
  %n.vec = and i64 %indvars.iv109, 9223372036854775806 ; 3 uses
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next12, %vector.body9 ] ; 2 uses
  %vec.ind11 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph8 ], [ %vec.ind.next13, %vector.body9 ] ; 2 uses
  %i.ap = sub <2 x i32> zeroinitializer, %vec.ind11
  %i.aq = sitofp <2 x i32> %i.ap to <2 x double>
  %i.ar = fdiv <2 x double> %i.aq, splat (double 2.000000e+03)
  %i.as = fadd <2 x double> %i.ar, splat (double 1.000000e+00)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index10
  store <2 x double> %i.as, ptr %i.at, align 8, !tbaa !24
  %index.next12 = add nuw i64 %index10, 2         ; 2 uses
  %vec.ind.next13 = add <2 x i32> %vec.ind11, splat (i32 2)
  %i.au = icmp eq i64 %index.next12, %n.vec
  br i1 %i.au, label %middle.block14, label %vector.body9, !llvm.loop !66

middle.block14:                                   ; preds = %vector.body9
  %cmp.n = icmp eq i64 %indvars.iv109, %n.vec
  br i1 %cmp.n, label %.loopexit45, label %scalar.ph7.preheader

scalar.ph7.preheader:                             ; preds = %.preheader87, %middle.block14
  %indvars.iv103.ph = phi i64 [ 0, %.preheader87 ], [ %n.vec, %middle.block14 ]
  br label %scalar.ph7

scalar.ph7:                                       ; preds = %scalar.ph7.preheader, %scalar.ph7
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %scalar.ph7 ], [ %indvars.iv103.ph, %scalar.ph7.preheader ] ; 3 uses
  %i.av = trunc i64 %indvars.iv103 to i32
  %i.aw = sub i32 0, %i.av
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fdiv double %i.ax, 2.000000e+03
  %i.az = fadd double %i.ay, 1.000000e+00
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv103
  store double %i.az, ptr %i.ba, align 8, !tbaa !24
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next104, %indvars.iv109
  br i1 %exitcond108.not, label %.loopexit45, label %scalar.ph7, !llvm.loop !67

.loopexit45:                                      ; preds = %scalar.ph7, %middle.block14
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bb = icmp samesign ult i64 %indvar, 1999
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 15993) %i.an, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit45
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvar
  store double 1.000000e+00, ptr %i.bc, align 8, !tbaa !24
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %exitcond117.not = icmp eq i64 %indvar.next, 2000
  br i1 %exitcond117.not, label %bb.a, label %.preheader87, !llvm.loop !68

bb.a:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !26
  %i.bd = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #15
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !26  ; 8 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = icmp eq ptr %i.be, null
  %i.bh = icmp ne i32 %i.bd, 0
  %or.cond.i.i = or i1 %i.bh, %i.bg
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bi) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.be, i8 0, i64 32000000, i1 false), !tbaa !24
  %scevgep22 = getelementptr i8, ptr %i.be, i64 32000000
  br label %.preheader84

.preheader84:                                     ; preds = %polybench_alloc_data.exit, %bb.c
  %indvars.iv132 = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next133, %bb.c ] ; 3 uses
  %i.bj = shl nuw nsw i64 %indvars.iv132, 3
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj
  %scevgep21 = getelementptr i8, ptr %i.bk, i64 31984008
  %invariant.gep96 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv132 ; 8 uses
  %bound0 = icmp ult ptr %i.be, %scevgep21
  %bound1 = icmp ult ptr %invariant.gep96, %scevgep22
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader84, %middle.block31
  %indvars.iv128 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next129, %middle.block31 ] ; 3 uses
  %gep97 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv128 ; 3 uses
  %i.bl = getelementptr inbounds nuw [16000 x i8], ptr %i.be, i64 %indvars.iv128 ; 3 uses
  br i1 %found.conflict, label %scalar.ph23, label %vector.ph26

vector.ph26:                                      ; preds = %.preheader83
  %i.bm = load double, ptr %gep97, align 8, !tbaa !24, !alias.scope !83
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph26
  %index28 = phi i64 [ 0, %vector.ph26 ], [ %index.next30, %vector.body27 ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index28
  %i.bo = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16000
  %i.bq = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32000
  %i.bs = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %index28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48000
  %i.bu = load double, ptr %i.bn, align 8, !tbaa !24, !alias.scope !84
  %i.bv = load double, ptr %i.bp, align 8, !tbaa !24, !alias.scope !84
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = load double, ptr %i.br, align 8, !tbaa !24, !alias.scope !84
  %i.bz = load double, ptr %i.bt, align 8, !tbaa !24, !alias.scope !84
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fmul <2 x double> %broadcast.splat, %i.bx
  %i.cd = fmul <2 x double> %broadcast.splat, %i.cb
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index28 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !24, !alias.scope !85, !noalias !86
  %wide.load29 = load <2 x double>, ptr %i.cf, align 8, !tbaa !24, !alias.scope !85, !noalias !86
  %i.cg = fadd <2 x double> %wide.load, %i.cc
  %i.ch = fadd <2 x double> %wide.load29, %i.cd
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !24, !alias.scope !85, !noalias !86
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !24, !alias.scope !85, !noalias !86
  %index.next30 = add nuw i64 %index28, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next30, 2000
  br i1 %i.ci, label %middle.block31, label %vector.body27, !llvm.loop !73

scalar.ph23:                                      ; preds = %.preheader83, %scalar.ph23
  %indvars.iv124 = phi i64 [ %indvars.iv.next125.1, %scalar.ph23 ], [ 0, %.preheader83 ] ; 4 uses
  %i.cj = load double, ptr %gep97, align 8, !tbaa !24
  %gep = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv124
  %i.ck = load double, ptr %gep, align 8, !tbaa !24
  %i.cl = fmul double %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv124 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = fadd double %i.cn, %i.cl
  store double %i.co, ptr %i.cm, align 8, !tbaa !24
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.cp = load double, ptr %gep97, align 8, !tbaa !24
  %gep.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep96, i64 %indvars.iv.next125
  %i.cq = load double, ptr %gep.1, align 8, !tbaa !24
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next125 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !24
  %i.cu = fadd double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !24
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %exitcond127.not.1 = icmp eq i64 %indvars.iv.next125.1, 2000
  br i1 %exitcond127.not.1, label %middle.block31, label %scalar.ph23, !llvm.loop !74

middle.block31:                                   ; preds = %vector.body27, %scalar.ph23
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 2000
  br i1 %exitcond131.not, label %bb.c, label %.preheader83, !llvm.loop !75

bb.c:                                             ; preds = %middle.block31
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next133, 2000
  br i1 %exitcond135.not, label %.preheader.preheader, label %.preheader84, !llvm.loop !76

.preheader.preheader:                             ; preds = %bb.c
  %i.cv = sub i64 %i.bf, %i.a
  %diff.check36 = icmp ugt i64 %i.cv, -32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block43
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %middle.block43 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [16000 x i8], ptr %i.be, i64 %indvars.iv140 ; 9 uses
  %i.cx = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvars.iv140 ; 9 uses
  br i1 %diff.check36, label %scalar.ph34, label %vector.body38

vector.body38:                                    ; preds = %.preheader, %vector.body38
  %index39 = phi i64 [ %index.next42.3, %vector.body38 ], [ 0, %.preheader ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index39 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load40 = load <2 x double>, ptr %i.cy, align 8, !tbaa !24
  %wide.load41 = load <2 x double>, ptr %i.cz, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index39 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x double> %wide.load40, ptr %i.da, align 8, !tbaa !24
  store <2 x double> %wide.load41, ptr %i.db, align 8, !tbaa !24
  %index.next42 = or disjoint i64 %index39, 4     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index.next42 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load40.1 = load <2 x double>, ptr %i.dc, align 8, !tbaa !24
  %wide.load41.1 = load <2 x double>, ptr %i.dd, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next42 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %wide.load40.1, ptr %i.de, align 8, !tbaa !24
  store <2 x double> %wide.load41.1, ptr %i.df, align 8, !tbaa !24
  %index.next42.1 = or disjoint i64 %index39, 8   ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index.next42.1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load40.2 = load <2 x double>, ptr %i.dg, align 8, !tbaa !24
  %wide.load41.2 = load <2 x double>, ptr %i.dh, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next42.1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x double> %wide.load40.2, ptr %i.di, align 8, !tbaa !24
  store <2 x double> %wide.load41.2, ptr %i.dj, align 8, !tbaa !24
  %index.next42.2 = or disjoint i64 %index39, 12  ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index.next42.2 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load40.3 = load <2 x double>, ptr %i.dk, align 8, !tbaa !24
  %wide.load41.3 = load <2 x double>, ptr %i.dl, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next42.2 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <2 x double> %wide.load40.3, ptr %i.dm, align 8, !tbaa !24
  store <2 x double> %wide.load41.3, ptr %i.dn, align 8, !tbaa !24
  %index.next42.3 = add nuw nsw i64 %index39, 16  ; 2 uses
  %i.do = icmp eq i64 %index.next42.3, 2000
  br i1 %i.do, label %middle.block43, label %vector.body38, !llvm.loop !77

scalar.ph34:                                      ; preds = %.preheader, %scalar.ph34
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.4, %scalar.ph34 ], [ 0, %.preheader ] ; 7 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv136
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv136
  store double %i.dq, ptr %i.dr, align 8, !tbaa !24
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next137
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next137
  store double %i.dt, ptr %i.du, align 8, !tbaa !24
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next137.1
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next137.1
  store double %i.dw, ptr %i.dx, align 8, !tbaa !24
  %indvars.iv.next137.2 = add nuw nsw i64 %indvars.iv136, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next137.2
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next137.2
  store double %i.dz, ptr %i.ea, align 8, !tbaa !24
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next137.3
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next137.3
  store double %i.ec, ptr %i.ed, align 8, !tbaa !24
  %indvars.iv.next137.4 = add nuw nsw i64 %indvars.iv136, 5 ; 2 uses
  %exitcond139.not.4 = icmp eq i64 %indvars.iv.next137.4, 2000
  br i1 %exitcond139.not.4, label %middle.block43, label %scalar.ph34, !llvm.loop !78

middle.block43:                                   ; preds = %vector.body38, %scalar.ph34
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, 2000
  br i1 %exitcond143.not, label %bb.d, label %.preheader, !llvm.loop !79

bb.d:                                             ; preds = %middle.block43
  tail call void @free(ptr noundef nonnull %i.be) #15
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 !guid !88 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.a) #16 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i16
  %i.d = urem i16 %.lhs.trunc, 20
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !28
  %fputc = tail call i32 @fputc(i32 10, ptr %i.f) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.7, double noundef %i.i) #18 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !87

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #18 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !28
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.m) #16 ; 0 uses
  ret void
}
end_hunk_0
