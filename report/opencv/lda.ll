Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lda?download=true
inline.NumInlined: 969
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv23EigenvalueDecomposition6orthesEv:bb.a
  %.not153.not.3 = icmp sgt i64 %indvars.iv.next251.2, %indvars.iv
  br i1 %.not153.not.3, label %.lr.ph190.new, label %.lr.ph194, !llvm.loop !324

._crit_edge195:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge198, label %.lr.ph190, !llvm.loop !325

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv253 = phi i64 [ %indvars.iv.next254.1, %scalar.ph ], [ %indvars.iv253.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv253
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !77
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv253 ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !77
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.hi, double %i.hk)
  store double %i.hl, ptr %i.hj, align 8, !tbaa !77
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next254
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !77
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next254 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !77
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.hn, double %i.hp)
  store double %i.hq, ptr %i.ho, align 8, !tbaa !77
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %exitcond257.not.1 = icmp eq i64 %indvars.iv.next254.1, %wide.trip.count261
  br i1 %exitcond257.not.1, label %._crit_edge195, label %scalar.ph, !llvm.loop !326

._crit_edge.thread:                               ; preds = %.preheader167, %._crit_edge198, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next, %wide.trip.count264
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond265.not, label %.preheader160, label %.preheader167, !llvm.loop !327

.preheader159:                                    ; preds = %.preheader159.lr.ph, %._crit_edge203
  %indvars.iv271 = phi i64 [ 0, %.preheader159.lr.ph ], [ %indvars.iv.next272, %._crit_edge203 ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv271
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !147 ; 2 uses
  br i1 %min.iters.check309, label %scalar.ph308.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.preheader159
  %broadcast.splatinsert312 = insertelement <2 x i64> poison, i64 %indvars.iv271, i64 0
  %broadcast.splat313 = shufflevector <2 x i64> %broadcast.splatinsert312, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph310
  %index315 = phi i64 [ 0, %vector.ph310 ], [ %index.next316, %vector.body314 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph310 ], [ %vec.ind.next, %vector.body314 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ht = icmp eq <2 x i64> %broadcast.splat313, %vec.ind
  %i.hu = icmp eq <2 x i64> %broadcast.splat313, %step.add
  %i.hv = select <2 x i1> %i.ht, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hw = select <2 x i1> %i.hu, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index315 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <2 x double> %i.hv, ptr %i.hx, align 8, !tbaa !77
  store <2 x double> %i.hw, ptr %i.hy, align 8, !tbaa !77
  %index.next316 = add nuw i64 %index315, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hz = icmp eq i64 %index.next316, %n.vec311
  br i1 %i.hz, label %middle.block317, label %vector.body314, !llvm.loop !328

middle.block317:                                  ; preds = %vector.body314
  br i1 %cmp.n318, label %._crit_edge203, label %scalar.ph308.preheader

scalar.ph308.preheader:                           ; preds = %.preheader159, %middle.block317
  %indvars.iv266.ph = phi i64 [ 0, %.preheader159 ], [ %n.vec311, %middle.block317 ]
  br label %scalar.ph308

._crit_edge205.split:                             ; preds = %._crit_edge203
  br i1 %i.c, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %._crit_edge205.split
  %i.ia = add nsw i32 %i.a, -2
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !149 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.if = zext nneg i32 %i.ia to i64
  %i.ig = zext nneg i32 %i.a to i64
  %i.ih = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge203:                                   ; preds = %scalar.ph308, %middle.block317
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %._crit_edge205.split, label %.preheader159, !llvm.loop !329

scalar.ph308:                                     ; preds = %scalar.ph308.preheader, %scalar.ph308
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %scalar.ph308 ], [ %indvars.iv266.ph, %scalar.ph308.preheader ] ; 3 uses
  %i.ii = icmp eq i64 %indvars.iv271, %indvars.iv266
  %i.ij = select i1 %i.ii, double 1.000000e+00, double 0.000000e+00
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv266
  store double %i.ij, ptr %i.ik, align 8, !tbaa !77
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count274
  br i1 %exitcond270.not, label %._crit_edge203, label %scalar.ph308, !llvm.loop !330

._crit_edge225:                                   ; preds = %.loopexit, %.preheader160, %._crit_edge205.split
  ret void

bb.b:                                             ; preds = %.lr.ph224, %.loopexit
  %indvars.iv276 = phi i64 [ %i.if, %.lr.ph224 ], [ %indvars.iv.next277, %.loopexit ] ; 10 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv276
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !147
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv.next277 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !77
  %i.ip = fcmp une double %i.io, 0.000000e+00
  br i1 %i.ip, label %.preheader158, label %.loopexit

.preheader158:                                    ; preds = %bb.b
  %.not.not206 = icmp slt i64 %indvars.iv276, %i.ih
  br i1 %.not.not206, label %.lr.ph208, label %.preheader157

.lr.ph208:                                        ; preds = %.preheader158
  %i.iq = load ptr, ptr %i.id, align 8, !tbaa !300
  br label %bb.e

.preheader157:                                    ; preds = %bb.e, %.preheader158
  %.not.not148220 = icmp slt i64 %indvars.iv276, %i.ig
  br i1 %.not.not148220, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader157
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !300 ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv276
  %i.it = load ptr, ptr %i.ie, align 8, !tbaa !297 ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge219.us, %.preheader.lr.ph
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge219.us ], [ %indvars.iv276, %.preheader.lr.ph ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv281 = phi i64 [ %indvars.iv276, %.preheader.us ], [ %indvars.iv.next282, %bb.c ] ; 3 uses
  %.0127210.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ja, %bb.c ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv281
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !77
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv281
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv287
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !77
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iz, double %.0127210.us) ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.jb = trunc nuw i64 %indvars.iv.next282 to i32
  %.not.not149.us = icmp sgt i32 %i.a, %i.jb
  br i1 %.not.not149.us, label %bb.c, label %._crit_edge213.us, !llvm.loop !331

