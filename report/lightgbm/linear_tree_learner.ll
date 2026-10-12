Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.12:bb.a
  %i.aa = add nsw i64 %i.z, 1
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
  %.05882 = phi i32 [ 0, %.lr.ph85 ], [ %i.ca, %.loopexit ] ; 2 uses
  %10 = trunc i64 %indvars.iv93 to i32
  %11 = sub i32 %i.ag, %10                        ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !216
  %i.bu = fpext float %i.bt to double             ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv93 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !189
  %i.bx = call double @llvm.fmuladd.f64(double %i.bu, double %i.bf, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !189
  %i.by = fmul double %i.bl, %i.bu                ; 2 uses
  %i.bz = sext i32 %.05882 to i64                 ; 3 uses
  %i.ca = add i32 %.05882, %indvars.iv102         ; 2 uses
  %i.cb = zext i32 %11 to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cc, 8589934588              ; 4 uses
  %i.cd = add nsw i64 %n.vec, %i.bz
  %i.ce = add nuw i64 %indvars.iv93, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %wide.load = load <2 x float>, ptr %i.cg, align 4, !tbaa !216
  %wide.load120 = load <2 x float>, ptr %i.ch, align 4, !tbaa !216
  %i.ci = fpext <2 x float> %wide.load to <2 x double>
  %i.cj = fpext <2 x float> %wide.load120 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load121 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load122 = load <2 x double>, ptr %i.ck, align 8, !tbaa !189
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ci, <2 x double> %wide.load121)
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cj, <2 x double> %wide.load122)
  store <2 x double> %i.cl, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv97.ph = phi i64 [ %i.bz, %bb.i ], [ %i.cd, %middle.block ]
  %indvars.iv95.ph = phi i64 [ %indvars.iv93, %bb.i ], [ %i.ce, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %exitcond107.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count106
  br i1 %exitcond107.not, label %.thread75, label %bb.i, !llvm.loop !501

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %scalar.ph ], [ %indvars.iv95.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv95
  %i.cp = load float, ptr %i.co, align 4, !tbaa !216
  %i.cq = fpext float %i.cp to double
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv97 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = call double @llvm.fmuladd.f64(double %i.by, double %i.cq, double %i.cs)
  store double %i.ct, ptr %i.cr, align 8, !tbaa !189
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32
  %exitcond104.not = icmp eq i32 %i.ca, %lftr.wideiv
  br i1 %exitcond104.not, label %.loopexit, label %scalar.ph, !llvm.loop !502

.thread75:                                        ; preds = %bb.g, %.loopexit, %._crit_edge, %bb.e
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !166
  %i.cv = sext i32 %i.cu to i64
  %.not.not = icmp slt i64 %indvars.iv108, %i.cv
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
  %i.cw = ptrtoint ptr %.sroa.11.0 to i64
  %i.cx = ptrtoint ptr %.sroa.069.0 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0, i64 noundef %i.cy) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #37
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
begin_hunk_1_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
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
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !349  ; 2 uses
  %.not159 = icmp eq ptr %i.w, null
  br i1 %.not159, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #38 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !384

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !386
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 6 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 2 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = add i64 %i.bk, %0
  %i.bm = shl i64 %i.bl, 3
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %4, i64 %i.bd
  %i.bt = getelementptr i8, ptr %2, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.fv, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bw = add i64 %i.bh, %i.bv
  %i.bx = mul i64 %i.bp, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.by = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %4, i64 %i.by
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph308.us.us

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.ft, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 12 uses
  %16 = mul i64 %., %indvar377
  %17 = or disjoint i64 %.0134310.us.us, 1
  %i.cd = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.ce = add i64 %i.bw, %i.cd
  %i.cf = or disjoint i64 %.0134310.us.us, 1
  %i.cg = mul i64 %., %indvar377                  ; 2 uses
  %i.ch = sub i64 %1, %i.cg
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.ch)
  %i.ci = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cf, i64 %i.ci)
  %i.cj = xor i64 %i.cg, -1
  %i.ck = add i64 %smax, %i.cj
  %i.cl = mul i64 %i.bi, %i.ck
  %i.cm = add i64 %i.ce, %i.cl
  %i.cn = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cn) ; 3 uses
  %i.co = add i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 3 uses
  %i.cp = icmp slt i64 %i.cn, 1
  %i.cq = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cq ; 2 uses
  %i.cs = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cs
  %i.ct = getelementptr [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cb, i64 %i.cd
  %i.cv = call i64 @llvm.smax.i64(i64 %17, i64 %i.co) ; 2 uses
  %i.cw = sub i64 %i.cv, %16                      ; 2 uses
  %min.iters.check390 = icmp ugt i64 %i.cw, 3
  %or.cond = and i1 %min.iters.check390, %ident.check.not
  %i.cx = and i64 %i.cv, 3                        ; 2 uses
  %n.vec392 = sub nuw i64 %i.cw, %i.cx            ; 2 uses
  %i.cy = add i64 %.0134310.us.us, %n.vec392
  %cmp.n401 = icmp eq i64 %i.cx, 0
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fr, %bb.x ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.cz = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cu, i64 %i.cz
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.da = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.da
  %i.db = add i64 %i.cm, %i.cz
  %i.dc = mul i64 %i.br, %indvar379
  %i.dd = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 4)
  %i.df = sub nuw nsw i64 %smin, %.0133306.us.us  ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.df, i64 4) ; 7 uses
  %i.dg = icmp slt i64 %i.df, 1
  %brmerge = select i1 %i.dg, i1 true, i1 %i.cp
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.s
  %i.dh = getelementptr i8, ptr %i.cc, i64 %i.dc
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fk, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.di = shl i64 %.0132305.us.us, 3
  %i.dj = sub i64 %i.db, %i.di
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dj
  %i.dk = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dh, i64 %i.dk
  %i.dl = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.dm = xor i64 %i.dl, -1
  %i.dn = add nsw i64 %.0135326.us, %i.dm         ; 4 uses
  %i.do = xor i64 %.0132305.us.us, -1
  %i.dp = add nsw i64 %.sroa.speculated210.us.us, %i.do ; 6 uses
  %i.dq = sub i64 %i.dn, %i.dp                    ; 2 uses
  %i.dr = mul nsw i64 %i.dn, %3                   ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %2, i64 %i.dn
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !189
  %i.dv = fdiv double 1.000000e+00, %i.du         ; 3 uses
  %i.dw = getelementptr [8 x i8], ptr %4, i64 %i.dn ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %4, i64 %i.dq
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dq
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dr ; 3 uses
  %i.ea = icmp sgt i64 %i.dp, 0
  br i1 %i.ea, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us314.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dp, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.dz, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.eb = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dp, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us314.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph391, label %.lr.ph303.split.us314.us.preheader403

