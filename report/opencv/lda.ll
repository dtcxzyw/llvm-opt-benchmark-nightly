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
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !48
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv253 ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !48
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.hi, double %i.hk)
  store double %i.hl, ptr %i.hj, align 8, !tbaa !48
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next254
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !48
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next254 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !48
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.hn, double %i.hp)
  store double %i.hq, ptr %i.ho, align 8, !tbaa !48
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
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !65 ; 2 uses
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
  store <2 x double> %i.hv, ptr %i.hx, align 8, !tbaa !48
  store <2 x double> %i.hw, ptr %i.hy, align 8, !tbaa !48
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
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !66 ; 2 uses
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
  store double %i.ij, ptr %i.ik, align 8, !tbaa !48
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count274
  br i1 %exitcond270.not, label %._crit_edge203, label %scalar.ph308, !llvm.loop !330

._crit_edge225:                                   ; preds = %.loopexit, %.preheader160, %._crit_edge205.split
  ret void

bb.b:                                             ; preds = %.lr.ph224, %.loopexit
  %indvars.iv276 = phi i64 [ %i.if, %.lr.ph224 ], [ %indvars.iv.next277, %.loopexit ] ; 10 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv276
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !65
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv.next277 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !48
  %i.ip = fcmp une double %i.io, 0.000000e+00
  br i1 %i.ip, label %.preheader158, label %.loopexit

.preheader158:                                    ; preds = %bb.b
  %.not.not206 = icmp slt i64 %indvars.iv276, %i.ih
  br i1 %.not.not206, label %.lr.ph208, label %.preheader157

.lr.ph208:                                        ; preds = %.preheader158
  %i.iq = load ptr, ptr %i.id, align 8, !tbaa !90
  br label %bb.e

.preheader157:                                    ; preds = %bb.e, %.preheader158
  %.not.not148220 = icmp slt i64 %indvars.iv276, %i.ig
  br i1 %.not.not148220, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader157
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !90 ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv276
  %i.it = load ptr, ptr %i.ie, align 8, !tbaa !87 ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge219.us, %.preheader.lr.ph
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge219.us ], [ %indvars.iv276, %.preheader.lr.ph ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv281 = phi i64 [ %indvars.iv276, %.preheader.us ], [ %indvars.iv.next282, %bb.c ] ; 3 uses
  %.0127210.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ja, %bb.c ]
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv281
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !48
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv281
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !65
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv287
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !48
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iz, double %.0127210.us) ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.jb = trunc nuw i64 %indvars.iv.next282 to i32
  %.not.not149.us = icmp sgt i32 %i.a, %i.jb
  br i1 %.not.not149.us, label %bb.c, label %._crit_edge213.us, !llvm.loop !331