bb.d:                                             ; preds = %._crit_edge213.us, %bb.d
  %indvars.iv284 = phi i64 [ %indvars.iv276, %._crit_edge213.us ], [ %indvars.iv.next285, %bb.d ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv284
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !77
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv284
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !147
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv287 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !77
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jd, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv.next285 to i32
  %.not.not150.us = icmp sgt i32 %i.a, %i.jj
  br i1 %.not.not150.us, label %bb.d, label %._crit_edge219.us, !llvm.loop !332

._crit_edge213.us:                                ; preds = %bb.c
  %i.jk = load double, ptr %i.is, align 8, !tbaa !77
  %i.jl = fdiv double %i.ja, %i.jk
  %i.jm = load double, ptr %i.in, align 8, !tbaa !77
  %i.jn = fdiv double %i.jl, %i.jm
  br label %bb.d

._crit_edge219.us:                                ; preds = %bb.d
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.jo = trunc nuw i64 %indvars.iv.next288 to i32
  %.not.not148.us = icmp sgt i32 %i.a, %i.jo
  br i1 %.not.not148.us, label %.preheader.us, label %.loopexit, !llvm.loop !333

bb.e:                                             ; preds = %.lr.ph208, %bb.e
  %indvars.iv278 = phi i64 [ %indvars.iv276, %.lr.ph208 ], [ %indvars.iv.next279, %bb.e ]
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 4 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next279
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !147
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.next277
  %i.js = load double, ptr %i.jr, align 8, !tbaa !77
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.next279
  store double %i.js, ptr %i.jt, align 8, !tbaa !77
  %i.ju = trunc nuw i64 %indvars.iv.next279 to i32
  %.not.not = icmp sgt i32 %i.b, %i.ju
  br i1 %.not.not, label %bb.e, label %.preheader157, !llvm.loop !334

.loopexit:                                        ; preds = %._crit_edge219.us, %.preheader157, %bb.b
  %i.jv = icmp sgt i64 %indvars.iv276, 1
  br i1 %i.jv, label %bb.b, label %._crit_edge225, !llvm.loop !335
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition4hqr2Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !63     ; 17 uses
  %i.b = mul nsw i32 %i.a, 1000
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv23EigenvalueDecomposition4hqr2Ev, ptr noundef nonnull @.str.1, i32 noundef 325) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.ci

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 56 uses
  %i.m = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 9 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader810.lr.ph.unr-lcssa:                    ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader810.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader810.lr.ph.unr-lcssa, %bb.g
  %indvars.iv942.epil.init = phi i64 [ 0, %bb.g ], [ %indvars.iv.next943.1, %.preheader810.lr.ph.unr-lcssa ] ; 2 uses
  %.0616814.epil.init = phi double [ 0.000000e+00, %bb.g ], [ %i.as, %.preheader810.lr.ph.unr-lcssa ]
  %lcmp.mod1174 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1174)
  %i.p = trunc nuw nsw i64 %indvars.iv942.epil.init to i32
  %smax.epil = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.q = zext nneg i32 %smax.epil to i64
  %i.r = add nsw i64 %i.q, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv942.epil.init
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !147
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %i.r, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.1617812.epil = phi double [ %.0616814.epil.init, %.lr.ph.epil.preheader ], [ %i.x, %bb.h ]
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !77
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %.1617812.epil, %i.w         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.epil, %i.m
  br i1 %i.y, label %bb.h, label %.preheader810.lr.ph, !llvm.loop !336

.preheader810.lr.ph:                              ; preds = %bb.h, %.preheader810.lr.ph.unr-lcssa
  %.lcssa1172.lcssa = phi double [ %i.as, %.preheader810.lr.ph.unr-lcssa ], [ %i.x, %bb.h ] ; 4 uses
  %i.z = add nsw i32 %i.a, -1                     ; 5 uses
  %i.aa = fcmp olt double %.lcssa1172.lcssa, f0x3E80000000000000
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter1194 = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i64 %i.n, 0
  %unroll_iter1198 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1194, 0
  %lcmp.mod1197 = trunc i32 %i.a to i1
  br label %.preheader810

