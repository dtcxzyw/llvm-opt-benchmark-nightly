Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.12:bb.a
  %i.ab = add i64 %i.y, 8
  %i.ac = mul i64 %i.ab, %i.aa
  %.idx = and i64 %i.ac, 9223372036854775800      ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx, 0
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !222
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx, i1 false), !tbaa !189
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.af = icmp eq i64 %i.y, -4
  br i1 %i.af, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27, label %.lr.ph.i.i.i.i24.preheader

.lr.ph.i.i.i.i24.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit
  %.idx31 = shl nsw i64 %i.y, 1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.ai = and i64 %.idx31, -8
  %i.aj = add i64 %i.ai, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !189
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27: ; preds = %.lr.ph.i.i.i.i24.preheader, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %.noexc68 unwind label %bb.l   ; 5 uses

.noexc68:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !216
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc68
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !216
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc68 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.069.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc68 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.m = tail call i32 @omp_get_thread_num()
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !286  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !166   ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.q, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.r = load i32, ptr %i.b, align 4, !tbaa !166
  %i.s = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.q) ; 2 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !166
  %i.t = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not86 = icmp sgt i32 %i.t, %i.s
  br i1 %.not86, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = sext i32 %i.m to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.z = sext i32 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph89, %.thread75
  %indvars.iv108 = phi i64 [ %i.z, %.lr.ph89 ], [ %indvars.iv.next109, %.thread75 ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv108
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !166 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread75, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !166 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ai = load ptr, ptr %5, align 8, !tbaa !291
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !280
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !269
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv108
  %i.ao = load float, ptr %i.an, align 4, !tbaa !216 ; 2 uses
  %i.ap = fcmp uno float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %6, align 8, !tbaa !273
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.w
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ad ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !166
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv
  store float %i.ao, ptr %i.aw, align 4, !tbaa !216
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !499

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.ax = sext i32 %i.ag to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %i.ax
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !216
  %.not6681 = icmp slt i32 %i.ag, 0
  br i1 %.not6681, label %.thread75, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.az = load ptr, ptr %8, align 8, !tbaa !269
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv108
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !216
  %i.bc = load ptr, ptr %7, align 8, !tbaa !269
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv108
  %i.be = load float, ptr %i.bd, align 4, !tbaa !216
  %i.bf = fpext float %i.bb to double
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.w
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.ad
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !187
  %i.bl = fpext float %i.be to double
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.w
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !185
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.ad
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !187 ; 2 uses
  %i.br = add nuw i32 %i.ag, 1                    ; 2 uses
  %wide.trip.count106 = zext i32 %i.br to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph85, %.loopexit
  %indvars.iv102 = phi i32 [ %i.br, %.lr.ph85 ], [ %indvars.iv.next103, %.loopexit ] ; 2 uses
  %indvars.iv93 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next94, %.loopexit ] ; 7 uses
  %.05882 = phi i32 [ 0, %.lr.ph85 ], [ %i.cb, %.loopexit ] ; 2 uses
  %i.bs = trunc i64 %indvars.iv93 to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !216
  %i.bv = fpext float %i.bu to double             ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv93 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !189
  %i.by = call double @llvm.fmuladd.f64(double %i.bv, double %i.bf, double %i.bx)
  store double %i.by, ptr %i.bw, align 8, !tbaa !189
  %i.bz = fmul double %i.bl, %i.bv                ; 2 uses
  %i.ca = sext i32 %.05882 to i64                 ; 3 uses
  %i.cb = add i32 %.05882, %indvars.iv102         ; 2 uses
  %10 = sub i32 %i.ag, %i.bs                      ; 2 uses
  %i.cc = zext i32 %10 to i64
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %10, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cd, 8589934588              ; 4 uses
  %i.ce = add nsw i64 %n.vec, %i.ca
  %i.cf = add nuw i64 %indvars.iv93, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load = load <2 x float>, ptr %i.ch, align 4, !tbaa !216
  %wide.load120 = load <2 x float>, ptr %i.ci, align 4, !tbaa !216
  %i.cj = fpext <2 x float> %wide.load to <2 x double>
  %i.ck = fpext <2 x float> %wide.load120 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load121 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load122 = load <2 x double>, ptr %i.cl, align 8, !tbaa !189
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cj, <2 x double> %wide.load121)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ck, <2 x double> %wide.load122)
  store <2 x double> %i.cm, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv97.ph = phi i64 [ %i.ca, %bb.i ], [ %i.ce, %middle.block ]
  %indvars.iv95.ph = phi i64 [ %indvars.iv93, %bb.i ], [ %i.cf, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %exitcond107.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count106
  br i1 %exitcond107.not, label %.thread75, label %bb.i, !llvm.loop !501

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %scalar.ph ], [ %indvars.iv95.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv95
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !216
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv97 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !189
  %i.cu = call double @llvm.fmuladd.f64(double %i.bz, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !189
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32
  %exitcond104.not = icmp eq i32 %i.cb, %lftr.wideiv
  br i1 %exitcond104.not, label %.loopexit, label %scalar.ph, !llvm.loop !502

.thread75:                                        ; preds = %bb.g, %.loopexit, %._crit_edge, %bb.e
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !166
  %i.cw = sext i32 %i.cv to i64
  %.not.not = icmp slt i64 %indvars.iv108, %i.cw
  br i1 %.not.not, label %bb.e, label %._crit_edge90

._crit_edge90:                                    ; preds = %.thread75, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge90, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.069.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %.sroa.11.0 to i64
  %i.cy = ptrtoint ptr %.sroa.069.0 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0, i64 noundef %i.cz) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not38 = icmp sgt i32 %i.k, %i.j
  br i1 %.not38, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 592
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 664
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.q = load ptr, ptr %7, align 8, !tbaa !273
  %i.r = load ptr, ptr %6, align 8, !tbaa !167
  %i.s = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %._crit_edge
  %indvars.iv = phi i64 [ %i.s, %.lr.ph41 ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !167
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, 1                    ; 5 uses
  %i.ac = add nsw i64 %i.aa, 2
  %i.ad = mul i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 1                       ; 7 uses
  %.not43 = icmp eq i64 %i.ae, 0
  %.pre.pre = load i32, ptr %5, align 4, !tbaa !166 ; 2 uses
  br i1 %.not43, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.af = sext i32 %.pre.pre to i64
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 8 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187 ; 8 uses
  %min.iters.check63 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph
  %i.ao = shl i64 %i.ae, 3                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %i.an, i64 %i.ao
  %scevgep58 = getelementptr i8, ptr %i.ak, i64 %i.ao
  %bound059 = icmp ult ptr %i.an, %scevgep58
  %bound160 = icmp ult ptr %i.ak, %scevgep57
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %scalar.ph62.preheader, label %vector.ph64

end_hunk_0
begin_hunk_1_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %niter488 = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new ], [ %niter488.next.3, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i ]
  %i.bz = fcmp olt double %.05864.us.i.i.i.i, 0.000000e+00
  %i.ca = select i1 %i.bz, double 0.000000e+00, double %.05864.us.i.i.i.i ; 3 uses
  %niter488.next.3 = add i64 %niter488, 4         ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, !llvm.loop !583

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.off.i.i.i.i.i.i.i18.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i19.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i18.i.i.i.i, 3
  %i.cb = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i19.i.i.i.i, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.preheader

.lr.ph.split.split.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i.i.i.i
  %i.cc = sub i64 %i.b, %i.br
  %xtraiter476 = and i64 %i.cc, 3                 ; 2 uses
  %lcmp.mod477.not = icmp eq i64 %xtraiter476, 0
  %i.cd = sub i64 %i.br, %i.b
  %i.ce = icmp ugt i64 %i.cd, -4
  br label %.lr.ph.split.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i
  %i.cf = add nsw i64 %i.bm, -1                   ; 3 uses
  %xtraiter479 = and i64 %i.cf, 1
  %i.cg = icmp eq i64 %i.bm, 2
  br i1 %i.cg, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %unroll_iter = and i64 %i.cf, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new
  %.01765.us66.i.i.i.i = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.cu, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 3 uses
  %.05864.us67.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.ct, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ]
  %i.ch = mul nsw i64 %.01765.us66.i.i.i.i, %i.b
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !189
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp olt double %.05864.us67.i.i.i.i, %i.ck
  %i.cm = select i1 %i.cl, double %i.ck, double %.05864.us67.i.i.i.i ; 2 uses
  %i.cn = add nuw nsw i64 %.01765.us66.i.i.i.i, 1
  %i.co = mul nsw i64 %i.cn, %i.b
  %i.cp = getelementptr [8 x i8], ptr %i.cb, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !189
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = fcmp olt double %i.cm, %i.cr
  %i.ct = select i1 %i.cs, double %i.cr, double %i.cm ; 3 uses
  %i.cu = add nuw nsw i64 %.01765.us66.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, !llvm.loop !583

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.split.split.i.i.i.i.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i
  %.01765.i.i.i.i = phi i64 [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ 1, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %.05864.i.i.i.i = phi double [ %i.es, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %i.cv = mul nsw i64 %.01765.i.i.i.i, %i.b
  %i.cw = getelementptr [8 x i8], ptr %i.cb, i64 %i.cv ; 10 uses
  %i.cx = load <2 x double>, ptr %i.cw, align 1, !tbaa !182
  %i.cy = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cx) ; 3 uses
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.split.i.i.i.i
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  %i.da = load <2 x double>, ptr %i.cz, align 1, !tbaa !182
  %i.db = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i

._crit_edge.i.i.i.i.i.i.i26.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i = phi <2 x double> [ %i.db, %bb.h ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i = phi <2 x double> [ %i.cy, %bb.h ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %i.dc = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i ; 2 uses
  br i1 %i.bu, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i29.i.i.i.i:                   ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i
  %.05480.i.i.i.i.i.i.i30.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i34.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 4, %bb.h ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i30.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i32.i.i.i.i = phi <2 x double> [ %i.dg, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.cy, %bb.h ]
  %.07577.i.i.i.i.i.i.i33.i.i.i.i = phi <2 x double> [ %i.dl, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.db, %bb.h ]
  %i.dd = getelementptr [8 x i8], ptr %i.cw, i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i
  %i.de = load <2 x double>, ptr %i.dd, align 1, !tbaa !182
  %i.df = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.de)
  %i.dg = fadd <2 x double> %.07278.i.i.i.i.i.i.i32.i.i.i.i, %i.df ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.cw, i64 %.054.in79.i.i.i.i.i.i.i31.i.i.i.i
  %i.di = getelementptr i8, ptr %i.dh, i64 48
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !182
  %i.dk = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dj)
  %i.dl = fadd <2 x double> %.07577.i.i.i.i.i.i.i33.i.i.i.i, %i.dk ; 2 uses
  %.054.i.i.i.i.i.i.i34.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i, 4 ; 2 uses
  %i.dm = icmp slt i64 %.054.i.i.i.i.i.i.i34.i.i.i.i, %i.bp
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, !llvm.loop !580

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i
  %i.dn = getelementptr [8 x i8], ptr %i.cw, i64 %i.bp
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !182
  %i.dp = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.do)
  %i.dq = fadd <2 x double> %i.dc, %i.dp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, %.lr.ph.split.split.i.i.i.i
  %.274.i.i.i.i.i.i.i20.i.i.i.i = phi <2 x double> [ %i.cy, %.lr.ph.split.split.i.i.i.i ], [ %i.dq, %bb.i ], [ %i.dc, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i ]
  %i.dr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i) ; 3 uses
  br i1 %i.bv, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader:       ; preds = %bb.j
  br i1 %lcmp.mod477.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol:            ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.br, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i.prol = phi double [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %prol.iter478 = phi i64 [ %prol.iter478.next, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = tail call noundef double @llvm.fabs.f64(double %i.dt)
  %i.dv = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i.prol, %i.du ; 3 uses
  %i.dw = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter478.next = add i64 %prol.iter478, 1   ; 2 uses
  %prol.iter478.cmp.not = icmp eq i64 %prol.iter478.next, %xtraiter476
  br i1 %prol.iter478.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, !llvm.loop !584

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader
  %.lcssa471.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr = phi i64 [ %i.br, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dw, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i24.i.i.i.i.unr = phi double [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  br i1 %i.ce, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i
  %.05283.i.i.i.i.i.i.i23.i.i.i.i = phi i64 [ %i.eq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i = phi double [ %i.ep, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.182.i.i.i.i.i.i.i24.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ]
  %i.dx = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = tail call noundef double @llvm.fabs.f64(double %i.dy)
  %i.ea = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189
  %i.ee = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.ef = fadd double %i.ea, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !189
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fadd double %i.ef, %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !189
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fadd double %i.ek, %i.eo                ; 2 uses
  %i.eq = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3 = icmp eq i64 %i.eq, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, !llvm.loop !582

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, %bb.j
  %.0.i.i.i.i.i21.i.i.i.i = phi double [ %i.dr, %bb.j ], [ %.lcssa471.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ], [ %i.ep, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ] ; 2 uses
  %i.er = fcmp olt double %.05864.i.i.i.i, %.0.i.i.i.i.i21.i.i.i.i
  %i.es = select i1 %i.er, double %.0.i.i.i.i.i21.i.i.i.i, double %.05864.i.i.i.i ; 2 uses
  %i.et = add nuw nsw i64 %.01765.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.et, %i.bm
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.split.split.i.i.i.i, !llvm.loop !583

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %.05864.us.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter483, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader
  %.05864.us.i.i.i.i.epil = phi double [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %.05864.us.i.i.i.i.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ]
  %i.eu = fcmp olt double %.05864.us.i.i.i.i.epil, 0.000000e+00
  %i.ev = select i1 %i.eu, double 0.000000e+00, double %.05864.us.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter483
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, !llvm.loop !585

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %.01765.us66.i.i.i.i.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ]
  %.05864.us67.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ] ; 2 uses
  %lcmp.mod482 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod482)
  %i.ew = mul nsw i64 %.01765.us66.i.i.i.i.epil.init, %i.b
  %i.ex = getelementptr [8 x i8], ptr %i.cb, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !189
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.05864.us67.i.i.i.i.epil.init, %i.ez
  %i.fb = select i1 %i.fa, double %i.ez, double %.05864.us67.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %.058.lcssa.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i ], [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %i.fb, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit466.unr-lcssa ], [ %i.es, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.058.lcssa.i.i.i.i, ptr %i.fc, align 8, !tbaa !641
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.bm, i64 %i.b) ; 14 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !315
  %.not.i.i = icmp eq i64 %i.b, %i.ff
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.fg) #6
  %i.fh = icmp sgt i64 %i.b, 0
  br i1 %i.fh, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.fi = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.fi, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fj, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.l
  %i.fk = shl nuw i64 %i.b, 2
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #38 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.n, label %.sink.split.i.i

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.fn = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fn, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.fl, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.fd, align 8, !tbaa !314
  %.pre = load i64, ptr %i.bl, align 8, !tbaa !306
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, %.sink.split.i.i
  %i.fo = phi i64 [ %i.bm, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  store i64 %i.b, ptr %i.fe, align 8, !tbaa !315
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !316
  %.not.i.i66 = icmp eq i64 %i.fo, %i.fr
  br i1 %.not.i.i66, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.fs) #6
  %i.ft = icmp sgt i64 %i.fo, 0
  br i1 %i.ft, label %bb.p, label %.sink.split.i.i67

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.fo, 4611686018427387903
  br i1 %i.fu, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69