bb.d:                                             ; preds = %._crit_edge213.us, %bb.d
  %indvars.iv284 = phi i64 [ %indvars.iv276, %._crit_edge213.us ], [ %indvars.iv.next285, %bb.d ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv284
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !48
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv284
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !65
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv287 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !48
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jd, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !48
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.jj = trunc nuw i64 %indvars.iv.next285 to i32
  %.not.not150.us = icmp sgt i32 %i.a, %i.jj
  br i1 %.not.not150.us, label %bb.d, label %._crit_edge219.us, !llvm.loop !332

._crit_edge213.us:                                ; preds = %bb.c
  %i.jk = load double, ptr %i.is, align 8, !tbaa !48
  %i.jl = fdiv double %i.ja, %i.jk
  %i.jm = load double, ptr %i.in, align 8, !tbaa !48
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
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !65
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.next277
  %i.js = load double, ptr %i.jr, align 8, !tbaa !48
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.next279
  store double %i.js, ptr %i.jt, align 8, !tbaa !48
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
  %i.a = load i32, ptr %0, align 8, !tbaa !40     ; 16 uses
  %i.b = mul nuw nsw i32 %i.a, 1000
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
  %i.f = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !27
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
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 10 uses
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %i.r, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.1617812.epil = phi double [ %.0616814.epil.init, %.lr.ph.epil.preheader ], [ %i.x, %bb.h ]
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !48
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %.1617812.epil, %i.w         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.epil, %i.m
  br i1 %i.y, label %bb.h, label %.preheader810.lr.ph, !llvm.loop !338

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
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  %indvars.iv.next943 = or disjoint i64 %indvars.iv942, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next943 to i32
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %i.al = zext nneg i32 %smax.1 to i64
  %i.am = add nsw i64 %i.al, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next943
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.1 = phi i64 [ %i.am, %._crit_edge ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %.1617812.1 = phi double [ %i.ax, %._crit_edge ], [ %i.as, %bb.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.1
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !48
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.as = fadd double %.1617812.1, %i.ar          ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next.1, %i.m
  br i1 %i.at, label %bb.i, label %._crit_edge.1, !llvm.loop !338

._crit_edge.1:                                    ; preds = %bb.i
  %indvars.iv.next943.1 = add nuw nsw i64 %indvars.iv942, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader810.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !339

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.1617812 = phi double [ %.0616814, %.lr.ph ], [ %i.ax, %bb.j ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.av = load double, ptr %i.au, align 8, !tbaa !48
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %.1617812, %i.aw            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.ay, label %bb.j, label %._crit_edge, !llvm.loop !338

.preheader810:                                    ; preds = %.preheader810.lr.ph, %.thread787
  %.0609879 = phi i32 [ 0, %.preheader810.lr.ph ], [ %.1610, %.thread787 ] ; 3 uses
  %.0618878 = phi double [ 0.000000e+00, %.preheader810.lr.ph ], [ %.4622, %.thread787 ] ; 9 uses
  %.0774876 = phi i32 [ %i.z, %.preheader810.lr.ph ], [ %.1775, %.thread787 ] ; 27 uses
  br i1 %i.aa, label %.preheader810.split.us.thread, label %.preheader810.split.preheader

.preheader810.split.preheader:                    ; preds = %.preheader810
  %i.az = icmp eq i32 %.0774876, 0
  br i1 %i.az, label %.preheader810.split.us, label %.lr.ph1148

.lr.ph1148:                                       ; preds = %.preheader810.split.preheader
  %i.ba = zext nneg i32 %.0774876 to i64
  br label %bb.k

.preheader810.split:                              ; preds = %bb.k
  %i.bb = icmp eq i64 %i.bc, 0
  br i1 %i.bb, label %.preheader810.split.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph1148, %.preheader810.split
  %indvars.iv9451147 = phi i64 [ %i.ba, %.lr.ph1148 ], [ %i.bc, %.preheader810.split ] ; 4 uses
  %i.bc = add nsw i64 %indvars.iv9451147, -1      ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !48
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv9451147
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv9451147
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !48
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fadd double %i.bh, %i.bm                ; 2 uses
  %i.bo = fcmp oeq double %i.bn, 0.000000e+00
  %.0605 = select i1 %i.bo, double %.lcssa1172.lcssa, double %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bc
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !48
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fmul double %.0605, f0x3CB0000000000000
  %i.bt = fcmp olt double %i.br, %i.bs
  br i1 %i.bt, label %.preheader810.split.us.split.loop.exit1123, label %.preheader810.split

.preheader810.split.us.split.loop.exit1123:       ; preds = %bb.k
  %i.bu = trunc nuw nsw i64 %indvars.iv9451147 to i32
  br label %.preheader810.split.us

.preheader810.split.us:                           ; preds = %.preheader810.split, %.preheader810.split.preheader, %.preheader810.split.us.split.loop.exit1123
  %.us-phi = phi i32 [ %i.bu, %.preheader810.split.us.split.loop.exit1123 ], [ 0, %.preheader810.split.preheader ], [ 0, %.preheader810.split ] ; 10 uses
  %i.bv = icmp eq i32 %.us-phi, %.0774876
  br i1 %i.bv, label %.preheader810.split.us.thread, label %bb.l

.preheader810.split.us.thread:                    ; preds = %.preheader810, %.preheader810.split.us
  %i.bw = zext nneg i32 %.0774876 to i64          ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !48
  %i.cb = fadd double %.0618878, %i.ca            ; 2 uses
  store double %i.cb, ptr %i.bz, align 8, !tbaa !48
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bw
  store double %i.cb, ptr %i.cd, align 8, !tbaa !48
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bw
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !48
  %i.cg = add nsw i32 %.0774876, -1
  br label %.thread787

bb.l:                                             ; preds = %.preheader810.split.us
  %i.ch = add nsw i32 %.0774876, -1               ; 3 uses
  %i.ci = icmp eq i32 %.us-phi, %i.ch
  %i.cj = zext nneg i32 %.0774876 to i64          ; 16 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cj ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65 ; 8 uses
  br i1 %i.ci, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cm = zext nneg i32 %.us-phi to i64           ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cm
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !65 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cj
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48
  %i.ct = fmul double %i.co, %i.cs                ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cm ; 3 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 4 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !48 ; 2 uses
  %i.cy = fsub double %i.cv, %i.cx
  %i.cz = fmul double %i.cy, 5.000000e-01         ; 5 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.ct) ; 2 uses
  %i.db = tail call noundef double @llvm.fabs.f64(double %i.da)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.db) ; 4 uses
  %i.dc = fadd double %.0618878, %i.cx
  store double %i.dc, ptr %i.cw, align 8, !tbaa !48
  %i.dd = load double, ptr %i.cu, align 8, !tbaa !48
  %i.de = fadd double %.0618878, %i.dd
  store double %i.de, ptr %i.cu, align 8, !tbaa !48
  %i.df = load double, ptr %i.cw, align 8, !tbaa !48 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv23EigenvalueDecomposition4hqr2Ev:bb.a
  %i.rx = getelementptr i8, ptr %i.rw, i64 -8     ; 2 uses
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !48
  %i.rz = fneg double %i.ry
  store double %i.rz, ptr %i.rx, align 8, !tbaa !48
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.sa = fadd double %i.rg, %.0563               ; 3 uses
  %i.sb = fdiv double %.3574, %.0563              ; 3 uses
  %i.sc = fdiv double %i.ri, %.0563               ; 3 uses
  %i.sd = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.se = insertelement <2 x double> %i.sd, double %.3574, i64 1
  %i.sf = insertelement <2 x double> poison, double %.0563, i64 0
  %i.sg = insertelement <2 x double> %i.sf, double %i.sa, i64 1
  %i.sh = fdiv <2 x double> %i.se, %i.sg          ; 7 uses
  %i.si = fdiv double %i.ri, %i.sa                ; 4 uses
  %i.sj = icmp slt i64 %indvars.iv966, %i.m
  br i1 %i.sj, label %.lr.ph849, label %.preheader805

.lr.ph849:                                        ; preds = %bb.ar
  %i.sk = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv966 ; 3 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !65
  %i.sm = getelementptr i8, ptr %i.sk, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !65
  %i.so = getelementptr i8, ptr %i.sk, i64 16
  %i.sp = extractelement <2 x double> %i.sh, i64 0
  %i.sq = extractelement <2 x double> %i.sh, i64 1
  br label %bb.as

.preheader805:                                    ; preds = %bb.au, %bb.ar
  %i.sr = trunc i64 %indvars.iv966 to i32
  %i.ss = add i32 %i.sr, 3
  %.sroa.speculated705 = tail call i32 @llvm.smin.i32(i32 %i.ss, i32 %.0774876)
  %.not671851 = icmp slt i32 %.sroa.speculated705, 0
  br i1 %.not671851, label %.lr.ph857, label %.lr.ph853

.lr.ph853:                                        ; preds = %.preheader805
  %wide.trip.count978 = zext i32 %i.qa to i64
  %i.st = extractelement <2 x double> %i.sh, i64 0
  %i.su = extractelement <2 x double> %i.sh, i64 1
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph849, %bb.au
  %indvars.iv968 = phi i64 [ %indvars.iv966, %.lr.ph849 ], [ %indvars.iv.next969, %bb.au ] ; 4 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %indvars.iv968 ; 3 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !48 ; 2 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %indvars.iv968 ; 3 uses
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !48
  %i.sz = tail call double @llvm.fmuladd.f64(double %i.sq, double %i.sy, double %i.sw) ; 2 uses
  br i1 %i.qb, label %._crit_edge1073, label %bb.at

._crit_edge1073:                                  ; preds = %bb.as
  %.pre1074 = fneg double %i.sz
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ta = load ptr, ptr %i.so, align 8, !tbaa !65
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %indvars.iv968 ; 2 uses
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !48 ; 2 uses
  %i.td = tail call double @llvm.fmuladd.f64(double %i.si, double %i.tc, double %i.sz)
  %i.te = fneg double %i.td                       ; 2 uses
  %i.tf = tail call double @llvm.fmuladd.f64(double %i.te, double %i.sc, double %i.tc)
  store double %i.tf, ptr %i.tb, align 8, !tbaa !48
  %.pre1068.a = load double, ptr %i.sv, align 8, !tbaa !48
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge1073, %bb.at
  %.pre-phi = phi double [ %.pre1074, %._crit_edge1073 ], [ %i.te, %bb.at ] ; 2 uses
  %i.tg = phi double [ %i.sw, %._crit_edge1073 ], [ %.pre1068.a, %bb.at ]
  %i.th = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.sp, double %i.tg)
  store double %i.th, ptr %i.sv, align 8, !tbaa !48
  %i.ti = load double, ptr %i.sx, align 8, !tbaa !48
  %i.tj = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.sb, double %i.ti)
  store double %i.tj, ptr %i.sx, align 8, !tbaa !48
  %indvars.iv.next969 = add nsw i64 %indvars.iv968, 1 ; 2 uses
  %lftr.wideiv971 = trunc i64 %indvars.iv.next969 to i32
  %exitcond972.not = icmp eq i32 %i.a, %lftr.wideiv971
  br i1 %exitcond972.not, label %.preheader805, label %bb.as, !llvm.loop !352