.lr.ph:                                           ; preds = %._crit_edge.1, %.new
  %indvars.iv942 = phi i64 [ 0, %.new ], [ %indvars.iv.next943.1, %._crit_edge.1 ] ; 4 uses
  %.0616814 = phi double [ 0.000000e+00, %.new ], [ %i.as, %._crit_edge.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.af = trunc nuw nsw i64 %indvars.iv942 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = zext nneg i32 %smax to i64
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv942
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  %indvars.iv.next943 = or disjoint i64 %indvars.iv942, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next943 to i32
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %i.al = zext nneg i32 %smax.1 to i64
  %i.am = add nsw i64 %i.al, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next943
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !147
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.1 = phi i64 [ %i.am, %._crit_edge ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %.1617812.1 = phi double [ %i.ax, %._crit_edge ], [ %i.as, %bb.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.1
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.as = fadd double %.1617812.1, %i.ar          ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next.1, %i.m
  br i1 %i.at, label %bb.i, label %._crit_edge.1, !llvm.loop !336

._crit_edge.1:                                    ; preds = %bb.i
  %indvars.iv.next943.1 = add nuw nsw i64 %indvars.iv942, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader810.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !337

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.1617812 = phi double [ %.0616814, %.lr.ph ], [ %i.ax, %bb.j ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.av = load double, ptr %i.au, align 8, !tbaa !77
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %.1617812, %i.aw            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.ay, label %bb.j, label %._crit_edge, !llvm.loop !336

.preheader810:                                    ; preds = %.preheader810.lr.ph, %.thread787
  %.0609879 = phi i32 [ 0, %.preheader810.lr.ph ], [ %.1610, %.thread787 ] ; 3 uses
  %.0618878 = phi double [ 0.000000e+00, %.preheader810.lr.ph ], [ %.4622, %.thread787 ] ; 9 uses
  %.0774876 = phi i32 [ %i.z, %.preheader810.lr.ph ], [ %.1775, %.thread787 ] ; 27 uses
  br i1 %i.aa, label %.preheader810.split.us.thread, label %.preheader810.split.preheader

.preheader810.split.preheader:                    ; preds = %.preheader810
  %i.az = icmp eq i32 %.0774876, 0
  br i1 %i.az, label %.preheader810.split.us, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %.preheader810.split.preheader
  %i.ba = zext nneg i32 %.0774876 to i64
  br label %bb.k

.preheader810.split:                              ; preds = %bb.k
  %i.bb = icmp eq i64 %i.bc, 0
  br i1 %i.bb, label %.preheader810.split.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph1149, %.preheader810.split
  %indvars.iv9451148 = phi i64 [ %i.ba, %.lr.ph1149 ], [ %i.bc, %.preheader810.split ] ; 4 uses
  %i.bc = add nsw i64 %indvars.iv9451148, -1      ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !77
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv9451148
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !147 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv9451148
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !77
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fadd double %i.bh, %i.bm                ; 2 uses
  %i.bo = fcmp oeq double %i.bn, 0.000000e+00
  %.0605 = select i1 %i.bo, double %.lcssa1172.lcssa, double %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bc
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !77
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fmul double %.0605, f0x3CB0000000000000
  %i.bt = fcmp olt double %i.br, %i.bs
  br i1 %i.bt, label %.preheader810.split.us.split.loop.exit1124, label %.preheader810.split

.preheader810.split.us.split.loop.exit1124:       ; preds = %bb.k
  %i.bu = trunc nuw nsw i64 %indvars.iv9451148 to i32
  br label %.preheader810.split.us

.preheader810.split.us:                           ; preds = %.preheader810.split, %.preheader810.split.preheader, %.preheader810.split.us.split.loop.exit1124
  %.us-phi = phi i32 [ %i.bu, %.preheader810.split.us.split.loop.exit1124 ], [ 0, %.preheader810.split.preheader ], [ 0, %.preheader810.split ] ; 10 uses
  %i.bv = icmp eq i32 %.us-phi, %.0774876
  br i1 %i.bv, label %.preheader810.split.us.thread, label %bb.l

.preheader810.split.us.thread:                    ; preds = %.preheader810, %.preheader810.split.us
  %i.bw = zext nneg i32 %.0774876 to i64          ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !147
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !77
  %i.cb = fadd double %.0618878, %i.ca            ; 2 uses
  store double %i.cb, ptr %i.bz, align 8, !tbaa !77
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bw
  store double %i.cb, ptr %i.cd, align 8, !tbaa !77
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !299
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bw
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !77
  %i.cg = add nsw i32 %.0774876, -1
  br label %.thread787

bb.l:                                             ; preds = %.preheader810.split.us
  %i.ch = add nsw i32 %.0774876, -1               ; 3 uses
  %i.ci = icmp eq i32 %.us-phi, %i.ch
  %i.cj = zext nneg i32 %.0774876 to i64          ; 16 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cj ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !147 ; 8 uses
  br i1 %i.ci, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cm = zext nneg i32 %.us-phi to i64           ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cm
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !147 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cj
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !77
  %i.ct = fmul double %i.co, %i.cs                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cm ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !77
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 4 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !77 ; 2 uses
  %i.cy = fsub double %i.cv, %i.cx
  %i.cz = fmul double %i.cy, 5.000000e-01         ; 5 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.ct) ; 2 uses
  %i.db = tail call noundef double @llvm.fabs.f64(double %i.da)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.db) ; 4 uses
  %i.dc = fadd double %.0618878, %i.cx
  store double %i.dc, ptr %i.cw, align 8, !tbaa !77
  %i.dd = load double, ptr %i.cu, align 8, !tbaa !77
  %i.de = fadd double %.0618878, %i.dd
  store double %i.de, ptr %i.cu, align 8, !tbaa !77
end_hunk_0
begin_hunk_1_@_ZN2cv23EigenvalueDecomposition4hqr2Ev:bb.a
  %.3593 = phi double [ %i.il, %bb.p ], [ f0x3FEED916872B020C, %._crit_edge825 ], [ %i.il, %bb.q ], [ %i.jj, %.thread1102 ]
  %.3589 = phi double [ %i.iq, %bb.p ], [ f0x3FEED916872B020C, %._crit_edge825 ], [ %i.iq, %bb.q ], [ %i.jl, %.thread1102 ]
  %i.ls = add nsw i32 %.0609879, 1                ; 3 uses
  %.not665 = icmp slt i32 %.0609879, %i.b
  br i1 %.not665, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -7, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv23EigenvalueDecomposition4hqr2Ev, ptr noundef nonnull @.str.1, i32 noundef 486) #20
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

bb.w:                                             ; preds = %bb.t
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679: ; preds = %bb.w
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !34
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679, %bb.v
  %.pn673 = phi { ptr, i32 } [ %i.lt, %bb.v ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679 ], [ %i.lu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ci

bb.x:                                             ; preds = %bb.r
  %i.ma = add nsw i32 %.0774876, -2               ; 3 uses
  %.not666826 = icmp slt i32 %i.ma, %.us-phi
  br i1 %.not666826, label %.thread, label %.lr.ph829

.lr.ph829:                                        ; preds = %bb.x
  %i.mb = fneg double %.3589
  %i.mc = zext nneg i32 %i.ma to i64              ; 3 uses
  %sext = zext nneg i32 %.us-phi to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.mc
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert1066 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mc
  %.pre1067 = load double, ptr %.phi.trans.insert1066, align 8, !tbaa !77
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph829
  %i.md = phi double [ %.pre1067, %.lr.ph829 ], [ %i.oa, %bb.z ] ; 4 uses
  %i.me = phi ptr [ %.pre, %.lr.ph829 ], [ %i.ny, %bb.z ] ; 2 uses
  %indvars.iv958 = phi i64 [ %i.mc, %.lr.ph829 ], [ %indvars.iv.next959, %bb.z ] ; 6 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv958
  %i.mg = fsub double %.2596, %i.md               ; 2 uses
  %i.mh = fsub double %.3593, %i.md               ; 2 uses
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.mb)
  %i.mj = add nuw nsw i64 %indvars.iv958, 1       ; 4 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.mj
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !147 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv958
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !77
  %i.mo = fdiv double %i.mi, %i.mn
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.mj
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !77
  %i.mr = fadd double %i.mo, %i.mq                ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !77 ; 2 uses
  %i.mu = fsub double %i.mt, %i.md
  %i.mv = fsub double %i.mu, %i.mg
  %i.mw = fsub double %i.mv, %i.mh                ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !147
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mj
  %i.na = load double, ptr %i.mz, align 8, !tbaa !77 ; 2 uses
  %i.nb = tail call noundef double @llvm.fabs.f64(double %i.mr)
  %i.nc = tail call noundef double @llvm.fabs.f64(double %i.mw)
  %i.nd = fadd double %i.nb, %i.nc
  %i.ne = tail call noundef double @llvm.fabs.f64(double %i.na)
  %i.nf = fadd double %i.ne, %i.nd                ; 2 uses
  %i.ng = fdiv double %i.mw, %i.nf                ; 3 uses
  %i.nh = insertelement <2 x double> poison, double %i.na, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.mr, i64 1
  %i.nj = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fdiv <2 x double> %i.ni, %i.nk          ; 4 uses
  %i.nm = icmp eq i64 %indvars.iv958, %sext
  br i1 %i.nm, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, -1 ; 4 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.me, i64 %indvars.iv.next959
  %i.no = load double, ptr %i.nn, align 8, !tbaa !77
  %i.np = tail call noundef double @llvm.fabs.f64(double %i.no)
  %i.nq = tail call noundef double @llvm.fabs.f64(double %i.ng)
  %i.nr = extractelement <2 x double> %i.nl, i64 0
  %i.ns = tail call noundef double @llvm.fabs.f64(double %i.nr)
  %i.nt = fadd double %i.nq, %i.ns
  %i.nu = fmul double %i.nt, %i.np
  %i.nv = extractelement <2 x double> %i.nl, i64 1
  %i.nw = tail call noundef double @llvm.fabs.f64(double %i.nv)
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next959
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !147 ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %indvars.iv.next959
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !77 ; 2 uses
  %i.ob = tail call noundef double @llvm.fabs.f64(double %i.oa)
  %i.oc = tail call noundef double @llvm.fabs.f64(double %i.md)
  %i.od = fadd double %i.oc, %i.ob
  %i.oe = tail call noundef double @llvm.fabs.f64(double %i.mt)
  %i.of = fadd double %i.oe, %i.od
  %i.og = fmul double %i.nw, %i.of
  %i.oh = fmul double %i.og, f0x3CB0000000000000
  %i.oi = fcmp olt double %i.nu, %i.oh
  br i1 %i.oi, label %.thread.loopexit.split.loop.exit, label %bb.y

.thread.loopexit.split.loop.exit:                 ; preds = %bb.z
  %i.oj = trunc nsw i64 %indvars.iv958 to i32
  br label %.thread

.thread:                                          ; preds = %bb.y, %.thread.loopexit.split.loop.exit, %bb.x
  %.0566.lcssa = phi i32 [ %i.ma, %bb.x ], [ %i.oj, %.thread.loopexit.split.loop.exit ], [ %.us-phi, %bb.y ] ; 8 uses
  %.1572 = phi double [ +qnan, %bb.x ], [ %i.ng, %.thread.loopexit.split.loop.exit ], [ %i.ng, %bb.y ]
  %i.ok = phi <2 x double> [ splat (double +qnan), %bb.x ], [ %i.nl, %.thread.loopexit.split.loop.exit ], [ %i.nl, %bb.y ]
  %i.ol = add nsw i32 %.0566.lcssa, 2             ; 2 uses
  %.not667844 = icmp sgt i32 %i.ol, %.0774876
  br i1 %.not667844, label %.preheader809, label %.lr.ph846.preheader

.lr.ph846.preheader:                              ; preds = %.thread
  %i.om = sext i32 %.0566.lcssa to i64            ; 3 uses
  %i.on = add nsw i64 %i.om, 2                    ; 3 uses
  %i.oo = sext i32 %i.ol to i64                   ; 4 uses
  %i.op = add nuw nsw i32 %.0774876, 1            ; 2 uses
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.on
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !147
  %i.os = getelementptr [8 x i8], ptr %i.or, i64 %i.on ; 2 uses
  %i.ot = getelementptr i8, ptr %i.os, i64 -16
  store double 0.000000e+00, ptr %i.ot, align 8, !tbaa !77
  %i.ou = icmp sgt i64 %i.on, %i.oo
  br i1 %i.ou, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph846.preheader
  %i.ov = getelementptr i8, ptr %i.os, i64 -24
  store double 0.000000e+00, ptr %i.ov, align 8, !tbaa !77
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph846.preheader
  %indvars.iv.next962.peel = add nsw i64 %i.om, 3 ; 5 uses
  %lftr.wideiv.peel = trunc i64 %indvars.iv.next962.peel to i32
  %exitcond964.peel.not = icmp eq i32 %i.op, %lftr.wideiv.peel
  br i1 %exitcond964.peel.not, label %.preheader809, label %.lr.ph846.preheader1164

.lr.ph846.preheader1164:                          ; preds = %bb.ab
  %i.ow = sub i32 %.0774876, %.0566.lcssa
  %i.ox = add i32 %.0774876, -3
  %xtraiter1186 = and i32 %i.ow, 1
  %lcmp.mod1187.not = icmp eq i32 %xtraiter1186, 0
  br i1 %lcmp.mod1187.not, label %.lr.ph846.prol.loopexit, label %.lr.ph846.prol

.lr.ph846.prol:                                   ; preds = %.lr.ph846.preheader1164
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next962.peel
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !147
  %i.pa = getelementptr [8 x i8], ptr %i.oz, i64 %indvars.iv.next962.peel ; 2 uses
  %i.pb = getelementptr i8, ptr %i.pa, i64 -16
  store double 0.000000e+00, ptr %i.pb, align 8, !tbaa !77
  %i.pc = icmp sgt i64 %indvars.iv.next962.peel, %i.oo
  br i1 %i.pc, label %bb.ac, label %.lr.ph846.prol.loopexit.unr-lcssa

bb.ac:                                            ; preds = %.lr.ph846.prol
  %i.pd = getelementptr i8, ptr %i.pa, i64 -24
  store double 0.000000e+00, ptr %i.pd, align 8, !tbaa !77
  br label %.lr.ph846.prol.loopexit.unr-lcssa

.lr.ph846.prol.loopexit.unr-lcssa:                ; preds = %bb.ac, %.lr.ph846.prol
  %indvars.iv.next962.prol = add nsw i64 %i.om, 4
  br label %.lr.ph846.prol.loopexit

.lr.ph846.prol.loopexit:                          ; preds = %.lr.ph846.prol.loopexit.unr-lcssa, %.lr.ph846.preheader1164
  %indvars.iv961.unr = phi i64 [ %indvars.iv.next962.peel, %.lr.ph846.preheader1164 ], [ %indvars.iv.next962.prol, %.lr.ph846.prol.loopexit.unr-lcssa ]
  %i.pe = icmp eq i32 %i.ox, %.0566.lcssa
  br i1 %i.pe, label %.preheader809, label %.lr.ph846

.preheader809:                                    ; preds = %.lr.ph846.prol.loopexit, %bb.af, %bb.ab, %.thread
  %i.pf = icmp slt i32 %.0566.lcssa, %.0774876
  br i1 %i.pf, label %.lr.ph865, label %.thread787

.lr.ph865:                                        ; preds = %.preheader809
  %.not670 = icmp eq i32 %.us-phi, %.0566.lcssa
  %i.pg = sext i32 %.0566.lcssa to i64            ; 4 uses
  %i.ph = add i32 %.0566.lcssa, 3
  %sext985 = sext i32 %i.ch to i64
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pg
  br label %bb.ag

.lr.ph846:                                        ; preds = %.lr.ph846.prol.loopexit, %bb.af
  %indvars.iv961 = phi i64 [ %indvars.iv.next962.1, %bb.af ], [ %indvars.iv961.unr, %.lr.ph846.prol.loopexit ] ; 6 uses
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv961
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !147
  %i.pl = getelementptr [8 x i8], ptr %i.pk, i64 %indvars.iv961 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 -16
  store double 0.000000e+00, ptr %i.pm, align 8, !tbaa !77
  %i.pn = icmp sgt i64 %indvars.iv961, %i.oo
  br i1 %i.pn, label %bb.ad, label %.lr.ph846.1

bb.ad:                                            ; preds = %.lr.ph846
  %i.po = getelementptr i8, ptr %i.pl, i64 -24
  store double 0.000000e+00, ptr %i.po, align 8, !tbaa !77
  br label %.lr.ph846.1

.lr.ph846.1:                                      ; preds = %.lr.ph846, %bb.ad
  %indvars.iv.next962 = add nsw i64 %indvars.iv961, 1 ; 2 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next962
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !147
  %i.pr = getelementptr [8 x i8], ptr %i.pq, i64 %indvars.iv.next962 ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 -16
  store double 0.000000e+00, ptr %i.ps, align 8, !tbaa !77
  %.not1220 = icmp slt i64 %indvars.iv961, %i.oo
  br i1 %.not1220, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph846.1
  %i.pt = getelementptr i8, ptr %i.pr, i64 -24
  store double 0.000000e+00, ptr %i.pt, align 8, !tbaa !77
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph846.1
  %indvars.iv.next962.1 = add nsw i64 %indvars.iv961, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next962.1 to i32
  %exitcond964.not.1 = icmp eq i32 %i.op, %lftr.wideiv.1
  br i1 %exitcond964.not.1, label %.preheader809, label %.lr.ph846, !llvm.loop !351

bb.ag:                                            ; preds = %.lr.ph865, %.thread778
  %indvars.iv976 = phi i32 [ %i.ph, %.lr.ph865 ], [ %indvars.iv.next977, %.thread778 ] ; 2 uses
  %indvars.iv966 = phi i64 [ %i.pg, %.lr.ph865 ], [ %indvars.iv.next967, %.thread778 ] ; 13 uses
  %.2573861 = phi double [ %.1572, %.lr.ph865 ], [ %i.ur, %.thread778 ]
  %.3597859 = phi double [ %.2596, %.lr.ph865 ], [ %i.uq, %.thread778 ]
  %i.pu = phi <2 x double> [ %i.ok, %.lr.ph865 ], [ %i.up, %.thread778 ]
  %smin = tail call i32 @llvm.smin.i32(i32 %.0774876, i32 %indvars.iv976)
  %i.pv = add nsw i32 %smin, 1
  %i.pw = icmp eq i64 %indvars.iv966, %sext985    ; 4 uses
  %i.px = icmp eq i64 %indvars.iv966, %i.pg       ; 2 uses
  br i1 %i.px, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.py = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv966 ; 3 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !147
  %i.qa = add nsw i64 %indvars.iv966, -1          ; 3 uses
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !77 ; 2 uses
  %i.qd = getelementptr i8, ptr %i.py, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !147
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.qe, i64 %i.qa
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !77 ; 3 uses
  br i1 %i.pw, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qh = getelementptr i8, ptr %i.py, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !147
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qa
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !77
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ql = phi double [ %i.qk, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 2 uses
  %i.qm = tail call noundef double @llvm.fabs.f64(double %i.qc)
  %i.qn = tail call noundef double @llvm.fabs.f64(double %i.qg)
  %i.qo = fadd double %i.qm, %i.qn
  %i.qp = tail call noundef double @llvm.fabs.f64(double %i.ql)
  %i.qq = fadd double %i.qo, %i.qp                ; 5 uses
  %i.qr = fcmp une double %i.qq, 0.000000e+00
  %i.qs = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qt = insertelement <2 x double> %i.qs, double %i.qc, i64 1 ; 2 uses
  br i1 %i.qr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.qu = fdiv double %i.qg, %i.qq
  %i.qv = insertelement <2 x double> poison, double %i.qq, i64 0
  %i.qw = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qx = fdiv <2 x double> %i.qt, %i.qw
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ag
  %.4598 = phi double [ %i.qq, %bb.ak ], [ %i.qq, %bb.aj ], [ %.3597859, %bb.ag ] ; 3 uses
  %.3574 = phi double [ %i.qu, %bb.ak ], [ %i.qg, %bb.aj ], [ %.2573861, %bb.ag ] ; 5 uses
  %i.qy = phi <2 x double> [ %i.qx, %bb.ak ], [ %i.qt, %bb.aj ], [ %i.pu, %bb.ag ] ; 3 uses
  %i.qz = fcmp une double %.4598, 0.000000e+00
  br i1 %i.qz, label %bb.am, label %.thread787

bb.am:                                            ; preds = %bb.al
  %i.ra = fmul double %.3574, %.3574
  %i.rb = extractelement <2 x double> %i.qy, i64 1 ; 4 uses
  %i.rc = tail call double @llvm.fmuladd.f64(double %i.rb, double %i.rb, double %i.ra)
  %i.rd = extractelement <2 x double> %i.qy, i64 0 ; 4 uses
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rd, double %i.rd, double %i.rc) ; 2 uses
  %sqrt794 = tail call double @llvm.sqrt.f64(double %i.re) ; 2 uses
  %i.rf = fcmp olt double %i.rb, 0.000000e+00
  %i.rg = fneg double %sqrt794
  %.0563 = select i1 %i.rf, double %i.rg, double %sqrt794 ; 5 uses
  %i.rh = fcmp une double %i.re, 0.000000e+00
  %i.ri = insertelement <2 x double> poison, double %.4598, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %.3574, i64 1
  br i1 %i.rh, label %bb.an, label %.thread778

bb.an:                                            ; preds = %bb.am
  br i1 %i.px, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rk = fneg double %.0563
  %i.rl = fmul double %.4598, %i.rk
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv966
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !147
  %i.ro = getelementptr [8 x i8], ptr %i.rn, i64 %indvars.iv966
  %i.rp = getelementptr i8, ptr %i.ro, i64 -8
  store double %i.rl, ptr %i.rp, align 8, !tbaa !77
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %.not670, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rq = load ptr, ptr %i.pi, align 8, !tbaa !147
  %i.rr = getelementptr [8 x i8], ptr %i.rq, i64 %i.pg
  %i.rs = getelementptr i8, ptr %i.rr, i64 -8     ; 2 uses
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !77
  %i.ru = fneg double %i.rt
  store double %i.ru, ptr %i.rs, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.rv = fadd double %i.rb, %.0563               ; 3 uses
  %i.rw = fdiv double %.3574, %.0563              ; 3 uses
  %i.rx = fdiv double %i.rd, %.0563               ; 3 uses
  %i.ry = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %.3574, i64 1
  %i.sa = insertelement <2 x double> poison, double %.0563, i64 0
  %i.sb = insertelement <2 x double> %i.sa, double %i.rv, i64 1
  %i.sc = fdiv <2 x double> %i.rz, %i.sb          ; 7 uses
  %i.sd = fdiv double %i.rd, %i.rv                ; 4 uses
  %i.se = icmp slt i64 %indvars.iv966, %i.m
  br i1 %i.se, label %.lr.ph849, label %.preheader805

.lr.ph849:                                        ; preds = %bb.ar
  %i.sf = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv966 ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !147
  %i.sh = getelementptr i8, ptr %i.sf, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !147
  %i.sj = getelementptr i8, ptr %i.sf, i64 16
  %i.sk = extractelement <2 x double> %i.sc, i64 0
  %i.sl = extractelement <2 x double> %i.sc, i64 1
  br label %bb.as

.preheader805:                                    ; preds = %bb.au, %bb.ar
  %i.sm = trunc i64 %indvars.iv966 to i32
  %i.sn = add i32 %i.sm, 3
  %.sroa.speculated705 = tail call i32 @llvm.smin.i32(i32 %i.sn, i32 %.0774876)
  %.not671851 = icmp slt i32 %.sroa.speculated705, 0
  br i1 %.not671851, label %.lr.ph857, label %.lr.ph853

.lr.ph853:                                        ; preds = %.preheader805
  %wide.trip.count978 = zext i32 %i.pv to i64
  %i.so = extractelement <2 x double> %i.sc, i64 0
  %i.sp = extractelement <2 x double> %i.sc, i64 1
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph849, %bb.au
  %indvars.iv968 = phi i64 [ %indvars.iv966, %.lr.ph849 ], [ %indvars.iv.next969, %bb.au ] ; 4 uses
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %indvars.iv968 ; 3 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !77 ; 2 uses
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.si, i64 %indvars.iv968 ; 3 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !77
  %i.su = tail call double @llvm.fmuladd.f64(double %i.sl, double %i.st, double %i.sr) ; 2 uses
  br i1 %i.pw, label %._crit_edge1073, label %bb.at

._crit_edge1073:                                  ; preds = %bb.as
  %.pre1074 = fneg double %i.su
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.sv = load ptr, ptr %i.sj, align 8, !tbaa !147
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %indvars.iv968 ; 2 uses
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !77 ; 2 uses
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.sx, double %i.su)
  %i.sz = fneg double %i.sy                       ; 2 uses
  %i.ta = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.rx, double %i.sx)
  store double %i.ta, ptr %i.sw, align 8, !tbaa !77
  %.pre1068 = load double, ptr %i.sq, align 8, !tbaa !77
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge1073, %bb.at
  %.pre-phi = phi double [ %.pre1074, %._crit_edge1073 ], [ %i.sz, %bb.at ] ; 2 uses
  %i.tb = phi double [ %i.sr, %._crit_edge1073 ], [ %.pre1068, %bb.at ]
  %i.tc = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.sk, double %i.tb)
  store double %i.tc, ptr %i.sq, align 8, !tbaa !77
  %i.td = load double, ptr %i.ss, align 8, !tbaa !77
  %i.te = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.rw, double %i.td)
  store double %i.te, ptr %i.ss, align 8, !tbaa !77
  %indvars.iv.next969 = add nsw i64 %indvars.iv968, 1 ; 2 uses
  %lftr.wideiv971 = trunc i64 %indvars.iv.next969 to i32
  %exitcond972.not = icmp eq i32 %i.a, %lftr.wideiv971
  br i1 %exitcond972.not, label %.preheader805, label %bb.as, !llvm.loop !353