vector.ph391:                                     ; preds = %.lr.ph303.split.us314.us.preheader
  %broadcast.splatinsert393 = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat394 = shufflevector <2 x double> %broadcast.splatinsert393, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dw, i64 %.0134310.us.us
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph391
  %index396 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %index396 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16     ; 2 uses
  %wide.load397 = load <2 x double>, ptr %i.ed, align 8, !tbaa !189
  %wide.load398 = load <2 x double>, ptr %i.ee, align 8, !tbaa !189
  %i.ef = fmul <2 x double> %broadcast.splat394, %wide.load397
  %i.eg = fmul <2 x double> %broadcast.splat394, %wide.load398
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !189
  store <2 x double> %i.eg, ptr %i.ee, align 8, !tbaa !189
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eh, label %middle.block400, label %vector.body395, !llvm.loop !1041

middle.block400:                                  ; preds = %vector.body395
  br i1 %cmp.n401, label %._crit_edge304.us.us, label %.lr.ph303.split.us314.us.preheader403

.lr.ph303.split.us314.us.preheader403:            ; preds = %.lr.ph303.split.us314.us.preheader, %middle.block400
  %.0131301.us315.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us314.us.preheader ], [ %i.cy, %middle.block400 ]
  br label %.lr.ph303.split.us314.us

.lr.ph303.split.us314.us:                         ; preds = %.lr.ph303.split.us314.us.preheader403, %.lr.ph303.split.us314.us
  %.0131301.us315.us = phi i64 [ %i.em, %.lr.ph303.split.us314.us ], [ %.0131301.us315.us.ph, %.lr.ph303.split.us314.us.preheader403 ] ; 2 uses
  %i.ei = mul nsw i64 %.0131301.us315.us, %6
  %i.ej = getelementptr [8 x i8], ptr %i.dw, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !189
  %i.el = fmul double %i.dv, %i.ek
  store double %i.el, ptr %i.ej, align 8, !tbaa !189
  %i.em = add nuw nsw i64 %.0131301.us315.us, 1   ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.co
  br i1 %i.en, label %.lr.ph303.split.us314.us, label %._crit_edge304.us.us, !llvm.loop !1042

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.fi, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.eo = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.dw, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !189
  %i.er = fmul double %i.dv, %i.eq                ; 2 uses
  store double %i.er, ptr %i.ep, align 8, !tbaa !189
  %i.es = getelementptr [8 x i8], ptr %i.dx, i64 %i.eo ; 2 uses
  %i.et = fneg double %i.er                       ; 2 uses
  %brmerge406 = select i1 %min.iters.check, i1 true, i1 %i.eb
  br i1 %brmerge406, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.et, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x double>, ptr %i.eu, align 8, !tbaa !189, !alias.scope !1054
  %wide.load386 = load <2 x double>, ptr %i.ev, align 8, !tbaa !189, !alias.scope !1054
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.ew, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %wide.load388 = load <2 x double>, ptr %i.ex, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !189, !alias.scope !1055, !noalias !1054
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1046

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fg, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0130300.us.us.us
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !189
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0130300.us.us.us ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !189
  %i.ff = call double @llvm.fmuladd.f64(double %i.et, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !189
  %i.fg = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %i.dp
  br i1 %i.fh, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !1047

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.fi = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.co
  br i1 %i.fj, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !1048

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us314.us, %._crit_edge.us.us.us, %middle.block400
  %i.fk = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fk, %i.de
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1049

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.s
  %i.fl = sub nsw i64 %i.df, %.sroa.speculated210.us.us ; 5 uses
  %i.fm = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.fn = sub i64 %.0135326.us, %i.fm             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fn
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.fl)
          to label %bb.t unwind label %.split.us.split.us

