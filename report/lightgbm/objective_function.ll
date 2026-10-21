Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4075
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i:bb.a
  br i1 %i.ho, label %.lr.ph.preheader.i229, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236

.lr.ph.preheader.i229:                            ; preds = %bb.ac
  %i.hp = zext nneg i32 %i.hn to i64
  %.pre.i230 = load double, ptr %i.hm, align 8, !tbaa !191 ; 2 uses
  %i.hq = add nsw i64 %i.hp, -1                   ; 3 uses
  %xtraiter551 = and i64 %i.hq, 1
  %i.hr = icmp eq i32 %i.hn, 2
  br i1 %i.hr, label %.lr.ph.i231.epil.preheader, label %.lr.ph.preheader.i229.new

.lr.ph.preheader.i229.new:                        ; preds = %.lr.ph.preheader.i229
  %unroll_iter557 = and i64 %i.hq, -2
  br label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %.lr.ph.i231, %.lr.ph.preheader.i229.new
  %i.hs = phi double [ %.pre.i230, %.lr.ph.preheader.i229.new ], [ %i.ic, %.lr.ph.i231 ] ; 2 uses
  %.014.i232 = phi i64 [ 1, %.lr.ph.preheader.i229.new ], [ %i.ib, %.lr.ph.i231 ] ; 4 uses
  %.01013.i233 = phi i64 [ 0, %.lr.ph.preheader.i229.new ], [ %spec.select.i234.1, %.lr.ph.i231 ]
  %niter558 = phi i64 [ 0, %.lr.ph.preheader.i229.new ], [ %niter558.next.1, %.lr.ph.i231 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.014.i232
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !191 ; 2 uses
  %i.hv = fcmp ogt double %i.hu, %i.hs            ; 2 uses
  %spec.select.i234 = select i1 %i.hv, i64 %.014.i232, i64 %.01013.i233
  %i.hw = add nuw nsw i64 %.014.i232, 1           ; 2 uses
  %i.hx = select i1 %i.hv, double %i.hu, double %i.hs ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hw
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !191 ; 2 uses
  %i.ia = fcmp ogt double %i.hz, %i.hx            ; 2 uses
  %spec.select.i234.1 = select i1 %i.ia, i64 %i.hw, i64 %spec.select.i234 ; 3 uses
  %i.ib = add nuw nsw i64 %.014.i232, 2           ; 2 uses
  %i.ic = select i1 %i.ia, double %i.hz, double %i.hx ; 2 uses
  %niter558.next.1 = add nuw i64 %niter558, 2     ; 2 uses
  %niter558.ncmp.1 = icmp eq i64 %niter558.next.1, %unroll_iter557
  br i1 %niter558.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, label %.lr.ph.i231, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa: ; preds = %.lr.ph.i231
  %lcmp.mod554.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod554.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236, label %.lr.ph.i231.epil.preheader

.lr.ph.i231.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, %.lr.ph.preheader.i229
  %.epil.init553 = phi double [ %.pre.i230, %.lr.ph.preheader.i229 ], [ %i.ic, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ]
  %.014.i232.epil.init = phi i64 [ 1, %.lr.ph.preheader.i229 ], [ %i.ib, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i233.epil.init = phi i64 [ 0, %.lr.ph.preheader.i229 ], [ %spec.select.i234.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ]
  %lcmp.mod556 = trunc i64 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod556)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.014.i232.epil.init
  %i.ie = load double, ptr %i.id, align 8, !tbaa !191
  %i.if = fcmp ogt double %i.ie, %.epil.init553
  %spec.select.i234.epil = select i1 %i.if, i64 %.014.i232.epil.init, i64 %.01013.i233.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236:    ; preds = %.lr.ph.i231.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa, %bb.ac
  %.011.i228 = phi i64 [ 0, %bb.ac ], [ %spec.select.i234.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236.loopexit.unr-lcssa ], [ %spec.select.i234.epil, %.lr.ph.i231.epil.preheader ]
  %i.ig = getelementptr [8 x i8], ptr %i.hi, i64 %.011.i228
  %i.ih = getelementptr [8 x i8], ptr %i.ig, i64 %i.hl
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !191
  %i.ij = fsub double %i.hk, %i.ii
  %i.ik = fneg double %i.ij
  %i.il = call double @llvm.fmuladd.f64(double %i.ik, double %i.he, double %i.hk)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit247

.loopexit.split-lp444.thread:                     ; preds = %bb.y
  %lpad.loopexit463 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp444:                            ; preds = %bb.ab, %bb.ad, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %9, align 8, !tbaa !192   ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i248, label %_ZNSt6vectorIdSaIdEED2Ev.exit249, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.im = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.fx)
          to label %bb.ae unwind label %.loopexit.split-lp444 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.in = zext nneg i32 %i.fx to i64
  %i.io = load ptr, ptr %9, align 8, !tbaa !192   ; 7 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !191
  %.not441 = icmp eq i32 %i.fw, 0
  br i1 %.not441, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, label %.lr.ph.preheader.i238

.lr.ph.preheader.i238:                            ; preds = %bb.ae
  %.pre.i239 = load double, ptr %i.io, align 8, !tbaa !191 ; 2 uses
  %i.ir = zext nneg i32 %i.fw to i64              ; 2 uses
  %xtraiter559 = and i64 %i.ir, 1
  %i.is = icmp eq i32 %i.fw, 1
  br i1 %i.is, label %.lr.ph.i240.epil.preheader, label %.lr.ph.preheader.i238.new

.lr.ph.preheader.i238.new:                        ; preds = %.lr.ph.preheader.i238
  %unroll_iter565 = and i64 %i.ir, 2147483646
  br label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %.lr.ph.i240, %.lr.ph.preheader.i238.new
  %i.it = phi double [ %.pre.i239, %.lr.ph.preheader.i238.new ], [ %i.jd, %.lr.ph.i240 ] ; 2 uses
  %.014.i241 = phi i64 [ 1, %.lr.ph.preheader.i238.new ], [ %i.jc, %.lr.ph.i240 ] ; 4 uses
  %.01013.i242 = phi i64 [ 0, %.lr.ph.preheader.i238.new ], [ %spec.select.i243.1, %.lr.ph.i240 ]
  %niter566 = phi i64 [ 0, %.lr.ph.preheader.i238.new ], [ %niter566.next.1, %.lr.ph.i240 ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.014.i241
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !191 ; 2 uses
  %i.iw = fcmp olt double %i.iv, %i.it            ; 2 uses
  %spec.select.i243 = select i1 %i.iw, i64 %.014.i241, i64 %.01013.i242
  %i.ix = add nuw nsw i64 %.014.i241, 1           ; 2 uses
  %i.iy = select i1 %i.iw, double %i.iv, double %i.it ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ix
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !191 ; 2 uses
  %i.jb = fcmp olt double %i.ja, %i.iy            ; 2 uses
  %spec.select.i243.1 = select i1 %i.jb, i64 %i.ix, i64 %spec.select.i243 ; 3 uses
  %i.jc = add nuw nsw i64 %.014.i241, 2           ; 2 uses
  %i.jd = select i1 %i.jb, double %i.ja, double %i.iy ; 2 uses
  %niter566.next.1 = add nuw i64 %niter566, 2     ; 2 uses
  %niter566.ncmp.1 = icmp eq i64 %niter566.next.1, %unroll_iter565
  br i1 %niter566.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, label %.lr.ph.i240, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa: ; preds = %.lr.ph.i240
  %lcmp.mod562.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod562.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, label %.lr.ph.i240.epil.preheader

.lr.ph.i240.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, %.lr.ph.preheader.i238
  %.epil.init561 = phi double [ %.pre.i239, %.lr.ph.preheader.i238 ], [ %i.jd, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ]
  %.014.i241.epil.init = phi i64 [ 1, %.lr.ph.preheader.i238 ], [ %i.jc, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i242.epil.init = phi i64 [ 0, %.lr.ph.preheader.i238 ], [ %spec.select.i243.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ]
  %lcmp.mod564 = trunc i32 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod564)
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.014.i241.epil.init
  %i.jf = load double, ptr %i.je, align 8, !tbaa !191
  %i.jg = fcmp olt double %i.jf, %.epil.init561
  %spec.select.i243.epil = select i1 %i.jg, i64 %.014.i241.epil.init, i64 %.01013.i242.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245:    ; preds = %.lr.ph.i240.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa, %bb.ae
  %.011.i237 = phi i64 [ 0, %bb.ae ], [ %spec.select.i243.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245.loopexit.unr-lcssa ], [ %spec.select.i243.epil, %.lr.ph.i240.epil.preheader ]
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.011.i237
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !191 ; 2 uses
  %i.jj = fsub double %i.ji, %i.iq
  %i.jk = fneg double %i.jj
  %i.jl = call double @llvm.fmuladd.f64(double %i.jk, double %i.he, double %i.ji)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit247

_ZNSt6vectorIdSaIdEED2Ev.exit247:                 ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227
  %i.jm = phi ptr [ %i.fk, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227 ], [ %i.hi, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236 ], [ %i.io, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245 ] ; 2 uses
  %.3 = phi double [ %i.hc, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit227 ], [ %i.il, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit236 ], [ %i.jl, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit245 ]
  %i.jn = load ptr, ptr %i.fm, align 8, !tbaa !194
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jq) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.br

bb.af:                                            ; preds = %.loopexit.split-lp444.thread, %.loopexit.split-lp444
  %lpad.phi464520 = phi { ptr, i32 } [ %lpad.loopexit463, %.loopexit.split-lp444.thread ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp444 ]
  %i.jr = phi ptr [ %i.fk, %.loopexit.split-lp444.thread ], [ %.pre, %.loopexit.split-lp444 ] ; 2 uses
  %i.js = load ptr, ptr %i.fm, align 8, !tbaa !194
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jr to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jv) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit249

_ZNSt6vectorIdSaIdEED2Ev.exit249:                 ; preds = %bb.af, %.loopexit.split-lp444, %bb.v
  %.merged180 = phi { ptr, i32 } [ %i.fy, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp444 ], [ %lpad.phi464520, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.bs

bb.ag:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ah, label %bb.az

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ae, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !218
  %i.jy = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.jx, ptr %i.o, align 8, !tbaa !220
  store i32 %i.jy, ptr %i.p, align 4, !tbaa !204
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !153
  %.not.i.i250 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i250, label %bb.aj, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit251

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit251:          ; preds = %bb.ai
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !242
  %i.kd = call noundef double %i.kc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.br

bb.ak:                                            ; preds = %bb.ah
  %i.ke = zext nneg i32 %5 to i64                 ; 8 uses
  %i.kf = shl nuw nsw i64 %i.ke, 2                ; 3 uses
  %i.kg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #34 ; 14 uses
  store i32 0, ptr %i.kg, align 4, !tbaa !204
  %i.kh = getelementptr i8, ptr %i.kg, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i253.a = add nsw i64 %i.ke, -1 ; 2 uses
  %.idx.i.i.i.i.i.i.i253 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i253.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 0, i64 %.idx.i.i.i.i.i.i.i253, i1 false), !tbaa !204
  %min.iters.check524 = icmp ult i32 %5, 8
  br i1 %min.iters.check524, label %scalar.ph523.preheader, label %vector.ph525