.lr.ph857:                                        ; preds = %bb.ax, %.preheader805
  %i.tf = load ptr, ptr %i.ab, align 8, !tbaa !297
  %i.tg = extractelement <2 x double> %i.sc, i64 0
  %i.th = extractelement <2 x double> %i.sc, i64 1
  %i.ti = insertelement <2 x double> poison, double %i.sd, i64 0
  br label %bb.ay

bb.av:                                            ; preds = %.lr.ph853, %bb.ax
  %indvars.iv973 = phi i64 [ 0, %.lr.ph853 ], [ %indvars.iv.next974, %bb.ax ] ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv973
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !147
  %i.tl = getelementptr [8 x i8], ptr %i.tk, i64 %indvars.iv966 ; 4 uses
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !77 ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tl, i64 8      ; 2 uses
  %i.to = load double, ptr %i.tn, align 8, !tbaa !77 ; 2 uses
  %i.tp = fmul double %i.rw, %i.to
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.so, double %i.tm, double %i.tp) ; 3 uses
  br i1 %i.pw, label %._crit_edge1071, label %bb.aw

._crit_edge1071:                                  ; preds = %bb.av
  %.pre1077 = fneg double %i.tq
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tr = getelementptr i8, ptr %i.tl, i64 16     ; 2 uses
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !77 ; 2 uses
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.ts, double %i.tq) ; 2 uses
  %i.tu = fneg double %i.tt                       ; 2 uses
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.tu, double %i.sd, double %i.ts)
  store double %i.tv, ptr %i.tr, align 8, !tbaa !77
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge1071, %bb.aw
  %.pre-phi1078 = phi double [ %.pre1077, %._crit_edge1071 ], [ %i.tu, %bb.aw ]
  %.7 = phi double [ %i.tq, %._crit_edge1071 ], [ %i.tt, %bb.aw ]
  %i.tw = fsub double %i.tm, %.7
  store double %i.tw, ptr %i.tl, align 8, !tbaa !77
  %i.tx = tail call double @llvm.fmuladd.f64(double %.pre-phi1078, double %i.sp, double %i.to)
  store double %i.tx, ptr %i.tn, align 8, !tbaa !77
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next974, %wide.trip.count978
  br i1 %exitcond979.not, label %.lr.ph857, label %bb.av, !llvm.loop !354