bb.t:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.fo = icmp sgt i64 %i.fl, 0
  br i1 %i.fo, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  %i.fp = mul nsw i64 %i.fn, %3
  %i.fq = getelementptr [8 x i8], ptr %i.bz, i64 %i.fp
  store ptr %i.fq, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.fl, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split320.us.split.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store ptr %i.ct, ptr %13, align 8
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.18:bb.a
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
  %.05169 = phi i32 [ 0, %.lr.ph72 ], [ %i.cr, %.loopexit111 ] ; 2 uses
  %10 = trunc i64 %indvars.iv79 to i32
  %11 = sub i32 %i.ah, %10                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !216
  %i.cl = fpext float %i.ck to double             ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv79 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !189
  %i.co = call double @llvm.fmuladd.f64(double %i.cl, double %i.av, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !189
  %i.cp = fmul double %i.bb, %i.cl                ; 2 uses
  %i.cq = sext i32 %.05169 to i64                 ; 3 uses
  %i.cr = add i32 %.05169, %indvars.iv88          ; 2 uses
  %i.cs = zext i32 %11 to i64
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.ct, 8589934588              ; 4 uses
  %i.cu = add nsw i64 %n.vec, %i.cq
  %i.cv = add nuw i64 %indvars.iv79, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %wide.load = load <2 x float>, ptr %i.cx, align 4, !tbaa !216
  %wide.load107 = load <2 x float>, ptr %i.cy, align 4, !tbaa !216
  %i.cz = fpext <2 x float> %wide.load to <2 x double>
  %i.da = fpext <2 x float> %wide.load107 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load108 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load109 = load <2 x double>, ptr %i.db, align 8, !tbaa !189
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cz, <2 x double> %wide.load108)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.da, <2 x double> %wide.load109)
  store <2 x double> %i.dc, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.dd, ptr %i.db, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.loopexit111, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv83.ph = phi i64 [ %i.cq, %bb.i ], [ %i.cu, %middle.block ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv79, %bb.i ], [ %i.cv, %middle.block ]
  br label %scalar.ph