.lr.ph857:                                        ; preds = %bb.ax, %.preheader805
  %i.tk = load ptr, ptr %i.ab, align 8, !tbaa !87
  %i.tl = extractelement <2 x double> %i.sh, i64 0
  %i.tm = extractelement <2 x double> %i.sh, i64 1
  %i.tn = insertelement <2 x double> poison, double %i.si, i64 0
  br label %bb.ay

bb.av:                                            ; preds = %.lr.ph853, %bb.ax
  %indvars.iv973 = phi i64 [ 0, %.lr.ph853 ], [ %indvars.iv.next974, %bb.ax ] ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv973
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !65
  %i.tq = getelementptr [8 x i8], ptr %i.tp, i64 %indvars.iv966 ; 4 uses
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !48 ; 2 uses
  %i.ts = getelementptr i8, ptr %i.tq, i64 8      ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !48 ; 2 uses
  %i.tu = fmul double %i.sb, %i.tt
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.st, double %i.tr, double %i.tu) ; 3 uses
  br i1 %i.qb, label %._crit_edge1071, label %bb.aw

._crit_edge1071:                                  ; preds = %bb.av
  %.pre1077 = fneg double %i.tv
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tw = getelementptr i8, ptr %i.tq, i64 16     ; 2 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !48 ; 2 uses
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.sc, double %i.tx, double %i.tv) ; 2 uses
  %i.tz = fneg double %i.ty                       ; 2 uses
  %i.ua = tail call double @llvm.fmuladd.f64(double %i.tz, double %i.si, double %i.tx)
  store double %i.ua, ptr %i.tw, align 8, !tbaa !48
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge1071, %bb.aw
  %.pre-phi1078 = phi double [ %.pre1077, %._crit_edge1071 ], [ %i.tz, %bb.aw ]
  %.7 = phi double [ %i.tv, %._crit_edge1071 ], [ %i.ty, %bb.aw ]
  %i.ub = fsub double %i.tr, %.7
  store double %i.ub, ptr %i.tq, align 8, !tbaa !48
  %i.uc = tail call double @llvm.fmuladd.f64(double %.pre-phi1078, double %i.su, double %i.tt)
  store double %i.uc, ptr %i.ts, align 8, !tbaa !48
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1 ; 2 uses
  %exitcond979.not = icmp eq i64 %indvars.iv.next974, %wide.trip.count978
  br i1 %exitcond979.not, label %.lr.ph857, label %bb.av, !llvm.loop !353

bb.ay:                                            ; preds = %.lr.ph857, %bb.ba
  %indvars.iv980 = phi i64 [ 0, %.lr.ph857 ], [ %indvars.iv.next981, %bb.ba ] ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv980
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !65
  %i.uf = getelementptr [8 x i8], ptr %i.ue, i64 %indvars.iv966 ; 4 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !48 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.uf, i64 8      ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !48 ; 2 uses
  %i.uj = fmul double %i.sb, %i.ui
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.tl, double %i.ug, double %i.uj) ; 3 uses
  br i1 %i.qb, label %._crit_edge1072, label %bb.az

._crit_edge1072:                                  ; preds = %bb.ay
  %.pre1075 = fneg double %i.uk
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ul = getelementptr i8, ptr %i.uf, i64 16     ; 2 uses
  %i.um = load double, ptr %i.ul, align 8, !tbaa !48 ; 2 uses
  %i.un = tail call double @llvm.fmuladd.f64(double %i.sc, double %i.um, double %i.uk) ; 2 uses
  %i.uo = fneg double %i.un                       ; 2 uses
  %i.up = tail call double @llvm.fmuladd.f64(double %i.uo, double %i.si, double %i.um)
  store double %i.up, ptr %i.ul, align 8, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1072, %bb.az
  %.pre-phi1076 = phi double [ %.pre1075, %._crit_edge1072 ], [ %i.uo, %bb.az ]
  %.9 = phi double [ %i.uk, %._crit_edge1072 ], [ %i.un, %bb.az ] ; 2 uses
  %i.uq = fsub double %i.ug, %.9
  store double %i.uq, ptr %i.uf, align 8, !tbaa !48
  %i.ur = tail call double @llvm.fmuladd.f64(double %.pre-phi1076, double %i.tm, double %i.ui)
  store double %i.ur, ptr %i.uh, align 8, !tbaa !48
  %indvars.iv.next981 = add nuw nsw i64 %indvars.iv980, 1 ; 2 uses
  %exitcond984.not = icmp eq i64 %indvars.iv.next981, %wide.trip.count
  br i1 %exitcond984.not, label %.thread778.loopexit, label %bb.ay, !llvm.loop !354