bb.ay:                                            ; preds = %.lr.ph857, %bb.ba
  %indvars.iv980 = phi i64 [ 0, %.lr.ph857 ], [ %indvars.iv.next981, %bb.ba ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv980
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !147
  %i.ua = getelementptr [8 x i8], ptr %i.tz, i64 %indvars.iv966 ; 4 uses
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !77 ; 2 uses
  %i.uc = getelementptr i8, ptr %i.ua, i64 8      ; 2 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !77 ; 2 uses
  %i.ue = fmul double %i.rw, %i.ud
  %i.uf = tail call double @llvm.fmuladd.f64(double %i.tg, double %i.ub, double %i.ue) ; 3 uses
  br i1 %i.pw, label %._crit_edge1072, label %bb.az

._crit_edge1072:                                  ; preds = %bb.ay
  %.pre1075 = fneg double %i.uf
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ug = getelementptr i8, ptr %i.ua, i64 16     ; 2 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !77 ; 2 uses
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.uh, double %i.uf) ; 2 uses
  %i.uj = fneg double %i.ui                       ; 2 uses
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uj, double %i.sd, double %i.uh)
  store double %i.uk, ptr %i.ug, align 8, !tbaa !77
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1072, %bb.az
  %.pre-phi1076 = phi double [ %.pre1075, %._crit_edge1072 ], [ %i.uj, %bb.az ]
  %.9 = phi double [ %i.uf, %._crit_edge1072 ], [ %i.ui, %bb.az ] ; 2 uses
  %i.ul = fsub double %i.ub, %.9
  store double %i.ul, ptr %i.ua, align 8, !tbaa !77
  %i.um = tail call double @llvm.fmuladd.f64(double %.pre-phi1076, double %i.th, double %i.ud)
  store double %i.um, ptr %i.uc, align 8, !tbaa !77
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 2 uses
  %exitcond984.not = icmp eq i64 %indvars.iv.next981, %wide.trip.count
  br i1 %exitcond984.not, label %.thread778.loopexit, label %bb.ay, !llvm.loop !355