.loopexit111:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  %exitcond93.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.i, !llvm.loop !1104

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %scalar.ph ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph ], [ %indvars.iv81.ph, %scalar.ph.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv81
  %i.dg = load float, ptr %i.df, align 4, !tbaa !216
  %i.dh = fpext float %i.dg to double
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv83 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !189
  %i.dk = call double @llvm.fmuladd.f64(double %i.cp, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !189
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond90.not = icmp eq i32 %i.cr, %lftr.wideiv
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
  %i.dl = ptrtoint ptr %.sroa.11.0 to i64
  %i.dm = ptrtoint ptr %.sroa.060.0 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0, i64 noundef %i.dn) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #37
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
end_hunk_2
begin_hunk_3_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b.omp_outlined.22:bb.a
  %i.aa = add nsw i64 %i.z, 1
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
  %.05882 = phi i32 [ 0, %.lr.ph85 ], [ %i.ca, %.loopexit ] ; 2 uses
  %10 = trunc i64 %indvars.iv93 to i32
  %11 = sub i32 %i.ag, %10                        ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !216
  %i.bu = fpext float %i.bt to double             ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv93 ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !189
  %i.bx = call double @llvm.fmuladd.f64(double %i.bu, double %i.bf, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !189
  %i.by = fmul double %i.bl, %i.bu                ; 2 uses
  %i.bz = sext i32 %.05882 to i64                 ; 3 uses
  %i.ca = add i32 %.05882, %indvars.iv102         ; 2 uses
  %i.cb = zext i32 %11 to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.cc, 8589934588              ; 4 uses
  %i.cd = add nsw i64 %n.vec, %i.bz
  %i.ce = add nuw i64 %indvars.iv93, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv93
  %invariant.gep = getelementptr [8 x i8], ptr %i.bq, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %wide.load = load <2 x float>, ptr %i.cg, align 4, !tbaa !216
  %wide.load120 = load <2 x float>, ptr %i.ch, align 4, !tbaa !216
  %i.ci = fpext <2 x float> %wide.load to <2 x double>
  %i.cj = fpext <2 x float> %wide.load120 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load121 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load122 = load <2 x double>, ptr %i.ck, align 8, !tbaa !189
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.ci, <2 x double> %wide.load121)
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cj, <2 x double> %wide.load122)
  store <2 x double> %i.cl, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.cm, ptr %i.ck, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv97.ph = phi i64 [ %i.bz, %bb.i ], [ %i.cd, %middle.block ]
  %indvars.iv95.ph = phi i64 [ %indvars.iv93, %bb.i ], [ %i.ce, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %exitcond107.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count106
  br i1 %exitcond107.not, label %.thread75, label %bb.i, !llvm.loop !1183

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %scalar.ph ], [ %indvars.iv95.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.069.0, i64 %indvars.iv95
  %i.cp = load float, ptr %i.co, align 4, !tbaa !216
  %i.cq = fpext float %i.cp to double
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv97 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = call double @llvm.fmuladd.f64(double %i.by, double %i.cq, double %i.cs)
  store double %i.ct, ptr %i.cr, align 8, !tbaa !189
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32
  %exitcond104.not = icmp eq i32 %i.ca, %lftr.wideiv
  br i1 %exitcond104.not, label %.loopexit, label %scalar.ph, !llvm.loop !1184

.thread75:                                        ; preds = %bb.g, %.loopexit, %._crit_edge, %bb.e
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !166
  %i.cv = sext i32 %i.cu to i64
  %.not.not = icmp slt i64 %indvars.iv108, %i.cv
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
  %i.cw = ptrtoint ptr %.sroa.11.0 to i64
  %i.cx = ptrtoint ptr %.sroa.069.0 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0, i64 noundef %i.cy) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #37
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
end_hunk_3
begin_hunk_4_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b.omp_outlined.27:bb.a
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
  %.05169 = phi i32 [ 0, %.lr.ph72 ], [ %i.cr, %.loopexit111 ] ; 2 uses
  %10 = trunc i64 %indvars.iv79 to i32
  %11 = sub i32 %i.ah, %10                        ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !216
  %i.cl = fpext float %i.ck to double             ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv79 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !189
  %i.co = call double @llvm.fmuladd.f64(double %i.cl, double %i.av, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !189
  %i.cp = fmul double %i.bb, %i.cl                ; 2 uses
  %i.cq = sext i32 %.05169 to i64                 ; 3 uses
  %i.cr = add i32 %.05169, %indvars.iv88          ; 2 uses
  %i.cs = zext i32 %11 to i64
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %11, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.i
  %n.vec = and i64 %i.ct, 8589934588              ; 4 uses
  %i.cu = add nsw i64 %n.vec, %i.cq
  %i.cv = add nuw i64 %indvars.iv79, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv79
  %invariant.gep = getelementptr [8 x i8], ptr %i.bg, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %wide.load = load <2 x float>, ptr %i.cx, align 4, !tbaa !216
  %wide.load107 = load <2 x float>, ptr %i.cy, align 4, !tbaa !216
  %i.cz = fpext <2 x float> %wide.load to <2 x double>
  %i.da = fpext <2 x float> %wide.load107 to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load108 = load <2 x double>, ptr %gep, align 8, !tbaa !189
  %wide.load109 = load <2 x double>, ptr %i.db, align 8, !tbaa !189
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.cz, <2 x double> %wide.load108)
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.da, <2 x double> %wide.load109)
  store <2 x double> %i.dc, ptr %gep, align 8, !tbaa !189
  store <2 x double> %i.dd, ptr %i.db, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.loopexit111, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.i, %middle.block
  %indvars.iv83.ph = phi i64 [ %i.cq, %bb.i ], [ %i.cu, %middle.block ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv79, %bb.i ], [ %i.cv, %middle.block ]
  br label %scalar.ph

.loopexit111:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  %exitcond93.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count92
  br i1 %exitcond93.not, label %.loopexit, label %bb.i, !llvm.loop !1220

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %scalar.ph ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph ], [ %indvars.iv81.ph, %scalar.ph.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.060.0, i64 %indvars.iv81
  %i.dg = load float, ptr %i.df, align 4, !tbaa !216
  %i.dh = fpext float %i.dg to double
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv83 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !189
  %i.dk = call double @llvm.fmuladd.f64(double %i.cp, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !189
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next84 to i32
  %exitcond90.not = icmp eq i32 %i.cr, %lftr.wideiv
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
  %i.dl = ptrtoint ptr %.sroa.11.0 to i64
  %i.dm = ptrtoint ptr %.sroa.060.0 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0, i64 noundef %i.dn) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #37
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
end_hunk_4