bb.q:                                             ; preds = %bb.p
  %i.fv = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fv, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69: ; preds = %bb.p
  %i.fw = shl nuw i64 %i.fo, 2
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.fw) #38 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.r, label %.sink.split.i.i67

bb.r:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69
  %i.fz = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fz, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i67:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69, %bb.o
  %.sink.i.i68 = phi ptr [ %i.fx, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69 ], [ null, %bb.o ]
  store ptr %.sink.i.i68, ptr %i.fp, align 8, !tbaa !312
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i67
  store i64 %i.fo, ptr %i.fq, align 8, !tbaa !316
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.ga, align 8, !tbaa !327
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store double 0.000000e+00, ptr %i.gb, align 8, !tbaa !328
  %i.gc = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.gc, label %.lr.ph235, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.gd, i64 noundef %i.b)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.ge, i64 noundef %i.bm)
  br label %._crit_edge244

.lr.ph235:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gf = add nsw i64 %i.b, -1
  %i.gg = add nsw i64 %.sroa.speculated.i, -1     ; 3 uses
  %i.gh = shl i64 %i.b, 3
  %i.gi = add i64 %i.gh, -8
  %i.gj = add i64 %i.b, -2                        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph235, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread
  %.060232 = phi i64 [ 0, %.lr.ph235 ], [ %i.wp, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 32 uses
  %.061231 = phi i64 [ 0, %.lr.ph235 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 5 uses
  %i.gk = xor i64 %.060232, -1
  %i.gl = add i64 %i.b, %i.gk                     ; 4 uses
  %i.gm = shl i64 %.060232, 3
  %i.gn = shl i64 %.060232, 3                     ; 2 uses
  %i.go = add i64 %i.gn, 8
  %i.gp = add nuw i64 %.060232, 1
  %i.gq = shl i64 %.060232, 3                     ; 2 uses
  %i.gr = add i64 %i.gq, 8
  %i.gs = shl i64 %.060232, 3                     ; 2 uses
  %i.gt = add i64 %i.gs, 8                        ; 2 uses
  %i.gu = shl i64 %.060232, 3
  %i.gv = sub i64 %i.gi, %i.gu
  %i.gw = sub nsw i64 %i.b, %.060232              ; 8 uses
  %i.gx = sub nsw i64 %i.bm, %.060232             ; 5 uses
  %i.gy = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !642 ; 22 uses
  %i.gz = sub nsw i64 %i.gy, %i.gw
  %i.ha = load i64, ptr %i.bl, align 8, !tbaa !306, !noalias !642 ; 10 uses
  %i.hb = sub nsw i64 %i.ha, %i.gx
  %i.hc = load ptr, ptr %0, align 8, !tbaa !307, !noalias !642 ; 13 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.gz
  %i.he = mul nsw i64 %i.hb, %i.gy
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.he ; 5 uses
  %i.hg = mul nuw nsw i64 %i.gx, %i.gw
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hi = load double, ptr %i.hf, align 8, !tbaa !189
  %i.hj = tail call noundef double @llvm.fabs.f64(double %i.hi) ; 6 uses
  %i.hk = icmp sgt i64 %i.gw, 1
  br i1 %i.hk, label %.lr.ph.i.i.i.i71.preheader, label %.preheader25.i.i.i.i

.lr.ph.i.i.i.i71.preheader:                       ; preds = %bb.t
  %xtraiter489 = and i64 %i.gl, 1
  %i.hl = icmp eq i64 %i.gj, %.060232
  br i1 %i.hl, label %.lr.ph.i.i.i.i71.epil.preheader, label %.lr.ph.i.i.i.i71.preheader.new

.lr.ph.i.i.i.i71.preheader.new:                   ; preds = %.lr.ph.i.i.i.i71.preheader
  %unroll_iter496 = and i64 %i.gl, -2
  br label %.lr.ph.i.i.i.i71

.preheader25.i.i.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i71
  %lcmp.mod491.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod491.not, label %.preheader25.i.i.i.i, label %.lr.ph.i.i.i.i71.epil.preheader

.lr.ph.i.i.i.i71.epil.preheader:                  ; preds = %.preheader25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i71.preheader
  %.sroa.0.4.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.4.i.i.epil.init = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.02127.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader ], [ %i.if, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader ], [ %i.ie, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod495 = trunc i64 %i.gl to i1
  tail call void @llvm.assume(i1 %lcmp.mod495)
  %i.hm = getelementptr [8 x i8], ptr %i.hf, i64 %.02127.i.i.i.i.epil.init
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !189
  %i.ho = tail call noundef double @llvm.fabs.f64(double %i.hn) ; 3 uses
  %i.hp = fcmp ogt double %i.ho, %.epil.init      ; 3 uses
  %.sroa.0.5.i.i.epil = select i1 %i.hp, i64 %.02127.i.i.i.i.epil.init, i64 %.sroa.0.4.i.i.epil.init
  %.sroa.10.5.i.i.epil = select i1 %i.hp, double %i.ho, double %.sroa.10.4.i.i.epil.init
  %i.hq = select i1 %i.hp, double %i.ho, double %.epil.init
  br label %.preheader25.i.i.i.i

.preheader25.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i71.epil.preheader, %.preheader25.i.i.i.i.loopexit.unr-lcssa, %bb.t
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.t ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.0.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.sroa.10.0.i.i = phi double [ %i.hj, %bb.t ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.10.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.promoted34.i.i.i.i = phi double [ %i.hj, %bb.t ], [ %i.ie, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %i.hq, %.lr.ph.i.i.i.i71.epil.preheader ]
  %i.hr = icmp sgt i64 %i.gx, 1
  br i1 %i.hr, label %.preheader.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit

.preheader.i.i.i.i.preheader:                     ; preds = %.preheader25.i.i.i.i
  %xtraiter498 = and i64 %i.gw, 1
  %i.hs = icmp eq i64 %i.gl, 0
  %unroll_iter508 = and i64 %i.gw, -2
  %lcmp.mod502.not = icmp eq i64 %xtraiter498, 0
  %lcmp.mod507 = trunc i64 %i.gw to i1
  br label %.preheader.i.i.i.i

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71, %.lr.ph.i.i.i.i71.preheader.new
  %.sroa.0.4.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.0.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.sroa.10.4.i.i = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.10.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.02127.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.if, %.lr.ph.i.i.i.i71 ] ; 4 uses
  %i.ht = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.ie, %.lr.ph.i.i.i.i71 ] ; 2 uses
  %niter497 = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %niter497.next.1, %.lr.ph.i.i.i.i71 ]
  %i.hu = getelementptr [8 x i8], ptr %i.hf, i64 %.02127.i.i.i.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !189
  %i.hw = tail call noundef double @llvm.fabs.f64(double %i.hv) ; 3 uses
  %i.hx = fcmp ogt double %i.hw, %i.ht            ; 3 uses
  %.sroa.0.5.i.i = select i1 %i.hx, i64 %.02127.i.i.i.i, i64 %.sroa.0.4.i.i
  %.sroa.10.5.i.i = select i1 %i.hx, double %i.hw, double %.sroa.10.4.i.i
  %i.hy = select i1 %i.hx, double %i.hw, double %i.ht ; 2 uses
  %i.hz = add nuw nsw i64 %.02127.i.i.i.i, 1      ; 2 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !189
  %i.ic = tail call noundef double @llvm.fabs.f64(double %i.ib) ; 3 uses
  %i.id = fcmp ogt double %i.ic, %i.hy            ; 3 uses
  %.sroa.0.5.i.i.1 = select i1 %i.id, i64 %i.hz, i64 %.sroa.0.5.i.i ; 3 uses
  %.sroa.10.5.i.i.1 = select i1 %i.id, double %i.ic, double %.sroa.10.5.i.i ; 3 uses
  %i.ie = select i1 %i.id, double %i.ic, double %i.hy ; 3 uses
  %i.if = add nuw nsw i64 %.02127.i.i.i.i, 2      ; 2 uses
  %niter497.next.1 = add nuw i64 %niter497, 2     ; 2 uses
  %niter497.ncmp.1 = icmp eq i64 %niter497.next.1, %unroll_iter496
  br i1 %niter497.ncmp.1, label %.preheader25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i71, !llvm.loop !588

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %._crit_edge.i.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.1.i.i = phi double [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.10.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.promoted3137.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.promoted34.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.02032.i.i.i.i = phi i64 [ %i.im, %._crit_edge.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 5 uses
  %i.ig = mul nsw i64 %.02032.i.i.i.i, %i.gy
  %i.ih = getelementptr [8 x i8], ptr %i.hf, i64 %i.ig ; 3 uses
  br i1 %i.hs, label %.epil.preheader, label %.preheader.i.i.i.i.new

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  br i1 %lcmp.mod502.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i
  %.sroa.0.2.i.i.epil.init = phi i64 [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.10.2.i.i.epil.init = phi double [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.7.2.i.i.epil.init = phi i64 [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.promoted3136.i.i.i.i.epil.init = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.epil.init501 = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %i.iy, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.029.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.iz, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod507)
  %i.ii = getelementptr [8 x i8], ptr %i.ih, i64 %.029.i.i.i.i.epil.init
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !189
  %i.ik = tail call noundef double @llvm.fabs.f64(double %i.ij) ; 3 uses
  %i.il = fcmp ogt double %i.ik, %.epil.init501
  br i1 %i.il, label %bb.u, label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %.epil.preheader
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.epil.preheader, %bb.u, %._crit_edge.i.i.i.i.unr-lcssa
  %.sroa.0.3.i.i.lcssa = phi i64 [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.029.i.i.i.i.epil.init, %bb.u ], [ %.sroa.0.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.10.3.i.i.lcssa = phi double [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ik, %bb.u ], [ %.sroa.10.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.7.3.i.i.lcssa = phi i64 [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.02032.i.i.i.i, %bb.u ], [ %.sroa.7.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.promoted3135.i.i.i.i.lcssa = phi double [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ik, %bb.u ], [ %.promoted3136.i.i.i.i.epil.init, %.epil.preheader ]
  %i.im = add nuw nsw i64 %.02032.i.i.i.i, 1      ; 2 uses
  %exitcond39.not.i.i.i.i = icmp eq i64 %i.im, %i.gx
  br i1 %exitcond39.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit, label %.preheader.i.i.i.i, !llvm.loop !589

.preheader.i.i.i.i.new:                           ; preds = %.preheader.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.10.2.i.i = phi double [ %.sroa.10.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.7.2.i.i = phi i64 [ %.sroa.7.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ]
  %.promoted3136.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ]
  %i.in = phi double [ %i.iy, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.029.i.i.i.i = phi i64 [ %i.iz, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ] ; 4 uses
  %niter509 = phi i64 [ %niter509.next.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ]
  %i.io = getelementptr [8 x i8], ptr %i.ih, i64 %.029.i.i.i.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !189
  %i.iq = tail call noundef double @llvm.fabs.f64(double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.iq, %i.in
  br i1 %i.ir, label %bb.v, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

bb.v:                                             ; preds = %.preheader.i.i.i.i.new
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i: ; preds = %bb.v, %.preheader.i.i.i.i.new
  %.sroa.0.3.i.i = phi i64 [ %.029.i.i.i.i, %bb.v ], [ %.sroa.0.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.10.3.i.i = phi double [ %i.iq, %bb.v ], [ %.sroa.10.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.7.3.i.i = phi i64 [ %.02032.i.i.i.i, %bb.v ], [ %.sroa.7.2.i.i, %.preheader.i.i.i.i.new ]
  %.promoted3135.i.i.i.i = phi double [ %i.iq, %bb.v ], [ %.promoted3136.i.i.i.i, %.preheader.i.i.i.i.new ]
  %i.is = phi double [ %i.iq, %bb.v ], [ %i.in, %.preheader.i.i.i.i.new ] ; 2 uses
  %i.it = or disjoint i64 %.029.i.i.i.i, 1        ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.ih, i64 %i.it
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !189
  %i.iw = tail call noundef double @llvm.fabs.f64(double %i.iv) ; 4 uses
  %i.ix = fcmp ogt double %i.iw, %i.is
  br i1 %i.ix, label %bb.w, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

bb.w:                                             ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1: ; preds = %bb.w, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  %.sroa.0.3.i.i.1 = phi i64 [ %i.it, %bb.w ], [ %.sroa.0.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.10.3.i.i.1 = phi double [ %i.iw, %bb.w ], [ %.sroa.10.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.7.3.i.i.1 = phi i64 [ %.02032.i.i.i.i, %bb.w ], [ %.sroa.7.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.promoted3135.i.i.i.i.1 = phi double [ %i.iw, %bb.w ], [ %.promoted3135.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %i.iy = phi double [ %i.iw, %bb.w ], [ %i.is, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 2 uses
  %i.iz = add nuw nsw i64 %.029.i.i.i.i, 2        ; 2 uses
  %niter509.next.1 = add i64 %niter509, 2         ; 2 uses
  %niter509.ncmp.1 = icmp eq i64 %niter509.next.1, %unroll_iter508
  br i1 %niter509.ncmp.1, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.new, !llvm.loop !590

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit: ; preds = %._crit_edge.i.i.i.i, %.preheader25.i.i.i.i
  %.sroa.0.6.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.10.6.i.i = phi double [ %.sroa.10.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.7.6.i.i = phi i64 [ 0, %.preheader25.i.i.i.i ], [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ja = add i64 %.sroa.0.6.i.i, %.060232        ; 3 uses
  %i.jb = add i64 %.sroa.7.6.i.i, %.060232        ; 4 uses
  %i.jc = fcmp une double %.sroa.10.6.i.i, 0.000000e+00
end_hunk_1
begin_hunk_2_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %i.tl = fmul <2 x double> %broadcast.splat340, %wide.load344
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %wide.load345 = load <2 x double>, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %wide.load346 = load <2 x double>, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %i.tn = fsub <2 x double> %wide.load345, %i.tk
  %i.to = fsub <2 x double> %wide.load346, %i.tl
  store <2 x double> %i.tn, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  store <2 x double> %i.to, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %index.next347 = add nuw i64 %index342, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next347, %n.vec338
  br i1 %i.tp, label %middle.block348, label %vector.body341, !llvm.loop !628

middle.block348:                                  ; preds = %vector.body341
  %cmp.n349 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec338
  br i1 %cmp.n349, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader456

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader456:    ; preds = %vector.memcheck327, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block348
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck327 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec338, %middle.block348 ] ; 5 uses
  %.neg537 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter519 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader456
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !189
  %i.tt = fmul double %i.st, %i.ts
  %i.tu = load double, ptr %i.tq, align 8, !tbaa !189
  %i.tv = fsub double %i.tu, %i.tt
  store double %i.tv, ptr %i.tq, align 8, !tbaa !189
  %i.tw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader456
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader456 ], [ %i.tw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.tx = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg537
  br i1 %i.tx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !189
  %i.ub = fmul double %i.st, %i.ua
  %i.uc = load double, ptr %i.ty, align 8, !tbaa !189
  %i.ud = fsub double %i.uc, %i.ub
  store double %i.ud, ptr %i.ty, align 8, !tbaa !189
  %i.ue = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.ue ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.ue
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !189
  %i.ui = fmul double %i.st, %i.uh
  %i.uj = load double, ptr %i.uf, align 8, !tbaa !189
  %i.uk = fsub double %i.uj, %i.ui
  store double %i.uk, ptr %i.uf, align 8, !tbaa !189
  %i.ul = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ul, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !629

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block348, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.um = icmp sgt i64 %i.sz, 1
  br i1 %i.um, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.un = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uo = icmp slt i64 %i.tc, %i.rn
  br i1 %i.uo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.tb
  %i.uq = sub i64 %i.rn, %i.up                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.uq, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ur = mul i64 %i.so, %i.sn                    ; 2 uses
  %i.us = shl i64 %i.ta, 4                        ; 2 uses
  %i.ut = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.uu = getelementptr i8, ptr %scevgep, i64 %i.ur
  %i.uv = getelementptr i8, ptr %i.uu, i64 %i.us
  %scevgep318 = getelementptr i8, ptr %i.uv, i64 %i.ut
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.ur
  %i.uw = getelementptr i8, ptr %scevgep321, i64 %i.us
  %scevgep322 = getelementptr i8, ptr %i.uw, i64 %i.ut
  %bound0 = icmp ult ptr %scevgep318, %scevgep323
  %bound1 = icmp ult ptr %scevgep322, %scevgep320
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uq, -4                      ; 3 uses
  %i.ux = add i64 %i.tc, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.st, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uy = add i64 %i.tc, %index                   ; 2 uses
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.uy ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %wide.load = load <2 x double>, ptr %i.va, align 8, !tbaa !189, !alias.scope !656
  %wide.load324 = load <2 x double>, ptr %i.vb, align 8, !tbaa !189, !alias.scope !656
  %i.vc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.vd = fmul <2 x double> %broadcast.splat, %wide.load324
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %wide.load325 = load <2 x double>, ptr %i.uz, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %wide.load326 = load <2 x double>, ptr %i.ve, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %i.vf = fsub <2 x double> %wide.load325, %i.vc
  %i.vg = fsub <2 x double> %wide.load326, %i.vd
  store <2 x double> %i.vf, ptr %i.uz, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  store <2 x double> %i.vg, ptr %i.ve, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vh = icmp eq i64 %index.next, %n.vec
  br i1 %i.vh, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uq, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.tc, %vector.memcheck ], [ %i.tc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ux, %middle.block ] ; 6 uses
  %i.vi = sub i64 %i.rn, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vj = add i64 %.060232, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter522 = and i64 %i.vi, 1
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !189
  %i.vn = fmul double %i.st, %i.vm
  %i.vo = load double, ptr %i.vk, align 8, !tbaa !189
  %i.vp = fsub double %i.vo, %i.vn
  store double %i.vp, ptr %i.vk, align 8, !tbaa !189
  %i.vq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader455 ], [ %i.vq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.vr = icmp eq i64 %i.gj, %i.vj
  br i1 %i.vr, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !189
  %i.vv = fmul double %i.st, %i.vu
  %i.vw = load double, ptr %i.vs, align 8, !tbaa !189
  %i.vx = fsub double %i.vw, %i.vv
  store double %i.vx, ptr %i.vs, align 8, !tbaa !189
  %i.vy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.vy
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !189
  %i.wc = fmul double %i.st, %i.wb
  %i.wd = load double, ptr %i.vz, align 8, !tbaa !189
  %i.we = fsub double %i.wd, %i.wc
  store double %i.we, ptr %i.vz, align 8, !tbaa !189
  %i.wf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.wf, %i.rn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !634

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = load <2 x double>, ptr %i.wh, align 1, !tbaa !182
  %i.wj = fmul <2 x double> %i.un, %i.wi
  %i.wk = load <2 x double>, ptr %i.wg, align 16, !tbaa !182
  %i.wl = fsub <2 x double> %i.wk, %i.wj
  store <2 x double> %i.wl, ptr %i.wg, align 16, !tbaa !182
  %i.wm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wn = icmp slt i64 %i.wm, %i.tc
  br i1 %i.wn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !635

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wo = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.wo, %i.rs
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !636

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.wp = add nuw nsw i64 %.060232, 1             ; 2 uses
  %exitcond257.not = icmp eq i64 %i.wp, %.sroa.speculated.i
  br i1 %exitcond257.not, label %._crit_edge, label %bb.s, !llvm.loop !637

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, %scalar.ph440.prol.loopexit, %scalar.ph440, %middle.block449
  %.4.ph = phi i64 [ %.061231, %middle.block449 ], [ %.061231, %scalar.ph440.prol.loopexit ], [ %.061231, %scalar.ph440 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ]
  %i.wq = and i64 %.4.ph, 1
  %i.wr = icmp eq i64 %i.wq, 0
  %i.ws = select i1 %i.wr, i8 1, i8 -1            ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.wt, i64 noundef %i.b)
  %i.wu = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 3 uses
  %i.wv = load ptr, ptr %i.wt, align 8, !tbaa !314 ; 6 uses
  %xtraiter528 = and i64 %.sroa.speculated.i, 1
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  br i1 %lcmp.mod529.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge
  %.058.prol = add nsw i64 %.sroa.speculated.i, -1 ; 3 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.058.prol
  %2 = load i32, ptr %1, align 4, !tbaa !166
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %.058.prol ; 2 uses
  %5 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %3 ; 2 uses
  %6 = load i32, ptr %4, align 4, !tbaa !166
  %7 = load i32, ptr %5, align 4, !tbaa !166
  store i32 %7, ptr %4, align 4, !tbaa !166
  store i32 %6, ptr %5, align 4, !tbaa !166
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge
  %.058.in237.unr = phi i64 [ %.sroa.speculated.i, %._crit_edge ], [ %.058.prol, %.prol.loopexit.unr-lcssa ]
  %8 = icmp eq i64 %i.gg, 0
  br i1 %8, label %.lr.ph243, label %bb.ai

.lr.ph243:                                        ; preds = %bb.ai, %.prol.loopexit
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.ww, i64 noundef %i.bm)
  %i.wx = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 3 uses
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !314 ; 6 uses
  %xtraiter529 = and i64 %.sroa.speculated.i, 1
  %i.wz = icmp eq i64 %i.gg, 0
  br i1 %i.wz, label %.epil.preheader528, label %.lr.ph243.new

.lr.ph243.new:                                    ; preds = %.lr.ph243
  %unroll_iter533 = and i64 %.sroa.speculated.i, 9223372036854775806
  br label %bb.aj

bb.ai:                                            ; preds = %.prol.loopexit, %bb.ai
  %.058.in237 = phi i64 [ %.058.a, %bb.ai ], [ %.058.in237.unr, %.prol.loopexit ] ; 3 uses
  %.058 = add nsw i64 %.058.in237, -1             ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.058
  %10 = load i32, ptr %9, align 4, !tbaa !166
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %.058 ; 2 uses
  %13 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %11 ; 2 uses
  %14 = load i32, ptr %12, align 4, !tbaa !166
  %15 = load i32, ptr %13, align 4, !tbaa !166
  store i32 %15, ptr %12, align 4, !tbaa !166
  store i32 %14, ptr %13, align 4, !tbaa !166
  %.058.a = add nsw i64 %.058.in237, -2           ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.058.a
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !166
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %.058.a ; 2 uses
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.xc ; 2 uses
  %i.xf = load i32, ptr %i.xd, align 4, !tbaa !166
  %i.xg = load i32, ptr %i.xe, align 4, !tbaa !166
  store i32 %i.xg, ptr %i.xd, align 4, !tbaa !166
  store i32 %i.xf, ptr %i.xe, align 4, !tbaa !166
  %16 = icmp sgt i64 %.058.in237, 2
  br i1 %16, label %bb.ai, label %.lr.ph243, !llvm.loop !638

._crit_edge244.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod531.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod531.not, label %._crit_edge244, label %.epil.preheader528

.epil.preheader528:                               ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243
  %.0241.epil.init = phi i64 [ 0, %.lr.ph243 ], [ %i.yf, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod532 = trunc i64 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod532)
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0241.epil.init
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !166
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.0241.epil.init ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xj ; 2 uses
  %i.xm = load i32, ptr %i.xk, align 4, !tbaa !166
  %i.xn = load i32, ptr %i.xl, align 4, !tbaa !166
  store i32 %i.xn, ptr %i.xk, align 4, !tbaa !166
  store i32 %i.xm, ptr %i.xl, align 4, !tbaa !166
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %.epil.preheader528, %._crit_edge244.loopexit.unr-lcssa, %._crit_edge.thread
  %.4287289 = phi i8 [ 1, %._crit_edge.thread ], [ %i.ws, %._crit_edge244.loopexit.unr-lcssa ], [ %i.ws, %.epil.preheader528 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.4287289, ptr %i.xo, align 8, !tbaa !658
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.xp, align 1, !tbaa !325
  ret void

bb.aj:                                            ; preds = %bb.aj, %.lr.ph243.new
  %.0241 = phi i64 [ 0, %.lr.ph243.new ], [ %i.yf, %bb.aj ] ; 4 uses
  %niter534 = phi i64 [ 0, %.lr.ph243.new ], [ %niter534.next.1, %bb.aj ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0241
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !166
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.0241 ; 2 uses
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xs ; 2 uses
  %i.xv = load i32, ptr %i.xt, align 4, !tbaa !166
  %i.xw = load i32, ptr %i.xu, align 4, !tbaa !166
  store i32 %i.xw, ptr %i.xt, align 4, !tbaa !166
  store i32 %i.xv, ptr %i.xu, align 4, !tbaa !166
  %i.xx = or disjoint i64 %.0241, 1               ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !166
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.xx ; 2 uses
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.ya ; 2 uses
  %i.yd = load i32, ptr %i.yb, align 4, !tbaa !166
  %i.ye = load i32, ptr %i.yc, align 4, !tbaa !166
  store i32 %i.ye, ptr %i.yb, align 4, !tbaa !166
  store i32 %i.yd, ptr %i.yc, align 4, !tbaa !166
  %i.yf = add nuw nsw i64 %.0241, 2               ; 2 uses
  %niter534.next.1 = add i64 %niter534, 2         ; 2 uses
  %niter534.ncmp.1 = icmp eq i64 %niter534.next.1, %unroll_iter533
  br i1 %niter534.ncmp.1, label %._crit_edge244.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !639
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !315
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.c) #6
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #38 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !314
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !315
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  %wide.trip.count.i = and i64 %1, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !166
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !166
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph, !llvm.loop !660

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(123) %0, ptr noundef nonnull align 8 dereferenceable(123) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit:
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !315  ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #38 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.invoke, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %.0.i.i.i.i.i = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit ], [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.k, align 8, !tbaa !315
  %i.l = load i64, ptr %i.c, align 8, !tbaa !315  ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %.idx.i.i.i.i = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !314
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %i.n, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit: ; preds = %bb.b, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !315  ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS2_IS4_Lin1ELin1ELb0EEELi1ELi2ELi0ELin1EE3runERS7_RS8_:bb.a
; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.549", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.549", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.549", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !342  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !343
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !348    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #38 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !349  ; 2 uses
  %.not159 = icmp eq ptr %i.v, null
  br i1 %.not159, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.w = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.x = icmp samesign ult i64 %i.f, 16385
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %i.w, 15
  %i.z = alloca i8, i64 %i.y, align 16            ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.w) #38 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.invoke, label %bb.j

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ad = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 3 uses
  %i.af = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.ag = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.o, !prof !384

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %.body

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.ak = icmp sgt i64 %1, 0
  br i1 %i.ak, label %bb.p, label %.thread.thread

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !386
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.am = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.al
  %i.an = udiv i64 %.fr, %i.am
  %i.ao = and i64 %i.an, 576460752303423484       ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = icmp sgt i64 %0, 0
  %. = select i1 %i.ap, i64 4, i64 %i.ao          ; 6 uses
  br i1 %i.aq, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.o
  %i.ar = icmp sgt i64 %0, 0
  br i1 %i.ar, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.au = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221381 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = icmp sgt i64 %i.b, 0
  %i.bc = shl i64 %0, 3                           ; 2 uses
  %i.bd = mul i64 %i.b, -8
  %i.be = mul i64 %., %6
  %i.bf = shl i64 %i.be, 3
  %i.bg = add i64 %i.bc, -8
  %i.bh = shl i64 %6, 3                           ; 2 uses
  %i.bi = add nuw i64 %0, 2305843009213693951
  %i.bj = mul i64 %3, %i.bi
  %i.bk = add i64 %i.bj, %0
  %i.bl = shl i64 %i.bk, 3
  %i.bm = shl i64 %3, 3
  %i.bn = sub nuw nsw i64 -8, %i.bm               ; 2 uses
  %i.bo = mul i64 %i.b, %i.bn
  %i.bp = shl i64 %3, 5
  %i.bq = sub nuw nsw i64 -32, %i.bp
  %i.br = getelementptr i8, ptr %4, i64 %i.bc
  %i.bs = getelementptr i8, ptr %2, i64 %i.bl
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bh, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.fu, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bu = mul i64 %i.bd, %indvar                  ; 2 uses
  %i.bv = add i64 %i.bg, %i.bu
  %i.bw = mul i64 %i.bo, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.bx = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %2, i64 %i.bx
  %i.bz = getelementptr [8 x i8], ptr %4, i64 %i.bx
  br i1 %i.bb, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.ca = getelementptr i8, ptr %i.br, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.bw
  br label %.lr.ph308.us.us

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar383 = phi i64 [ %indvar.next384, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.fs, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 12 uses
  %i.cc = mul i64 %i.bf, %indvar383               ; 2 uses
  %i.cd = add i64 %i.bv, %i.cc
  %i.ce = or disjoint i64 %.0134310.us.us, 1
  %i.cf = mul i64 %., %indvar383                  ; 2 uses
  %i.cg = sub i64 %1, %i.cf
  %smin389 = call i64 @llvm.smin.i64(i64 %., i64 %i.cg)
  %i.ch = add i64 %smin389, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.ch)
  %i.ci = xor i64 %i.cf, -1
  %i.cj = add i64 %smax, %i.ci
  %i.ck = mul i64 %i.bh, %i.cj
  %i.cl = add i64 %i.cd, %i.ck
  %i.cm = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cm) ; 3 uses
  %i.cn = add i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 3 uses
  %i.co = icmp slt i64 %i.cm, 1
  %i.cp = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cp ; 2 uses
  %i.cr = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cr
  %i.cs = getelementptr [8 x i8], ptr %i.bz, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.ca, i64 %i.cc
  %16 = or disjoint i64 %.0134310.us.us, 1
  %i.cu = call i64 @llvm.smax.i64(i64 %16, i64 %i.cn) ; 2 uses
  %17 = mul i64 %., %indvar383
  %i.cv = sub i64 %i.cu, %17                      ; 2 uses
  %min.iters.check396 = icmp ugt i64 %i.cv, 3
  %or.cond = and i1 %min.iters.check396, %ident.check.not
  %i.cw = and i64 %i.cu, 3                        ; 2 uses
  %n.vec398 = sub nuw i64 %i.cv, %i.cw            ; 2 uses
  %i.cx = add i64 %.0134310.us.us, %n.vec398
  %cmp.n407 = icmp eq i64 %i.cw, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %.lr.ph308.us.us
  %indvar385 = phi i64 [ %indvar.next386, %bb.v ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fq, %bb.v ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.cy = mul i64 %indvar385, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ct, i64 %i.cy
  %smin387 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.cz = mul i64 %smin387, -8
  %scevgep388 = getelementptr i8, ptr %scevgep, i64 %i.cz
  %i.da = add i64 %i.cl, %i.cy
  %i.db = mul i64 %i.bq, %indvar385
  %i.dc = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.dd = call i64 @llvm.umin.i64(i64 %i.dc, i64 4)
  %i.de = sub nuw nsw i64 %smin, %.0133306.us.us  ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.de, i64 4) ; 7 uses
  %i.df = icmp slt i64 %i.de, 1
  %brmerge = select i1 %i.df, i1 true, i1 %i.co
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.q
  %i.dg = getelementptr i8, ptr %i.cb, i64 %i.db
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fj, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.dh = shl i64 %.0132305.us.us, 3
  %i.di = sub i64 %i.da, %i.dh
  %scevgep390 = getelementptr i8, ptr %4, i64 %i.di
  %i.dj = mul i64 %i.bn, %.0132305.us.us
  %scevgep391 = getelementptr i8, ptr %i.dg, i64 %i.dj
  %i.dk = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.dl = xor i64 %i.dk, -1
  %i.dm = add nsw i64 %.0135326.us, %i.dl         ; 4 uses
  %i.dn = xor i64 %.0132305.us.us, -1
  %i.do = add nsw i64 %.sroa.speculated210.us.us, %i.dn ; 6 uses
  %i.dp = sub i64 %i.dm, %i.do                    ; 2 uses
  %i.dq = mul nsw i64 %i.dm, %3                   ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %2, i64 %i.dm
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = fdiv double 1.000000e+00, %i.dt         ; 3 uses
  %i.dv = getelementptr [8 x i8], ptr %4, i64 %i.dm ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.dp
  %i.dx = getelementptr [8 x i8], ptr %2, i64 %i.dp
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %i.dq ; 3 uses
  %i.dz = icmp sgt i64 %i.do, 0
  br i1 %i.dz, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us314.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.do, 4
  %bound0 = icmp ult ptr %scevgep388, %scevgep391
  %bound1 = icmp ult ptr %i.dy, %scevgep390
  %found.conflict = and i1 %bound0, %bound1
  %i.ea = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.do, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us314.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph397, label %.lr.ph303.split.us314.us.preheader409

vector.ph397:                                     ; preds = %.lr.ph303.split.us314.us.preheader
  %broadcast.splatinsert399 = insertelement <2 x double> poison, double %i.du, i64 0
  %broadcast.splat400 = shufflevector <2 x double> %broadcast.splatinsert399, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dv, i64 %.0134310.us.us
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %index402 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 16     ; 2 uses
  %wide.load403 = load <2 x double>, ptr %i.ec, align 8, !tbaa !189
  %wide.load404 = load <2 x double>, ptr %i.ed, align 8, !tbaa !189
  %i.ee = fmul <2 x double> %broadcast.splat400, %wide.load403
  %i.ef = fmul <2 x double> %broadcast.splat400, %wide.load404
  store <2 x double> %i.ee, ptr %i.ec, align 8, !tbaa !189
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !189
  %index.next405 = add nuw i64 %index402, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.eg, label %middle.block406, label %vector.body401, !llvm.loop !1041

middle.block406:                                  ; preds = %vector.body401
  br i1 %cmp.n407, label %._crit_edge304.us.us, label %.lr.ph303.split.us314.us.preheader409

.lr.ph303.split.us314.us.preheader409:            ; preds = %.lr.ph303.split.us314.us.preheader, %middle.block406
  %.0131301.us315.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us314.us.preheader ], [ %i.cx, %middle.block406 ]
  br label %.lr.ph303.split.us314.us

.lr.ph303.split.us314.us:                         ; preds = %.lr.ph303.split.us314.us.preheader409, %.lr.ph303.split.us314.us
  %.0131301.us315.us = phi i64 [ %i.el, %.lr.ph303.split.us314.us ], [ %.0131301.us315.us.ph, %.lr.ph303.split.us314.us.preheader409 ] ; 2 uses
  %i.eh = mul nsw i64 %.0131301.us315.us, %6
  %i.ei = getelementptr [8 x i8], ptr %i.dv, i64 %i.eh ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !189
  %i.ek = fmul double %i.du, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !189
  %i.el = add nuw nsw i64 %.0131301.us315.us, 1   ; 2 uses
  %i.em = icmp slt i64 %i.el, %i.cn
  br i1 %i.em, label %.lr.ph303.split.us314.us, label %._crit_edge304.us.us, !llvm.loop !1042

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fh, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.en = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.dv, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !189
  %i.eq = fmul double %i.du, %i.ep                ; 2 uses
  store double %i.eq, ptr %i.eo, align 8, !tbaa !189
  %i.er = getelementptr [8 x i8], ptr %i.dw, i64 %i.en ; 2 uses
  %i.es = fneg double %i.eq                       ; 2 uses
  %brmerge416 = select i1 %min.iters.check, i1 true, i1 %i.ea
  br i1 %brmerge416, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.es, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <2 x double>, ptr %i.et, align 8, !tbaa !189, !alias.scope !1054
  %wide.load392 = load <2 x double>, ptr %i.eu, align 8, !tbaa !189, !alias.scope !1054
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load393 = load <2 x double>, ptr %i.ev, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %wide.load394 = load <2 x double>, ptr %i.ew, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load393)
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load392, <2 x double> %wide.load394)
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !1046

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.ff, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.0130300.us.us.us
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !189
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0130300.us.us.us ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !189
  %i.fe = call double @llvm.fmuladd.f64(double %i.es, double %i.fb, double %i.fd)
  store double %i.fe, ptr %i.fc, align 8, !tbaa !189
  %i.ff = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.do
  br i1 %i.fg, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !1047

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.fh = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.cn
  br i1 %i.fi, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !1048

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us314.us, %._crit_edge.us.us.us, %middle.block406
  %i.fj = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %i.dd
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1049

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.q
  %i.fk = sub nsw i64 %i.de, %.sroa.speculated210.us.us ; 5 uses
  %i.fl = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.fm = sub i64 %.0135326.us, %i.fl             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fm
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.fk)
          to label %bb.r unwind label %.split.us.split.us

bb.r:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.fn = icmp sgt i64 %i.fk, 0
  br i1 %i.fn, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.fo = mul nsw i64 %i.fm, %3
  %i.fp = getelementptr [8 x i8], ptr %i.by, i64 %i.fo
  store ptr %i.fp, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.fk, i64 noundef 0, i64 noundef 0)
          to label %bb.t unwind label %.split320.us.split.us

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store ptr %i.cs, ptr %13, align 8
end_hunk_3
begin_hunk_4_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.18:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %.noexc59 unwind label %bb.l   ; 5 uses

.noexc59:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !216
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc59
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !216
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc59, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.060.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.m = tail call i32 @omp_get_thread_num()
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !286  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !166   ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.q, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.r = load i32, ptr %i.b, align 4, !tbaa !166
  %i.s = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.q) ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !166
  %i.t = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not73 = icmp sgt i32 %i.t, %i.s
  br i1 %.not73, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.x = sext i32 %i.m to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.z = sext i32 %i.t to i64
  %i.aa = add nsw i32 %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76, %.loopexit
  %indvars.iv94 = phi i64 [ %i.z, %.lr.ph76 ], [ %indvars.iv.next95, %.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv94
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !166 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !166 ; 8 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.aj = load ptr, ptr %5, align 8, !tbaa !291
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ae
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !280 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.am = icmp ult i32 %i.ah, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %i.an = sext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %i.an
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !216
  %.not5768 = icmp slt i32 %i.ah, 0
  br i1 %.not5768, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.ap = load ptr, ptr %8, align 8, !tbaa !269
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv94
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !216
  %i.as = load ptr, ptr %7, align 8, !tbaa !269
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv94
  %i.au = load float, ptr %i.at, align 4, !tbaa !216
  %i.av = fpext float %i.ar to double
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !192
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.x
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ae
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.bb = fpext float %i.au to double
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.x
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !185
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.ae
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187 ; 2 uses
  %i.bh = add nuw i32 %i.ah, 1                    ; 2 uses
  %wide.trip.count92 = zext i32 %i.bh to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !269
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv94
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !216
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv
  store float %i.bl, ptr %i.bm, align 4, !tbaa !216
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv94
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !216
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !216
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !269
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv94
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !216
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next.1
  store float %i.bv, ptr %i.bw, align 4, !tbaa !216
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !269
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv94
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !216
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next.2
  store float %i.ca, ptr %i.cb, align 4, !tbaa !216
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.g, !llvm.loop !1101

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod112)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !269
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv94
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !216
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.epil
  store float %i.cf, ptr %i.cg, align 4, !tbaa !216
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !1102

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge.thread.unr-lcssa
  %i.ch = zext nneg i32 %i.ah to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %i.ch
  store float 1.000000e+00, ptr %i.ci, align 4, !tbaa !216
  br label %.lr.ph72

bb.i:                                             ; preds = %.lr.ph72, %.loopexit111
  %indvars.iv88 = phi i32 [ %i.bh, %.lr.ph72 ], [ %indvars.iv.next89, %.loopexit111 ] ; 2 uses
  %indvars.iv79 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next80, %.loopexit111 ] ; 7 uses
  %.05169 = phi i32 [ 0, %.lr.ph72 ], [ %i.cs, %.loopexit111 ] ; 2 uses
  %i.cj = trunc i64 %indvars.iv79 to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !216
  %i.cm = fpext float %i.cl to double             ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv79 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !189
  %i.cp = call double @llvm.fmuladd.f64(double %i.cm, double %i.av, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !189
  %i.cq = fmul double %i.bb, %i.cm                ; 2 uses
  %i.cr = sext i32 %.05169 to i64                 ; 3 uses
  %i.cs = add i32 %.05169, %indvars.iv88          ; 2 uses
  %10 = sub i32 %i.ah, %i.cj                      ; 2 uses
  %i.ct = zext i32 %10 to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %10, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cu, 8589934588              ; 4 uses
  %i.cv = add nsw i64 %n.vec, %i.cr
  %i.cw = add nuw i64 %indvars.iv79, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load = load <2 x float>, ptr %i.cy, align 4, !tbaa !216
  %wide.load107 = load <2 x float>, ptr %i.cz, align 4, !tbaa !216
  %i.da = fpext <2 x float> %wide.load to <2 x double>
  %i.db = fpext <2 x float> %wide.load107 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load108 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load109 = load <2 x double>, ptr %i.dc, align 8, !tbaa !189
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.da, <2 x double> %wide.load108)
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.db, <2 x double> %wide.load109)
  store <2 x double> %i.dd, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.de, ptr %i.dc, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %.loopexit111, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv83.ph = phi i64 [ %i.cr, %bb.i ], [ %i.cv, %middle.block ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv79, %bb.i ], [ %i.cw, %middle.block ]
  br label %scalar.ph

.loopexit111:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  %exitcond93.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.i, !llvm.loop !1104

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %scalar.ph ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph ], [ %indvars.iv81.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv81
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !216
  %i.di = fpext float %i.dh to double
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv83 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = call double @llvm.fmuladd.f64(double %i.cq, double %i.di, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !189
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond90.not = icmp eq i32 %i.cs, %lftr.wideiv
  br i1 %exitcond90.not, label %.loopexit111, label %scalar.ph, !llvm.loop !1105

.loopexit:                                        ; preds = %.loopexit111, %._crit_edge, %bb.e
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv97 = trunc i64 %indvars.iv.next95 to i32
  %exitcond98.not = icmp eq i32 %i.aa, %lftr.wideiv97
  br i1 %exitcond98.not, label %._crit_edge77, label %bb.e

._crit_edge77:                                    ; preds = %.loopexit, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge77, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.060.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = ptrtoint ptr %.sroa.11.0 to i64
  %i.dn = ptrtoint ptr %.sroa.060.0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0, i64 noundef %i.do) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #37
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.19(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 592
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 664
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.q = sext i32 %i.k to i64
  %i.r = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %._crit_edge
  %indvars.iv = phi i64 [ %i.q, %.lr.ph37 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 5 uses
  %i.aa = add nsw i64 %i.z, 1                     ; 5 uses
  %i.ab = add nsw i64 %i.z, 2
  %i.ac = mul i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 1                       ; 7 uses
  %.not39 = icmp eq i64 %i.ad, 0
  br i1 %.not39, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ae = load i32, ptr %5, align 4, !tbaa !166
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 8 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187 ; 8 uses
  %min.iters.check61 = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph
  %i.ao = shl i64 %i.ad, 3                        ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.an, i64 %i.ao
  %scevgep56 = getelementptr i8, ptr %i.ak, i64 %i.ao
  %bound057 = icmp ult ptr %i.an, %scevgep56
  %bound158 = icmp ult ptr %i.ak, %scevgep55
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck54
  %n.vec63 = and i64 %i.ad, 9223372036854775804   ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index65 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load66 = load <2 x double>, ptr %i.ap, align 8, !tbaa !189, !alias.scope !1118
  %wide.load67 = load <2 x double>, ptr %i.aq, align 8, !tbaa !189, !alias.scope !1118
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index65 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.ar, align 8, !tbaa !189, !alias.scope !1119, !noalias !1118
  %wide.load69 = load <2 x double>, ptr %i.as, align 8, !tbaa !189, !alias.scope !1119, !noalias !1118
  %i.at = fadd <2 x double> %wide.load66, %wide.load68
  %i.au = fadd <2 x double> %wide.load67, %wide.load69
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !189, !alias.scope !1119, !noalias !1118
end_hunk_4
begin_hunk_5_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.22:bb.a
  %i.ab = add i64 %i.y, 8
  %i.ac = mul i64 %i.ab, %i.aa
  %.idx = and i64 %i.ac, 9223372036854775800      ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %.idx, 0
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !222
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %.idx, i1 false), !tbaa !189
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.af = icmp eq i64 %i.y, -4
  br i1 %i.af, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27, label %.lr.ph.i.i.i.i24.preheader

.lr.ph.i.i.i.i24.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit
  %.idx31 = shl nsw i64 %i.y, 1
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.ai = and i64 %.idx31, -8
  %i.aj = add i64 %i.ai, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !189
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27: ; preds = %.lr.ph.i.i.i.i24.preheader, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEfEvT_S7_RKT0_.exit27, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.23(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree nonnull readnone align 8 captures(none) %9) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %.noexc68 unwind label %bb.l   ; 5 uses

.noexc68:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !216
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc68
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !216
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc68, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc68 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.069.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc68 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.m = tail call i32 @omp_get_thread_num()
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !286  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !166   ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.q, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.r = load i32, ptr %i.b, align 4, !tbaa !166
  %i.s = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.q) ; 2 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !166
  %i.t = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not86 = icmp sgt i32 %i.t, %i.s
  br i1 %.not86, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = sext i32 %i.m to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.z = sext i32 %i.t to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph89, %.thread75
  %indvars.iv108 = phi i64 [ %i.z, %.lr.ph89 ], [ %indvars.iv.next109, %.thread75 ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv108
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !166 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread75, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = zext nneg i32 %i.ab to i64              ; 5 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !166 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ai = load ptr, ptr %5, align 8, !tbaa !291
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !280
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !269
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv108
  %i.ao = load float, ptr %i.an, align 4, !tbaa !216 ; 2 uses
  %i.ap = fcmp uno float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %6, align 8, !tbaa !273
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.w
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ad ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !166
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !166
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv
  store float %i.ao, ptr %i.aw, align 4, !tbaa !216
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1181

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.ax = sext i32 %i.ag to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %i.ax
  store float 1.000000e+00, ptr %i.ay, align 4, !tbaa !216
  %.not6681 = icmp slt i32 %i.ag, 0
  br i1 %.not6681, label %.thread75, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %i.az = load ptr, ptr %8, align 8, !tbaa !269
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv108
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !216
  %i.bc = load ptr, ptr %7, align 8, !tbaa !269
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv108
  %i.be = load float, ptr %i.bd, align 4, !tbaa !216
  %i.bf = fpext float %i.bb to double
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.w
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.ad
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !187
  %i.bl = fpext float %i.be to double
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.w
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !185
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.ad
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !187 ; 2 uses
  %i.br = add nuw i32 %i.ag, 1                    ; 2 uses
  %wide.trip.count106 = zext i32 %i.br to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph85, %.loopexit
  %indvars.iv102 = phi i32 [ %i.br, %.lr.ph85 ], [ %indvars.iv.next103, %.loopexit ] ; 2 uses
  %indvars.iv93 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next94, %.loopexit ] ; 7 uses
  %.05882 = phi i32 [ 0, %.lr.ph85 ], [ %i.cb, %.loopexit ] ; 2 uses
  %i.bs = trunc i64 %indvars.iv93 to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !216
  %i.bv = fpext float %i.bu to double             ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv93 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !189
  %i.by = call double @llvm.fmuladd.f64(double %i.bv, double %i.bf, double %i.bx)
  store double %i.by, ptr %i.bw, align 8, !tbaa !189
  %i.bz = fmul double %i.bl, %i.bv                ; 2 uses
  %i.ca = sext i32 %.05882 to i64                 ; 3 uses
  %i.cb = add i32 %.05882, %indvars.iv102         ; 2 uses
  %10 = sub i32 %i.ag, %i.bs                      ; 2 uses
  %i.cc = zext i32 %10 to i64
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %10, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cd, 8589934588              ; 4 uses
  %i.ce = add nsw i64 %n.vec, %i.ca
  %i.cf = add nuw i64 %indvars.iv93, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load = load <2 x float>, ptr %i.ch, align 4, !tbaa !216
  %wide.load120 = load <2 x float>, ptr %i.ci, align 4, !tbaa !216
  %i.cj = fpext <2 x float> %wide.load to <2 x double>
  %i.ck = fpext <2 x float> %wide.load120 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load121 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load122 = load <2 x double>, ptr %i.cl, align 8, !tbaa !189
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cj, <2 x double> %wide.load121)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ck, <2 x double> %wide.load122)
  store <2 x double> %i.cm, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv97.ph = phi i64 [ %i.ca, %bb.i ], [ %i.ce, %middle.block ]
  %indvars.iv95.ph = phi i64 [ %indvars.iv93, %bb.i ], [ %i.cf, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %exitcond107.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count106
  br i1 %exitcond107.not, label %.thread75, label %bb.i, !llvm.loop !1183

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %scalar.ph ], [ %indvars.iv95.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv95
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !216
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv97 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !189
  %i.cu = call double @llvm.fmuladd.f64(double %i.bz, double %i.cr, double %i.ct)
  store double %i.cu, ptr %i.cs, align 8, !tbaa !189
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32
  %exitcond104.not = icmp eq i32 %i.cb, %lftr.wideiv
  br i1 %exitcond104.not, label %.loopexit, label %scalar.ph, !llvm.loop !1184

.thread75:                                        ; preds = %bb.g, %.loopexit, %._crit_edge, %bb.e
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !166
  %i.cw = sext i32 %i.cv to i64
  %.not.not = icmp slt i64 %indvars.iv108, %i.cw
  br i1 %.not.not, label %bb.e, label %._crit_edge90

._crit_edge90:                                    ; preds = %.thread75, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge90, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.069.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %.sroa.11.0 to i64
  %i.cy = ptrtoint ptr %.sroa.069.0 to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0, i64 noundef %i.cz) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  tail call void @__clang_call_terminate(ptr %i.db) #37
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.24(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not38 = icmp sgt i32 %i.k, %i.j
  br i1 %.not38, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 592
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 664
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.q = load ptr, ptr %7, align 8, !tbaa !273
  %i.r = load ptr, ptr %6, align 8, !tbaa !167
  %i.s = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %._crit_edge
  %indvars.iv = phi i64 [ %i.s, %.lr.ph41 ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !167
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, 1                    ; 5 uses
  %i.ac = add nsw i64 %i.aa, 2
  %i.ad = mul i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 1                       ; 7 uses
  %.not43 = icmp eq i64 %i.ae, 0
  %.pre.pre = load i32, ptr %5, align 4, !tbaa !166 ; 2 uses
  br i1 %.not43, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.af = sext i32 %.pre.pre to i64
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 8 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187 ; 8 uses
  %min.iters.check63 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph
  %i.ao = shl i64 %i.ae, 3                        ; 2 uses
  %scevgep57 = getelementptr i8, ptr %i.an, i64 %i.ao
  %scevgep58 = getelementptr i8, ptr %i.ak, i64 %i.ao
  %bound059 = icmp ult ptr %i.an, %scevgep58
  %bound160 = icmp ult ptr %i.ak, %scevgep57
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck56
  %n.vec65 = and i64 %i.ae, 9223372036854775804   ; 3 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load68 = load <2 x double>, ptr %i.ap, align 8, !tbaa !189, !alias.scope !1197
  %wide.load69 = load <2 x double>, ptr %i.aq, align 8, !tbaa !189, !alias.scope !1197
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index67 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !189, !alias.scope !1198, !noalias !1197
  %wide.load71 = load <2 x double>, ptr %i.as, align 8, !tbaa !189, !alias.scope !1198, !noalias !1197
  %i.at = fadd <2 x double> %wide.load68, %wide.load70
end_hunk_5
begin_hunk_6_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.27:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %.noexc59 unwind label %bb.l   ; 5 uses

.noexc59:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !216
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc59
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !216
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc59, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.j, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.j, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.060.0 = phi ptr [ %i.i, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.i, %.noexc59 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 13 uses
  %i.m = tail call i32 @omp_get_thread_num()
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !286  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !166   ; 3 uses
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.q, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.r = load i32, ptr %i.b, align 4, !tbaa !166
  %i.s = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.q) ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !166
  %i.t = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not73 = icmp sgt i32 %i.t, %i.s
  br i1 %.not73, label %._crit_edge77, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.x = sext i32 %i.m to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.z = sext i32 %i.t to i64
  %i.aa = add nsw i32 %i.s, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76, %.loopexit
  %indvars.iv94 = phi i64 [ %i.z, %.lr.ph76 ], [ %indvars.iv.next95, %.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv94
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !166 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !166 ; 8 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.aj = load ptr, ptr %5, align 8, !tbaa !291
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ae
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !280 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.am = icmp ult i32 %i.ah, 4
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %i.an = sext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %i.an
  store float 1.000000e+00, ptr %i.ao, align 4, !tbaa !216
  %.not5768 = icmp slt i32 %i.ah, 0
  br i1 %.not5768, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge.thread, %._crit_edge
  %i.ap = load ptr, ptr %8, align 8, !tbaa !269
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv94
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !216
  %i.as = load ptr, ptr %7, align 8, !tbaa !269
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv94
  %i.au = load float, ptr %i.at, align 4, !tbaa !216
  %i.av = fpext float %i.ar to double
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !192
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.x
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ae
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.bb = fpext float %i.au to double
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !192
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.x
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !185
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.ae
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187 ; 2 uses
  %i.bh = add nuw i32 %i.ah, 1                    ; 2 uses
  %wide.trip.count92 = zext i32 %i.bh to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !269
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv94
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !216
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv
  store float %i.bl, ptr %i.bm, align 4, !tbaa !216
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !269
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv94
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !216
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !216
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !269
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv94
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !216
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next.1
  store float %i.bv, ptr %i.bw, align 4, !tbaa !216
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !269
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %indvars.iv94
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !216
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.next.2
  store float %i.ca, ptr %i.cb, align 4, !tbaa !216
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %bb.g, !llvm.loop !1217

._crit_edge.thread.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod112)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !269
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv94
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !216
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv.epil
  store float %i.cf, ptr %i.cg, align 4, !tbaa !216
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %bb.h, !llvm.loop !1218

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge.thread.unr-lcssa
  %i.ch = zext nneg i32 %i.ah to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %i.ch
  store float 1.000000e+00, ptr %i.ci, align 4, !tbaa !216
  br label %.lr.ph72

bb.i:                                             ; preds = %.lr.ph72, %.loopexit111
  %indvars.iv88 = phi i32 [ %i.bh, %.lr.ph72 ], [ %indvars.iv.next89, %.loopexit111 ] ; 2 uses
  %indvars.iv79 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next80, %.loopexit111 ] ; 7 uses
  %.05169 = phi i32 [ 0, %.lr.ph72 ], [ %i.cs, %.loopexit111 ] ; 2 uses
  %i.cj = trunc i64 %indvars.iv79 to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !216
  %i.cm = fpext float %i.cl to double             ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv79 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !189
  %i.cp = call double @llvm.fmuladd.f64(double %i.cm, double %i.av, double %i.co)
  store double %i.cp, ptr %i.cn, align 8, !tbaa !189
  %i.cq = fmul double %i.bb, %i.cm                ; 2 uses
  %i.cr = sext i32 %.05169 to i64                 ; 3 uses
  %i.cs = add i32 %.05169, %indvars.iv88          ; 2 uses
  %10 = sub i32 %i.ah, %i.cj                      ; 2 uses
  %i.ct = zext i32 %10 to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %10, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cu, 8589934588              ; 4 uses
  %i.cv = add nsw i64 %n.vec, %i.cr
  %i.cw = add nuw i64 %indvars.iv79, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load = load <2 x float>, ptr %i.cy, align 4, !tbaa !216
  %wide.load107 = load <2 x float>, ptr %i.cz, align 4, !tbaa !216
  %i.da = fpext <2 x float> %wide.load to <2 x double>
  %i.db = fpext <2 x float> %wide.load107 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load108 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load109 = load <2 x double>, ptr %i.dc, align 8, !tbaa !189
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.da, <2 x double> %wide.load108)
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.db, <2 x double> %wide.load109)
  store <2 x double> %i.dd, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.de, ptr %i.dc, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %.loopexit111, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv83.ph = phi i64 [ %i.cr, %bb.i ], [ %i.cv, %middle.block ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv79, %bb.i ], [ %i.cw, %middle.block ]
  br label %scalar.ph

.loopexit111:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  %exitcond93.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.i, !llvm.loop !1220

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %scalar.ph ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph ], [ %indvars.iv81.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv81
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !216
  %i.di = fpext float %i.dh to double
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv83 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = call double @llvm.fmuladd.f64(double %i.cq, double %i.di, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !189
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond90.not = icmp eq i32 %i.cs, %lftr.wideiv
  br i1 %exitcond90.not, label %.loopexit111, label %scalar.ph, !llvm.loop !1221

.loopexit:                                        ; preds = %.loopexit111, %._crit_edge, %bb.e
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv97 = trunc i64 %indvars.iv.next95 to i32
  %exitcond98.not = icmp eq i32 %i.aa, %lftr.wideiv97
  br i1 %exitcond98.not, label %._crit_edge77, label %bb.e

._crit_edge77:                                    ; preds = %.loopexit, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge77, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %.not.i.i.i = icmp eq ptr %.sroa.060.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = ptrtoint ptr %.sroa.11.0 to i64
  %i.dn = ptrtoint ptr %.sroa.060.0 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0, i64 noundef %i.do) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #37
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.28(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !166    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.h = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !166
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !166
  %i.k = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !273
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 640
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 592
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 664
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.q = sext i32 %i.k to i64
  %i.r = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %._crit_edge
  %indvars.iv = phi i64 [ %i.q, %.lr.ph37 ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 5 uses
  %i.aa = add nsw i64 %i.z, 1                     ; 5 uses
  %i.ab = add nsw i64 %i.z, 2
  %i.ac = mul i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = lshr i64 %i.ac, 1                       ; 7 uses
  %.not39 = icmp eq i64 %i.ad, 0
  br i1 %.not39, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ae = load i32, ptr %5, align 4, !tbaa !166
  %i.af = sext i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !192
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !185
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 8 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !187 ; 8 uses
  %min.iters.check61 = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph
  %i.ao = shl i64 %i.ad, 3                        ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.an, i64 %i.ao
  %scevgep56 = getelementptr i8, ptr %i.ak, i64 %i.ao
  %bound057 = icmp ult ptr %i.an, %scevgep56
  %bound158 = icmp ult ptr %i.ak, %scevgep55
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck54
  %n.vec63 = and i64 %i.ad, 9223372036854775804   ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index65 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load66 = load <2 x double>, ptr %i.ap, align 8, !tbaa !189, !alias.scope !1234
  %wide.load67 = load <2 x double>, ptr %i.aq, align 8, !tbaa !189, !alias.scope !1234
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index65 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.ar, align 8, !tbaa !189, !alias.scope !1235, !noalias !1234
  %wide.load69 = load <2 x double>, ptr %i.as, align 8, !tbaa !189, !alias.scope !1235, !noalias !1234
  %i.at = fadd <2 x double> %wide.load66, %wide.load68
  %i.au = fadd <2 x double> %wide.load67, %wide.load69
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !189, !alias.scope !1235, !noalias !1234
end_hunk_6