vector.ph525:                                     ; preds = %bb.ak
  %n.vec526 = and i64 %i.ke, 2147483640           ; 3 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next531, %vector.body527 ] ; 2 uses
  %vec.ind529 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph525 ], [ %vec.ind.next532, %vector.body527 ] ; 3 uses
  %step.add530 = add <4 x i32> %vec.ind529, splat (i32 4)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %index528 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <4 x i32> %vec.ind529, ptr %i.ki, align 4, !tbaa !204
  store <4 x i32> %step.add530, ptr %i.kj, align 4, !tbaa !204
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %vec.ind.next532 = add <4 x i32> %vec.ind529, splat (i32 8)
  %i.kk = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.kk, label %middle.block533, label %vector.body527, !llvm.loop !394

middle.block533:                                  ; preds = %vector.body527
  %cmp.n534 = icmp eq i64 %n.vec526, %i.ke
  br i1 %cmp.n534, label %.loopexit, label %scalar.ph523.preheader

scalar.ph523.preheader:                           ; preds = %bb.ak, %middle.block533
  %indvars.iv471.ph = phi i64 [ 0, %bb.ak ], [ %n.vec526, %middle.block533 ]
  br label %scalar.ph523

.loopexit:                                        ; preds = %scalar.ph523, %middle.block533
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i.i.i.i.i.i.i253
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2417.0..sroa_idx, align 8
  %.sroa.3418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3418.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.kg, ptr %i.kl, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
          to label %bb.al unwind label %bb.am

scalar.ph523:                                     ; preds = %scalar.ph523.preheader, %scalar.ph523
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %scalar.ph523 ], [ %indvars.iv471.ph, %scalar.ph523.preheader ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv471
  %i.kn = trunc nuw nsw i64 %indvars.iv471 to i32
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !204
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %i.ke
  br i1 %exitcond475.not, label %.loopexit, label %scalar.ph523, !llvm.loop !395

bb.al:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ko = shl nuw nsw i64 %i.ke, 3                ; 3 uses
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #34
          to label %.lr.ph452.preheader unwind label %bb.am ; 12 uses

.lr.ph452.preheader:                              ; preds = %bb.al
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  %.idx.i.i.i.i.i.i.i259 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i253.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kq, i8 0, i64 %.idx.i.i.i.i.i.i.i259, i1 false), !tbaa !191
  %i.kr = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 4 uses
  %i.ks = load ptr, ptr %i.y, align 8, !tbaa !240 ; 5 uses
  %i.kt = load i32, ptr %i.kg, align 4, !tbaa !204
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !204
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !169
  %i.la = fpext float %i.kz to double             ; 3 uses
  store double %i.la, ptr %i.kp, align 8, !tbaa !191
  %i.lb = add nsw i64 %i.ke, -1                   ; 3 uses
  %xtraiter540 = and i64 %i.lb, 1
  %i.lc = icmp eq i32 %5, 2
  br i1 %i.lc, label %.lr.ph452.epil.preheader, label %.lr.ph452.preheader.new

.lr.ph452.preheader.new:                          ; preds = %.lr.ph452.preheader
  %unroll_iter543 = and i64 %i.lb, -2
  br label %.lr.ph452

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph452
  %lcmp.mod541.not = icmp eq i64 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph452.epil.preheader

.lr.ph452.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph452.preheader
  %store_forwarded.epil.init = phi double [ %i.la, %.lr.ph452.preheader ], [ %i.mx, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv476.epil.init = phi i64 [ 1, %.lr.ph452.preheader ], [ %indvars.iv.next477.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod542 = trunc i64 %i.lb to i1
  call void @llvm.assume(i1 %lcmp.mod542)
  %i.ld = getelementptr [8 x i8], ptr %i.kp, i64 %indvars.iv476.epil.init
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv476.epil.init
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !204
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !204
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !169
  %i.lm = fpext float %i.ll to double
  %i.ln = fadd double %store_forwarded.epil.init, %i.lm
  store double %i.ln, ptr %i.ld, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph452.epil.preheader
  %i.lo = add nsw i32 %5, -1
  %i.lp = zext nneg i32 %i.lo to i64              ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.lp
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !191
  %i.ls = fmul double %i.lr, 5.000000e-01         ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ke, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.kp, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.lt = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.lt ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !191
  %i.lw = fcmp olt double %i.ls, %i.lv            ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ly = xor i64 %i.lt, -1
  %i.lz = add nsw i64 %.016.i.i, %i.ly
  %.sroa.011.1.i.i = select i1 %i.lw, ptr %.sroa.011.015.i.i, ptr %i.lx ; 2 uses
  %.1.i.i = select i1 %i.lw, i64 %i.lt, i64 %i.lz ; 2 uses
  %i.ma = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ma, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !4

bb.am:                                            ; preds = %.loopexit, %bb.al
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit282

.lr.ph452:                                        ; preds = %.lr.ph452, %.lr.ph452.preheader.new
  %store_forwarded = phi double [ %i.la, %.lr.ph452.preheader.new ], [ %i.mx, %.lr.ph452 ]
  %indvars.iv476 = phi i64 [ 1, %.lr.ph452.preheader.new ], [ %indvars.iv.next477.1, %.lr.ph452 ] ; 4 uses
  %niter544 = phi i64 [ 0, %.lr.ph452.preheader.new ], [ %niter544.next.1, %.lr.ph452 ]
  %i.mc = getelementptr [8 x i8], ptr %i.kp, i64 %indvars.iv476
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv476
  %i.me = load i32, ptr %i.md, align 4, !tbaa !204
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !204
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !169
  %i.ml = fpext float %i.mk to double
  %i.mm = fadd double %store_forwarded, %i.ml     ; 2 uses
  store double %i.mm, ptr %i.mc, align 8, !tbaa !191
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.mn = getelementptr [8 x i8], ptr %i.kp, i64 %indvars.iv.next477
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.next477
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !204
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !204
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.mt
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !169
  %i.mw = fpext float %i.mv to double
  %i.mx = fadd double %i.mm, %i.mw                ; 3 uses
  store double %i.mx, ptr %i.mn, align 8, !tbaa !191
  %indvars.iv.next477.1 = add nuw nsw i64 %indvars.iv476, 2 ; 2 uses
  %niter544.next.1 = add nuw i64 %niter544, 2     ; 2 uses
  %niter544.ncmp.1 = icmp eq i64 %niter544.next.1, %unroll_iter543
  br i1 %niter544.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph452, !llvm.loop !396

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %10 = ptrtoint ptr %i.kp to i64
  %i.my = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.mz = sub i64 %i.my, %10
  %i.na = ashr exact i64 %i.mz, 3                 ; 2 uses
  %.sroa.speculated377 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.lp) ; 5 uses
  %i.nb = icmp eq i64 %.sroa.speculated377, 0
  %i.nc = icmp uge i64 %i.na, %i.lp
  %or.cond = or i1 %i.nc, %i.nb
  br i1 %or.cond, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !218
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.sroa.speculated377
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !204
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.ne, ptr %i.m, align 8, !tbaa !220
  store i32 %i.nj, ptr %i.n, align 4, !tbaa !204
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !153
  %.not.i.i264 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i264, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !242
  %i.no = invoke noundef double %i.nn(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit267 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit267:          ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ap:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.np = add nsw i64 %.sroa.speculated377, -1    ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.np ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !191
  %i.ns = fcmp ult double %i.ls, %i.nr
  br i1 %i.ns, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 273)
          to label %bb.ar unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %.sroa.speculated377 ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !191
  %i.nv = fcmp olt double %i.ls, %i.nu
  br i1 %i.nv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 273)
          to label %bb.at unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !218
  %i.ny = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.np
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !204
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.nx, ptr %i.k, align 8, !tbaa !220
  store i32 %i.od, ptr %i.l, align 4, !tbaa !204
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !153
  %.not.i.i268 = icmp eq ptr %i.of, null
  br i1 %.not.i.i268, label %.invoke, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !242
  %i.oi = invoke noundef double %i.oh(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.av unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280, !inline_history !0 ; 3 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.oj = load ptr, ptr %i.nw, align 8, !tbaa !218
  %i.ok = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.sroa.speculated377
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !204
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.oj, ptr %i.i, align 8, !tbaa !220
  store i32 %i.op, ptr %i.j, align 4, !tbaa !204
  %i.oq = load ptr, ptr %i.oe, align 8, !tbaa !153
  %.not.i.i272 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i272, label %.invoke, label %bb.aw

.invoke:                                          ; preds = %bb.av, %bb.at, %bb.an
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280

.cont:                                            ; preds = %.invoke
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.or = load ptr, ptr %i.og, align 8, !tbaa !242
  %i.os = invoke noundef double %i.or(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.ax unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit280, !inline_history !0

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ot = load double, ptr %i.nt, align 8, !tbaa !191
  %i.ou = load double, ptr %i.nq, align 8, !tbaa !191 ; 2 uses
  %i.ov = fsub double %i.ot, %i.ou                ; 2 uses
  %i.ow = fcmp ult double %i.ov, 1.000000e+00
  br i1 %i.ow, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ox = fsub double %i.ls, %i.ou
  %i.oy = fdiv double %i.ox, %i.ov
  %i.oz = fsub double %i.os, %i.oi
  %i.pa = call double @llvm.fmuladd.f64(double %i.oy, double %i.oz, double %i.oi)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit280:                 ; preds = %.invoke, %bb.aw, %bb.au, %bb.ao, %bb.aq, %bb.as
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ko) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit282

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit267, %bb.ay, %bb.ax
  %.5 = phi double [ %i.no, %_ZNKSt8functionIFdPKfiEEclES1_i.exit267 ], [ %i.pa, %bb.ay ], [ %i.oi, %bb.ax ]
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ko) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kf) #35
  br label %bb.br

_ZNSt6vectorIiSaIiEED2Ev.exit282:                 ; preds = %bb.am, %_ZNSt6vectorIdSaIdEED2Ev.exit280
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.mb, %bb.am ], [ %i.pb, %_ZNSt6vectorIdSaIdEED2Ev.exit280 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kf) #35
  br label %bb.bs

bb.az:                                            ; preds = %bb.ag
  br i1 %i.ae, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !218
  %i.pe = load i32, ptr %3, align 4, !tbaa !204
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.pd, ptr %i.g, align 8, !tbaa !220
  store i32 %i.ph, ptr %i.h, align 4, !tbaa !204
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !153
  %.not.i.i283 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i283, label %bb.bb, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit284

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit284:          ; preds = %bb.ba
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !242
  %i.pm = call noundef double %i.pl(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.br

bb.bc:                                            ; preds = %bb.az
  %i.pn = zext nneg i32 %5 to i64                 ; 8 uses
  %i.po = shl nuw nsw i64 %i.pn, 2                ; 3 uses
  %i.pp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #34 ; 14 uses
  store i32 0, ptr %i.pp, align 4, !tbaa !204
  %i.pq = getelementptr i8, ptr %i.pp, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i287.a = add nsw i64 %i.pn, -1 ; 2 uses
  %.idx.i.i.i.i.i.i.i287 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i287.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.pq, i8 0, i64 %.idx.i.i.i.i.i.i.i287, i1 false), !tbaa !204
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bc
  %n.vec = and i64 %i.pn, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %index ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store <4 x i32> %vec.ind, ptr %i.pr, align 4, !tbaa !204
  store <4 x i32> %step.add, ptr %i.ps, align 4, !tbaa !204
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.pt = icmp eq i64 %index.next, %n.vec
  br i1 %i.pt, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.pn
  br i1 %cmp.n, label %.loopexit536, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bc, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.bc ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit536:                                     ; preds = %scalar.ph, %middle.block
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.idx.i.i.i.i.i.i.i287
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM16RegressionL1loss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.pp, ptr %i.pu, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.59") align 8 %6)
          to label %bb.bd unwind label %bb.be

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv
  %i.pw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.pw, ptr %i.pv, align 4, !tbaa !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.pn
  br i1 %exitcond.not, label %.loopexit536, label %scalar.ph, !llvm.loop !398