.thread778.loopexit:                              ; preds = %bb.ba
  %i.us = insertelement <2 x double> %i.tn, double %.9, i64 1
  br label %.thread778

.thread778:                                       ; preds = %.thread778.loopexit, %bb.am
  %i.ut = phi <2 x double> [ %i.ro, %bb.am ], [ %i.sh, %.thread778.loopexit ] ; 2 uses
  %i.uu = phi <2 x double> [ %i.rd, %bb.am ], [ %i.us, %.thread778.loopexit ]
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, 1 ; 2 uses
  %indvars.iv.next977 = add i32 %indvars.iv976, 1
  %lftr.wideiv988 = trunc i64 %indvars.iv.next967 to i32
  %exitcond989.not = icmp eq i32 %.0774876, %lftr.wideiv988
  %i.uv = extractelement <2 x double> %i.ut, i64 0
  %i.uw = extractelement <2 x double> %i.ut, i64 1
  br i1 %exitcond989.not, label %.thread787, label %bb.ag, !llvm.loop !355

.thread787:                                       ; preds = %.thread778, %bb.al, %.preheader809, %.loopexit807, %.preheader810.split.us.thread
  %.1775 = phi i32 [ %i.cg, %.preheader810.split.us.thread ], [ %i.ij, %.loopexit807 ], [ %.0774876, %.preheader809 ], [ %.0774876, %bb.al ], [ %.0774876, %.thread778 ] ; 2 uses
  %.4622 = phi double [ %.0618878, %.preheader810.split.us.thread ], [ %.0618878, %.loopexit807 ], [ %.3621, %.preheader809 ], [ %.3621, %bb.al ], [ %.3621, %.thread778 ]
  %.1610 = phi i32 [ 0, %.preheader810.split.us.thread ], [ 0, %.loopexit807 ], [ %i.lx, %.preheader809 ], [ %i.lx, %bb.al ], [ %i.lx, %.thread778 ]
  %i.ux = icmp sgt i32 %.1775, -1
  br i1 %i.ux, label %.preheader810, label %._crit_edge880, !llvm.loop !356

._crit_edge880:                                   ; preds = %.thread787
  %i.uy = fcmp olt double %.lcssa1172.lcssa, f0x3E80000000000000
  br i1 %i.uy, label %.loopexit, label %.lr.ph918

.lr.ph918:                                        ; preds = %._crit_edge880
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !88 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !89 ; 3 uses
  %i.vd = fmul double %.lcssa1172.lcssa, f0x3CB0000000000000 ; 2 uses
  %i.ve = add nsw i32 %i.a, -3
  %i.vf = add nsw i32 %i.a, -2
  %i.vg = zext nneg i32 %i.z to i64
  %i.vh = zext nneg i32 %i.z to i64
  br label %bb.bb

.preheader795.lr.ph.split:                        ; preds = %bb.bc, %.loopexit801
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !87 ; 6 uses
  %i.vk = zext nneg i32 %i.z to i64
  br label %.preheader795

bb.bb:                                            ; preds = %.lr.ph918, %.loopexit801
  %indvar = phi i32 [ 0, %.lr.ph918 ], [ %indvar.next, %.loopexit801 ] ; 2 uses
  %indvars.iv1037 = phi i64 [ %i.vh, %.lr.ph918 ], [ %indvars.iv.next1038, %.loopexit801 ] ; 39 uses
  %indvars.iv1032 = phi i64 [ %i.vg, %.lr.ph918 ], [ %indvars.iv.next1033, %.loopexit801 ] ; 2 uses
  %indvars.iv1025 = phi i32 [ %i.vf, %.lr.ph918 ], [ %indvars.iv.next1026, %.loopexit801 ] ; 2 uses
  %indvars.iv1012 = phi i32 [ %i.ve, %.lr.ph918 ], [ %indvars.iv.next1013, %.loopexit801 ] ; 2 uses
  %indvars.iv1008 = phi i32 [ %i.a, %.lr.ph918 ], [ %indvars.iv.next1009, %.loopexit801 ] ; 5 uses
  %i.vl = sub i32 %i.z, %indvar                   ; 2 uses
  %i.vm = zext i32 %indvars.iv1025 to i64
  %i.vn = zext i32 %indvars.iv1012 to i64
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv1037
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !48 ; 6 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1037
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !48 ; 22 uses
  %i.vs = fcmp oeq double %i.vr, 0.000000e+00
  br i1 %i.vs, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1037
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !65
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv1037
  store double 1.000000e+00, ptr %i.vv, align 8, !tbaa !48
  %.not = icmp eq i64 %indvars.iv1037, 0
  br i1 %.not, label %.preheader795.lr.ph.split, label %.lr.ph915.preheader

.lr.ph915.preheader:                              ; preds = %bb.bc
  %i.vw = trunc nsw i64 %indvars.iv1037 to i32
  br label %.lr.ph915

.lr.ph915:                                        ; preds = %.lr.ph915.preheader, %.loopexit797
  %indvars.iv1034 = phi i64 [ %indvars.iv1032, %.lr.ph915.preheader ], [ %indvars.iv.next1035, %.loopexit797 ] ; 4 uses
  %indvars.iv1027 = phi i64 [ %i.vm, %.lr.ph915.preheader ], [ %indvars.iv.next1028, %.loopexit797 ] ; 2 uses
  %.0554911 = phi i32 [ %i.vw, %.lr.ph915.preheader ], [ %.1555, %.loopexit797 ] ; 4 uses
  %.0556910 = phi double [ +qnan, %.lr.ph915.preheader ], [ %.1557, %.loopexit797 ] ; 5 uses
  %.0558909 = phi double [ +qnan, %.lr.ph915.preheader ], [ %.1559, %.loopexit797 ] ; 6 uses
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -1 ; 8 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1035
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !65 ; 10 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.next1035
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !48
  %i.wb = fsub double %i.wa, %i.vp                ; 4 uses
  %i.wc = sext i32 %.0554911 to i64               ; 3 uses
  %.not661897 = icmp slt i64 %indvars.iv1037, %i.wc
  br i1 %.not661897, label %._crit_edge902, label %.lr.ph901.preheader