.thread778.loopexit:                              ; preds = %bb.ba
  %i.un = insertelement <2 x double> %i.ti, double %.9, i64 1
  br label %.thread778

.thread778:                                       ; preds = %.thread778.loopexit, %bb.am
  %i.uo = phi <2 x double> [ %i.rj, %bb.am ], [ %i.sc, %.thread778.loopexit ] ; 2 uses
  %i.up = phi <2 x double> [ %i.qy, %bb.am ], [ %i.un, %.thread778.loopexit ]
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, 1 ; 2 uses
  %indvars.iv.next977 = add i32 %indvars.iv976, 1
  %lftr.wideiv988 = trunc i64 %indvars.iv.next967 to i32
  %exitcond989.not = icmp eq i32 %.0774876, %lftr.wideiv988
  %i.uq = extractelement <2 x double> %i.uo, i64 0
  %i.ur = extractelement <2 x double> %i.uo, i64 1
  br i1 %exitcond989.not, label %.thread787, label %bb.ag, !llvm.loop !356

.thread787:                                       ; preds = %.thread778, %bb.al, %.preheader809, %.loopexit807, %.preheader810.split.us.thread
  %.1775 = phi i32 [ %i.cg, %.preheader810.split.us.thread ], [ %i.ie, %.loopexit807 ], [ %.0774876, %.preheader809 ], [ %.0774876, %bb.al ], [ %.0774876, %.thread778 ] ; 2 uses
  %.4622 = phi double [ %.0618878, %.preheader810.split.us.thread ], [ %.0618878, %.loopexit807 ], [ %.3621, %.preheader809 ], [ %.3621, %bb.al ], [ %.3621, %.thread778 ]
  %.1610 = phi i32 [ 0, %.preheader810.split.us.thread ], [ 0, %.loopexit807 ], [ %i.ls, %.preheader809 ], [ %i.ls, %bb.al ], [ %i.ls, %.thread778 ]
  %i.us = icmp sgt i32 %.1775, -1
  br i1 %i.us, label %.preheader810, label %._crit_edge880, !llvm.loop !357