bb.bd:                                            ; preds = %.loopexit536
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.px = shl nuw nsw i64 %i.pn, 3                ; 3 uses
  %i.py = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.px) #34
          to label %.lr.ph.preheader unwind label %bb.be ; 12 uses

.lr.ph.preheader:                                 ; preds = %bb.bd
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %.idx.i.i.i.i.i.i.i295 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i287.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pz, i8 0, i64 %.idx.i.i.i.i.i.i.i295, i1 false), !tbaa !191
  %i.qa = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 4 uses
  %i.qb = load ptr, ptr %i.z, align 8, !tbaa !240 ; 5 uses
  %i.qc = load ptr, ptr %i.y, align 8, !tbaa !240 ; 5 uses
  %i.qd = load i32, ptr %i.pp, align 4, !tbaa !204
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !204
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !204
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qk
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !169
  %i.qn = fpext float %i.qm to double             ; 3 uses
  store double %i.qn, ptr %i.py, align 8, !tbaa !191
  %i.qo = add nsw i64 %i.pn, -1                   ; 3 uses
  %xtraiter = and i64 %i.qo, 1
  %i.qp = icmp eq i32 %5, 2
  br i1 %i.qp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.qo, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded538.epil.init = phi double [ %i.qn, %.lr.ph.preheader ], [ %i.st, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa ]
  %indvars.iv466.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next467.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod539 = trunc i64 %i.qo to i1
  call void @llvm.assume(i1 %lcmp.mod539)
  %i.qq = getelementptr [8 x i8], ptr %i.py, i64 %indvars.iv466.epil.init
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv466.epil.init
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !204
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !204
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !204
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qz
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !169
  %i.rc = fpext float %i.rb to double
  %i.rd = fadd double %store_forwarded538.epil.init, %i.rc
  store double %i.rd, ptr %i.qq, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.re = add nsw i32 %5, -1
  %i.rf = zext nneg i32 %i.re to i64              ; 3 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.rf
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !191
  %i.ri = fmul double %i.rh, 5.000000e-01         ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302
  %.016.i.i303 = phi i64 [ %.1.i.i308, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302 ], [ %i.pn, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader ] ; 2 uses
  %.sroa.011.015.i.i304 = phi ptr [ %.sroa.011.1.i.i307, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302 ], [ %i.py, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader ] ; 2 uses
  %i.rj = lshr i64 %.016.i.i303, 1                ; 3 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i304, i64 %i.rj ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !191
  %i.rm = fcmp olt double %i.ri, %i.rl            ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.ro = xor i64 %i.rj, -1
  %i.rp = add nsw i64 %.016.i.i303, %i.ro
  %.sroa.011.1.i.i307 = select i1 %i.rm, ptr %.sroa.011.015.i.i304, ptr %i.rn ; 2 uses
  %.1.i.i308 = select i1 %i.rm, i64 %i.rj, i64 %i.rp ; 2 uses
  %i.rq = icmp sgt i64 %.1.i.i308, 0
  br i1 %i.rq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit309, !llvm.loop !4

bb.be:                                            ; preds = %.loopexit536, %bb.bd
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit330

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded538 = phi double [ %i.qn, %.lr.ph.preheader.new ], [ %i.st, %.lr.ph ]
  %indvars.iv466 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next467.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.rs = getelementptr [8 x i8], ptr %i.py, i64 %indvars.iv466
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv466
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !204
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !204
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !204
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.sb
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !169
  %i.se = fpext float %i.sd to double
  %i.sf = fadd double %store_forwarded538, %i.se  ; 2 uses
  store double %i.sf, ptr %i.rs, align 8, !tbaa !191
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.sg = getelementptr [8 x i8], ptr %i.py, i64 %indvars.iv.next467
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv.next467
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !204
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !204
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !204
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.sp
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !169
  %i.ss = fpext float %i.sr to double
  %i.st = fadd double %i.sf, %i.ss                ; 3 uses
  store double %i.st, ptr %i.sg, align 8, !tbaa !191
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !399

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit309: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i302
  %11 = ptrtoint ptr %i.py to i64
  %i.su = ptrtoint ptr %.sroa.011.1.i.i307 to i64
  %i.sv = sub i64 %i.su, %11
  %i.sw = ashr exact i64 %i.sv, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.sw, i64 %i.rf) ; 5 uses
  %i.sx = icmp eq i64 %.sroa.speculated, 0
  %i.sy = icmp uge i64 %i.sw, %i.rf
  %or.cond184 = or i1 %i.sy, %i.sx
  br i1 %or.cond184, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit309
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !218
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %.sroa.speculated
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !204
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !204
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ta, ptr %i.e, align 8, !tbaa !220
  store i32 %i.ti, ptr %i.f, align 4, !tbaa !204
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !153
  %.not.i.i311 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i311, label %.invoke521, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !242
  %i.tn = invoke noundef double %i.tm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit314 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit314:          ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit326

bb.bh:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit309
  %i.to = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.to ; 2 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !191
  %i.tr = fcmp ult double %i.ri, %i.tq
  br i1 %i.tr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 279)
          to label %bb.bj unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %.sroa.speculated ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !191
  %i.tu = fcmp olt double %i.ri, %i.tt
  br i1 %i.tu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 279)
          to label %bb.bl unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !218
  %i.tx = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.ty = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.to
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !204
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !204
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.tw, ptr %i.c, align 8, !tbaa !220
  store i32 %i.ug, ptr %i.d, align 4, !tbaa !204
  %i.uh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !153
  %.not.i.i315 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i315, label %.invoke521, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.uj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !242
  %i.ul = invoke noundef double %i.uk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bn unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328, !inline_history !0 ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.um = load ptr, ptr %i.tv, align 8, !tbaa !218
  %i.un = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.uo = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %.sroa.speculated
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !204
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !204
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.um, ptr %i.a, align 8, !tbaa !220
  store i32 %i.uw, ptr %i.b, align 4, !tbaa !204
  %i.ux = load ptr, ptr %i.uh, align 8, !tbaa !153
  %.not.i.i319 = icmp eq ptr %i.ux, null
  br i1 %.not.i.i319, label %.invoke521, label %bb.bo

.invoke521:                                       ; preds = %bb.bn, %bb.bl, %bb.bf
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont522 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328

.cont522:                                         ; preds = %.invoke521
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.uy = load ptr, ptr %i.uj, align 8, !tbaa !242
  %i.uz = invoke noundef double %i.uy(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bp unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit328, !inline_history !0

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.va = load double, ptr %i.ts, align 8, !tbaa !191
  %i.vb = load double, ptr %i.tp, align 8, !tbaa !191 ; 2 uses
  %i.vc = fsub double %i.va, %i.vb                ; 2 uses
  %i.vd = fcmp ult double %i.vc, 1.000000e+00
  br i1 %i.vd, label %_ZNSt6vectorIiSaIiEED2Ev.exit326, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ve = fsub double %i.ri, %i.vb
  %i.vf = fdiv double %i.ve, %i.vc
  %i.vg = fsub double %i.uz, %i.ul
  %i.vh = call double @llvm.fmuladd.f64(double %i.vf, double %i.vg, double %i.ul)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit326

_ZNSt6vectorIdSaIdEED2Ev.exit328:                 ; preds = %.invoke521, %bb.bo, %bb.bm, %bb.bg, %bb.bi, %bb.bk
  %i.vi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.px) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit330

_ZNSt6vectorIiSaIiEED2Ev.exit326:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit314, %bb.bq, %bb.bp
  %.7 = phi double [ %i.tn, %_ZNKSt8functionIFdPKfiEEclES1_i.exit314 ], [ %i.vh, %bb.bq ], [ %i.ul, %bb.bp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.px) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.po) #35
  br label %bb.br