.lr.ph901.preheader:                              ; preds = %.lr.ph915
  %i.wd = sub i32 %indvars.iv1008, %.0554911
  %i.we = sub i32 %i.vl, %.0554911
  %xtraiter1202 = and i32 %i.wd, 3                ; 2 uses
  %lcmp.mod1203.not = icmp eq i32 %xtraiter1202, 0
  br i1 %lcmp.mod1203.not, label %.lr.ph901.prol.loopexit, label %.lr.ph901.prol

.lr.ph901.prol:                                   ; preds = %.lr.ph901.preheader, %.lr.ph901.prol
  %indvars.iv1020.prol = phi i64 [ %indvars.iv.next1021.prol, %.lr.ph901.prol ], [ %i.wc, %.lr.ph901.preheader ] ; 3 uses
  %.0552898.prol = phi double [ %i.wl, %.lr.ph901.prol ], [ 0.000000e+00, %.lr.ph901.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph901.prol ], [ 0, %.lr.ph901.preheader ]
  %i.wf = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv1020.prol
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !48
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1020.prol
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !65
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv1037
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !48
  %i.wl = tail call double @llvm.fmuladd.f64(double %i.wg, double %i.wk, double %.0552898.prol) ; 3 uses
  %indvars.iv.next1021.prol = add nsw i64 %indvars.iv1020.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1202
  br i1 %prol.iter.cmp.not, label %.lr.ph901.prol.loopexit, label %.lr.ph901.prol, !llvm.loop !357

.lr.ph901.prol.loopexit:                          ; preds = %.lr.ph901.prol, %.lr.ph901.preheader
  %.lcssa1163.unr = phi double [ poison, %.lr.ph901.preheader ], [ %i.wl, %.lr.ph901.prol ]
  %indvars.iv1020.unr = phi i64 [ %i.wc, %.lr.ph901.preheader ], [ %indvars.iv.next1021.prol, %.lr.ph901.prol ]
  %.0552898.unr = phi double [ 0.000000e+00, %.lr.ph901.preheader ], [ %i.wl, %.lr.ph901.prol ]
  %i.wm = icmp ult i32 %i.we, 3
  br i1 %i.wm, label %._crit_edge902, label %.lr.ph901

._crit_edge902:                                   ; preds = %.lr.ph901.prol.loopexit, %.lr.ph901, %.lr.ph915
  %.0552.lcssa = phi double [ 0.000000e+00, %.lr.ph915 ], [ %.lcssa1163.unr, %.lr.ph901.prol.loopexit ], [ %i.xr, %.lr.ph901 ] ; 3 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.next1035
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !48 ; 3 uses
  %i.wp = fcmp olt double %i.wo, 0.000000e+00
  br i1 %i.wp, label %.loopexit797, label %bb.bd

.lr.ph901:                                        ; preds = %.lr.ph901.prol.loopexit, %.lr.ph901
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021.3, %.lr.ph901 ], [ %indvars.iv1020.unr, %.lr.ph901.prol.loopexit ] ; 6 uses
  %.0552898 = phi double [ %i.xr, %.lr.ph901 ], [ %.0552898.unr, %.lr.ph901.prol.loopexit ]
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv1020
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !48
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1020
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !65
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv1037
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !48
  %i.ww = tail call double @llvm.fmuladd.f64(double %i.wr, double %i.wv, double %.0552898)
  %indvars.iv.next1021 = add nsw i64 %indvars.iv1020, 1 ; 2 uses
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.next1021
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !48
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !65
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %indvars.iv1037
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !48
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.xc, double %i.ww)
  %indvars.iv.next1021.1 = add nsw i64 %indvars.iv1020, 2 ; 2 uses
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.next1021.1
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !48
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021.1
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !65
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv1037
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !48
  %i.xk = tail call double @llvm.fmuladd.f64(double %i.xf, double %i.xj, double %i.xd)
  %indvars.iv.next1021.2 = add nsw i64 %indvars.iv1020, 3 ; 2 uses
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.next1021.2
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !48
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1021.2
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !65
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %indvars.iv1037
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !48
  %i.xr = tail call double @llvm.fmuladd.f64(double %i.xm, double %i.xq, double %i.xk) ; 2 uses
  %indvars.iv.next1021.3 = add nsw i64 %indvars.iv1020, 4 ; 2 uses
  %lftr.wideiv1023.3 = trunc i64 %indvars.iv.next1021.3 to i32
  %exitcond1024.not.3 = icmp eq i32 %indvars.iv1008, %lftr.wideiv1023.3
  br i1 %exitcond1024.not.3, label %._crit_edge902, label %.lr.ph901, !llvm.loop !358

bb.bd:                                            ; preds = %._crit_edge902
  %i.xs = fcmp oeq double %i.wo, 0.000000e+00
  br i1 %i.xs, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.xt = fcmp une double %i.wb, 0.000000e+00
  %i.xu = fneg double %.0552.lcssa                ; 2 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv1037 ; 2 uses
  br i1 %i.xt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.xw = fdiv double %i.xu, %i.wb
  store double %i.xw, ptr %i.xv, align 8, !tbaa !48
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.xx = fdiv double %i.xu, %i.vd
  store double %i.xx, ptr %i.xv, align 8, !tbaa !48
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bd
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv1034
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !48 ; 3 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1034
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !65 ; 3 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next1035
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !48
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.next1035
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !48
  %i.yg = fsub double %i.yf, %i.vp
  %i.yh = fneg double %.0552.lcssa                ; 2 uses
  %i.yi = insertelement <2 x double> poison, double %i.wo, i64 0
  %i.yj = insertelement <2 x double> %i.yi, double %.0558909, i64 1 ; 2 uses
  %i.yk = insertelement <2 x double> %i.yj, double %i.yh, i64 1
  %i.yl = fmul <2 x double> %i.yj, %i.yk
  %i.ym = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yn = insertelement <2 x double> %i.ym, double %i.xz, i64 1 ; 2 uses
  %i.yo = insertelement <2 x double> %i.yn, double %.0556910, i64 1
  %i.yp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yn, <2 x double> %i.yo, <2 x double> %i.yl) ; 2 uses
  %i.yq = extractelement <2 x double> %i.yp, i64 0
  %i.yr = extractelement <2 x double> %i.yp, i64 1
  %i.ys = fdiv double %i.yr, %i.yq                ; 3 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv1037
  store double %i.ys, ptr %i.yt, align 8, !tbaa !48
  %i.yu = tail call noundef double @llvm.fabs.f64(double %i.xz)
  %i.yv = tail call noundef double @llvm.fabs.f64(double %.0558909)
  %i.yw = fcmp ogt double %i.yu, %i.yv
  br i1 %i.yw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.yx = fneg double %i.wb
  %i.yy = tail call double @llvm.fmuladd.f64(double %i.yx, double %i.ys, double %i.yh)
  %i.yz = fdiv double %i.yy, %i.xz
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv1037
  store double %i.yz, ptr %i.za, align 8, !tbaa !48
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.zb = fneg double %.0556910
  %i.zc = fneg double %i.yd
  %i.zd = tail call double @llvm.fmuladd.f64(double %i.zc, double %i.ys, double %i.zb)
  %i.ze = fdiv double %i.zd, %.0558909
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv1037
  store double %i.ze, ptr %i.zf, align 8, !tbaa !48
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bf, %bb.bg
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv1037
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !48
  %i.zi = tail call noundef double @llvm.fabs.f64(double %i.zh) ; 3 uses
  %i.zj = fmul double %i.zi, f0x3CB0000000000000
  %i.zk = fmul double %i.zi, %i.zj
  %i.zl = fcmp ogt double %i.zk, 1.000000e+00
  %i.zm = trunc nuw nsw i64 %indvars.iv.next1035 to i32 ; 3 uses
  br i1 %i.zl, label %bb.bl, label %.loopexit797