._crit_edge880:                                   ; preds = %.thread787
  %i.ut = fcmp olt double %.lcssa1172.lcssa, f0x3E80000000000000
  br i1 %i.ut, label %.loopexit, label %.lr.ph918

.lr.ph918:                                        ; preds = %._crit_edge880
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !298 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !299 ; 3 uses
  %i.uy = fmul double %.lcssa1172.lcssa, f0x3CB0000000000000 ; 2 uses
  %i.uz = add nsw i32 %i.a, -3
  %i.va = add nsw i32 %i.a, -2
  %i.vb = zext nneg i32 %i.z to i64
  %i.vc = zext nneg i32 %i.z to i64
  br label %bb.bb

.preheader795.lr.ph.split:                        ; preds = %bb.bc, %.loopexit801
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !297 ; 6 uses
  %i.vf = zext nneg i32 %i.z to i64
  %wide.trip.count1051 = zext nneg i32 %i.a to i64
  br label %.preheader795

bb.bb:                                            ; preds = %.lr.ph918, %.loopexit801
  %indvar = phi i32 [ 0, %.lr.ph918 ], [ %indvar.next, %.loopexit801 ] ; 2 uses
  %indvars.iv1037 = phi i64 [ %i.vc, %.lr.ph918 ], [ %indvars.iv.next1038, %.loopexit801 ] ; 39 uses
  %indvars.iv1032 = phi i64 [ %i.vb, %.lr.ph918 ], [ %indvars.iv.next1033, %.loopexit801 ] ; 2 uses
  %indvars.iv1025 = phi i32 [ %i.va, %.lr.ph918 ], [ %indvars.iv.next1026, %.loopexit801 ] ; 2 uses
  %indvars.iv1012 = phi i32 [ %i.uz, %.lr.ph918 ], [ %indvars.iv.next1013, %.loopexit801 ] ; 2 uses
  %indvars.iv1008 = phi i32 [ %i.a, %.lr.ph918 ], [ %indvars.iv.next1009, %.loopexit801 ] ; 5 uses
  %i.vg = sub i32 %i.z, %indvar                   ; 2 uses
  %i.vh = zext i32 %indvars.iv1025 to i64
  %i.vi = zext i32 %indvars.iv1012 to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv1037
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !77 ; 6 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv1037
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !77 ; 22 uses
  %i.vn = fcmp oeq double %i.vm, 0.000000e+00
  br i1 %i.vn, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1037
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !147
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv1037
  store double 1.000000e+00, ptr %i.vq, align 8, !tbaa !77
  %.not = icmp eq i64 %indvars.iv1037, 0
  br i1 %.not, label %.preheader795.lr.ph.split, label %.lr.ph915.preheader

.lr.ph915.preheader:                              ; preds = %bb.bc
  %i.vr = trunc nsw i64 %indvars.iv1037 to i32
  br label %.lr.ph915

.lr.ph915:                                        ; preds = %.lr.ph915.preheader, %.loopexit797
  %indvars.iv1034 = phi i64 [ %indvars.iv1032, %.lr.ph915.preheader ], [ %indvars.iv.next1035, %.loopexit797 ] ; 4 uses
  %indvars.iv1027 = phi i64 [ %i.vh, %.lr.ph915.preheader ], [ %indvars.iv.next1028, %.loopexit797 ] ; 2 uses
  %.0554911 = phi i32 [ %i.vr, %.lr.ph915.preheader ], [ %.1555, %.loopexit797 ] ; 4 uses
  %.0556910 = phi double [ +qnan, %.lr.ph915.preheader ], [ %.1557, %.loopexit797 ] ; 5 uses
  %.0558909 = phi double [ +qnan, %.lr.ph915.preheader ], [ %.1559, %.loopexit797 ] ; 6 uses
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -1 ; 8 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1035
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !147 ; 10 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next1035
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !77
  %i.vw = fsub double %i.vv, %i.vk                ; 4 uses
  %i.vx = sext i32 %.0554911 to i64               ; 3 uses
  %.not661897 = icmp slt i64 %indvars.iv1037, %i.vx
  br i1 %.not661897, label %._crit_edge902, label %.lr.ph901.preheader