_ZNSt6vectorIiSaIiEED2Ev.exit330:                 ; preds = %bb.be, %_ZNSt6vectorIdSaIdEED2Ev.exit328
  %.pn165.pn.pn = phi { ptr, i32 } [ %i.rr, %bb.be ], [ %i.vi, %_ZNSt6vectorIdSaIdEED2Ev.exit328 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.po) #35
  br label %bb.bs

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit326, %_ZNKSt8functionIFdPKfiEEclES1_i.exit284, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit251, %_ZNSt6vectorIdSaIdEED2Ev.exit247, %_ZNKSt8functionIFdPKfiEEclES1_i.exit206, %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.8 = phi double [ %i.am, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.fh, %_ZNKSt8functionIFdPKfiEEclES1_i.exit206 ], [ %.3, %_ZNSt6vectorIdSaIdEED2Ev.exit247 ], [ %i.kd, %_ZNKSt8functionIFdPKfiEEclES1_i.exit251 ], [ %.5, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.pm, %_ZNKSt8functionIFdPKfiEEclES1_i.exit284 ], [ %.7, %_ZNSt6vectorIiSaIiEED2Ev.exit326 ]
  ret double %.8

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit330, %_ZNSt6vectorIiSaIiEED2Ev.exit282, %_ZNSt6vectorIdSaIdEED2Ev.exit249, %_ZNSt6vectorIdSaIdEED2Ev.exit204
  %.merged = phi { ptr, i32 } [ %.merged182, %_ZNSt6vectorIdSaIdEED2Ev.exit204 ], [ %.merged180, %_ZNSt6vectorIdSaIdEED2Ev.exit249 ], [ %.pn165.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit330 ], [ %.pn172.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit282 ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM16RegressionL1loss14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(57) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !217  ; 6 uses
  %i.e = icmp slt i32 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.h = load float, ptr %i.g, align 4, !tbaa !169
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 5 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34 ; 15 uses
  store i32 0, ptr %i.k, align 4, !tbaa !204
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !204
  %i.m = getelementptr i8, ptr %i.k, i64 %i.j
  %i.n = load i32, ptr %i.c, align 4, !tbaa !217  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i:bb.a
  %i.kq = load ptr, ptr %9, align 8, !tbaa !192   ; 4 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kp
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !191 ; 2 uses
  %i.kt = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kt ; 4 uses
  %i.kv = sub nuw nsw i32 %5, %i.hs               ; 3 uses
  %i.kw = icmp ugt i32 %i.kv, 1
  br i1 %i.kw, label %.lr.ph.preheader.i255, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262

.lr.ph.preheader.i255:                            ; preds = %bb.am
  %i.kx = zext nneg i32 %i.kv to i64
  %.pre.i256 = load double, ptr %i.ku, align 8, !tbaa !191 ; 2 uses
  %i.ky = add nsw i64 %i.kx, -1                   ; 3 uses
  %xtraiter594 = and i64 %i.ky, 1
  %i.kz = icmp eq i32 %i.kv, 2
  br i1 %i.kz, label %.lr.ph.i257.epil.preheader, label %.lr.ph.preheader.i255.new

.lr.ph.preheader.i255.new:                        ; preds = %.lr.ph.preheader.i255
  %unroll_iter600 = and i64 %i.ky, -2
  br label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %.lr.ph.i257, %.lr.ph.preheader.i255.new
  %i.la = phi double [ %.pre.i256, %.lr.ph.preheader.i255.new ], [ %i.lk, %.lr.ph.i257 ] ; 2 uses
  %.014.i258 = phi i64 [ 1, %.lr.ph.preheader.i255.new ], [ %i.lj, %.lr.ph.i257 ] ; 4 uses
  %.01013.i259 = phi i64 [ 0, %.lr.ph.preheader.i255.new ], [ %spec.select.i260.1, %.lr.ph.i257 ]
  %niter601 = phi i64 [ 0, %.lr.ph.preheader.i255.new ], [ %niter601.next.1, %.lr.ph.i257 ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.014.i258
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !191 ; 2 uses
  %i.ld = fcmp ogt double %i.lc, %i.la            ; 2 uses
  %spec.select.i260 = select i1 %i.ld, i64 %.014.i258, i64 %.01013.i259
  %i.le = add nuw nsw i64 %.014.i258, 1           ; 2 uses
  %i.lf = select i1 %i.ld, double %i.lc, double %i.la ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.le
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !191 ; 2 uses
  %i.li = fcmp ogt double %i.lh, %i.lf            ; 2 uses
  %spec.select.i260.1 = select i1 %i.li, i64 %i.le, i64 %spec.select.i260 ; 3 uses
  %i.lj = add nuw nsw i64 %.014.i258, 2           ; 2 uses
  %i.lk = select i1 %i.li, double %i.lh, double %i.lf ; 2 uses
  %niter601.next.1 = add nuw i64 %niter601, 2     ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, label %.lr.ph.i257, !llvm.loop !2

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa: ; preds = %.lr.ph.i257
  %lcmp.mod597.not = icmp eq i64 %xtraiter594, 0
  br i1 %lcmp.mod597.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, label %.lr.ph.i257.epil.preheader

.lr.ph.i257.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, %.lr.ph.preheader.i255
  %.epil.init596 = phi double [ %.pre.i256, %.lr.ph.preheader.i255 ], [ %i.lk, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ]
  %.014.i258.epil.init = phi i64 [ 1, %.lr.ph.preheader.i255 ], [ %i.lj, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i259.epil.init = phi i64 [ 0, %.lr.ph.preheader.i255 ], [ %spec.select.i260.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ]
  %lcmp.mod599 = trunc i64 %i.ky to i1
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.014.i258.epil.init
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !191
  %i.ln = fcmp ogt double %i.lm, %.epil.init596
  %spec.select.i260.epil = select i1 %i.ln, i64 %.014.i258.epil.init, i64 %.01013.i259.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262

_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262:    ; preds = %.lr.ph.i257.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa, %bb.am
  %.011.i254 = phi i64 [ 0, %bb.am ], [ %spec.select.i260.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262.loopexit.unr-lcssa ], [ %spec.select.i260.epil, %.lr.ph.i257.epil.preheader ]
  %i.lo = getelementptr [8 x i8], ptr %i.kq, i64 %.011.i254
  %i.lp = getelementptr [8 x i8], ptr %i.lo, i64 %i.kt
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !191
  %i.lr = fsub double %i.ks, %i.lq
  %i.ls = fneg double %i.lr
  %i.lt = call double @llvm.fmuladd.f64(double %i.ls, double %i.km, double %i.ks)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

.loopexit.split-lp479.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ah, %bb.ac, %bb.ao, %bb.al
  %lpad.loopexit.split-lp580 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lu = load ptr, ptr %9, align 8, !tbaa !192   ; 3 uses
  %.not.i.i.i263 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i263, label %_ZNSt6vectorIdSaIdEED2Ev.exit264, label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp479.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.lv = load ptr, ptr %i.hd, align 8, !tbaa !194
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.ly) #35
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

bb.ao:                                            ; preds = %bb.ak
  %i.lz = invoke noundef i32 @_ZN8LightGBM9ArrayArgsIdE9ArgMaxAtKEPSt6vectorIdSaIdEEiii(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %5, i32 noundef %i.hs)
          to label %bb.ap unwind label %.loopexit.split-lp479.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ma = zext nneg i32 %i.hs to i64
  %i.mb = load ptr, ptr %9, align 8, !tbaa !192   ; 7 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.ma
  %i.md = load double, ptr %i.mc, align 8, !tbaa !191
  %.not497 = icmp eq i32 %i.hr, 0
  br i1 %.not497, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273, label %.lr.ph.preheader.i266

.lr.ph.preheader.i266:                            ; preds = %bb.ap
  %.pre.i267 = load double, ptr %i.mb, align 8, !tbaa !191 ; 2 uses
  %i.me = zext nneg i32 %i.hr to i64              ; 2 uses
  %xtraiter602 = and i64 %i.me, 1
  %i.mf = icmp eq i32 %i.hs, 2
  br i1 %i.mf, label %.lr.ph.i268.epil.preheader, label %.lr.ph.preheader.i266.new

.lr.ph.preheader.i266.new:                        ; preds = %.lr.ph.preheader.i266
  %unroll_iter608 = and i64 %i.me, 2147483646
  br label %.lr.ph.i268

.lr.ph.i268:                                      ; preds = %.lr.ph.i268, %.lr.ph.preheader.i266.new
  %i.mg = phi double [ %.pre.i267, %.lr.ph.preheader.i266.new ], [ %i.mq, %.lr.ph.i268 ] ; 2 uses
  %.014.i269 = phi i64 [ 1, %.lr.ph.preheader.i266.new ], [ %i.mp, %.lr.ph.i268 ] ; 4 uses
  %.01013.i270 = phi i64 [ 0, %.lr.ph.preheader.i266.new ], [ %spec.select.i271.1, %.lr.ph.i268 ]
  %niter609 = phi i64 [ 0, %.lr.ph.preheader.i266.new ], [ %niter609.next.1, %.lr.ph.i268 ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.014.i269
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !191 ; 2 uses
  %i.mj = fcmp olt double %i.mi, %i.mg            ; 2 uses
  %spec.select.i271 = select i1 %i.mj, i64 %.014.i269, i64 %.01013.i270
  %i.mk = add nuw nsw i64 %.014.i269, 1           ; 2 uses
  %i.ml = select i1 %i.mj, double %i.mi, double %i.mg ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.mk
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !191 ; 2 uses
  %i.mo = fcmp olt double %i.mn, %i.ml            ; 2 uses
  %spec.select.i271.1 = select i1 %i.mo, i64 %i.mk, i64 %spec.select.i271 ; 3 uses
  %i.mp = add nuw nsw i64 %.014.i269, 2           ; 2 uses
  %i.mq = select i1 %i.mo, double %i.mn, double %i.ml ; 2 uses
  %niter609.next.1 = add nuw i64 %niter609, 2     ; 2 uses
  %niter609.ncmp.1 = icmp eq i64 %niter609.next.1, %unroll_iter608
  br i1 %niter609.ncmp.1, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa, label %.lr.ph.i268, !llvm.loop !3

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa: ; preds = %.lr.ph.i268
  %lcmp.mod605.not = icmp eq i64 %xtraiter602, 0
  br i1 %lcmp.mod605.not, label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273, label %.lr.ph.i268.epil.preheader

.lr.ph.i268.epil.preheader:                       ; preds = %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa, %.lr.ph.preheader.i266
  %.epil.init604 = phi double [ %.pre.i267, %.lr.ph.preheader.i266 ], [ %i.mq, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa ]
  %.014.i269.epil.init = phi i64 [ 1, %.lr.ph.preheader.i266 ], [ %i.mp, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa ] ; 2 uses
  %.01013.i270.epil.init = phi i64 [ 0, %.lr.ph.preheader.i266 ], [ %spec.select.i271.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa ]
  %lcmp.mod607 = trunc i32 %i.hr to i1
  call void @llvm.assume(i1 %lcmp.mod607)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.014.i269.epil.init
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !191
  %i.mt = fcmp olt double %i.ms, %.epil.init604
  %spec.select.i271.epil = select i1 %i.mt, i64 %.014.i269.epil.init, i64 %.01013.i270.epil.init
  br label %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273

_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273:    ; preds = %.lr.ph.i268.epil.preheader, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa, %bb.ap
  %.011.i265 = phi i64 [ 0, %bb.ap ], [ %spec.select.i271.1, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273.loopexit.unr-lcssa ], [ %spec.select.i271.epil, %.lr.ph.i268.epil.preheader ]
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %.011.i265
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !191 ; 2 uses
  %i.mw = fsub double %i.mv, %i.md
  %i.mx = fneg double %i.mw
  %i.my = call double @llvm.fmuladd.f64(double %i.mx, double %i.km, double %i.mv)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit275

_ZNSt6vectorIdSaIdEED2Ev.exit275:                 ; preds = %.thread466, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253
  %.3469 = phi double [ %i.jk, %.thread466 ], [ %i.my, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273 ], [ %i.lt, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.kk, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ]
  %i.mz = phi ptr [ %i.ji, %.thread466 ], [ %i.mb, %_ZN8LightGBM9ArrayArgsIdE6ArgMinEPKdm.exit273 ], [ %i.kq, %_ZN8LightGBM9ArrayArgsIdE6ArgMaxEPKdm.exit262 ], [ %i.jl, %_ZN8LightGBM9ArrayArgsIdE6ArgMinERKSt6vectorIdSaIdEE.exit253 ] ; 2 uses
  %i.na = load ptr, ptr %i.hd, align 8, !tbaa !194
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.mz to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nd) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cb

_ZNSt6vectorIdSaIdEED2Ev.exit264:                 ; preds = %bb.an, %.loopexit.split-lp479.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa
  %.pn180.pn = phi { ptr, i32 } [ %i.hu, %bb.aa ], [ %lpad.loopexit.split-lp580, %.loopexit.split-lp479.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp580, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.cc

bb.aq:                                            ; preds = %bb.a
  br i1 %i.ad, label %bb.ar, label %bb.bj

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ae, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !218
  %i.ng = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.nf, ptr %i.o, align 8, !tbaa !220
  store i32 %i.ng, ptr %i.p, align 4, !tbaa !204
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !153
  %.not.i.i276 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i276, label %bb.at, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit277

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit277:          ; preds = %bb.as
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !242
  %i.nl = call noundef double %i.nk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cb

bb.au:                                            ; preds = %bb.ar
  %i.nm = zext nneg i32 %5 to i64                 ; 8 uses
  %i.nn = shl nuw nsw i64 %i.nm, 2                ; 3 uses
  %i.no = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nn) #34 ; 14 uses
  store i32 0, ptr %i.no, align 4, !tbaa !204
  %i.np = getelementptr i8, ptr %i.no, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i279.a = add nsw i64 %i.nm, -1 ; 2 uses
  %.idx.i.i.i.i.i.i.i279 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i279.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.np, i8 0, i64 %.idx.i.i.i.i.i.i.i279, i1 false), !tbaa !204
  %min.iters.check564 = icmp ult i32 %5, 8
  br i1 %min.iters.check564, label %scalar.ph563.preheader, label %vector.ph565

vector.ph565:                                     ; preds = %bb.au
  %n.vec566 = and i64 %i.nm, 2147483640           ; 3 uses
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph565
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next571, %vector.body567 ] ; 2 uses
  %vec.ind569 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph565 ], [ %vec.ind.next572, %vector.body567 ] ; 3 uses
  %step.add570 = add <4 x i32> %vec.ind569, splat (i32 4)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index568 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store <4 x i32> %vec.ind569, ptr %i.nq, align 4, !tbaa !204
  store <4 x i32> %step.add570, ptr %i.nr, align 4, !tbaa !204
  %index.next571 = add nuw i64 %index568, 8       ; 2 uses
  %vec.ind.next572 = add <4 x i32> %vec.ind569, splat (i32 8)
  %i.ns = icmp eq i64 %index.next571, %n.vec566
  br i1 %i.ns, label %middle.block573, label %vector.body567, !llvm.loop !513