bb.bl:                                            ; preds = %bb.bk
end_hunk_1
begin_hunk_2_@_ZN2cv23EigenvalueDecomposition4hqr2Ev:bb.a
  %i.ahs = tail call double @llvm.fmuladd.f64(double %i.aby, double %i.ahr, double %i.ahq)
  %i.aht = fdiv double %i.ahs, %i.aeu
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %indvars.iv1037
  store double %i.aht, ptr %i.ahu, align 8, !tbaa !48
  br label %bb.cg

bb.cd:                                            ; preds = %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit688
  %i.ahv = fneg double %i.aey
  %i.ahw = fneg <2 x double> %i.acd
  %i.ahx = insertelement <2 x double> poison, double %i.ahv, i64 0
  %i.ahy = shufflevector <2 x double> %i.ahx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahy, <2 x double> %i.ahb, <2 x double> %i.ahw) ; 5 uses
  %i.aia = getelementptr inbounds [8 x i8], ptr %i.aew, i64 %i.zw
  %i.aib = fcmp ogt double %i.ahd, %i.abz
  br i1 %i.aib, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aic = fdiv double %i.vr, %.0548892           ; 3 uses
  %i.aid = tail call double @llvm.fmuladd.f64(double %i.aic, double %i.vr, double %.0548892)
  %i.aie = fneg double %i.aic
  %i.aif = insertelement <2 x double> poison, double %i.aie, i64 0
  %i.aig = insertelement <2 x double> %i.aif, double %i.aic, i64 1
  %i.aih = shufflevector <2 x double> %i.ahz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aig, <2 x double> %i.ahz, <2 x double> %i.aih)
  %i.aij = insertelement <2 x double> poison, double %i.aid, i64 0
  %i.aik = shufflevector <2 x double> %i.aij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ail = fdiv <2 x double> %i.aii, %i.aik
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit691

bb.cf:                                            ; preds = %bb.cd
  %i.aim = fdiv double %.0548892, %i.vr           ; 2 uses
  %i.ain = tail call double @llvm.fmuladd.f64(double %i.aim, double %.0548892, double %i.vr)
  %i.aio = insertelement <2 x double> poison, double %i.aim, i64 0
  %i.aip = shufflevector <2 x double> %i.aio, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiq = shufflevector <2 x double> %i.ahz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.air = fneg <2 x double> %i.ahz
  %i.ais = shufflevector <2 x double> %i.air, <2 x double> %i.ahz, <2 x i32> <i32 0, i32 3>
  %i.ait = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aip, <2 x double> %i.aiq, <2 x double> %i.ais)
  %i.aiu = insertelement <2 x double> poison, double %i.ain, i64 0
  %i.aiv = shufflevector <2 x double> %i.aiu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiw = fdiv <2 x double> %i.ait, %i.aiv
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit691

_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit691: ; preds = %bb.ce, %bb.cf
  %i.aix = phi <2 x double> [ %i.ail, %bb.ce ], [ %i.aiw, %bb.cf ]
  %i.aiy = shufflevector <2 x double> %i.aix, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aiy, ptr %i.aia, align 8, !tbaa !48
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cc, %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit691, %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit685
  %i.aiz = getelementptr [8 x i8], ptr %.pre1070, i64 %indvars.iv1037
  %i.aja = getelementptr i8, ptr %i.aiz, i64 -8
  %i.ajb = load <2 x double>, ptr %i.aja, align 8, !tbaa !48
  %i.ajc = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ajb) ; 2 uses
  %i.ajd = extractelement <2 x double> %i.ajc, i64 0 ; 2 uses
  %i.aje = extractelement <2 x double> %i.ajc, i64 1 ; 2 uses
  %i.ajf = fcmp olt double %i.ajd, %i.aje
  %.sroa.speculated702 = select i1 %i.ajf, double %i.aje, double %i.ajd ; 3 uses
  %i.ajg = fmul double %.sroa.speculated702, f0x3CB0000000000000
  %i.ajh = fmul double %.sroa.speculated702, %i.ajg
  %i.aji = fcmp ule double %i.ajh, 1.000000e+00
  %.not660889 = icmp sgt i64 %indvars.iv1014, %indvars.iv1037
  %or.cond930 = or i1 %i.aji, %.not660889
  %i.ajj = trunc nuw nsw i64 %indvars.iv1014 to i32 ; 2 uses
  br i1 %or.cond930, label %.loopexit799, label %.lr.ph891.preheader

.lr.ph891.preheader:                              ; preds = %bb.cg
  %i.ajk = insertelement <2 x double> poison, double %.sroa.speculated702, i64 0
  %i.ajl = shufflevector <2 x double> %i.ajk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph891