.lr.ph901.preheader:                              ; preds = %.lr.ph915
  %i.vy = sub i32 %indvars.iv1008, %.0554911
  %i.vz = sub i32 %i.vg, %.0554911
  %xtraiter1202 = and i32 %i.vy, 3                ; 2 uses
  %lcmp.mod1203.not = icmp eq i32 %xtraiter1202, 0
  br i1 %lcmp.mod1203.not, label %.lr.ph901.prol.loopexit, label %.lr.ph901.prol

.lr.ph901.prol:                                   ; preds = %.lr.ph901.preheader, %.lr.ph901.prol
  %indvars.iv1020.prol = phi i64 [ %indvars.iv.next1021.prol, %.lr.ph901.prol ], [ %i.vx, %.lr.ph901.preheader ] ; 3 uses
  %.0552898.prol = phi double [ %i.wg, %.lr.ph901.prol ], [ 0.000000e+00, %.lr.ph901.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph901.prol ], [ 0, %.lr.ph901.preheader ]
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %indvars.iv1020.prol
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !77
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1020.prol
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !147
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %indvars.iv1037
  %i.wf = load double, ptr %i.we, align 8, !tbaa !77
  %i.wg = tail call double @llvm.fmuladd.f64(double %i.wb, double %i.wf, double %.0552898.prol) ; 3 uses
  %indvars.iv.next1021.prol = add nsw i64 %indvars.iv1020.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1202
  br i1 %prol.iter.cmp.not, label %.lr.ph901.prol.loopexit, label %.lr.ph901.prol, !llvm.loop !358

.lr.ph901.prol.loopexit:                          ; preds = %.lr.ph901.prol, %.lr.ph901.preheader
  %.lcssa1163.unr = phi double [ poison, %.lr.ph901.preheader ], [ %i.wg, %.lr.ph901.prol ]
  %indvars.iv1020.unr = phi i64 [ %i.vx, %.lr.ph901.preheader ], [ %indvars.iv.next1021.prol, %.lr.ph901.prol ]
  %.0552898.unr = phi double [ 0.000000e+00, %.lr.ph901.preheader ], [ %i.wg, %.lr.ph901.prol ]
  %i.wh = icmp ult i32 %i.vz, 3
  br i1 %i.wh, label %._crit_edge902, label %.lr.ph901

._crit_edge902:                                   ; preds = %.lr.ph901.prol.loopexit, %.lr.ph901, %.lr.ph915
  %.0552.lcssa = phi double [ 0.000000e+00, %.lr.ph915 ], [ %.lcssa1163.unr, %.lr.ph901.prol.loopexit ], [ %i.xm, %.lr.ph901 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.next1035
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !77 ; 3 uses
  %i.wk = fcmp olt double %i.wj, 0.000000e+00
  br i1 %i.wk, label %.loopexit797, label %bb.bd

.lr.ph901:                                        ; preds = %.lr.ph901.prol.loopexit, %.lr.ph901
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021.3, %.lr.ph901 ], [ %indvars.iv1020.unr, %.lr.ph901.prol.loopexit ] ; 6 uses
  %.0552898 = phi double [ %i.xm, %.lr.ph901 ], [ %.0552898.unr, %.lr.ph901.prol.loopexit ]
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %indvars.iv1020
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !77
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1020
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !147
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %indvars.iv1037
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !77
  %i.wr = tail call double @llvm.fmuladd.f64(double %i.wm, double %i.wq, double %.0552898)
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, 1 ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %indvars.iv.next1021
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !77
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !147
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %indvars.iv1037
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !77
  %i.wy = tail call double @llvm.fmuladd.f64(double %i.wt, double %i.wx, double %i.wr)
  %indvars.iv.next1021.1 = add nsw i64 %indvars.iv1020, 2 ; 2 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %indvars.iv.next1021.1
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !77
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021.1
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !147
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv1037
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !77
  %i.xf = tail call double @llvm.fmuladd.f64(double %i.xa, double %i.xe, double %i.wy)
  %indvars.iv.next1021.2 = add nsw i64 %indvars.iv1020, 3 ; 2 uses
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.vt, i64 %indvars.iv.next1021.2
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !77
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021.2
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !147
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv1037
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !77
  %i.xm = tail call double @llvm.fmuladd.f64(double %i.xh, double %i.xl, double %i.xf) ; 2 uses
  %indvars.iv.next1021.3 = add nsw i64 %indvars.iv1020, 4 ; 2 uses
  %lftr.wideiv1023.3 = trunc i64 %indvars.iv.next1021.3 to i32
  %exitcond1024.not.3 = icmp eq i32 %indvars.iv1008, %lftr.wideiv1023.3
  br i1 %exitcond1024.not.3, label %._crit_edge902, label %.lr.ph901, !llvm.loop !359

bb.bd:                                            ; preds = %._crit_edge902
  %i.xn = fcmp oeq double %i.wj, 0.000000e+00
  br i1 %i.xn, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.xo = fcmp une double %i.vw, 0.000000e+00
  %i.xp = fneg double %.0552.lcssa                ; 2 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv1037 ; 2 uses
  br i1 %i.xo, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.xr = fdiv double %i.xp, %i.vw
  store double %i.xr, ptr %i.xq, align 8, !tbaa !77
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.xs = fdiv double %i.xp, %i.uy
  store double %i.xs, ptr %i.xq, align 8, !tbaa !77
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bd
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv1034
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !77 ; 3 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1034
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !147 ; 3 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %indvars.iv.next1035
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !77
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv.next1035
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !77
  %i.yb = fsub double %i.ya, %i.vk
  %i.yc = fneg double %.0552.lcssa                ; 2 uses
  %i.yd = insertelement <2 x double> poison, double %i.wj, i64 0
  %i.ye = insertelement <2 x double> %i.yd, double %.0558909, i64 1 ; 2 uses
  %i.yf = insertelement <2 x double> %i.ye, double %i.yc, i64 1
  %i.yg = fmul <2 x double> %i.ye, %i.yf
  %i.yh = insertelement <2 x double> poison, double %i.yb, i64 0
  %i.yi = insertelement <2 x double> %i.yh, double %i.xu, i64 1 ; 2 uses
  %i.yj = insertelement <2 x double> %i.yi, double %.0556910, i64 1
  %i.yk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yi, <2 x double> %i.yj, <2 x double> %i.yg) ; 2 uses
  %i.yl = extractelement <2 x double> %i.yk, i64 0
  %i.ym = extractelement <2 x double> %i.yk, i64 1
  %i.yn = fdiv double %i.ym, %i.yl                ; 3 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv1037
  store double %i.yn, ptr %i.yo, align 8, !tbaa !77
  %i.yp = tail call noundef double @llvm.fabs.f64(double %i.xu)
end_hunk_1