middle.block573:                                  ; preds = %vector.body567
  %cmp.n574 = icmp eq i64 %n.vec566, %i.nm
  br i1 %cmp.n574, label %.loopexit, label %scalar.ph563.preheader

scalar.ph563.preheader:                           ; preds = %bb.au, %middle.block573
  %indvars.iv508.ph = phi i64 [ 0, %bb.au ], [ %n.vec566, %middle.block573 ]
  br label %scalar.ph563

.loopexit:                                        ; preds = %scalar.ph563, %middle.block573
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 %.idx.i.i.i.i.i.i.i279
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2443.0..sroa_idx, align 8
  %.sroa.3444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.y, ptr %.sroa.3444.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.no, ptr %i.nt, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.69") align 8 %7)
          to label %bb.av unwind label %bb.aw

scalar.ph563:                                     ; preds = %scalar.ph563.preheader, %scalar.ph563
  %indvars.iv508 = phi i64 [ %indvars.iv.next509, %scalar.ph563 ], [ %indvars.iv508.ph, %scalar.ph563.preheader ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv508
  %i.nv = trunc nuw nsw i64 %indvars.iv508 to i32
  store i32 %i.nv, ptr %i.nu, align 4, !tbaa !204
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %i.nm
  br i1 %exitcond512.not, label %.loopexit, label %scalar.ph563, !llvm.loop !514

bb.av:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.nw = shl nuw nsw i64 %i.nm, 3                ; 3 uses
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #34
          to label %.lr.ph487.preheader unwind label %bb.aw ; 12 uses

.lr.ph487.preheader:                              ; preds = %bb.av
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %.idx.i.i.i.i.i.i.i285 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i279.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ny, i8 0, i64 %.idx.i.i.i.i.i.i.i285, i1 false), !tbaa !191
  %i.nz = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 4 uses
  %i.oa = load ptr, ptr %i.y, align 8, !tbaa !240 ; 5 uses
  %i.ob = load i32, ptr %i.no, align 4, !tbaa !204
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !204
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !169
  %i.oi = fpext float %i.oh to double             ; 3 uses
  store double %i.oi, ptr %i.nx, align 8, !tbaa !191
  %i.oj = add nsw i64 %i.nm, -1                   ; 3 uses
  %xtraiter583 = and i64 %i.oj, 1
  %i.ok = icmp eq i32 %5, 2
  br i1 %i.ok, label %.lr.ph487.epil.preheader, label %.lr.ph487.preheader.new

.lr.ph487.preheader.new:                          ; preds = %.lr.ph487.preheader
  %unroll_iter586 = and i64 %i.oj, -2
  br label %.lr.ph487

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph487
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph487.epil.preheader

.lr.ph487.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.preheader
  %store_forwarded.epil.init = phi double [ %i.oi, %.lr.ph487.preheader ], [ %i.qi, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv513.epil.init = phi i64 [ 1, %.lr.ph487.preheader ], [ %indvars.iv.next514.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod585 = trunc i64 %i.oj to i1
  call void @llvm.assume(i1 %lcmp.mod585)
  %i.ol = getelementptr [8 x i8], ptr %i.nx, i64 %indvars.iv513.epil.init
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv513.epil.init
  %i.on = load i32, ptr %i.om, align 4, !tbaa !204
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !204
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.or
  %i.ot = load float, ptr %i.os, align 4, !tbaa !169
  %i.ou = fpext float %i.ot to double
  %i.ov = fadd double %store_forwarded.epil.init, %i.ou
  store double %i.ov, ptr %i.ol, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph487.epil.preheader
  %i.ow = add nsw i32 %5, -1
  %i.ox = zext nneg i32 %i.ow to i64              ; 3 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !191
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !147
  %i.pc = fpext float %i.pb to double
  %i.pd = fmul double %i.oz, %i.pc                ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.nm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.nx, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.pe = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.pe ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !191
  %i.ph = fcmp olt double %i.pd, %i.pg            ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pj = xor i64 %i.pe, -1
  %i.pk = add nsw i64 %.016.i.i, %i.pj
  %.sroa.011.1.i.i = select i1 %i.ph, ptr %.sroa.011.015.i.i, ptr %i.pi ; 2 uses
  %.1.i.i = select i1 %i.ph, i64 %i.pe, i64 %i.pk ; 2 uses
  %i.pl = icmp sgt i64 %.1.i.i, 0
  br i1 %i.pl, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !4

bb.aw:                                            ; preds = %.loopexit, %bb.av
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

.lr.ph487:                                        ; preds = %.lr.ph487, %.lr.ph487.preheader.new
  %store_forwarded = phi double [ %i.oi, %.lr.ph487.preheader.new ], [ %i.qi, %.lr.ph487 ]
  %indvars.iv513 = phi i64 [ 1, %.lr.ph487.preheader.new ], [ %indvars.iv.next514.1, %.lr.ph487 ] ; 4 uses
  %niter587 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter587.next.1, %.lr.ph487 ]
  %i.pn = getelementptr [8 x i8], ptr %i.nx, i64 %indvars.iv513
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv513
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !204
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !204
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.pt
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !169
  %i.pw = fpext float %i.pv to double
  %i.px = fadd double %store_forwarded, %i.pw     ; 2 uses
  store double %i.px, ptr %i.pn, align 8, !tbaa !191
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.py = getelementptr [8 x i8], ptr %i.nx, i64 %indvars.iv.next514
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv.next514
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !204
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !204
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.qe
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !169
  %i.qh = fpext float %i.qg to double
  %i.qi = fadd double %i.px, %i.qh                ; 3 uses
  store double %i.qi, ptr %i.py, align 8, !tbaa !191
  %indvars.iv.next514.1 = add nuw nsw i64 %indvars.iv513, 2 ; 2 uses
  %niter587.next.1 = add nuw i64 %niter587, 2     ; 2 uses
  %niter587.ncmp.1 = icmp eq i64 %niter587.next.1, %unroll_iter586
  br i1 %niter587.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph487, !llvm.loop !515

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %10 = ptrtoint ptr %i.nx to i64
  %i.qj = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.qk = sub i64 %i.qj, %10
  %i.ql = ashr exact i64 %i.qk, 3                 ; 2 uses
  %.sroa.speculated403 = call i64 @llvm.umin.i64(i64 %i.ql, i64 %i.ox) ; 5 uses
  %i.qm = icmp eq i64 %.sroa.speculated403, 0
  %i.qn = icmp uge i64 %i.ql, %i.ox
  %or.cond = or i1 %i.qn, %i.qm
  br i1 %or.cond, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !218
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.sroa.speculated403
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !204
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.qp, ptr %i.m, align 8, !tbaa !220
  store i32 %i.qu, ptr %i.n, align 4, !tbaa !204
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !153
  %.not.i.i290 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i290, label %.invoke, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !242
  %i.qz = invoke noundef double %i.qy(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit293:          ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.az:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.ra = add nsw i64 %.sroa.speculated403, -1    ; 2 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.ra ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !191
  %i.rd = fcmp ult double %i.pd, %i.rc
  br i1 %i.rd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 559)
          to label %bb.bb unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %.sroa.speculated403 ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !191
  %i.rg = fcmp olt double %i.pd, %i.rf
  br i1 %i.rg, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 559)
          to label %bb.bd unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !218
  %i.rj = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ra
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !204
  %i.rm = sext i32 %i.rl to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.ri, ptr %i.k, align 8, !tbaa !220
  store i32 %i.ro, ptr %i.l, align 4, !tbaa !204
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !153
  %.not.i.i294 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i294, label %.invoke, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !242
  %i.rt = invoke noundef double %i.rs(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.bf unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306, !inline_history !0 ; 3 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ru = load ptr, ptr %i.rh, align 8, !tbaa !218
  %i.rv = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.sroa.speculated403
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !204
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rv, i64 %i.ry
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ru, ptr %i.i, align 8, !tbaa !220
  store i32 %i.sa, ptr %i.j, align 4, !tbaa !204
  %i.sb = load ptr, ptr %i.rp, align 8, !tbaa !153
  %.not.i.i298 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i298, label %.invoke, label %bb.bg

.invoke:                                          ; preds = %bb.bf, %bb.bd, %bb.ax
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306

.cont:                                            ; preds = %.invoke
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.sc = load ptr, ptr %i.rr, align 8, !tbaa !242
  %i.sd = invoke noundef double %i.sc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.bh unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit306, !inline_history !0

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.se = load double, ptr %i.re, align 8, !tbaa !191
  %i.sf = load double, ptr %i.rb, align 8, !tbaa !191 ; 2 uses
  %i.sg = fsub double %i.se, %i.sf                ; 2 uses
  %i.sh = fcmp ult double %i.sg, 1.000000e+00
  br i1 %i.sh, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.si = fsub double %i.pd, %i.sf
  %i.sj = fdiv double %i.si, %i.sg
  %i.sk = fsub double %i.sd, %i.rt
  %i.sl = call double @llvm.fmuladd.f64(double %i.sj, double %i.sk, double %i.rt)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit306:                 ; preds = %.invoke, %bb.bg, %bb.be, %bb.ay, %bb.ba, %bb.bc
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.nw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit293, %bb.bi, %bb.bh
  %.5 = phi double [ %i.qz, %_ZNKSt8functionIFdPKfiEEclES1_i.exit293 ], [ %i.sl, %bb.bi ], [ %i.rt, %bb.bh ]
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.nw) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.nn) #35
  br label %bb.cb

_ZNSt6vectorIiSaIiEED2Ev.exit308:                 ; preds = %bb.aw, %_ZNSt6vectorIdSaIdEED2Ev.exit306
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.pm, %bb.aw ], [ %i.sm, %_ZNSt6vectorIdSaIdEED2Ev.exit306 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.nn) #35
  br label %bb.cc

bb.bj:                                            ; preds = %bb.aq
  br i1 %i.ae, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !218
  %i.sp = load i32, ptr %3, align 4, !tbaa !204
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.so, ptr %i.g, align 8, !tbaa !220
  store i32 %i.ss, ptr %i.h, align 4, !tbaa !204
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !153
  %.not.i.i309 = icmp eq ptr %i.su, null
  br i1 %.not.i.i309, label %bb.bl, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit310

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit310:          ; preds = %bb.bk
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !242
  %i.sx = call noundef double %i.sw(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cb

bb.bm:                                            ; preds = %bb.bj
  %i.sy = zext nneg i32 %5 to i64                 ; 8 uses
  %i.sz = shl nuw nsw i64 %i.sy, 2                ; 3 uses
  %i.ta = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sz) #34 ; 14 uses
  store i32 0, ptr %i.ta, align 4, !tbaa !204
  %i.tb = getelementptr i8, ptr %i.ta, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i313.a = add nsw i64 %i.sy, -1 ; 2 uses
  %.idx.i.i.i.i.i.i.i313 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i313.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.tb, i8 0, i64 %.idx.i.i.i.i.i.i.i313, i1 false), !tbaa !204
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bm
  %n.vec = and i64 %i.sy, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %index ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store <4 x i32> %vec.ind, ptr %i.tc, align 4, !tbaa !204
  store <4 x i32> %step.add, ptr %i.td, align 4, !tbaa !204
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.te = icmp eq i64 %index.next, %n.vec
  br i1 %i.te, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.sy
  br i1 %cmp.n, label %.loopexit576, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.bm, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.bm ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit576:                                     ; preds = %scalar.ph, %middle.block
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 %.idx.i.i.i.i.i.i.i313
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM22RegressionQuantileloss15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.ta, ptr %i.tf, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.72") align 8 %6)
          to label %bb.bn unwind label %bb.bo

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv
  %i.th = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.th, ptr %i.tg, align 4, !tbaa !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.sy
  br i1 %exitcond.not, label %.loopexit576, label %scalar.ph, !llvm.loop !517