.lr.ph891:                                        ; preds = %.lr.ph891.preheader, %.lr.ph891
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %.lr.ph891 ], [ %indvars.iv1014, %.lr.ph891.preheader ] ; 3 uses
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1016
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !65
  %i.ajo = getelementptr [8 x i8], ptr %i.ajn, i64 %indvars.iv1037
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 -8   ; 2 uses
  %i.ajq = load <2 x double>, ptr %i.ajp, align 8, !tbaa !48
  %i.ajr = fdiv <2 x double> %i.ajq, %i.ajl
  store <2 x double> %i.ajr, ptr %i.ajp, align 8, !tbaa !48
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %sext1098 = shl i64 %indvars.iv1016, 32
  %i.ajs = ashr exact i64 %sext1098, 32
  %.not660.not = icmp slt i64 %i.ajs, %indvars.iv1037
  br i1 %.not660.not, label %.lr.ph891, label %.loopexit799, !llvm.loop !362

.loopexit799:                                     ; preds = %.lr.ph891, %bb.cg, %._crit_edge886
  %.1549 = phi double [ %i.acu, %._crit_edge886 ], [ %.0548892, %bb.cg ], [ %.0548892, %.lr.ph891 ]
  %.1 = phi i32 [ %.0543895, %._crit_edge886 ], [ %i.ajj, %bb.cg ], [ %i.ajj, %.lr.ph891 ]
  %i.ajt = phi <2 x double> [ %i.acr, %._crit_edge886 ], [ %i.acd, %bb.cg ], [ %i.acd, %.lr.ph891 ]
  %indvars.iv.next1015 = add nsw i64 %indvars.iv1014, -1
  %i.aju = icmp sgt i64 %indvars.iv1014, 0
  br i1 %i.aju, label %.preheader800, label %.loopexit801, !llvm.loop !363

.loopexit801:                                     ; preds = %.loopexit799, %.loopexit797, %bb.bs, %bb.bm
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, -1
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -1
  %i.ajv = icmp sgt i64 %indvars.iv1037, 0
  %indvars.iv.next1009 = add i32 %indvars.iv1008, -1
  %indvars.iv.next1013 = add i32 %indvars.iv1012, -1
  %indvars.iv.next1026 = add i32 %indvars.iv1025, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ajv, label %bb.bb, label %.preheader795.lr.ph.split, !llvm.loop !364

.preheader795:                                    ; preds = %.preheader795.lr.ph.split, %._crit_edge927
  %indvar1205 = phi i64 [ 0, %.preheader795.lr.ph.split ], [ %indvar.next1206, %._crit_edge927 ] ; 2 uses
  %indvars.iv1061 = phi i64 [ %i.vk, %.preheader795.lr.ph.split ], [ %indvars.iv.next1062, %._crit_edge927 ] ; 14 uses
  %indvars.iv1059 = phi i64 [ %wide.trip.count, %.preheader795.lr.ph.split ], [ %indvars.iv.next1060, %._crit_edge927 ] ; 3 uses
  %i.ajw = sub i64 %i.n, %indvar1205
  %i.ajx = and i64 %indvars.iv1061, 2147483648
  %.not658919.not = icmp eq i64 %i.ajx, 0
  br i1 %.not658919.not, label %.preheader.preheader, label %.preheader.us.preheader

.preheader.preheader:                             ; preds = %.preheader795
  %xtraiter1207 = and i64 %indvars.iv1059, 3      ; 3 uses
  %i.ajy = icmp ult i64 %i.ajw, 3
  %unroll_iter1212 = and i64 %indvars.iv1059, -4
  %lcmp.mod1209.not = icmp eq i64 %xtraiter1207, 0
  %lcmp.mod1211 = icmp ne i64 %xtraiter1207, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader795
  %xtraiter1214 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.ajz = icmp ult i32 %i.a, 4
  br i1 %i.ajz, label %.preheader.us.epil.preheader, label %.preheader.us.preheader.new

.preheader.us.preheader.new:                      ; preds = %.preheader.us.preheader
  %unroll_iter1218 = and i64 %wide.trip.count, 2147483644
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader.new
  %indvars.iv1053 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %indvars.iv.next1054.3, %.preheader.us ] ; 5 uses
  %niter1219 = phi i64 [ 0, %.preheader.us.preheader.new ], [ %niter1219.next.3, %.preheader.us ]
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1053
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !65
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.akb, i64 %indvars.iv1061
  store double 0.000000e+00, ptr %i.akc, align 8, !tbaa !48
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1053
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !65
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.akf, i64 %indvars.iv1061
  store double 0.000000e+00, ptr %i.akg, align 8, !tbaa !48
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1053
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !65
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %indvars.iv1061
  store double 0.000000e+00, ptr %i.akk, align 8, !tbaa !48
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1053
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !65
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv1061
  store double 0.000000e+00, ptr %i.ako, align 8, !tbaa !48
  %indvars.iv.next1054.3 = add nuw nsw i64 %indvars.iv1053, 4 ; 2 uses
  %niter1219.next.3 = add i64 %niter1219, 4       ; 2 uses
  %niter1219.ncmp.3 = icmp eq i64 %niter1219.next.3, %unroll_iter1218
  br i1 %niter1219.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !365

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge923
  %indvars.iv1047 = phi i64 [ %indvars.iv.next1048, %._crit_edge923 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1047
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !65 ; 6 uses
  br i1 %i.ajy, label %.epil.preheader1204, label %.preheader.new

._crit_edge927:                                   ; preds = %._crit_edge923
  %indvars.iv.next1062 = add nsw i64 %indvars.iv1061, -1
  %.not1130 = icmp eq i64 %indvars.iv1061, 0
  %indvars.iv.next1060 = add nsw i64 %indvars.iv1059, -1
  %indvar.next1206 = add i64 %indvar1205, 1
  br i1 %.not1130, label %.loopexit, label %.preheader795, !llvm.loop !366

._crit_edge923.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod1209.not, label %._crit_edge923, label %.epil.preheader1204

.epil.preheader1204:                              ; preds = %._crit_edge923.unr-lcssa, %.preheader
  %indvars.iv1040.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1041.3, %._crit_edge923.unr-lcssa ]
  %.0535920.epil.init = phi double [ 0.000000e+00, %.preheader ], [ %i.ama, %._crit_edge923.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1211)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.epil.preheader1204
  %indvars.iv1040.epil = phi i64 [ %indvars.iv1040.epil.init, %.epil.preheader1204 ], [ %indvars.iv.next1041.epil, %bb.ch ] ; 3 uses
  %.0535920.epil = phi double [ %.0535920.epil.init, %.epil.preheader1204 ], [ %i.akx, %bb.ch ]
  %epil.iter1208 = phi i64 [ 0, %.epil.preheader1204 ], [ %epil.iter1208.next, %bb.ch ]
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv1040.epil
  %i.aks = load double, ptr %i.akr, align 8, !tbaa !48
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1040.epil
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !65
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %i.aku, i64 %indvars.iv1061
  %i.akw = load double, ptr %i.akv, align 8, !tbaa !48
  %i.akx = tail call double @llvm.fmuladd.f64(double %i.aks, double %i.akw, double %.0535920.epil) ; 2 uses
  %indvars.iv.next1041.epil = add nuw nsw i64 %indvars.iv1040.epil, 1
  %epil.iter1208.next = add i64 %epil.iter1208, 1 ; 2 uses
  %epil.iter1208.cmp.not = icmp eq i64 %epil.iter1208.next, %xtraiter1207
  br i1 %epil.iter1208.cmp.not, label %._crit_edge923, label %bb.ch, !llvm.loop !367