bb.bn:                                            ; preds = %.loopexit576
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ti = shl nuw nsw i64 %i.sy, 3                ; 3 uses
  %i.tj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ti) #34
          to label %.lr.ph.preheader unwind label %bb.bo ; 12 uses

.lr.ph.preheader:                                 ; preds = %bb.bn
  %i.tk = getelementptr i8, ptr %i.tj, i64 8
  %.idx.i.i.i.i.i.i.i321 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i313.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.tk, i8 0, i64 %.idx.i.i.i.i.i.i.i321, i1 false), !tbaa !191
  %i.tl = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 4 uses
  %i.tm = load ptr, ptr %i.z, align 8, !tbaa !240 ; 5 uses
  %i.tn = load ptr, ptr %i.y, align 8, !tbaa !240 ; 5 uses
  %i.to = load i32, ptr %i.ta, align 4, !tbaa !204
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !204
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !204
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !169
  %i.ty = fpext float %i.tx to double             ; 3 uses
  store double %i.ty, ptr %i.tj, align 8, !tbaa !191
  %i.tz = add nsw i64 %i.sy, -1                   ; 3 uses
  %xtraiter = and i64 %i.tz, 1
  %i.ua = icmp eq i32 %5, 2
  br i1 %i.ua, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.tz, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded578.epil.init = phi double [ %i.ty, %.lr.ph.preheader ], [ %i.wh, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ]
  %indvars.iv503.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next504.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod582 = trunc i64 %i.tz to i1
  call void @llvm.assume(i1 %lcmp.mod582)
  %i.ub = getelementptr [8 x i8], ptr %i.tj, i64 %indvars.iv503.epil.init
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv503.epil.init
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !204
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !204
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !204
  %i.uk = sext i32 %i.uj to i64
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !169
  %i.un = fpext float %i.um to double
  %i.uo = fadd double %store_forwarded578.epil.init, %i.un
  store double %i.uo, ptr %i.ub, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.up = add nsw i32 %5, -1
  %i.uq = zext nneg i32 %i.up to i64              ; 3 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.uq
  %i.us = load double, ptr %i.ur, align 8, !tbaa !191
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !147
  %i.uv = fpext float %i.uu to double
  %i.uw = fmul double %i.us, %i.uv                ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %.016.i.i329 = phi i64 [ %.1.i.i334, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.sy, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %.sroa.011.015.i.i330 = phi ptr [ %.sroa.011.1.i.i333, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328 ], [ %i.tj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader ] ; 2 uses
  %i.ux = lshr i64 %.016.i.i329, 1                ; 3 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i330, i64 %i.ux ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !191
  %i.va = fcmp olt double %i.uw, %i.uz            ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.vc = xor i64 %i.ux, -1
  %i.vd = add nsw i64 %.016.i.i329, %i.vc
  %.sroa.011.1.i.i333 = select i1 %i.va, ptr %.sroa.011.015.i.i330, ptr %i.vb ; 2 uses
  %.1.i.i334 = select i1 %i.va, i64 %i.ux, i64 %i.vd ; 2 uses
  %i.ve = icmp sgt i64 %.1.i.i334, 0
  br i1 %i.ve, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335, !llvm.loop !4

bb.bo:                                            ; preds = %.loopexit576, %bb.bn
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded578 = phi double [ %i.ty, %.lr.ph.preheader.new ], [ %i.wh, %.lr.ph ]
  %indvars.iv503 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next504.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.vg = getelementptr [8 x i8], ptr %i.tj, i64 %indvars.iv503
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv503
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !204
  %i.vj = sext i32 %i.vi to i64
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !204
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !204
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.vp
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !169
  %i.vs = fpext float %i.vr to double
  %i.vt = fadd double %store_forwarded578, %i.vs  ; 2 uses
  store double %i.vt, ptr %i.vg, align 8, !tbaa !191
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.vu = getelementptr [8 x i8], ptr %i.tj, i64 %indvars.iv.next504
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv.next504
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !204
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !204
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !204
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.wd
  %i.wf = load float, ptr %i.we, align 4, !tbaa !169
  %i.wg = fpext float %i.wf to double
  %i.wh = fadd double %i.vt, %i.wg                ; 3 uses
  store double %i.wh, ptr %i.vu, align 8, !tbaa !191
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !518

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i328
  %11 = ptrtoint ptr %i.tj to i64
  %i.wi = ptrtoint ptr %.sroa.011.1.i.i333 to i64
  %i.wj = sub i64 %i.wi, %11
  %i.wk = ashr exact i64 %i.wj, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.wk, i64 %i.uq) ; 5 uses
  %i.wl = icmp eq i64 %.sroa.speculated, 0
  %i.wm = icmp uge i64 %i.wk, %i.uq
  %or.cond191 = or i1 %i.wm, %i.wl
  br i1 %or.cond191, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !218
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.sroa.speculated
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !204
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !204
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.wo, ptr %i.e, align 8, !tbaa !220
  store i32 %i.ww, ptr %i.f, align 4, !tbaa !204
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !153
  %.not.i.i337 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i337, label %.invoke557, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !242
  %i.xb = invoke noundef double %i.xa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit340:          ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

bb.br:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit335
  %i.xc = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.xc ; 2 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !191
  %i.xf = fcmp ult double %i.uw, %i.xe
  br i1 %i.xf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 565)
          to label %bb.bt unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %.sroa.speculated ; 2 uses
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !191
  %i.xi = fcmp olt double %i.uw, %i.xh
  br i1 %i.xi, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 565)
          to label %bb.bv unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !218
  %i.xl = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.xm = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.xc
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !204
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !204
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.xk, ptr %i.c, align 8, !tbaa !220
  store i32 %i.xu, ptr %i.d, align 4, !tbaa !204
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !153
  %.not.i.i341 = icmp eq ptr %i.xw, null
  br i1 %.not.i.i341, label %.invoke557, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !242
  %i.xz = invoke noundef double %i.xy(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.bx unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354, !inline_history !0 ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ya = load ptr, ptr %i.xj, align 8, !tbaa !218
  %i.yb = load ptr, ptr %i.z, align 8, !tbaa !240
  %i.yc = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %.sroa.speculated
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !204
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !204
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ya, ptr %i.a, align 8, !tbaa !220
  store i32 %i.yk, ptr %i.b, align 4, !tbaa !204
  %i.yl = load ptr, ptr %i.xv, align 8, !tbaa !153
  %.not.i.i345 = icmp eq ptr %i.yl, null
  br i1 %.not.i.i345, label %.invoke557, label %bb.by

.invoke557:                                       ; preds = %bb.bx, %bb.bv, %bb.bp
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont558 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354

.cont558:                                         ; preds = %.invoke557
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.ym = load ptr, ptr %i.xx, align 8, !tbaa !242
  %i.yn = invoke noundef double %i.ym(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bz unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit354, !inline_history !0

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.yo = load double, ptr %i.xg, align 8, !tbaa !191
  %i.yp = load double, ptr %i.xd, align 8, !tbaa !191 ; 2 uses
  %i.yq = fsub double %i.yo, %i.yp                ; 2 uses
  %i.yr = fcmp ult double %i.yq, 1.000000e+00
  br i1 %i.yr, label %_ZNSt6vectorIiSaIiEED2Ev.exit352, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ys = fsub double %i.uw, %i.yp
  %i.yt = fdiv double %i.ys, %i.yq
  %i.yu = fsub double %i.yn, %i.xz
  %i.yv = call double @llvm.fmuladd.f64(double %i.yt, double %i.yu, double %i.xz)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit352

_ZNSt6vectorIdSaIdEED2Ev.exit354:                 ; preds = %.invoke557, %bb.by, %bb.bw, %bb.bq, %bb.bs, %bb.bu
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.ti) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit356

_ZNSt6vectorIiSaIiEED2Ev.exit352:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit340, %bb.ca, %bb.bz
  %.7 = phi double [ %i.xb, %_ZNKSt8functionIFdPKfiEEclES1_i.exit340 ], [ %i.yv, %bb.ca ], [ %i.xz, %bb.bz ]
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.ti) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef %i.sz) #35
  br label %bb.cb

_ZNSt6vectorIiSaIiEED2Ev.exit356:                 ; preds = %bb.bo, %_ZNSt6vectorIdSaIdEED2Ev.exit354
  %.pn165.pn.pn = phi { ptr, i32 } [ %i.vf, %bb.bo ], [ %i.yw, %_ZNSt6vectorIdSaIdEED2Ev.exit354 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef %i.sz) #35
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit352, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277, %_ZNSt6vectorIdSaIdEED2Ev.exit275, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221, %_ZNSt6vectorIdSaIdEED2Ev.exit219, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.8 = phi double [ %i.am, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1462, %_ZNSt6vectorIdSaIdEED2Ev.exit219 ], [ %i.gy, %_ZNKSt8functionIFdPKfiEEclES1_i.exit221 ], [ %.3469, %_ZNSt6vectorIdSaIdEED2Ev.exit275 ], [ %i.nl, %_ZNKSt8functionIFdPKfiEEclES1_i.exit277 ], [ %.5, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.sx, %_ZNKSt8functionIFdPKfiEEclES1_i.exit310 ], [ %.7, %_ZNSt6vectorIiSaIiEED2Ev.exit352 ]
  ret double %.8

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit356, %_ZNSt6vectorIiSaIiEED2Ev.exit308, %_ZNSt6vectorIdSaIdEED2Ev.exit264, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.pn187.pn.pn = phi { ptr, i32 } [ %.pn187.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn180.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit264 ], [ %.pn165.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit356 ], [ %.pn172.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit308 ]
  resume { ptr, i32 } %.pn187.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM22RegressionQuantileloss14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !217  ; 6 uses
  %i.e = icmp slt i32 %i.d, 2                     ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.h = load float, ptr %i.g, align 4, !tbaa !169
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.d to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 5 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34 ; 15 uses
  store i32 0, ptr %i.k, align 4, !tbaa !204
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !204
  %i.m = getelementptr i8, ptr %i.k, i64 %i.j
  %i.n = load i32, ptr %i.c, align 4, !tbaa !217  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN8LightGBM18RegressionMAPELOSSD0Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #35, !inline_history !787
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8LightGBM16RegressionL2lossE, i64 16), ptr %0, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN8LightGBM18RegressionMAPELOSSD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #35, !inline_history !788
  br label %_ZN8LightGBM18RegressionMAPELOSSD2Ev.exit

_ZN8LightGBM18RegressionMAPELOSSD2Ev.exit:        ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  tail call void @_ZN8LightGBM16RegressionL2loss4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !789

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !169
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp olt float %i.i, 1.000000e+00
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.80)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = sext i32 %2 to i64                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219  ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !174  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.u = sub nuw nsw i64 %i.l, %i.s
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.u)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.f:                                             ; preds = %.loopexit
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.w, ptr %i.m, align 8, !tbaa !219
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !221
  %i.z = icmp eq ptr %i.y, null
  %i.aa = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.a, i32 %i.aa)
  %_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined._ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81 = select i1 %i.z, ptr @_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined, ptr @_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81
  tail call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 1, ptr nonnull %_ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined._ZN8LightGBM18RegressionMAPELOSS4InitERKNS_8MetadataEi.omp_outlined.81, ptr nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !222
  store ptr %2, ptr %i.b, align 8, !tbaa !220
  store ptr %3, ptr %i.c, align 8, !tbaa !220
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.g = icmp eq ptr %i.f, null
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.h)
  %_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82 = select i1 %i.g, ptr @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined, ptr @_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull %_ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18RegressionMAPELOSS12GetGradientsEPKdPfS3_.omp_outlined.82, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM18RegressionMAPELOSS7GetNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM18RegressionMAPELOSS17IsConstantHessianEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM18RegressionMAPELOSS17IsRenewTreeOutputEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiS7_i(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.99, align 8             ; 7 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.anon.98, align 8             ; 6 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 9 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  store ptr %3, ptr %i.q, align 8, !tbaa !240
  store ptr %4, ptr %i.r, align 8, !tbaa !240
  %i.s = icmp eq ptr %4, null
  %i.t = icmp slt i32 %5, 2                       ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !218
  %i.w = load i32, ptr %3, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.v, ptr %i.o, align 8, !tbaa !220
  store i32 %i.w, ptr %i.p, align 4, !tbaa !204
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit:             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ab = call noundef double %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.al

bb.e:                                             ; preds = %bb.b
  %i.ac = zext nneg i32 %5 to i64                 ; 8 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #34 ; 14 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !204
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i.a = add nsw i64 %i.ac, -1   ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !204
  %min.iters.check301 = icmp ult i32 %5, 8
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %bb.e
  %n.vec303 = and i64 %i.ac, 2147483640           ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next308, %vector.body304 ] ; 2 uses
  %vec.ind306 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph302 ], [ %vec.ind.next309, %vector.body304 ] ; 3 uses
  %step.add307 = add <4 x i32> %vec.ind306, splat (i32 4)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index305 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind306, ptr %i.ag, align 4, !tbaa !204
  store <4 x i32> %step.add307, ptr %i.ah, align 4, !tbaa !204
  %index.next308 = add nuw i64 %index305, 8       ; 2 uses
  %vec.ind.next309 = add <4 x i32> %vec.ind306, splat (i32 8)
  %i.ai = icmp eq i64 %index.next308, %n.vec303
  br i1 %i.ai, label %middle.block310, label %vector.body304, !llvm.loop !790

middle.block310:                                  ; preds = %vector.body304
  %cmp.n311 = icmp eq i64 %n.vec303, %i.ac
  br i1 %cmp.n311, label %.loopexit, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %bb.e, %middle.block310
  %indvars.iv282.ph = phi i64 [ 0, %bb.e ], [ %n.vec303, %middle.block310 ]
  br label %scalar.ph300

.loopexit:                                        ; preds = %scalar.ph300, %middle.block310
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2248.0..sroa_idx, align 8
  %.sroa.3249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.q, ptr %.sroa.3249.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE_EEEvT_SK_T0_(ptr nonnull %i.ae, ptr %i.aj, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.100") align 8 %7)
          to label %bb.f unwind label %bb.g

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %scalar.ph300 ], [ %indvars.iv282.ph, %scalar.ph300.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv282
  %i.al = trunc nuw nsw i64 %indvars.iv282 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !204
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %i.ac
  br i1 %exitcond286.not, label %.loopexit, label %scalar.ph300, !llvm.loop !791

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.am = shl nuw nsw i64 %i.ac, 3                ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #34
          to label %.lr.ph274.preheader unwind label %bb.g ; 12 uses

.lr.ph274.preheader:                              ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i.i.i94 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i94, i1 false), !tbaa !191
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !240 ; 5 uses
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !204
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !204
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !174 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !169
  %i.az = fpext float %i.ay to double             ; 3 uses
  store double %i.az, ptr %i.an, align 8, !tbaa !191
  %i.ba = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter317 = and i64 %i.ba, 1
  %i.bb = icmp eq i32 %5, 2
  br i1 %i.bb, label %.lr.ph274.epil.preheader, label %.lr.ph274.preheader.new

.lr.ph274.preheader.new:                          ; preds = %.lr.ph274.preheader
  %unroll_iter320 = and i64 %i.ba, -2
  br label %.lr.ph274

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa: ; preds = %.lr.ph274
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, label %.lr.ph274.epil.preheader

.lr.ph274.epil.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph274.preheader
  %store_forwarded.epil.init = phi double [ %i.az, %.lr.ph274.preheader ], [ %i.cw, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ]
  %indvars.iv287.epil.init = phi i64 [ 1, %.lr.ph274.preheader ], [ %indvars.iv.next288.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod319 = trunc i64 %i.ba to i1
  call void @llvm.assume(i1 %lcmp.mod319)
  %i.bc = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv287.epil.init
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv287.epil.init
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !204
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !204
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !169
  %i.bl = fpext float %i.bk to double
  %i.bm = fadd double %store_forwarded.epil.init, %i.bl
  store double %i.bm, ptr %i.bc, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, %.lr.ph274.epil.preheader
  %i.bn = add nsw i32 %5, -1
  %i.bo = zext nneg i32 %i.bn to i64              ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !191
  %i.br = fmul double %i.bq, 5.000000e-01         ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.an, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader ] ; 2 uses
  %i.bs = lshr i64 %.016.i.i, 1                   ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.bs ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !191
  %i.bv = fcmp olt double %i.br, %i.bu            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = xor i64 %i.bs, -1
  %i.by = add nsw i64 %.016.i.i, %i.bx
  %.sroa.011.1.i.i = select i1 %i.bv, ptr %.sroa.011.015.i.i, ptr %i.bw ; 2 uses
  %.1.i.i = select i1 %i.bv, i64 %i.bs, i64 %i.by ; 2 uses
  %i.bz = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bz, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit, !llvm.loop !4

bb.g:                                             ; preds = %.loopexit, %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

.lr.ph274:                                        ; preds = %.lr.ph274, %.lr.ph274.preheader.new
  %store_forwarded = phi double [ %i.az, %.lr.ph274.preheader.new ], [ %i.cw, %.lr.ph274 ]
  %indvars.iv287 = phi i64 [ 1, %.lr.ph274.preheader.new ], [ %indvars.iv.next288.1, %.lr.ph274 ] ; 4 uses
  %niter321 = phi i64 [ 0, %.lr.ph274.preheader.new ], [ %niter321.next.1, %.lr.ph274 ]
  %i.cb = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv287
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv287
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !204
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !204
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !169
  %i.ck = fpext float %i.cj to double
  %i.cl = fadd double %store_forwarded, %i.ck     ; 2 uses
  store double %i.cl, ptr %i.cb, align 8, !tbaa !191
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv.next288
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next288
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !204
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !204
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !169
  %i.cv = fpext float %i.cu to double
  %i.cw = fadd double %i.cl, %i.cv                ; 3 uses
  store double %i.cw, ptr %i.cm, align 8, !tbaa !191
  %indvars.iv.next288.1 = add nuw nsw i64 %indvars.iv287, 2 ; 2 uses
  %niter321.next.1 = add nuw i64 %niter321, 2     ; 2 uses
  %niter321.ncmp.1 = icmp eq i64 %niter321.next.1, %unroll_iter320
  br i1 %niter321.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader.unr-lcssa, label %.lr.ph274, !llvm.loop !792

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %8 = ptrtoint ptr %i.an to i64
  %i.cx = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.cy = sub i64 %i.cx, %8
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %.sroa.speculated208 = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.bo) ; 5 uses
  %i.da = icmp eq i64 %.sroa.speculated208, 0
  %i.db = icmp uge i64 %i.cz, %i.bo
  %or.cond = or i1 %i.db, %i.da
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !218
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.speculated208
  %i.df = load i32, ptr %i.de, align 4, !tbaa !204
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dd, ptr %i.m, align 8, !tbaa !220
  store i32 %i.di, ptr %i.n, align 4, !tbaa !204
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !153
  %.not.i.i97 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i97, label %.invoke, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !242
  %i.dn = invoke noundef double %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit100 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit100:          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit
  %i.do = add nsw i64 %.sroa.speculated208, -1    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.do ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !191
  %i.dr = fcmp ult double %i.br, %i.dq
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 652)
          to label %bb.l unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.speculated208 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !191
  %i.du = fcmp olt double %i.br, %i.dt
  br i1 %i.du, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 652)
          to label %bb.n unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !218
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !240
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.do
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !204
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.dw, ptr %i.k, align 8, !tbaa !220
  store i32 %i.ec, ptr %i.l, align 4, !tbaa !204
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !153
  %.not.i.i101 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i101, label %.invoke, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !242
  %i.eh = invoke noundef double %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.p unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111, !inline_history !0 ; 3 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !218
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !240
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.speculated208
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !204
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ei, ptr %i.i, align 8, !tbaa !220
  store i32 %i.eo, ptr %i.j, align 4, !tbaa !204
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !153
  %.not.i.i105 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i105, label %.invoke, label %bb.q

.invoke:                                          ; preds = %bb.p, %bb.n, %bb.h
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.eq = load ptr, ptr %i.ef, align 8, !tbaa !242
  %i.er = invoke noundef double %i.eq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.r unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit111, !inline_history !0

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.es = load double, ptr %i.ds, align 8, !tbaa !191
  %i.et = load double, ptr %i.dp, align 8, !tbaa !191 ; 2 uses
  %i.eu = fsub double %i.es, %i.et                ; 2 uses
  %i.ev = fcmp ult double %i.eu, 1.000000e+00
  br i1 %i.ev, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = fsub double %i.br, %i.et
  %i.ex = fdiv double %i.ew, %i.eu
  %i.ey = fsub double %i.er, %i.eh
  %i.ez = call double @llvm.fmuladd.f64(double %i.ex, double %i.ey, double %i.eh)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit111:                 ; preds = %.invoke, %bb.q, %bb.o, %bb.i, %bb.k, %bb.m
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.am) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit113

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit100, %bb.s, %bb.r
  %.1 = phi double [ %i.dn, %_ZNKSt8functionIFdPKfiEEclES1_i.exit100 ], [ %i.ez, %bb.s ], [ %i.eh, %bb.r ]
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.am) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #35
  br label %bb.al