._crit_edge923:                                   ; preds = %bb.ch, %._crit_edge923.unr-lcssa
  %.lcssa = phi double [ %i.ama, %._crit_edge923.unr-lcssa ], [ %i.akx, %bb.ch ]
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv1061
  store double %.lcssa, ptr %i.aky, align 8, !tbaa !48
  %indvars.iv.next1048 = add nuw nsw i64 %indvars.iv1047, 1 ; 2 uses
  %exitcond1052.not = icmp eq i64 %indvars.iv.next1048, %wide.trip.count
  br i1 %exitcond1052.not, label %._crit_edge927, label %.preheader, !llvm.loop !365

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.0535920 = phi double [ %i.ama, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %niter1213 = phi i64 [ %niter1213.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv1040
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !48
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1040
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !65
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %indvars.iv1061
  %i.ale = load double, ptr %i.ald, align 8, !tbaa !48
  %i.alf = tail call double @llvm.fmuladd.f64(double %i.ala, double %i.ale, double %.0535920)
  %indvars.iv.next1041 = or disjoint i64 %indvars.iv1040, 1 ; 2 uses
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv.next1041
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !48
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1041
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !65
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.alj, i64 %indvars.iv1061
  %i.all = load double, ptr %i.alk, align 8, !tbaa !48
  %i.alm = tail call double @llvm.fmuladd.f64(double %i.alh, double %i.all, double %i.alf)
  %indvars.iv.next1041.1 = or disjoint i64 %indvars.iv1040, 2 ; 2 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv.next1041.1
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !48
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1041.1
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !65
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %indvars.iv1061
  %i.als = load double, ptr %i.alr, align 8, !tbaa !48
  %i.alt = tail call double @llvm.fmuladd.f64(double %i.alo, double %i.als, double %i.alm)
  %indvars.iv.next1041.2 = or disjoint i64 %indvars.iv1040, 3 ; 2 uses
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %indvars.iv.next1041.2
  %i.alv = load double, ptr %i.alu, align 8, !tbaa !48
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1041.2
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !65
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %indvars.iv1061
  %i.alz = load double, ptr %i.aly, align 8, !tbaa !48
  %i.ama = tail call double @llvm.fmuladd.f64(double %i.alv, double %i.alz, double %i.alt) ; 3 uses
  %indvars.iv.next1041.3 = add nuw nsw i64 %indvars.iv1040, 4 ; 2 uses
  %niter1213.next.3 = add i64 %niter1213, 4       ; 2 uses
  %niter1213.ncmp.3 = icmp eq i64 %niter1213.next.3, %unroll_iter1212
  br i1 %niter1213.ncmp.3, label %._crit_edge923.unr-lcssa, label %.preheader.new, !llvm.loop !368

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.us
  %lcmp.mod1216.not = icmp eq i64 %xtraiter1214, 0
  br i1 %lcmp.mod1216.not, label %.loopexit, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv1053.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next1054.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1217 = icmp ne i64 %xtraiter1214, 0
  tail call void @llvm.assume(i1 %lcmp.mod1217)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv1053.epil = phi i64 [ %indvars.iv.next1054.epil, %.preheader.us.epil ], [ %indvars.iv1053.epil.init, %.preheader.us.epil.preheader ] ; 2 uses
  %epil.iter1215 = phi i64 [ %epil.iter1215.next, %.preheader.us.epil ], [ 0, %.preheader.us.epil.preheader ]
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv1053.epil
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !65
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.amc, i64 %indvars.iv1061
  store double 0.000000e+00, ptr %i.amd, align 8, !tbaa !48
  %indvars.iv.next1054.epil = add nuw nsw i64 %indvars.iv1053.epil, 1
  %epil.iter1215.next = add i64 %epil.iter1215, 1 ; 2 uses
  %epil.iter1215.cmp.not = icmp eq i64 %epil.iter1215.next, %xtraiter1214
  br i1 %epil.iter1215.cmp.not, label %.loopexit, label %.preheader.us.epil, !llvm.loop !369

.loopexit:                                        ; preds = %._crit_edge927, %.loopexit.loopexit.unr-lcssa, %.preheader.us.epil, %._crit_edge880
  ret void

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn673.pn = phi { ptr, i32 } [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn673.pn
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition7releaseEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !90
  %i.j = load i32, ptr %0, align 8, !tbaa !40
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

._crit_edge:                                      ; preds = %bb.n, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.p, label %bb.o

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !87   ; 2 uses
  %.not13 = icmp eq ptr %i.u, null
  br i1 %.not13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %0, align 8, !tbaa !40
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.h, label %._crit_edge, !llvm.loop !373

bb.o:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  store ptr null, ptr %i.n, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.ab, align 8, !tbaa !87
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
end_hunk_2