_ZNSt6vectorIiSaIiEED2Ev.exit113:                 ; preds = %bb.g, %_ZNSt6vectorIdSaIdEED2Ev.exit111
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.g ], [ %i.fa, %_ZNSt6vectorIdSaIdEED2Ev.exit111 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #35
  br label %bb.am

bb.t:                                             ; preds = %bb.a
  br i1 %i.t, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !218
  %i.fd = load i32, ptr %3, align 4, !tbaa !204
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.fc, ptr %i.g, align 8, !tbaa !220
  store i32 %i.fg, ptr %i.h, align 4, !tbaa !204
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !153
  %.not.i.i114 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i114, label %bb.v, label %_ZNKSt8functionIFdPKfiEEclES1_i.exit115

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt25__throw_bad_function_callv() #37
  unreachable

_ZNKSt8functionIFdPKfiEEclES1_i.exit115:          ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !242
  %i.fl = call noundef double %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.al

bb.w:                                             ; preds = %bb.t
  %i.fm = zext nneg i32 %5 to i64                 ; 8 uses
  %i.fn = shl nuw nsw i64 %i.fm, 2                ; 3 uses
  %i.fo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #34 ; 14 uses
  store i32 0, ptr %i.fo, align 4, !tbaa !204
  %i.fp = getelementptr i8, ptr %i.fo, i64 4      ; 2 uses
  %.idx.i.i.i.i.i.i.i118.a = add nsw i64 %i.fm, -1 ; 2 uses
  %.idx.i.i.i.i.i.i.i118 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i118.a, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fp, i8 0, i64 %.idx.i.i.i.i.i.i.i118, i1 false), !tbaa !204
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.w
  %n.vec = and i64 %i.fm, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x i32> %vec.ind, ptr %i.fq, align 4, !tbaa !204
  store <4 x i32> %step.add, ptr %i.fr, align 4, !tbaa !204
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !793

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fm
  br i1 %cmp.n, label %.loopexit313, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.w, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.w ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit313:                                     ; preds = %scalar.ph, %middle.block
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i.i118
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.r, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM18RegressionMAPELOSS15RenewTreeOutputEdSt8functionIFdPKfiEEPKiSH_iEUliiE0_EEEvT_SK_T0_(ptr nonnull %i.fo, ptr %i.ft, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.103") align 8 %6)
          to label %bb.x unwind label %bb.y

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv
  %i.fv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.fv, ptr %i.fu, align 4, !tbaa !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.fm
  br i1 %exitcond.not, label %.loopexit313, label %scalar.ph, !llvm.loop !794

bb.x:                                             ; preds = %.loopexit313
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fw = shl nuw nsw i64 %i.fm, 3                ; 3 uses
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #34
          to label %.lr.ph.preheader unwind label %bb.y ; 12 uses

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %.idx.i.i.i.i.i.i.i126 = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i118.a, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fy, i8 0, i64 %.idx.i.i.i.i.i.i.i126, i1 false), !tbaa !191
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ga = load ptr, ptr %i.r, align 8, !tbaa !240 ; 5 uses
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !240 ; 5 uses
  %i.gc = load i32, ptr %i.fo, align 4, !tbaa !204
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !204
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !204
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load ptr, ptr %i.fz, align 8, !tbaa !174 ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !169
  %i.gn = fpext float %i.gm to double             ; 3 uses
  store double %i.gn, ptr %i.fx, align 8, !tbaa !191
  %i.go = add nsw i64 %i.fm, -1                   ; 3 uses
  %xtraiter = and i64 %i.go, 1
  %i.gp = icmp eq i32 %5, 2
  br i1 %i.gp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.go, -2
  br label %.lr.ph

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, %.lr.ph.preheader
  %store_forwarded315.epil.init = phi double [ %i.gn, %.lr.ph.preheader ], [ %i.it, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa ]
  %indvars.iv277.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next278.1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod316 = trunc i64 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod316)
  %i.gq = getelementptr [8 x i8], ptr %i.fx, i64 %indvars.iv277.epil.init
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv277.epil.init
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !204
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !204
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !204
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !169
  %i.hc = fpext float %i.hb to double
  %i.hd = fadd double %store_forwarded315.epil.init, %i.hc
  store double %i.hd, ptr %i.gq, align 8, !tbaa !191
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, %.lr.ph.epil.preheader
  %i.he = add nsw i32 %5, -1
  %i.hf = zext nneg i32 %i.he to i64              ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !191
  %i.hi = fmul double %i.hh, 5.000000e-01         ; 4 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133
  %.016.i.i134 = phi i64 [ %.1.i.i139, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133 ], [ %i.fm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader ] ; 2 uses
  %.sroa.011.015.i.i135 = phi ptr [ %.sroa.011.1.i.i138, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133 ], [ %i.fx, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader ] ; 2 uses
  %i.hj = lshr i64 %.016.i.i134, 1                ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i135, i64 %i.hj ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !191
  %i.hm = fcmp olt double %i.hi, %i.hl            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = xor i64 %i.hj, -1
  %i.hp = add nsw i64 %.016.i.i134, %i.ho
  %.sroa.011.1.i.i138 = select i1 %i.hm, ptr %.sroa.011.015.i.i135, ptr %i.hn ; 2 uses
  %.1.i.i139 = select i1 %i.hm, i64 %i.hj, i64 %i.hp ; 2 uses
  %i.hq = icmp sgt i64 %.1.i.i139, 0
  br i1 %i.hq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140, !llvm.loop !4

bb.y:                                             ; preds = %.loopexit313, %bb.x
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit161

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded315 = phi double [ %i.gn, %.lr.ph.preheader.new ], [ %i.it, %.lr.ph ]
  %indvars.iv277 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next278.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.hs = getelementptr [8 x i8], ptr %i.fx, i64 %indvars.iv277
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv277
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !204
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !204
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !204
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !169
  %i.ie = fpext float %i.id to double
  %i.if = fadd double %store_forwarded315, %i.ie  ; 2 uses
  store double %i.if, ptr %i.hs, align 8, !tbaa !191
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.fx, i64 %indvars.iv.next278
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next278
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !204
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !204
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !204
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !169
  %i.is = fpext float %i.ir to double
  %i.it = fadd double %i.if, %i.is                ; 3 uses
  store double %i.it, ptr %i.ig, align 8, !tbaa !191
  %indvars.iv.next278.1 = add nuw nsw i64 %indvars.iv277, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !795

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i133
  %9 = ptrtoint ptr %i.fx to i64
  %i.iu = ptrtoint ptr %.sroa.011.1.i.i138 to i64
  %i.iv = sub i64 %i.iu, %9
  %i.iw = ashr exact i64 %i.iv, 3                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.iw, i64 %i.hf) ; 5 uses
  %i.ix = icmp eq i64 %.sroa.speculated, 0
  %i.iy = icmp uge i64 %i.iw, %i.hf
  %or.cond91 = or i1 %i.iy, %i.ix
  br i1 %or.cond91, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !218
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.sroa.speculated
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !204
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !204
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ja, ptr %i.e, align 8, !tbaa !220
  store i32 %i.ji, ptr %i.f, align 4, !tbaa !204
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !153
  %.not.i.i142 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i142, label %.invoke298, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !242
  %i.jn = invoke noundef double %i.jm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZNKSt8functionIFdPKfiEEclES1_i.exit145 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159, !inline_history !0

_ZNKSt8functionIFdPKfiEEclES1_i.exit145:          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

bb.ab:                                            ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET_S7_S7_RKT0_.exit140
  %i.jo = add nsw i64 %.sroa.speculated, -1       ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.jo ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !191
  %i.jr = fcmp ult double %i.hi, %i.jq
  br i1 %i.jr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 658)
          to label %bb.ad unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.sroa.speculated ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !191
  %i.ju = fcmp olt double %i.hi, %i.jt
  br i1 %i.ju, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 658)
          to label %bb.af unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !218
  %i.jx = load ptr, ptr %i.r, align 8, !tbaa !240
  %i.jy = load ptr, ptr %i.q, align 8, !tbaa !240
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.jo
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !204
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !204
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.jw, ptr %i.c, align 8, !tbaa !220
  store i32 %i.kg, ptr %i.d, align 4, !tbaa !204
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !153
  %.not.i.i146 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i146, label %.invoke298, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !242
  %i.kl = invoke noundef double %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ah unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159, !inline_history !0 ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.km = load ptr, ptr %i.jv, align 8, !tbaa !218
  %i.kn = load ptr, ptr %i.r, align 8, !tbaa !240
  %i.ko = load ptr, ptr %i.q, align 8, !tbaa !240
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.sroa.speculated
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !204
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !204
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.km, ptr %i.a, align 8, !tbaa !220
  store i32 %i.kw, ptr %i.b, align 4, !tbaa !204
  %i.kx = load ptr, ptr %i.kh, align 8, !tbaa !153
  %.not.i.i150 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i150, label %.invoke298, label %bb.ai

.invoke298:                                       ; preds = %bb.ah, %bb.af, %bb.z
  invoke void @_ZSt25__throw_bad_function_callv() #37
          to label %.cont299 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159

.cont299:                                         ; preds = %.invoke298
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load ptr, ptr %i.kj, align 8, !tbaa !242
  %i.kz = invoke noundef double %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aj unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit159, !inline_history !0

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.la = load double, ptr %i.js, align 8, !tbaa !191
  %i.lb = load double, ptr %i.jp, align 8, !tbaa !191 ; 2 uses
  %i.lc = fsub double %i.la, %i.lb                ; 2 uses
  %i.ld = fcmp ult double %i.lc, 1.000000e+00
  br i1 %i.ld, label %_ZNSt6vectorIiSaIiEED2Ev.exit157, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.le = fsub double %i.hi, %i.lb
  %i.lf = fdiv double %i.le, %i.lc
  %i.lg = fsub double %i.kz, %i.kl
  %i.lh = call double @llvm.fmuladd.f64(double %i.lf, double %i.lg, double %i.kl)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit157

_ZNSt6vectorIdSaIdEED2Ev.exit159:                 ; preds = %.invoke298, %bb.ai, %bb.ag, %bb.aa, %bb.ac, %bb.ae
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.fw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit161

_ZNSt6vectorIiSaIiEED2Ev.exit157:                 ; preds = %_ZNKSt8functionIFdPKfiEEclES1_i.exit145, %bb.ak, %bb.aj
  %.3 = phi double [ %i.jn, %_ZNKSt8functionIFdPKfiEEclES1_i.exit145 ], [ %i.lh, %bb.ak ], [ %i.kl, %bb.aj ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.fw) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fn) #35
  br label %bb.al

_ZNSt6vectorIiSaIiEED2Ev.exit161:                 ; preds = %bb.y, %_ZNSt6vectorIdSaIdEED2Ev.exit159
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.y ], [ %i.li, %_ZNSt6vectorIdSaIdEED2Ev.exit159 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fn) #35
  br label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit157, %_ZNKSt8functionIFdPKfiEEclES1_i.exit115, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt8functionIFdPKfiEEclES1_i.exit
  %.4 = phi double [ %i.ab, %_ZNKSt8functionIFdPKfiEEclES1_i.exit ], [ %.1, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.fl, %_ZNKSt8functionIFdPKfiEEclES1_i.exit115 ], [ %.3, %_ZNSt6vectorIiSaIiEED2Ev.exit157 ]
  ret double %.4

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit161, %_ZNSt6vectorIiSaIiEED2Ev.exit113
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn78.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit161 ], [ %.pn85.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit113 ]
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18RegressionMAPELOSS14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !217  ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !218
  %i.f = load float, ptr %i.e, align 4, !tbaa !169
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.b to i64
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 5 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #34 ; 15 uses
  store i32 0, ptr %i.i, align 4, !tbaa !204
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.h, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !204
  %i.k = getelementptr i8, ptr %i.i, i64 %i.h
  %i.l = load i32, ptr %i.a, align 4, !tbaa !217  ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.l to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body
end_hunk_2
