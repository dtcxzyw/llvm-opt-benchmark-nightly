inline.NumInlined: 969
inline.NumDeleted: 337
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv23EigenvalueDecomposition6orthesEv:bb.a
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.hs = icmp eq <2 x i64> %broadcast.splat313, %vec.ind
  %i.ht = icmp eq <2 x i64> %broadcast.splat313, %step.add
  %i.hu = select <2 x i1> %i.hs, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hv = select <2 x i1> %i.ht, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %index315 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <2 x double> %i.hu, ptr %i.hw, align 8, !tbaa !77
  store <2 x double> %i.hv, ptr %i.hx, align 8, !tbaa !77
  %index.next316 = add nuw i64 %index315, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.hy = icmp eq i64 %index.next316, %n.vec311
  br i1 %i.hy, label %middle.block317, label %vector.body314, !llvm.loop !328

middle.block317:                                  ; preds = %vector.body314
  br i1 %cmp.n318, label %._crit_edge203, label %scalar.ph308.preheader

scalar.ph308.preheader:                           ; preds = %.preheader159, %middle.block317
  %indvars.iv266.ph = phi i64 [ 0, %.preheader159 ], [ %n.vec311, %middle.block317 ]
  br label %scalar.ph308

._crit_edge205.split:                             ; preds = %._crit_edge203
  br i1 %i.c, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %._crit_edge205.split
  %i.hz = add nsw i32 %i.a, -2
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !149 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = zext nneg i32 %i.a to i64
  %i.ig = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge203:                                   ; preds = %scalar.ph308, %middle.block317
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %._crit_edge205.split, label %.preheader159, !llvm.loop !329

scalar.ph308:                                     ; preds = %scalar.ph308.preheader, %scalar.ph308
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %scalar.ph308 ], [ %indvars.iv266.ph, %scalar.ph308.preheader ] ; 3 uses
  %i.ih = icmp eq i64 %indvars.iv271, %indvars.iv266
  %i.ii = select i1 %i.ih, double 1.000000e+00, double 0.000000e+00
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv266
  store double %i.ii, ptr %i.ij, align 8, !tbaa !77
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count274
  br i1 %exitcond270.not, label %._crit_edge203, label %scalar.ph308, !llvm.loop !330

._crit_edge225:                                   ; preds = %.loopexit, %.preheader160, %._crit_edge205.split
  ret void

bb.b:                                             ; preds = %.lr.ph224, %.loopexit
  %indvars.iv276 = phi i64 [ %i.ie, %.lr.ph224 ], [ %indvars.iv.next277, %.loopexit ] ; 10 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv276
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !147
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, -1 ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next277 ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !77
  %i.io = fcmp une double %i.in, 0.000000e+00
  br i1 %i.io, label %.preheader158, label %.loopexit

.preheader158:                                    ; preds = %bb.b
  %.not.not206 = icmp slt i64 %indvars.iv276, %i.ig
  br i1 %.not.not206, label %.lr.ph208, label %.preheader157

.lr.ph208:                                        ; preds = %.preheader158
  %i.ip = load ptr, ptr %i.ic, align 8, !tbaa !300
  br label %bb.e

.preheader157:                                    ; preds = %bb.e, %.preheader158
  %.not.not148220 = icmp slt i64 %indvars.iv276, %i.if
  br i1 %.not.not148220, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader157
  %i.iq = load ptr, ptr %i.ic, align 8, !tbaa !300 ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv276
  %i.is = load ptr, ptr %i.id, align 8, !tbaa !297 ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge219.us, %.preheader.lr.ph
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %._crit_edge219.us ], [ %indvars.iv276, %.preheader.lr.ph ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv281 = phi i64 [ %indvars.iv276, %.preheader.us ], [ %indvars.iv.next282, %bb.c ] ; 3 uses
  %.0127210.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.iz, %bb.c ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv281
  %i.iu = load double, ptr %i.it, align 8, !tbaa !77
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv281
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !147
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv287
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !77
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iy, double %.0127210.us) ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.ja = trunc nuw i64 %indvars.iv.next282 to i32
  %.not.not149.us = icmp sgt i32 %i.a, %i.ja
  br i1 %.not.not149.us, label %bb.c, label %._crit_edge213.us, !llvm.loop !331

bb.d:                                             ; preds = %._crit_edge213.us, %bb.d
  %indvars.iv284 = phi i64 [ %indvars.iv276, %._crit_edge213.us ], [ %indvars.iv.next285, %bb.d ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv284
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !77
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv284
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !147
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv287 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !77
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jm, double %i.jc, double %i.jg)
  store double %i.jh, ptr %i.jf, align 8, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.ji = trunc nuw i64 %indvars.iv.next285 to i32
  %.not.not150.us = icmp sgt i32 %i.a, %i.ji
  br i1 %.not.not150.us, label %bb.d, label %._crit_edge219.us, !llvm.loop !332

._crit_edge213.us:                                ; preds = %bb.c
  %i.jj = load double, ptr %i.ir, align 8, !tbaa !77
  %i.jk = fdiv double %i.iz, %i.jj
  %i.jl = load double, ptr %i.im, align 8, !tbaa !77
  %i.jm = fdiv double %i.jk, %i.jl
  br label %bb.d

._crit_edge219.us:                                ; preds = %bb.d
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.jn = trunc nuw i64 %indvars.iv.next288 to i32
  %.not.not148.us = icmp sgt i32 %i.a, %i.jn
  br i1 %.not.not148.us, label %.preheader.us, label %.loopexit, !llvm.loop !333

bb.e:                                             ; preds = %.lr.ph208, %bb.e
  %indvars.iv278 = phi i64 [ %indvars.iv276, %.lr.ph208 ], [ %indvars.iv.next279, %bb.e ]
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 4 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next279
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !147
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.next277
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !77
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.next279
  store double %i.jr, ptr %i.js, align 8, !tbaa !77
  %i.jt = trunc nuw i64 %indvars.iv.next279 to i32
  %.not.not = icmp sgt i32 %i.b, %i.jt
  br i1 %.not.not, label %bb.e, label %.preheader157, !llvm.loop !334

.loopexit:                                        ; preds = %._crit_edge219.us, %.preheader157, %bb.b
  %i.ju = icmp sgt i64 %indvars.iv276, 1
  br i1 %i.ju, label %bb.b, label %._crit_edge225, !llvm.loop !335
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition4hqr2Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !63     ; 16 uses
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
  %i.m = zext nneg i32 %i.a to i64                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 8 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader809.lr.ph.unr-lcssa:                    ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader809.lr.ph, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader809.lr.ph.unr-lcssa, %bb.g
  %indvars.iv940.epil.init = phi i64 [ 0, %bb.g ], [ %indvars.iv.next941.1, %.preheader809.lr.ph.unr-lcssa ] ; 2 uses
  %.0616813.epil.init = phi double [ 0.000000e+00, %bb.g ], [ %i.as, %.preheader809.lr.ph.unr-lcssa ]
  %lcmp.mod1161 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod1161)
  %i.p = trunc nuw nsw i64 %indvars.iv940.epil.init to i32
  %smax.epil = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.q = zext nneg i32 %smax.epil to i64
  %i.r = add nsw i64 %i.q, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv940.epil.init
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !147
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %i.r, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.1617811.epil = phi double [ %.0616813.epil.init, %.lr.ph.epil.preheader ], [ %i.x, %bb.h ]
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.v = load double, ptr %i.u, align 8, !tbaa !77
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fadd double %.1617811.epil, %i.w         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next.epil, %i.m
  br i1 %i.y, label %bb.h, label %.preheader809.lr.ph, !llvm.loop !336

.preheader809.lr.ph:                              ; preds = %bb.h, %.preheader809.lr.ph.unr-lcssa
  %.lcssa1159.lcssa = phi double [ %i.as, %.preheader809.lr.ph.unr-lcssa ], [ %i.x, %bb.h ] ; 4 uses
  %i.z = add nsw i32 %i.a, -1                     ; 9 uses
  %i.aa = fcmp olt double %.lcssa1159.lcssa, f0x3E80000000000000
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter1181 = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i64 %i.n, 0
  %unroll_iter1185 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod1183.not = icmp eq i64 %xtraiter1181, 0
  %lcmp.mod1184 = trunc i32 %i.a to i1
  br label %.preheader809

.lr.ph:                                           ; preds = %._crit_edge.1, %.new
  %indvars.iv940 = phi i64 [ 0, %.new ], [ %indvars.iv.next941.1, %._crit_edge.1 ] ; 4 uses
  %.0616813 = phi double [ 0.000000e+00, %.new ], [ %i.as, %._crit_edge.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.af = trunc nuw nsw i64 %indvars.iv940 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = zext nneg i32 %smax to i64
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv940
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !147
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  %indvars.iv.next941 = or disjoint i64 %indvars.iv940, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next941 to i32
  %smax.1 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 1)
  %i.al = zext nneg i32 %smax.1 to i64
  %i.am = add nsw i64 %i.al, -1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next941
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !147
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.1 = phi i64 [ %i.am, %._crit_edge ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %.1617811.1 = phi double [ %i.ax, %._crit_edge ], [ %i.as, %bb.i ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.1
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !77
  %i.ar = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.as = fadd double %.1617811.1, %i.ar          ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next.1, %i.m
  br i1 %i.at, label %bb.i, label %._crit_edge.1, !llvm.loop !336

._crit_edge.1:                                    ; preds = %bb.i
  %indvars.iv.next941.1 = add nuw nsw i64 %indvars.iv940, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader809.lr.ph.unr-lcssa, label %.lr.ph, !llvm.loop !337

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.1617811 = phi double [ %.0616813, %.lr.ph ], [ %i.ax, %bb.j ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.av = load double, ptr %i.au, align 8, !tbaa !77
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %.1617811, %i.aw            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.ay, label %bb.j, label %._crit_edge, !llvm.loop !336

.preheader809:                                    ; preds = %.preheader809.lr.ph, %.thread786
  %.0609878 = phi i32 [ 0, %.preheader809.lr.ph ], [ %.1610, %.thread786 ] ; 3 uses
  %.0618877 = phi double [ 0.000000e+00, %.preheader809.lr.ph ], [ %.4622, %.thread786 ] ; 9 uses
  %.0773875 = phi i32 [ %i.z, %.preheader809.lr.ph ], [ %.1774, %.thread786 ] ; 28 uses
  br i1 %i.aa, label %.preheader809.split.us.thread, label %.preheader809.split.preheader

.preheader809.split.preheader:                    ; preds = %.preheader809
  %i.az = icmp eq i32 %.0773875, 0
  br i1 %i.az, label %.preheader809.split.us, label %.lr.ph1137

.lr.ph1137:                                       ; preds = %.preheader809.split.preheader
  %i.ba = zext nneg i32 %.0773875 to i64
  br label %bb.k

.preheader809.split:                              ; preds = %bb.k
  %i.bb = icmp eq i64 %i.bc, 0
  br i1 %i.bb, label %.preheader809.split.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph1137, %.preheader809.split
  %indvars.iv9431136 = phi i64 [ %i.ba, %.lr.ph1137 ], [ %i.bc, %.preheader809.split ] ; 4 uses
  %i.bc = add nsw i64 %indvars.iv9431136, -1      ; 5 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !77
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv9431136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !147 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv9431136
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !77
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fadd double %i.bh, %i.bm                ; 2 uses
  %i.bo = fcmp oeq double %i.bn, 0.000000e+00
  %.0605 = select i1 %i.bo, double %.lcssa1159.lcssa, double %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bc
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !77
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fmul double %.0605, f0x3CB0000000000000
  %i.bt = fcmp olt double %i.br, %i.bs
  br i1 %i.bt, label %.preheader809.split.us.split.loop.exit1114, label %.preheader809.split

.preheader809.split.us.split.loop.exit1114:       ; preds = %bb.k
  %i.bu = trunc nuw nsw i64 %indvars.iv9431136 to i32
  br label %.preheader809.split.us

.preheader809.split.us:                           ; preds = %.preheader809.split, %.preheader809.split.preheader, %.preheader809.split.us.split.loop.exit1114
  %.us-phi = phi i32 [ %i.bu, %.preheader809.split.us.split.loop.exit1114 ], [ 0, %.preheader809.split.preheader ], [ 0, %.preheader809.split ] ; 11 uses
  %i.bv = icmp eq i32 %.us-phi, %.0773875
  br i1 %i.bv, label %.preheader809.split.us.thread, label %bb.l

.preheader809.split.us.thread:                    ; preds = %.preheader809, %.preheader809.split.us
  %i.bw = zext nneg i32 %.0773875 to i64          ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !147
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !77
  %i.cb = fadd double %.0618877, %i.ca            ; 2 uses
  store double %i.cb, ptr %i.bz, align 8, !tbaa !77
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bw
  store double %i.cb, ptr %i.cd, align 8, !tbaa !77
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !299
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bw
  store double 0.000000e+00, ptr %i.cf, align 8, !tbaa !77
  %i.cg = add nsw i32 %.0773875, -1
  br label %.thread786

bb.l:                                             ; preds = %.preheader809.split.us
  %i.ch = add nsw i32 %.0773875, -1               ; 3 uses
  %i.ci = icmp eq i32 %.us-phi, %i.ch
  %i.cj = zext nneg i32 %.0773875 to i64          ; 16 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cj ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !147 ; 8 uses
  br i1 %i.ci, label %bb.m, label %5

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
  %i.dc = fadd double %.0618877, %i.cx
  store double %i.dc, ptr %i.cw, align 8, !tbaa !77
  %i.dd = load double, ptr %i.cu, align 8, !tbaa !77
  %i.de = fadd double %.0618877, %i.dd
  store double %i.de, ptr %i.cu, align 8, !tbaa !77
  %i.df = load double, ptr %i.cw, align 8, !tbaa !77 ; 3 uses
  %i.dg = fcmp ult double %i.da, 0.000000e+00
  br i1 %i.dg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = fcmp ult double %i.cz, 0.000000e+00
  %i.di = fneg double %sqrt
  %.0604.p = select i1 %i.dh, double %i.di, double %sqrt
  %.0604 = fadd double %i.cz, %.0604.p            ; 5 uses
  %i.dj = fadd double %i.df, %.0604               ; 2 uses
  %i.dk = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.cj ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  store double %i.dj, ptr %i.dm, align 8, !tbaa !77
  %i.dn = fcmp une double %.0604, 0.000000e+00
  %i.do = fdiv double %i.ct, %.0604
  %i.dp = fsub double %i.df, %i.do
  %storemerge791 = select i1 %i.dn, double %i.dp, double %i.dj
  store double %storemerge791, ptr %i.dl, align 8, !tbaa !77
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !299
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.cj
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = getelementptr i8, ptr %i.cw, i64 -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  %i.du = load double, ptr %i.dt, align 8, !tbaa !77 ; 2 uses
  %i.dv = tail call noundef double @llvm.fabs.f64(double %i.du)
  %i.dw = tail call noundef double @llvm.fabs.f64(double %.0604)
  %i.dx = fadd double %i.dw, %i.dv                ; 2 uses
  %i.dy = fdiv double %i.du, %i.dx                ; 3 uses
  %i.dz = fdiv double %.0604, %i.dx               ; 3 uses
  %i.ea = fmul double %i.dz, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.ea)
  %sqrt792 = tail call double @llvm.sqrt.f64(double %i.eb) ; 2 uses
  %i.ec = fdiv double %i.dy, %sqrt792             ; 4 uses
  %i.ed = fdiv double %i.dz, %sqrt792             ; 4 uses
  %.not929 = icmp sgt i32 %.0773875, %i.a
  br i1 %.not929, label %.lr.ph871.preheader, label %.lr.ph868

.lr.ph868:                                        ; preds = %bb.n
  %i.ee = getelementptr i8, ptr %i.ck, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !147 ; 4 uses
  %i.eg = zext i32 %.us-phi to i64                ; 6 uses
  %i.eh = xor i32 %.us-phi, -1
  %i.ei = add i32 %i.a, %i.eh                     ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.ei, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph868
  %i.el = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ef, i64 %i.el
  %scevgep1138 = getelementptr i8, ptr %i.ef, i64 8
  %i.em = xor i32 %.us-phi, -1
  %i.en = add i32 %i.a, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eg, %i.eo
  %i.eq = shl nuw nsw i64 %i.ep, 3                ; 2 uses
  %scevgep1139 = getelementptr i8, ptr %scevgep1138, i64 %i.eq
  %scevgep1140 = getelementptr i8, ptr %i.cl, i64 %i.el
  %scevgep1141 = getelementptr i8, ptr %i.cl, i64 8
  %scevgep1142 = getelementptr i8, ptr %scevgep1141, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep1142
  %bound1 = icmp ult ptr %scevgep1140, %scevgep1139
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ek, 8589934590              ; 3 uses
  %i.er = add nuw nsw i64 %n.vec, %i.eg
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1143 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat1144 = shufflevector <2 x double> %broadcast.splatinsert1143, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add nuw i64 %index, %i.eg               ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.es ; 2 uses
  %wide.load = load <2 x double>, ptr %i.et, align 8, !tbaa !77, !alias.scope !338, !noalias !341 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.es ; 2 uses
  %wide.load1145 = load <2 x double>, ptr %i.eu, align 8, !tbaa !77, !alias.scope !341 ; 2 uses
  %i.ev = fmul <2 x double> %broadcast.splat, %wide.load1145
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1144, <2 x double> %wide.load, <2 x double> %i.ev)
  store <2 x double> %i.ew, ptr %i.et, align 8, !tbaa !77, !alias.scope !338, !noalias !341
  %i.ex = fneg <2 x double> %wide.load
  %i.ey = fmul <2 x double> %broadcast.splat, %i.ex
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1144, <2 x double> %wide.load1145, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %i.eu, align 8, !tbaa !77, !alias.scope !341
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %.lr.ph871.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph868, %middle.block
  %indvars.iv988.ph = phi i64 [ %i.eg, %vector.memcheck ], [ %i.eg, %.lr.ph868 ], [ %i.er, %middle.block ]
  br label %scalar.ph

.lr.ph871.preheader:                              ; preds = %scalar.ph, %middle.block, %bb.n
  %i.fb = add nuw nsw i32 %.0773875, 1            ; 2 uses
  %wide.trip.count996 = zext nneg i32 %i.fb to i64 ; 2 uses
  %i.fc = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.fe = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %xtraiter1175 = and i64 %wide.trip.count996, 1
  %i.fg = icmp eq i32 %.0773875, 0
  br i1 %i.fg, label %.lr.ph871.epil.preheader, label %.lr.ph871.preheader.new

.lr.ph871.preheader.new:                          ; preds = %.lr.ph871.preheader
  %unroll_iter1179 = and i64 %wide.trip.count996, 2147483646
  br label %.lr.ph871

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv988 = phi i64 [ %indvars.iv.next989, %scalar.ph ], [ %indvars.iv988.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv988 ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !77 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv988 ; 3 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !77
  %i.fl = fmul double %i.ec, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fi, double %i.fl)
  store double %i.fm, ptr %i.fh, align 8, !tbaa !77
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !77
  %i.fo = fneg double %i.fi
  %i.fp = fmul double %i.ec, %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.fn, double %i.fp)
  store double %i.fq, ptr %i.fj, align 8, !tbaa !77
  %indvars.iv.next989 = add nuw nsw i64 %indvars.iv988, 1 ; 2 uses
  %lftr.wideiv991 = trunc i64 %indvars.iv.next989 to i32
  %exitcond992.not = icmp eq i32 %i.a, %lftr.wideiv991
  br i1 %exitcond992.not, label %.lr.ph871.preheader, label %scalar.ph, !llvm.loop !344

.lr.ph874.unr-lcssa:                              ; preds = %.lr.ph871
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1175, 0
  br i1 %lcmp.mod1177.not, label %.lr.ph874, label %.lr.ph871.epil.preheader

.lr.ph871.epil.preheader:                         ; preds = %.lr.ph874.unr-lcssa, %.lr.ph871.preheader
  %indvars.iv993.epil.init = phi i64 [ 0, %.lr.ph871.preheader ], [ %indvars.iv.next994.1, %.lr.ph874.unr-lcssa ]
  %lcmp.mod1178 = trunc i32 %i.fb to i1
  tail call void @llvm.assume(i1 %lcmp.mod1178)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv993.epil.init
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !147
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %i.cj
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8     ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fu, align 8, !tbaa !77 ; 3 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.fy = fmul <2 x double> %i.ff, %i.fx
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fv, <2 x double> %i.fy)
  store <2 x double> %i.fz, ptr %i.fu, align 8, !tbaa !77
  br label %.lr.ph874

.lr.ph874:                                        ; preds = %.lr.ph874.unr-lcssa, %.lr.ph871.epil.preheader
  %i.ga = load ptr, ptr %i.ab, align 8, !tbaa !297 ; 3 uses
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph874.new

.lr.ph871:                                        ; preds = %.lr.ph871, %.lr.ph871.preheader.new
  %indvars.iv993 = phi i64 [ 0, %.lr.ph871.preheader.new ], [ %indvars.iv.next994.1, %.lr.ph871 ] ; 3 uses
  %niter1180 = phi i64 [ 0, %.lr.ph871.preheader.new ], [ %niter1180.next.1, %.lr.ph871 ]
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv993
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !147
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.cj
  %i.ge = getelementptr i8, ptr %i.gd, i64 -8     ; 2 uses
  %i.gf = load <2 x double>, ptr %i.ge, align 8, !tbaa !77 ; 3 uses
  %i.gg = fneg <2 x double> %i.gf
  %i.gh = shufflevector <2 x double> %i.gf, <2 x double> %i.gg, <2 x i32> <i32 1, i32 2>
  %i.gi = fmul <2 x double> %i.ff, %i.gh
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.gf, <2 x double> %i.gi)
  store <2 x double> %i.gj, ptr %i.ge, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv993
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !147
  %i.gn = getelementptr [8 x i8], ptr %i.gm, i64 %i.cj
  %i.go = getelementptr i8, ptr %i.gn, i64 -8     ; 2 uses
  %i.gp = load <2 x double>, ptr %i.go, align 8, !tbaa !77 ; 3 uses
  %i.gq = fneg <2 x double> %i.gp
  %i.gr = shufflevector <2 x double> %i.gp, <2 x double> %i.gq, <2 x i32> <i32 1, i32 2>
  %i.gs = fmul <2 x double> %i.ff, %i.gr
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.gp, <2 x double> %i.gs)
  store <2 x double> %i.gt, ptr %i.go, align 8, !tbaa !77
  %indvars.iv.next994.1 = add nuw nsw i64 %indvars.iv993, 2 ; 2 uses
  %niter1180.next.1 = add i64 %niter1180, 2       ; 2 uses
  %niter1180.ncmp.1 = icmp eq i64 %niter1180.next.1, %unroll_iter1179
  br i1 %niter1180.ncmp.1, label %.lr.ph874.unr-lcssa, label %.lr.ph871, !llvm.loop !345

.lr.ph874.new:                                    ; preds = %.lr.ph874, %.lr.ph874.new
  %indvars.iv998 = phi i64 [ %indvars.iv.next999.1, %.lr.ph874.new ], [ 0, %.lr.ph874 ] ; 3 uses
  %niter1186 = phi i64 [ %niter1186.next.1, %.lr.ph874.new ], [ 0, %.lr.ph874 ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv998
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !147
  %i.gw = getelementptr [8 x i8], ptr %i.gv, i64 %i.cj
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8     ; 2 uses
  %i.gy = load <2 x double>, ptr %i.gx, align 8, !tbaa !77 ; 3 uses
  %i.gz = fneg <2 x double> %i.gy
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <2 x i32> <i32 1, i32 2>
  %i.hb = fmul <2 x double> %i.ff, %i.ha
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.gy, <2 x double> %i.hb)
  store <2 x double> %i.hc, ptr %i.gx, align 8, !tbaa !77
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv998
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !147
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.cj
  %i.hh = getelementptr i8, ptr %i.hg, i64 -8     ; 2 uses
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !tbaa !77 ; 3 uses
  %i.hj = fneg <2 x double> %i.hi
  %i.hk = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 1, i32 2>
  %i.hl = fmul <2 x double> %i.ff, %i.hk
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.hi, <2 x double> %i.hl)
  store <2 x double> %i.hm, ptr %i.hh, align 8, !tbaa !77
  %indvars.iv.next999.1 = add nuw nsw i64 %indvars.iv998, 2 ; 2 uses
  %niter1186.next.1 = add i64 %niter1186, 2       ; 2 uses
  %niter1186.ncmp.1 = icmp eq i64 %niter1186.next.1, %unroll_iter1185
  br i1 %niter1186.ncmp.1, label %.loopexit806.loopexit.unr-lcssa, label %.lr.ph874.new, !llvm.loop !346

bb.o:                                             ; preds = %bb.m
  %i.hn = fadd double %i.cz, %i.df                ; 2 uses
  %i.ho = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %i.cj ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -8
  store double %i.hn, ptr %i.hq, align 8, !tbaa !77
  store double %i.hn, ptr %i.hp, align 8, !tbaa !77
  %i.hr = load ptr, ptr %i.ad, align 8, !tbaa !299
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.cj ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -8
  store double %sqrt, ptr %i.ht, align 8, !tbaa !77
  %i.hu = fneg double %sqrt
  store double %i.hu, ptr %i.hs, align 8, !tbaa !77
  br label %.loopexit806

.loopexit806.loopexit.unr-lcssa:                  ; preds = %.lr.ph874.new
  br i1 %lcmp.mod1183.not, label %.loopexit806, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit806.loopexit.unr-lcssa, %.lr.ph874
  %indvars.iv998.epil.init = phi i64 [ 0, %.lr.ph874 ], [ %indvars.iv.next999.1, %.loopexit806.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1184)
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv998.epil.init
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !147
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.cj
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8     ; 2 uses
  %i.hz = load <2 x double>, ptr %i.hy, align 8, !tbaa !77 ; 3 uses
  %i.ia = fneg <2 x double> %i.hz
  %i.ib = shufflevector <2 x double> %i.hz, <2 x double> %i.ia, <2 x i32> <i32 1, i32 2>
  %i.ic = fmul <2 x double> %i.ff, %i.ib
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.hz, <2 x double> %i.ic)
  store <2 x double> %i.id, ptr %i.hy, align 8, !tbaa !77
  br label %.loopexit806

.loopexit806:                                     ; preds = %.epil.preheader, %.loopexit806.loopexit.unr-lcssa, %bb.o
  %i.ie = add nsw i32 %.0773875, -2
  br label %.thread786

5:                                                ; preds = %bb.l
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 2 uses
  %7 = load double, ptr %6, align 8, !tbaa !77    ; 11 uses
  %8 = icmp slt i32 %.us-phi, %.0773875
  br i1 %8, label %bb.p, label %9

bb.p:                                             ; preds = %5
  %i.if = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !147 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.if
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !77
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.if
  %i.il = load double, ptr %i.ik, align 8, !tbaa !77
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.cj
  %i.in = load double, ptr %i.im, align 8, !tbaa !77
  %i.io = fmul double %i.il, %i.in
  br label %9

9:                                                ; preds = %bb.p, %5
  %.0590 = phi double [ %i.ij, %bb.p ], [ 0.000000e+00, %5 ] ; 4 uses
  %.0586 = phi double [ %i.io, %bb.p ], [ 0.000000e+00, %5 ] ; 4 uses
  switch i32 %.0609878, label %bb.r [
    i32 10, label %.lr.ph818.preheader
    i32 30, label %bb.q
  ]

.lr.ph818.preheader:                              ; preds = %9
  %i.ip = fadd double %.0618877, %7
  %i.iq = add nuw nsw i32 %.0773875, 1
  %wide.trip.count949 = zext nneg i32 %i.iq to i64 ; 2 uses
  %xtraiter1167 = and i64 %wide.trip.count949, 3  ; 3 uses
  %i.ir = icmp ult i32 %.0773875, 3
  br i1 %i.ir, label %.lr.ph818.epil.preheader, label %.lr.ph818.preheader.new

.lr.ph818.preheader.new:                          ; preds = %.lr.ph818.preheader
  %unroll_iter1171 = and i64 %wide.trip.count949, 2147483644
  br label %.lr.ph818

.thread1095.unr-lcssa:                            ; preds = %.lr.ph818
  %lcmp.mod1169.not = icmp eq i64 %xtraiter1167, 0
  br i1 %lcmp.mod1169.not, label %.thread1095, label %.lr.ph818.epil.preheader

.lr.ph818.epil.preheader:                         ; preds = %.thread1095.unr-lcssa, %.lr.ph818.preheader
  %indvars.iv946.epil.init = phi i64 [ 0, %.lr.ph818.preheader ], [ %indvars.iv.next947.3, %.thread1095.unr-lcssa ]
  %lcmp.mod1170 = icmp ne i64 %xtraiter1167, 0
  tail call void @llvm.assume(i1 %lcmp.mod1170)
  br label %.lr.ph818.epil

.lr.ph818.epil:                                   ; preds = %.lr.ph818.epil, %.lr.ph818.epil.preheader
  %indvars.iv946.epil = phi i64 [ %indvars.iv946.epil.init, %.lr.ph818.epil.preheader ], [ %indvars.iv.next947.epil, %.lr.ph818.epil ] ; 3 uses
  %epil.iter1168 = phi i64 [ 0, %.lr.ph818.epil.preheader ], [ %epil.iter1168.next, %.lr.ph818.epil ]
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv946.epil
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !147
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv946.epil ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !77
  %i.iw = fsub double %i.iv, %7
  store double %i.iw, ptr %i.iu, align 8, !tbaa !77
  %indvars.iv.next947.epil = add nuw nsw i64 %indvars.iv946.epil, 1
  %epil.iter1168.next = add i64 %epil.iter1168, 1 ; 2 uses
  %epil.iter1168.cmp.not = icmp eq i64 %epil.iter1168.next, %xtraiter1167
  br i1 %epil.iter1168.cmp.not, label %.thread1095, label %.lr.ph818.epil, !llvm.loop !347

.thread1095:                                      ; preds = %.lr.ph818.epil, %.thread1095.unr-lcssa
  %i.ix = getelementptr i8, ptr %6, i64 -8
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !77
  %i.iz = tail call noundef double @llvm.fabs.f64(double %i.iy)
  %i.ja = getelementptr i8, ptr %i.ck, i64 -8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !147
  %i.jc = getelementptr [8 x i8], ptr %i.jb, i64 %i.cj
  %i.jd = getelementptr i8, ptr %i.jc, i64 -16
  %i.je = load double, ptr %i.jd, align 8, !tbaa !77
  %i.jf = tail call noundef double @llvm.fabs.f64(double %i.je)
  %i.jg = fadd double %i.iz, %i.jf                ; 3 uses
  %i.jh = fmul double %i.jg, 7.500000e-01         ; 2 uses
  %i.ji = fmul double %i.jg, -4.375000e-01
  %i.jj = fmul double %i.jg, %i.ji
  br label %bb.r

.lr.ph818:                                        ; preds = %.lr.ph818, %.lr.ph818.preheader.new
  %indvars.iv946 = phi i64 [ 0, %.lr.ph818.preheader.new ], [ %indvars.iv.next947.3, %.lr.ph818 ] ; 6 uses
  %niter1172 = phi i64 [ 0, %.lr.ph818.preheader.new ], [ %niter1172.next.3, %.lr.ph818 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv946
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !147
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv946 ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !77
  %i.jo = fsub double %i.jn, %7
  store double %i.jo, ptr %i.jm, align 8, !tbaa !77
  %indvars.iv.next947 = or disjoint i64 %indvars.iv946, 1 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next947
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !147
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv.next947 ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !77
  %i.jt = fsub double %i.js, %7
  store double %i.jt, ptr %i.jr, align 8, !tbaa !77
  %indvars.iv.next947.1 = or disjoint i64 %indvars.iv946, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next947.1
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !147
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.next947.1 ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !77
  %i.jy = fsub double %i.jx, %7
  store double %i.jy, ptr %i.jw, align 8, !tbaa !77
  %indvars.iv.next947.2 = or disjoint i64 %indvars.iv946, 3 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next947.2
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !147
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.next947.2 ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !77
  %i.kd = fsub double %i.kc, %7
  store double %i.kd, ptr %i.kb, align 8, !tbaa !77
  %indvars.iv.next947.3 = add nuw nsw i64 %indvars.iv946, 4 ; 2 uses
  %niter1172.next.3 = add i64 %niter1172, 4       ; 2 uses
  %niter1172.ncmp.3 = icmp eq i64 %niter1172.next.3, %unroll_iter1171
  br i1 %niter1172.ncmp.3, label %.thread1095.unr-lcssa, label %.lr.ph818, !llvm.loop !348

bb.q:                                             ; preds = %9
  %i.ke = fsub double %.0590, %7                  ; 2 uses
  %i.kf = fmul double %i.ke, 5.000000e-01         ; 2 uses
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kf, double %.0586) ; 2 uses
  %i.kh = fcmp ogt double %i.kg, 0.000000e+00
  br i1 %i.kh, label %.lr.ph823.preheader, label %bb.r

.lr.ph823.preheader:                              ; preds = %bb.q
  %i.ki = tail call double @sqrt(double noundef %i.kg) #19 ; 2 uses
  %i.kj = fcmp olt double %.0590, %7
  %i.kk = fneg double %i.ki
  %.0584 = select i1 %i.kj, double %i.kk, double %i.ki
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ke, double 5.000000e-01, double %.0584)
  %i.km = fdiv double %.0586, %i.kl
  %i.kn = fsub double %7, %i.km                   ; 6 uses
  %i.ko = add nuw nsw i32 %.0773875, 1
  %wide.trip.count954 = zext nneg i32 %i.ko to i64 ; 2 uses
  %xtraiter1162 = and i64 %wide.trip.count954, 3  ; 3 uses
  %i.kp = icmp ult i32 %.0773875, 3
  br i1 %i.kp, label %.lr.ph823.epil.preheader, label %.lr.ph823.preheader.new

.lr.ph823.preheader.new:                          ; preds = %.lr.ph823.preheader
  %unroll_iter1165 = and i64 %wide.trip.count954, 2147483644
  br label %.lr.ph823

._crit_edge824.unr-lcssa:                         ; preds = %.lr.ph823
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1163.not, label %._crit_edge824, label %.lr.ph823.epil.preheader

.lr.ph823.epil.preheader:                         ; preds = %._crit_edge824.unr-lcssa, %.lr.ph823.preheader
  %indvars.iv951.epil.init = phi i64 [ 0, %.lr.ph823.preheader ], [ %indvars.iv.next952.3, %._crit_edge824.unr-lcssa ]
  %lcmp.mod1164 = icmp ne i64 %xtraiter1162, 0
  tail call void @llvm.assume(i1 %lcmp.mod1164)
  br label %.lr.ph823.epil

.lr.ph823.epil:                                   ; preds = %.lr.ph823.epil, %.lr.ph823.epil.preheader
  %indvars.iv951.epil = phi i64 [ %indvars.iv951.epil.init, %.lr.ph823.epil.preheader ], [ %indvars.iv.next952.epil, %.lr.ph823.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph823.epil.preheader ], [ %epil.iter.next, %.lr.ph823.epil ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv951.epil
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !147
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv951.epil ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !77
  %i.ku = fsub double %i.kt, %i.kn
  store double %i.ku, ptr %i.ks, align 8, !tbaa !77
  %indvars.iv.next952.epil = add nuw nsw i64 %indvars.iv951.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1162
  br i1 %epil.iter.cmp.not, label %._crit_edge824, label %.lr.ph823.epil, !llvm.loop !349

._crit_edge824:                                   ; preds = %.lr.ph823.epil, %._crit_edge824.unr-lcssa
  %i.kv = fadd double %.0618877, %i.kn
  br label %bb.r

.lr.ph823:                                        ; preds = %.lr.ph823, %.lr.ph823.preheader.new
  %indvars.iv951 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %indvars.iv.next952.3, %.lr.ph823 ] ; 6 uses
  %niter1166 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %niter1166.next.3, %.lr.ph823 ]
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv951
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !147
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv951 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !77
  %i.la = fsub double %i.kz, %i.kn
  store double %i.la, ptr %i.ky, align 8, !tbaa !77
  %indvars.iv.next952 = or disjoint i64 %indvars.iv951, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next952
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !147
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next952 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !77
  %i.lf = fsub double %i.le, %i.kn
  store double %i.lf, ptr %i.ld, align 8, !tbaa !77
  %indvars.iv.next952.1 = or disjoint i64 %indvars.iv951, 2 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next952.1
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !147
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next952.1 ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !77
  %i.lk = fsub double %i.lj, %i.kn
  store double %i.lk, ptr %i.li, align 8, !tbaa !77
  %indvars.iv.next952.2 = or disjoint i64 %indvars.iv951, 3 ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next952.2
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !147
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next952.2 ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !77
  %i.lp = fsub double %i.lo, %i.kn
  store double %i.lp, ptr %i.ln, align 8, !tbaa !77
  %indvars.iv.next952.3 = add nuw nsw i64 %indvars.iv951, 4 ; 2 uses
  %niter1166.next.3 = add i64 %niter1166, 4       ; 2 uses
  %niter1166.ncmp.3 = icmp eq i64 %niter1166.next.3, %unroll_iter1165
  br i1 %niter1166.ncmp.3, label %._crit_edge824.unr-lcssa, label %.lr.ph823, !llvm.loop !350

bb.r:                                             ; preds = %9, %.thread1095, %bb.q, %._crit_edge824
  %.3621 = phi double [ %.0618877, %9 ], [ %i.kv, %._crit_edge824 ], [ %.0618877, %bb.q ], [ %i.ip, %.thread1095 ] ; 3 uses
  %.2596 = phi double [ %7, %9 ], [ f0x3FEED916872B020C, %._crit_edge824 ], [ %7, %bb.q ], [ %i.jh, %.thread1095 ] ; 2 uses
  %.3593 = phi double [ %.0590, %9 ], [ f0x3FEED916872B020C, %._crit_edge824 ], [ %.0590, %bb.q ], [ %i.jh, %.thread1095 ]
  %.3589 = phi double [ %.0586, %9 ], [ f0x3FEED916872B020C, %._crit_edge824 ], [ %.0586, %bb.q ], [ %i.jj, %.thread1095 ]
  %i.lq = add nsw i32 %.0609878, 1                ; 3 uses
  %.not665 = icmp slt i32 %.0609878, %i.b
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
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

bb.w:                                             ; preds = %bb.t
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lt = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %bb.w
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !34
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678, %bb.v
  %.pn673 = phi { ptr, i32 } [ %i.lr, %bb.v ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678 ], [ %i.ls, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ci

bb.x:                                             ; preds = %bb.r
  %i.ly = add nsw i32 %.0773875, -2               ; 3 uses
  %.not666825 = icmp slt i32 %i.ly, %.us-phi
  br i1 %.not666825, label %.thread, label %.lr.ph828

.lr.ph828:                                        ; preds = %bb.x
  %i.lz = fneg double %.3589
  %i.ma = zext nneg i32 %i.ly to i64              ; 3 uses
  %sext = zext nneg i32 %.us-phi to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ma
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147 ; 2 uses
  %.phi.trans.insert1059 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ma
  %.pre1060 = load double, ptr %.phi.trans.insert1059, align 8, !tbaa !77
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph828
  %i.mb = phi double [ %.pre1060, %.lr.ph828 ], [ %i.ny, %bb.z ] ; 4 uses
  %i.mc = phi ptr [ %.pre, %.lr.ph828 ], [ %i.nw, %bb.z ] ; 2 uses
  %indvars.iv956 = phi i64 [ %i.ma, %.lr.ph828 ], [ %indvars.iv.next957, %bb.z ] ; 6 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv956
  %i.me = fsub double %.2596, %i.mb               ; 2 uses
  %i.mf = fsub double %.3593, %i.mb               ; 2 uses
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.me, double %i.mf, double %i.lz)
  %i.mh = add nuw nsw i64 %indvars.iv956, 1       ; 4 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !147 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv956
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !77
  %i.mm = fdiv double %i.mg, %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.mh
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !77
  %i.mp = fadd double %i.mm, %i.mo                ; 2 uses
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mh
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !77 ; 2 uses
  %i.ms = fsub double %i.mr, %i.mb
  %i.mt = fsub double %i.ms, %i.me
  %i.mu = fsub double %i.mt, %i.mf                ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !147
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mh
  %i.my = load double, ptr %i.mx, align 8, !tbaa !77 ; 2 uses
  %i.mz = tail call noundef double @llvm.fabs.f64(double %i.mp)
  %i.na = tail call noundef double @llvm.fabs.f64(double %i.mu)
  %i.nb = fadd double %i.mz, %i.na
  %i.nc = tail call noundef double @llvm.fabs.f64(double %i.my)
  %i.nd = fadd double %i.nc, %i.nb                ; 2 uses
  %i.ne = fdiv double %i.mu, %i.nd                ; 3 uses
  %i.nf = insertelement <2 x double> poison, double %i.my, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.mp, i64 1
  %i.nh = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fdiv <2 x double> %i.ng, %i.ni          ; 4 uses
  %i.nk = icmp eq i64 %indvars.iv956, %sext
  br i1 %i.nk, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next957 = add nsw i64 %indvars.iv956, -1 ; 4 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %indvars.iv.next957
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !77
  %i.nn = tail call noundef double @llvm.fabs.f64(double %i.nm)
  %i.no = tail call noundef double @llvm.fabs.f64(double %i.ne)
  %i.np = extractelement <2 x double> %i.nj, i64 0
  %i.nq = tail call noundef double @llvm.fabs.f64(double %i.np)
  %i.nr = fadd double %i.no, %i.nq
  %i.ns = fmul double %i.nr, %i.nn
  %i.nt = extractelement <2 x double> %i.nj, i64 1
  %i.nu = tail call noundef double @llvm.fabs.f64(double %i.nt)
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next957
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !147 ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %indvars.iv.next957
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !77 ; 2 uses
  %i.nz = tail call noundef double @llvm.fabs.f64(double %i.ny)
  %i.oa = tail call noundef double @llvm.fabs.f64(double %i.mb)
  %i.ob = fadd double %i.oa, %i.nz
  %i.oc = tail call noundef double @llvm.fabs.f64(double %i.mr)
  %i.od = fadd double %i.oc, %i.ob
  %i.oe = fmul double %i.nu, %i.od
  %i.of = fmul double %i.oe, f0x3CB0000000000000
  %i.og = fcmp olt double %i.ns, %i.of
  br i1 %i.og, label %.thread.loopexit.split.loop.exit, label %bb.y

.thread.loopexit.split.loop.exit:                 ; preds = %bb.z
  %i.oh = trunc nsw i64 %indvars.iv956 to i32
  br label %.thread

.thread:                                          ; preds = %bb.y, %.thread.loopexit.split.loop.exit, %bb.x
  %.0566.lcssa = phi i32 [ %i.ly, %bb.x ], [ %i.oh, %.thread.loopexit.split.loop.exit ], [ %.us-phi, %bb.y ] ; 8 uses
  %.1572 = phi double [ +qnan, %bb.x ], [ %i.ne, %.thread.loopexit.split.loop.exit ], [ %i.ne, %bb.y ]
  %i.oi = phi <2 x double> [ splat (double +qnan), %bb.x ], [ %i.nj, %.thread.loopexit.split.loop.exit ], [ %i.nj, %bb.y ]
  %i.oj = add nsw i32 %.0566.lcssa, 2             ; 2 uses
  %.not667843 = icmp sgt i32 %i.oj, %.0773875
  br i1 %.not667843, label %.preheader808, label %.lr.ph845.preheader

.lr.ph845.preheader:                              ; preds = %.thread
  %i.ok = sext i32 %.0566.lcssa to i64            ; 3 uses
  %i.ol = add nsw i64 %i.ok, 2                    ; 3 uses
  %i.om = sext i32 %i.oj to i64                   ; 4 uses
  %i.on = add nuw nsw i32 %.0773875, 1            ; 2 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ol
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !147
  %i.oq = getelementptr [8 x i8], ptr %i.op, i64 %i.ol ; 2 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 -16
  store double 0.000000e+00, ptr %i.or, align 8, !tbaa !77
  %i.os = icmp sgt i64 %i.ol, %i.om
  br i1 %i.os, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph845.preheader
  %i.ot = getelementptr i8, ptr %i.oq, i64 -24
  store double 0.000000e+00, ptr %i.ot, align 8, !tbaa !77
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph845.preheader
  %indvars.iv.next960.peel = add nsw i64 %i.ok, 3 ; 5 uses
  %lftr.wideiv.peel = trunc i64 %indvars.iv.next960.peel to i32
  %exitcond962.peel.not = icmp eq i32 %i.on, %lftr.wideiv.peel
  br i1 %exitcond962.peel.not, label %.preheader808, label %.lr.ph845.preheader1151

.lr.ph845.preheader1151:                          ; preds = %bb.ab
  %i.ou = sub i32 %.0773875, %.0566.lcssa
  %i.ov = add i32 %.0773875, -3
  %xtraiter1173 = and i32 %i.ou, 1
  %lcmp.mod1174.not = icmp eq i32 %xtraiter1173, 0
  br i1 %lcmp.mod1174.not, label %.lr.ph845.prol.loopexit, label %.lr.ph845.prol

.lr.ph845.prol:                                   ; preds = %.lr.ph845.preheader1151
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next960.peel
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !147
  %i.oy = getelementptr [8 x i8], ptr %i.ox, i64 %indvars.iv.next960.peel ; 2 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 -16
  store double 0.000000e+00, ptr %i.oz, align 8, !tbaa !77
  %i.pa = icmp sgt i64 %indvars.iv.next960.peel, %i.om
  br i1 %i.pa, label %bb.ac, label %.lr.ph845.prol.loopexit.unr-lcssa

bb.ac:                                            ; preds = %.lr.ph845.prol
  %i.pb = getelementptr i8, ptr %i.oy, i64 -24
  store double 0.000000e+00, ptr %i.pb, align 8, !tbaa !77
  br label %.lr.ph845.prol.loopexit.unr-lcssa

.lr.ph845.prol.loopexit.unr-lcssa:                ; preds = %bb.ac, %.lr.ph845.prol
  %indvars.iv.next960.prol = add nsw i64 %i.ok, 4
  br label %.lr.ph845.prol.loopexit

.lr.ph845.prol.loopexit:                          ; preds = %.lr.ph845.prol.loopexit.unr-lcssa, %.lr.ph845.preheader1151
  %indvars.iv959.unr = phi i64 [ %indvars.iv.next960.peel, %.lr.ph845.preheader1151 ], [ %indvars.iv.next960.prol, %.lr.ph845.prol.loopexit.unr-lcssa ]
  %i.pc = icmp eq i32 %i.ov, %.0566.lcssa
  br i1 %i.pc, label %.preheader808, label %.lr.ph845

.preheader808:                                    ; preds = %.lr.ph845.prol.loopexit, %bb.af, %bb.ab, %.thread
  %i.pd = icmp slt i32 %.0566.lcssa, %.0773875
  br i1 %i.pd, label %.lr.ph864, label %.thread786

.lr.ph864:                                        ; preds = %.preheader808
  %.not670 = icmp eq i32 %.us-phi, %.0566.lcssa
  %i.pe = sext i32 %.0566.lcssa to i64            ; 4 uses
  %i.pf = add i32 %.0566.lcssa, 3
  %sext983 = sext i32 %i.ch to i64
  %wide.trip.count986 = zext nneg i32 %.0773875 to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pe
end_hunk_0
begin_hunk_1_@_ZN2cv23EigenvalueDecomposition4hqr2Ev:bb.a
  %i.rp = getelementptr [8 x i8], ptr %i.ro, i64 %i.pe
  %i.rq = getelementptr i8, ptr %i.rp, i64 -8     ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !77
  %i.rs = fneg double %i.rr
  store double %i.rs, ptr %i.rq, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %i.rt = fadd double %i.qz, %.0563               ; 3 uses
  %i.ru = fdiv double %.3574, %.0563              ; 3 uses
  %i.rv = fdiv double %i.rb, %.0563               ; 3 uses
  %i.rw = insertelement <2 x double> poison, double %i.rt, i64 0
  %i.rx = insertelement <2 x double> %i.rw, double %.3574, i64 1
  %i.ry = insertelement <2 x double> poison, double %.0563, i64 0
  %i.rz = insertelement <2 x double> %i.ry, double %i.rt, i64 1
  %i.sa = fdiv <2 x double> %i.rx, %i.rz          ; 7 uses
  %i.sb = fdiv double %i.rb, %i.rt                ; 4 uses
  %i.sc = icmp slt i64 %indvars.iv964, %i.m
  br i1 %i.sc, label %.lr.ph848, label %.preheader804

.lr.ph848:                                        ; preds = %bb.ar
  %i.sd = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv964 ; 3 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !147
  %i.sf = getelementptr i8, ptr %i.sd, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !147
  %i.sh = getelementptr i8, ptr %i.sd, i64 16
  %i.si = extractelement <2 x double> %i.sa, i64 0
  %i.sj = extractelement <2 x double> %i.sa, i64 1
  br label %bb.as

.preheader804:                                    ; preds = %bb.au, %bb.ar
  %i.sk = trunc i64 %indvars.iv964 to i32
  %i.sl = add i32 %i.sk, 3
  %.sroa.speculated704 = tail call i32 @llvm.smin.i32(i32 %i.sl, i32 %.0773875)
  %.not671850 = icmp slt i32 %.sroa.speculated704, 0
  br i1 %.not671850, label %.lr.ph856, label %.lr.ph852

.lr.ph852:                                        ; preds = %.preheader804
  %wide.trip.count976 = zext i32 %i.pt to i64
  %i.sm = extractelement <2 x double> %i.sa, i64 0
  %i.sn = extractelement <2 x double> %i.sa, i64 1
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph848, %bb.au
  %indvars.iv966 = phi i64 [ %indvars.iv964, %.lr.ph848 ], [ %indvars.iv.next967, %bb.au ] ; 4 uses
  %i.so = getelementptr inbounds [8 x i8], ptr %i.se, i64 %indvars.iv966 ; 3 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !77 ; 2 uses
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %indvars.iv966 ; 3 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !77
  %i.ss = tail call double @llvm.fmuladd.f64(double %i.sj, double %i.sr, double %i.sp) ; 2 uses
  br i1 %i.pu, label %._crit_edge1066, label %bb.at

._crit_edge1066:                                  ; preds = %bb.as
  %.pre1067.a = fneg double %i.ss
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.st = load ptr, ptr %i.sh, align 8, !tbaa !147
  %i.su = getelementptr inbounds [8 x i8], ptr %i.st, i64 %indvars.iv966 ; 2 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !77 ; 2 uses
  %i.sw = tail call double @llvm.fmuladd.f64(double %i.sb, double %i.sv, double %i.ss)
  %i.sx = fneg double %i.sw                       ; 2 uses
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.sx, double %i.rv, double %i.sv)
  store double %i.sy, ptr %i.su, align 8, !tbaa !77
  %.pre1061 = load double, ptr %i.so, align 8, !tbaa !77
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge1066, %bb.at
  %.pre-phi = phi double [ %.pre1067.a, %._crit_edge1066 ], [ %i.sx, %bb.at ] ; 2 uses
  %i.sz = phi double [ %i.sp, %._crit_edge1066 ], [ %.pre1061, %bb.at ]
  %i.ta = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.si, double %i.sz)
  store double %i.ta, ptr %i.so, align 8, !tbaa !77
  %i.tb = load double, ptr %i.sq, align 8, !tbaa !77
  %i.tc = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.ru, double %i.tb)
  store double %i.tc, ptr %i.sq, align 8, !tbaa !77
  %indvars.iv.next967 = add nsw i64 %indvars.iv966, 1 ; 2 uses
  %exitcond970.not = icmp eq i64 %indvars.iv.next967, %i.m
  br i1 %exitcond970.not, label %.preheader804, label %bb.as, !llvm.loop !353

.lr.ph856:                                        ; preds = %bb.ax, %.preheader804
  %i.td = load ptr, ptr %i.ab, align 8, !tbaa !297
  %i.te = extractelement <2 x double> %i.sa, i64 0
  %i.tf = extractelement <2 x double> %i.sa, i64 1
  %i.tg = insertelement <2 x double> poison, double %i.sb, i64 0
  br label %bb.ay

bb.av:                                            ; preds = %.lr.ph852, %bb.ax
  %indvars.iv971 = phi i64 [ 0, %.lr.ph852 ], [ %indvars.iv.next972, %bb.ax ] ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv971
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !147
  %i.tj = getelementptr [8 x i8], ptr %i.ti, i64 %indvars.iv964 ; 4 uses
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !77 ; 2 uses
  %i.tl = getelementptr i8, ptr %i.tj, i64 8      ; 2 uses
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !77 ; 2 uses
  %i.tn = fmul double %i.ru, %i.tm
  %i.to = tail call double @llvm.fmuladd.f64(double %i.sm, double %i.tk, double %i.tn) ; 3 uses
  br i1 %i.pu, label %._crit_edge1064, label %bb.aw

._crit_edge1064:                                  ; preds = %bb.av
  %.pre1070 = fneg double %i.to
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.tp = getelementptr i8, ptr %i.tj, i64 16     ; 2 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !77 ; 2 uses
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.tq, double %i.to) ; 2 uses
  %i.ts = fneg double %i.tr                       ; 2 uses
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.ts, double %i.sb, double %i.tq)
  store double %i.tt, ptr %i.tp, align 8, !tbaa !77
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge1064, %bb.aw
  %.pre-phi1071 = phi double [ %.pre1070, %._crit_edge1064 ], [ %i.ts, %bb.aw ]
  %.7 = phi double [ %i.to, %._crit_edge1064 ], [ %i.tr, %bb.aw ]
  %i.tu = fsub double %i.tk, %.7
  store double %i.tu, ptr %i.tj, align 8, !tbaa !77
  %i.tv = tail call double @llvm.fmuladd.f64(double %.pre-phi1071, double %i.sn, double %i.tm)
  store double %i.tv, ptr %i.tl, align 8, !tbaa !77
  %indvars.iv.next972 = add nuw nsw i64 %indvars.iv971, 1 ; 2 uses
  %exitcond977.not = icmp eq i64 %indvars.iv.next972, %wide.trip.count976
  br i1 %exitcond977.not, label %.lr.ph856, label %bb.av, !llvm.loop !354

bb.ay:                                            ; preds = %.lr.ph856, %bb.ba
  %indvars.iv978 = phi i64 [ 0, %.lr.ph856 ], [ %indvars.iv.next979, %bb.ba ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %indvars.iv978
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !147
  %i.ty = getelementptr [8 x i8], ptr %i.tx, i64 %indvars.iv964 ; 4 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !77 ; 2 uses
  %i.ua = getelementptr i8, ptr %i.ty, i64 8      ; 2 uses
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !77 ; 2 uses
  %i.uc = fmul double %i.ru, %i.ub
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.te, double %i.tz, double %i.uc) ; 3 uses
  br i1 %i.pu, label %._crit_edge1065, label %bb.az

._crit_edge1065:                                  ; preds = %bb.ay
  %.pre1068 = fneg double %i.ud
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ue = getelementptr i8, ptr %i.ty, i64 16     ; 2 uses
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !77 ; 2 uses
  %i.ug = tail call double @llvm.fmuladd.f64(double %i.rv, double %i.uf, double %i.ud) ; 2 uses
  %i.uh = fneg double %i.ug                       ; 2 uses
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.sb, double %i.uf)
  store double %i.ui, ptr %i.ue, align 8, !tbaa !77
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge1065, %bb.az
  %.pre-phi1069 = phi double [ %.pre1068, %._crit_edge1065 ], [ %i.uh, %bb.az ]
  %.9 = phi double [ %i.ud, %._crit_edge1065 ], [ %i.ug, %bb.az ] ; 2 uses
  %i.uj = fsub double %i.tz, %.9
  store double %i.uj, ptr %i.ty, align 8, !tbaa !77
  %i.uk = tail call double @llvm.fmuladd.f64(double %.pre-phi1069, double %i.tf, double %i.ub)
  store double %i.uk, ptr %i.ua, align 8, !tbaa !77
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 1 ; 2 uses
  %exitcond982.not = icmp eq i64 %indvars.iv.next979, %wide.trip.count
  br i1 %exitcond982.not, label %.thread777.loopexit, label %bb.ay, !llvm.loop !355

.thread777.loopexit:                              ; preds = %bb.ba
  %i.ul = insertelement <2 x double> %i.tg, double %.9, i64 1
  br label %.thread777

.thread777:                                       ; preds = %.thread777.loopexit, %bb.am
  %i.um = phi <2 x double> [ %i.rh, %bb.am ], [ %i.sa, %.thread777.loopexit ] ; 2 uses
  %i.un = phi <2 x double> [ %i.qw, %bb.am ], [ %i.ul, %.thread777.loopexit ]
  %indvars.iv.next965 = add nsw i64 %indvars.iv964, 1 ; 2 uses
  %indvars.iv.next975 = add i32 %indvars.iv974, 1
  %exitcond987.not = icmp eq i64 %indvars.iv.next965, %wide.trip.count986
  %i.uo = extractelement <2 x double> %i.um, i64 0
  %i.up = extractelement <2 x double> %i.um, i64 1
  br i1 %exitcond987.not, label %.thread786, label %bb.ag, !llvm.loop !356

.thread786:                                       ; preds = %.thread777, %bb.al, %.preheader808, %.loopexit806, %.preheader809.split.us.thread
  %.1774 = phi i32 [ %i.cg, %.preheader809.split.us.thread ], [ %i.ie, %.loopexit806 ], [ %.0773875, %.preheader808 ], [ %.0773875, %bb.al ], [ %.0773875, %.thread777 ] ; 2 uses
  %.4622 = phi double [ %.0618877, %.preheader809.split.us.thread ], [ %.0618877, %.loopexit806 ], [ %.3621, %.preheader808 ], [ %.3621, %bb.al ], [ %.3621, %.thread777 ]
  %.1610 = phi i32 [ 0, %.preheader809.split.us.thread ], [ 0, %.loopexit806 ], [ %i.lq, %.preheader808 ], [ %i.lq, %bb.al ], [ %i.lq, %.thread777 ]
  %i.uq = icmp sgt i32 %.1774, -1
  br i1 %i.uq, label %.preheader809, label %._crit_edge879, !llvm.loop !357

._crit_edge879:                                   ; preds = %.thread786
  %i.ur = fcmp olt double %.lcssa1159.lcssa, f0x3E80000000000000
  br i1 %i.ur, label %.loopexit, label %.lr.ph917

.lr.ph917:                                        ; preds = %._crit_edge879
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !298 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !299 ; 3 uses
  %i.uw = fmul double %.lcssa1159.lcssa, f0x3CB0000000000000 ; 2 uses
  %i.ux = add nsw i32 %i.a, -3
  %i.uy = add nsw i32 %i.a, -2
  %i.uz = zext nneg i32 %i.z to i64
  %i.va = zext nneg i32 %i.z to i64
  br label %bb.bb

.preheader794.lr.ph.split:                        ; preds = %bb.bc, %.loopexit800
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !297 ; 6 uses
  %i.vd = zext nneg i32 %i.z to i64
  %wide.trip.count1048 = zext nneg i32 %i.a to i64
  %xtraiter1202 = and i64 %wide.trip.count, 3     ; 3 uses
  %10 = icmp ult i32 %i.a, 4
  %unroll_iter1206 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod1204.not = icmp eq i64 %xtraiter1202, 0
  %lcmp.mod1205 = icmp ne i64 %xtraiter1202, 0
  br label %.preheader794

bb.bb:                                            ; preds = %.lr.ph917, %.loopexit800
  %indvar = phi i32 [ 0, %.lr.ph917 ], [ %indvar.next, %.loopexit800 ] ; 3 uses
  %indvars.iv1035 = phi i64 [ %i.va, %.lr.ph917 ], [ %indvars.iv.next1036, %.loopexit800 ] ; 39 uses
  %indvars.iv1030 = phi i64 [ %i.uz, %.lr.ph917 ], [ %indvars.iv.next1031, %.loopexit800 ] ; 2 uses
  %indvars.iv1023 = phi i32 [ %i.uy, %.lr.ph917 ], [ %indvars.iv.next1024, %.loopexit800 ] ; 2 uses
  %indvars.iv1010 = phi i32 [ %i.ux, %.lr.ph917 ], [ %indvars.iv.next1011, %.loopexit800 ] ; 2 uses
  %indvars.iv1006 = phi i32 [ %i.a, %.lr.ph917 ], [ %indvars.iv.next1007, %.loopexit800 ] ; 5 uses
  %i.ve = zext i32 %indvars.iv1023 to i64
  %i.vf = zext i32 %indvars.iv1010 to i64
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv1035
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !77 ; 6 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv1035
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !77 ; 22 uses
  %i.vk = fcmp oeq double %i.vj, 0.000000e+00
  br i1 %i.vk, label %bb.bc, label %bb.bm

bb.bc:                                            ; preds = %bb.bb
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1035
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !147
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv1035
  store double 1.000000e+00, ptr %i.vn, align 8, !tbaa !77
  %.not = icmp eq i64 %indvars.iv1035, 0
  br i1 %.not, label %.preheader794.lr.ph.split, label %.lr.ph914.preheader

.lr.ph914.preheader:                              ; preds = %bb.bc
  %i.vo = trunc nsw i64 %indvars.iv1035 to i32
  br label %.lr.ph914

.lr.ph914:                                        ; preds = %.lr.ph914.preheader, %.loopexit796
  %indvars.iv1032 = phi i64 [ %indvars.iv1030, %.lr.ph914.preheader ], [ %indvars.iv.next1033, %.loopexit796 ] ; 4 uses
  %indvars.iv1025 = phi i64 [ %i.ve, %.lr.ph914.preheader ], [ %indvars.iv.next1026, %.loopexit796 ] ; 2 uses
  %.0554910 = phi i32 [ %i.vo, %.lr.ph914.preheader ], [ %.1555, %.loopexit796 ] ; 4 uses
  %.0556909 = phi double [ +qnan, %.lr.ph914.preheader ], [ %.1557, %.loopexit796 ] ; 5 uses
  %.0558908 = phi double [ +qnan, %.lr.ph914.preheader ], [ %.1559, %.loopexit796 ] ; 6 uses
  %indvars.iv.next1033 = add nsw i64 %indvars.iv1032, -1 ; 8 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1033
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !147 ; 10 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.next1033
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !77
  %i.vt = fsub double %i.vs, %i.vh                ; 4 uses
  %i.vu = sext i32 %.0554910 to i64               ; 3 uses
  %.not661896 = icmp slt i64 %indvars.iv1035, %i.vu
  br i1 %.not661896, label %._crit_edge901, label %.lr.ph900.preheader

.lr.ph900.preheader:                              ; preds = %.lr.ph914
  %i.vv = sub i32 %indvars.iv1006, %.0554910
  %i.vw = add i32 %indvar, %.0554910
  %i.vx = sub i32 %i.z, %i.vw
  %xtraiter1189 = and i32 %i.vv, 3                ; 2 uses
  %lcmp.mod1190.not = icmp eq i32 %xtraiter1189, 0
  br i1 %lcmp.mod1190.not, label %.lr.ph900.prol.loopexit, label %.lr.ph900.prol

.lr.ph900.prol:                                   ; preds = %.lr.ph900.preheader, %.lr.ph900.prol
  %indvars.iv1018.prol = phi i64 [ %indvars.iv.next1019.prol, %.lr.ph900.prol ], [ %i.vu, %.lr.ph900.preheader ] ; 3 uses
  %.0552897.prol = phi double [ %i.we, %.lr.ph900.prol ], [ 0.000000e+00, %.lr.ph900.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph900.prol ], [ 0, %.lr.ph900.preheader ]
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %indvars.iv1018.prol
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !77
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1018.prol
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !147
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv1035
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !77
  %i.we = tail call double @llvm.fmuladd.f64(double %i.vz, double %i.wd, double %.0552897.prol) ; 3 uses
  %indvars.iv.next1019.prol = add nsw i64 %indvars.iv1018.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1189
  br i1 %prol.iter.cmp.not, label %.lr.ph900.prol.loopexit, label %.lr.ph900.prol, !llvm.loop !358

.lr.ph900.prol.loopexit:                          ; preds = %.lr.ph900.prol, %.lr.ph900.preheader
  %.lcssa1150.unr = phi double [ poison, %.lr.ph900.preheader ], [ %i.we, %.lr.ph900.prol ]
  %indvars.iv1018.unr = phi i64 [ %i.vu, %.lr.ph900.preheader ], [ %indvars.iv.next1019.prol, %.lr.ph900.prol ]
  %.0552897.unr = phi double [ 0.000000e+00, %.lr.ph900.preheader ], [ %i.we, %.lr.ph900.prol ]
  %i.wf = icmp ult i32 %i.vx, 3
  br i1 %i.wf, label %._crit_edge901, label %.lr.ph900

._crit_edge901:                                   ; preds = %.lr.ph900.prol.loopexit, %.lr.ph900, %.lr.ph914
  %.0552.lcssa = phi double [ 0.000000e+00, %.lr.ph914 ], [ %.lcssa1150.unr, %.lr.ph900.prol.loopexit ], [ %i.xk, %.lr.ph900 ] ; 3 uses
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv.next1033
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !77 ; 3 uses
  %i.wi = fcmp olt double %i.wh, 0.000000e+00
  br i1 %i.wi, label %.loopexit796, label %bb.bd

.lr.ph900:                                        ; preds = %.lr.ph900.prol.loopexit, %.lr.ph900
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019.3, %.lr.ph900 ], [ %indvars.iv1018.unr, %.lr.ph900.prol.loopexit ] ; 6 uses
  %.0552897 = phi double [ %i.xk, %.lr.ph900 ], [ %.0552897.unr, %.lr.ph900.prol.loopexit ]
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %indvars.iv1018
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !77
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv1018
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !147
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv1035
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !77
  %i.wp = tail call double @llvm.fmuladd.f64(double %i.wk, double %i.wo, double %.0552897)
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, 1 ; 2 uses
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %indvars.iv.next1019
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !77
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1019
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !147
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv1035
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !77
  %i.ww = tail call double @llvm.fmuladd.f64(double %i.wr, double %i.wv, double %i.wp)
  %indvars.iv.next1019.1 = add nsw i64 %indvars.iv1018, 2 ; 2 uses
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %indvars.iv.next1019.1
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !77
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1019.1
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !147
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %indvars.iv1035
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !77
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.wy, double %i.xc, double %i.ww)
  %indvars.iv.next1019.2 = add nsw i64 %indvars.iv1018, 3 ; 2 uses
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.vq, i64 %indvars.iv.next1019.2
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !77
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv.next1019.2
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !147
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %indvars.iv1035
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !77
  %i.xk = tail call double @llvm.fmuladd.f64(double %i.xf, double %i.xj, double %i.xd) ; 2 uses
  %indvars.iv.next1019.3 = add nsw i64 %indvars.iv1018, 4 ; 2 uses
  %lftr.wideiv1021.3 = trunc i64 %indvars.iv.next1019.3 to i32
  %exitcond1022.not.3 = icmp eq i32 %indvars.iv1006, %lftr.wideiv1021.3
  br i1 %exitcond1022.not.3, label %._crit_edge901, label %.lr.ph900, !llvm.loop !359

bb.bd:                                            ; preds = %._crit_edge901
  %i.xl = fcmp oeq double %i.wh, 0.000000e+00
  br i1 %i.xl, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.xm = fcmp une double %i.vt, 0.000000e+00
  %i.xn = fneg double %.0552.lcssa                ; 2 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv1035 ; 2 uses
  br i1 %i.xm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.xp = fdiv double %i.xn, %i.vt
  store double %i.xp, ptr %i.xo, align 8, !tbaa !77
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.xq = fdiv double %i.xn, %i.uw
  store double %i.xq, ptr %i.xo, align 8, !tbaa !77
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bd
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv1032
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !77 ; 3 uses
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1032
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !147 ; 3 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv.next1033
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !77
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv.next1033
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !77
  %i.xz = fsub double %i.xy, %i.vh
  %i.ya = fneg double %.0552.lcssa                ; 2 uses
  %i.yb = insertelement <2 x double> poison, double %i.wh, i64 0
  %i.yc = insertelement <2 x double> %i.yb, double %.0558908, i64 1 ; 2 uses
  %i.yd = insertelement <2 x double> %i.yc, double %i.ya, i64 1
  %i.ye = fmul <2 x double> %i.yc, %i.yd
  %i.yf = insertelement <2 x double> poison, double %i.xz, i64 0
  %i.yg = insertelement <2 x double> %i.yf, double %i.xs, i64 1 ; 2 uses
  %i.yh = insertelement <2 x double> %i.yg, double %.0556909, i64 1
  %i.yi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> %i.yh, <2 x double> %i.ye) ; 2 uses
  %i.yj = extractelement <2 x double> %i.yi, i64 0
  %i.yk = extractelement <2 x double> %i.yi, i64 1
  %i.yl = fdiv double %i.yk, %i.yj                ; 3 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv1035
  store double %i.yl, ptr %i.ym, align 8, !tbaa !77
  %i.yn = tail call noundef double @llvm.fabs.f64(double %i.xs)
  %i.yo = tail call noundef double @llvm.fabs.f64(double %.0558908)
  %i.yp = fcmp ogt double %i.yn, %i.yo
  br i1 %i.yp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.yq = fneg double %i.vt
  %i.yr = tail call double @llvm.fmuladd.f64(double %i.yq, double %i.yl, double %i.ya)
  %i.ys = fdiv double %i.yr, %i.xs
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1035
  store double %i.ys, ptr %i.yt, align 8, !tbaa !77
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.yu = fneg double %.0556909
  %i.yv = fneg double %i.xw
  %i.yw = tail call double @llvm.fmuladd.f64(double %i.yv, double %i.yl, double %i.yu)
  %i.yx = fdiv double %i.yw, %.0558908
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv1035
  store double %i.yx, ptr %i.yy, align 8, !tbaa !77
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bf, %bb.bg
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv1035
  %i.za = load double, ptr %i.yz, align 8, !tbaa !77
  %i.zb = tail call noundef double @llvm.fabs.f64(double %i.za) ; 3 uses
  %i.zc = fmul double %i.zb, f0x3CB0000000000000
  %i.zd = fmul double %i.zb, %i.zc
  %i.ze = fcmp ogt double %i.zd, 1.000000e+00
  %i.zf = trunc nuw nsw i64 %indvars.iv.next1033 to i32 ; 3 uses
  br i1 %i.ze, label %bb.bl, label %.loopexit796

bb.bl:                                            ; preds = %bb.bk
end_hunk_1
begin_hunk_2_@_ZN2cv23EigenvalueDecomposition4hqr2Ev:bb.a
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !147 ; 4 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv1012
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !77 ; 2 uses
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %indvars.iv1012
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !77
  %i.aev = fsub double %i.aeu, %i.vh              ; 3 uses
  %i.aew = fmul double %i.acq, %i.acq
  %i.aex = tail call double @llvm.fmuladd.f64(double %i.aev, double %i.aev, double %i.aew)
  %i.aey = tail call double @llvm.fmuladd.f64(double %i.abr, double %i.vj, double %i.aex) ; 2 uses
  %i.aez = fmul double %i.aev, 2.000000e+00
  %i.afa = fmul double %i.vj, %i.aez              ; 6 uses
  %i.afb = fcmp oeq double %i.aey, 0.000000e+00
  %i.afc = fcmp oeq double %i.afa, 0.000000e+00
  %or.cond = select i1 %i.afb, i1 %i.afc, i1 false
  br i1 %or.cond, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.afd = tail call noundef double @llvm.fabs.f64(double %i.aco)
  %i.afe = fadd double %i.abs, %i.afd
  %i.aff = tail call noundef double @llvm.fabs.f64(double %i.aeo)
  %i.afg = fadd double %i.afe, %i.aff
  %i.afh = tail call noundef double @llvm.fabs.f64(double %i.aes)
  %i.afi = fadd double %i.afg, %i.afh
  %i.afj = tail call noundef double @llvm.fabs.f64(double %.0548891)
  %i.afk = fadd double %i.afj, %i.afi
  %i.afl = fmul double %i.uw, %i.afk
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0539 = phi double [ %i.afl, %bb.by ], [ %i.aey, %bb.bx ] ; 5 uses
  %i.afm = fneg <2 x double> %i.acl               ; 3 uses
  %i.afn = insertelement <2 x double> poison, double %.0548891, i64 0
  %i.afo = shufflevector <2 x double> %i.afn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afp = fmul <2 x double> %i.afo, %i.afm
  %i.afq = insertelement <2 x double> poison, double %i.aeo, i64 0
  %i.afr = shufflevector <2 x double> %i.afq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afr, <2 x double> %i.abw, <2 x double> %i.afp)
  %i.aft = shufflevector <2 x double> %i.afs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.afu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abv, <2 x double> %i.acl, <2 x double> %i.aft) ; 5 uses
  %i.afv = getelementptr [8 x i8], ptr %.pre1063, i64 %indvars.iv1035 ; 2 uses
  %i.afw = getelementptr i8, ptr %i.afv, i64 -8   ; 2 uses
  %i.afx = tail call noundef double @llvm.fabs.f64(double %.0539)
  %i.afy = tail call noundef double @llvm.fabs.f64(double %i.afa)
  %i.afz = fcmp ogt double %i.afx, %i.afy
  br i1 %i.afz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aga = fdiv double %i.afa, %.0539             ; 3 uses
  %i.agb = tail call double @llvm.fmuladd.f64(double %i.aga, double %i.afa, double %.0539)
  %i.agc = fneg double %i.aga
  %i.agd = insertelement <2 x double> poison, double %i.aga, i64 0
  %i.age = insertelement <2 x double> %i.agd, double %i.agc, i64 1
  %i.agf = shufflevector <2 x double> %i.afu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.age, <2 x double> %i.afu, <2 x double> %i.agf)
  %i.agh = insertelement <2 x double> poison, double %i.agb, i64 0
  %i.agi = shufflevector <2 x double> %i.agh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agj = fdiv <2 x double> %i.agg, %i.agi
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit687

bb.cb:                                            ; preds = %bb.bz
  %i.agk = fdiv double %.0539, %i.afa             ; 2 uses
  %i.agl = tail call double @llvm.fmuladd.f64(double %i.agk, double %.0539, double %i.afa)
  %i.agm = insertelement <2 x double> poison, double %i.agk, i64 0
  %i.agn = shufflevector <2 x double> %i.agm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ago = shufflevector <2 x double> %i.afu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agp = fneg <2 x double> %i.afu
  %i.agq = shufflevector <2 x double> %i.afu, <2 x double> %i.agp, <2 x i32> <i32 0, i32 3>
  %i.agr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agn, <2 x double> %i.ago, <2 x double> %i.agq)
  %i.ags = insertelement <2 x double> poison, double %i.agl, i64 0
  %i.agt = shufflevector <2 x double> %i.ags, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agu = fdiv <2 x double> %i.agr, %i.agt
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit687

_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit687: ; preds = %bb.ca, %bb.cb
  %i.agv = phi <2 x double> [ %i.agj, %bb.ca ], [ %i.agu, %bb.cb ] ; 4 uses
  store <2 x double> %i.agv, ptr %i.afw, align 8, !tbaa !77
  %i.agw = tail call noundef double @llvm.fabs.f64(double %i.aeo)
  %i.agx = tail call noundef double @llvm.fabs.f64(double %.0548891) ; 2 uses
  %i.agy = fadd double %i.abs, %i.agx
  %i.agz = fcmp ogt double %i.agw, %i.agy
  br i1 %i.agz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit687
  %i.aha = fneg double %i.aco                     ; 2 uses
  %i.ahb = extractelement <2 x double> %i.agv, i64 0
  %i.ahc = extractelement <2 x double> %i.afm, i64 0
  %i.ahd = tail call double @llvm.fmuladd.f64(double %i.aha, double %i.ahb, double %i.ahc)
  %i.ahe = extractelement <2 x double> %i.agv, i64 1
  %i.ahf = tail call double @llvm.fmuladd.f64(double %i.vj, double %i.ahe, double %i.ahd)
  %i.ahg = fdiv double %i.ahf, %i.aeo
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %i.zp
  store double %i.ahg, ptr %i.ahh, align 8, !tbaa !77
  %i.ahi = load double, ptr %i.afv, align 8, !tbaa !77
  %i.ahj = extractelement <2 x double> %i.afm, i64 1
  %i.ahk = tail call double @llvm.fmuladd.f64(double %i.aha, double %i.ahi, double %i.ahj)
  %i.ahl = load double, ptr %i.afw, align 8, !tbaa !77
  %i.ahm = tail call double @llvm.fmuladd.f64(double %i.abr, double %i.ahl, double %i.ahk)
  %i.ahn = fdiv double %i.ahm, %i.aeo
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.aeq, i64 %indvars.iv1035
  store double %i.ahn, ptr %i.aho, align 8, !tbaa !77
  br label %bb.cg

bb.cd:                                            ; preds = %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit687
  %i.ahp = fneg double %i.aes
  %i.ahq = fneg <2 x double> %i.abw
  %i.ahr = insertelement <2 x double> poison, double %i.ahp, i64 0
  %i.ahs = shufflevector <2 x double> %i.ahr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahs, <2 x double> %i.agv, <2 x double> %i.ahq) ; 5 uses
  %i.ahu = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %i.zp
  %i.ahv = fcmp ogt double %i.agx, %i.abs
  br i1 %i.ahv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ahw = fdiv double %i.vj, %.0548891           ; 3 uses
  %i.ahx = tail call double @llvm.fmuladd.f64(double %i.ahw, double %i.vj, double %.0548891)
  %i.ahy = fneg double %i.ahw
  %i.ahz = insertelement <2 x double> poison, double %i.ahy, i64 0
  %i.aia = insertelement <2 x double> %i.ahz, double %i.ahw, i64 1
  %i.aib = shufflevector <2 x double> %i.aht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aia, <2 x double> %i.aht, <2 x double> %i.aib)
  %i.aid = insertelement <2 x double> poison, double %i.ahx, i64 0
  %i.aie = shufflevector <2 x double> %i.aid, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aif = fdiv <2 x double> %i.aic, %i.aie
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit690

bb.cf:                                            ; preds = %bb.cd
  %i.aig = fdiv double %.0548891, %i.vj           ; 2 uses
  %i.aih = tail call double @llvm.fmuladd.f64(double %i.aig, double %.0548891, double %i.vj)
  %i.aii = insertelement <2 x double> poison, double %i.aig, i64 0
  %i.aij = shufflevector <2 x double> %i.aii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aik = shufflevector <2 x double> %i.aht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ail = fneg <2 x double> %i.aht
  %i.aim = shufflevector <2 x double> %i.ail, <2 x double> %i.aht, <2 x i32> <i32 0, i32 3>
  %i.ain = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aij, <2 x double> %i.aik, <2 x double> %i.aim)
  %i.aio = insertelement <2 x double> poison, double %i.aih, i64 0
  %i.aip = shufflevector <2 x double> %i.aio, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiq = fdiv <2 x double> %i.ain, %i.aip
  br label %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit690

_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit690: ; preds = %bb.ce, %bb.cf
  %i.air = phi <2 x double> [ %i.aif, %bb.ce ], [ %i.aiq, %bb.cf ]
  %i.ais = shufflevector <2 x double> %i.air, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ais, ptr %i.ahu, align 8, !tbaa !77
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cc, %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit690, %_ZN2cv23EigenvalueDecomposition11complex_divEddddRdS1_.exit684
  %i.ait = getelementptr [8 x i8], ptr %.pre1063, i64 %indvars.iv1035
  %i.aiu = getelementptr i8, ptr %i.ait, i64 -8
  %i.aiv = load <2 x double>, ptr %i.aiu, align 8, !tbaa !77
  %i.aiw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aiv) ; 2 uses
  %i.aix = extractelement <2 x double> %i.aiw, i64 0 ; 2 uses
  %i.aiy = extractelement <2 x double> %i.aiw, i64 1 ; 2 uses
  %i.aiz = fcmp olt double %i.aix, %i.aiy
  %.sroa.speculated701 = select i1 %i.aiz, double %i.aiy, double %i.aix ; 3 uses
  %i.aja = fmul double %.sroa.speculated701, f0x3CB0000000000000
  %i.ajb = fmul double %.sroa.speculated701, %i.aja
  %i.ajc = fcmp ule double %i.ajb, 1.000000e+00
  %.not660888 = icmp sgt i64 %indvars.iv1012, %indvars.iv1035
  %or.cond928 = or i1 %i.ajc, %.not660888
  %i.ajd = trunc nuw nsw i64 %indvars.iv1012 to i32 ; 2 uses
  br i1 %or.cond928, label %.loopexit798, label %.lr.ph890.preheader

.lr.ph890.preheader:                              ; preds = %bb.cg
  %i.aje = insertelement <2 x double> poison, double %.sroa.speculated701, i64 0
  %i.ajf = shufflevector <2 x double> %i.aje, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph890

.lr.ph890:                                        ; preds = %.lr.ph890.preheader, %.lr.ph890
  %indvars.iv1014 = phi i64 [ %indvars.iv.next1015, %.lr.ph890 ], [ %indvars.iv1012, %.lr.ph890.preheader ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1014
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !147
  %i.aji = getelementptr [8 x i8], ptr %i.ajh, i64 %indvars.iv1035
  %i.ajj = getelementptr i8, ptr %i.aji, i64 -8   ; 2 uses
  %i.ajk = load <2 x double>, ptr %i.ajj, align 8, !tbaa !77
  %i.ajl = fdiv <2 x double> %i.ajk, %i.ajf
  store <2 x double> %i.ajl, ptr %i.ajj, align 8, !tbaa !77
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 1
  %sext1092 = shl i64 %indvars.iv1014, 32
  %i.ajm = ashr exact i64 %sext1092, 32
  %.not660.not = icmp slt i64 %i.ajm, %indvars.iv1035
  br i1 %.not660.not, label %.lr.ph890, label %.loopexit798, !llvm.loop !363

.loopexit798:                                     ; preds = %.lr.ph890, %bb.cg, %._crit_edge885
  %.1549 = phi double [ %i.aco, %._crit_edge885 ], [ %.0548891, %bb.cg ], [ %.0548891, %.lr.ph890 ]
  %.1 = phi i32 [ %.0543894, %._crit_edge885 ], [ %i.ajd, %bb.cg ], [ %i.ajd, %.lr.ph890 ]
  %i.ajn = phi <2 x double> [ %i.acl, %._crit_edge885 ], [ %i.abw, %bb.cg ], [ %i.abw, %.lr.ph890 ]
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, -1
  %i.ajo = icmp sgt i64 %indvars.iv1012, 0
  br i1 %i.ajo, label %.preheader799, label %.loopexit800, !llvm.loop !364

.loopexit800:                                     ; preds = %.loopexit798, %.loopexit796, %bb.bs, %bb.bm
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, -1
  %indvars.iv.next1031 = add nsw i64 %indvars.iv1030, -1
  %i.ajp = icmp sgt i64 %indvars.iv1035, 0
  %indvars.iv.next1007 = add i32 %indvars.iv1006, -1
  %indvars.iv.next1011 = add i32 %indvars.iv1010, -1
  %indvars.iv.next1024 = add i32 %indvars.iv1023, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ajp, label %bb.bb, label %.preheader794.lr.ph.split, !llvm.loop !365

.preheader794:                                    ; preds = %.preheader794.lr.ph.split, %._crit_edge926
  %indvar1192 = phi i32 [ 0, %.preheader794.lr.ph.split ], [ %indvar.next1193, %._crit_edge926 ] ; 2 uses
  %indvars.iv1056 = phi i64 [ %i.vd, %.preheader794.lr.ph.split ], [ %indvars.iv.next1057, %._crit_edge926 ] ; 13 uses
  %11 = sub i32 %i.z, %indvar1192
  %smin1194 = tail call i32 @llvm.smin.i32(i32 %11, i32 %i.z) ; 2 uses
  %12 = add i32 %smin1194, 1
  %13 = zext i32 %12 to i64                       ; 2 uses
  %14 = trunc nuw i64 %indvars.iv1056 to i32      ; 2 uses
  %smin1041 = tail call i32 @llvm.smin.i32(i32 %14, i32 %i.z)
  %.not658918 = icmp slt i32 %smin1041, 0
  br i1 %.not658918, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader794
  br i1 %10, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051.3, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %niter1207 = phi i64 [ %niter1207.next.3, %.preheader.us ], [ 0, %.preheader.us.preheader ]
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1050
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !147
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv1056
  store double 0.000000e+00, ptr %i.ajs, align 8, !tbaa !77
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1050
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !147
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.ajv, i64 %indvars.iv1056
  store double 0.000000e+00, ptr %i.ajw, align 8, !tbaa !77
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1050
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !147
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %indvars.iv1056
  store double 0.000000e+00, ptr %i.aka, align 8, !tbaa !77
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1050
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !147
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.akd, i64 %indvars.iv1056
  store double 0.000000e+00, ptr %i.ake, align 8, !tbaa !77
  %indvars.iv.next1051.3 = add nuw nsw i64 %indvars.iv1050, 4 ; 2 uses
  %niter1207.next.3 = add i64 %niter1207, 4       ; 2 uses
  %niter1207.ncmp.3 = icmp eq i64 %niter1207.next.3, %unroll_iter1206
  br i1 %niter1207.ncmp.3, label %._crit_edge926.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !366

.preheader.lr.ph.split:                           ; preds = %.preheader794
  %xtraiter1195 = and i64 %13, 3                  ; 3 uses
  %15 = icmp ult i32 %smin1194, 3
  %unroll_iter1200 = and i64 %13, 4294967292
  %lcmp.mod1197.not = icmp eq i64 %xtraiter1195, 0
  %lcmp.mod1199 = icmp ne i64 %xtraiter1195, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge922
  %indvars.iv1044 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next1045, %._crit_edge922 ] ; 2 uses
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1044
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !147 ; 6 uses
  br i1 %15, label %.epil.preheader1191, label %.preheader.new

._crit_edge926.loopexit.unr-lcssa:                ; preds = %.preheader.us
  br i1 %lcmp.mod1204.not, label %._crit_edge926, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge926.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv1050.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next1051.3, %._crit_edge926.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1205)
  br label %.preheader.us.epil.a

.preheader.us.epil.a:                             ; preds = %.preheader.us.epil.a, %.preheader.us.epil.preheader
  %indvars.iv1050.epil = phi i64 [ %indvars.iv.next1051.epil, %.preheader.us.epil.a ], [ %indvars.iv1050.epil.init, %.preheader.us.epil.preheader ] ; 2 uses
  %epil.iter1203 = phi i64 [ %epil.iter1203.next, %.preheader.us.epil.a ], [ 0, %.preheader.us.epil.preheader ]
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv1050.epil
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %indvars.iv1056
  store double 0.000000e+00, ptr %18, align 8, !tbaa !77
  %indvars.iv.next1051.epil = add nuw nsw i64 %indvars.iv1050.epil, 1
  %epil.iter1203.next = add i64 %epil.iter1203, 1 ; 2 uses
  %epil.iter1203.cmp.not = icmp eq i64 %epil.iter1203.next, %xtraiter1202
  br i1 %epil.iter1203.cmp.not, label %._crit_edge926, label %.preheader.us.epil.a, !llvm.loop !367

._crit_edge926:                                   ; preds = %._crit_edge922, %._crit_edge926.loopexit.unr-lcssa, %.preheader.us.epil.a
  %indvars.iv.next1057 = add nsw i64 %indvars.iv1056, -1
  %19 = icmp sgt i32 %14, 0
  %indvar.next1193 = add i32 %indvar1192, 1
  br i1 %19, label %.preheader794, label %.loopexit, !llvm.loop !368

._crit_edge922.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod1197.not, label %._crit_edge922, label %.epil.preheader1191

.epil.preheader1191:                              ; preds = %._crit_edge922.unr-lcssa, %.preheader
  %indvars.iv1038.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1039.3, %._crit_edge922.unr-lcssa ]
  %.0535919.epil.init = phi double [ 0.000000e+00, %.preheader ], [ %i.alq, %._crit_edge922.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1199)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.epil.preheader1191
  %indvars.iv1038.epil = phi i64 [ %indvars.iv1038.epil.init, %.epil.preheader1191 ], [ %indvars.iv.next1039.epil, %bb.ch ] ; 3 uses
  %.0535919.epil = phi double [ %.0535919.epil.init, %.epil.preheader1191 ], [ %i.akn, %bb.ch ]
  %epil.iter1196 = phi i64 [ 0, %.epil.preheader1191 ], [ %epil.iter1196.next, %bb.ch ]
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv1038.epil
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !77
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1038.epil
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !147
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %indvars.iv1056
  %i.akm = load double, ptr %i.akl, align 8, !tbaa !77
  %i.akn = tail call double @llvm.fmuladd.f64(double %i.aki, double %i.akm, double %.0535919.epil) ; 2 uses
  %indvars.iv.next1039.epil = add nuw nsw i64 %indvars.iv1038.epil, 1
  %epil.iter1196.next = add i64 %epil.iter1196, 1 ; 2 uses
  %epil.iter1196.cmp.not = icmp eq i64 %epil.iter1196.next, %xtraiter1195
  br i1 %epil.iter1196.cmp.not, label %._crit_edge922, label %bb.ch, !llvm.loop !369

._crit_edge922:                                   ; preds = %bb.ch, %._crit_edge922.unr-lcssa
  %.lcssa = phi double [ %i.alq, %._crit_edge922.unr-lcssa ], [ %i.akn, %bb.ch ]
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv1056
  store double %.lcssa, ptr %i.ako, align 8, !tbaa !77
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %exitcond1049.not = icmp eq i64 %indvars.iv.next1045, %wide.trip.count1048
  br i1 %exitcond1049.not, label %._crit_edge926, label %.preheader, !llvm.loop !366

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.0535919 = phi double [ %i.alq, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %niter1201 = phi i64 [ %niter1201.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv1038
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !77
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1038
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !147
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.aks, i64 %indvars.iv1056
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !77
  %i.akv = tail call double @llvm.fmuladd.f64(double %i.akq, double %i.aku, double %.0535919)
  %indvars.iv.next1039 = or disjoint i64 %indvars.iv1038, 1 ; 2 uses
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv.next1039
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !77
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1039
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !147
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akz, i64 %indvars.iv1056
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !77
  %i.alc = tail call double @llvm.fmuladd.f64(double %i.akx, double %i.alb, double %i.akv)
  %indvars.iv.next1039.1 = or disjoint i64 %indvars.iv1038, 2 ; 2 uses
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv.next1039.1
  %i.ale = load double, ptr %i.ald, align 8, !tbaa !77
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1039.1
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !147
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %indvars.iv1056
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !77
  %i.alj = tail call double @llvm.fmuladd.f64(double %i.ale, double %i.ali, double %i.alc)
  %indvars.iv.next1039.2 = or disjoint i64 %indvars.iv1038, 3 ; 2 uses
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.akg, i64 %indvars.iv.next1039.2
  %i.all = load double, ptr %i.alk, align 8, !tbaa !77
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next1039.2
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !147
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.aln, i64 %indvars.iv1056
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !77
  %i.alq = tail call double @llvm.fmuladd.f64(double %i.all, double %i.alp, double %i.alj) ; 3 uses
  %indvars.iv.next1039.3 = add nuw nsw i64 %indvars.iv1038, 4 ; 2 uses
  %niter1201.next.3 = add i64 %niter1201, 4       ; 2 uses
  %niter1201.ncmp.3 = icmp eq i64 %niter1201.next.3, %unroll_iter1200
  br i1 %niter1201.ncmp.3, label %._crit_edge922.unr-lcssa, label %.preheader.new, !llvm.loop !370

.loopexit:                                        ; preds = %._crit_edge926, %._crit_edge879
  ret void

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn673.pn = phi { ptr, i32 } [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn673.pn
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv23EigenvalueDecomposition7releaseEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !298
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !299  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !299
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !300  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !300
  %i.j = load i32, ptr %0, align 8, !tbaa !63
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

._crit_edge:                                      ; preds = %bb.n, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.p, label %bb.o

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !149  ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147  ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !297  ; 2 uses
  %.not13 = icmp eq ptr %i.u, null
  br i1 %.not13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %0, align 8, !tbaa !63
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.h, label %._crit_edge, !llvm.loop !371

bb.o:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  store ptr null, ptr %i.n, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !297 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.ab, align 8, !tbaa !297
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !372
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !373  ; 2 uses
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
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3
end_hunk_2
begin_hunk_3_@llvm.fabs.v2f64
!167 = distinct !{!167, !168, !"_ZNK2cv3Mat3rowEi: argument 0"}
!168 = distinct !{!168, !"_ZNK2cv3Mat3rowEi"}
!169 = distinct !{!169, !46}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!172 = distinct !{!172, !"_ZNK2cv11_InputArray6getMatEi"}
!173 = distinct !{null}
!174 = !{!175, !5, i64 8}
!175 = !{!"_ZTSN2cv11FileStorageE", !5, i64 8, !31, i64 16, !176, i64 48}
!176 = !{!"_ZTSN2cv3PtrINS_11FileStorage4ImplEEE", !177, i64 0}
!177 = !{!"_ZTSSt10shared_ptrIN2cv11FileStorage4ImplEE", !178, i64 0}
!178 = !{!"_ZTSSt12__shared_ptrIN2cv11FileStorage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !179, i64 0, !180, i64 8}
!179 = !{!"p1 _ZTSN2cv11FileStorage4ImplE", !13, i64 0}
!180 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !181, i64 0}
!181 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!182 = distinct !{null}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!185 = distinct !{!185, !"_ZNK2cv11_InputArray6getMatEi"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!188 = distinct !{!188, !"_ZNK2cv11_InputArray6getMatEi"}
!189 = !{!22, !5, i64 4}
!190 = distinct !{!190, !46}
!191 = !{!192, !194, i64 0}
!192 = !{!"_ZTSSt15_Rb_tree_header", !193, i64 0, !33, i64 32}
!193 = !{!"_ZTSSt18_Rb_tree_node_base", !194, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!194 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!195 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!196 = !{!192, !195, i64 8}
!197 = !{!192, !195, i64 16}
!198 = !{!192, !195, i64 24}
!199 = !{!192, !33, i64 32}
!200 = distinct !{!200, !46}
!201 = distinct !{!201, !46}
!202 = !{!203, !215, i64 240}
!203 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !204, i64 0, !212, i64 216, !6, i64 224, !213, i64 225, !214, i64 232, !215, i64 240, !216, i64 248, !217, i64 256}
!204 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !205, i64 24, !206, i64 28, !206, i64 32, !207, i64 40, !208, i64 48, !6, i64 64, !5, i64 192, !209, i64 200, !210, i64 208}
!205 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!206 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!207 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!208 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !33, i64 8}
!209 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!210 = !{!"_ZTSSt6locale", !211, i64 0}
!211 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!212 = !{!"p1 _ZTSSo", !13, i64 0}
!213 = !{!"bool", !6, i64 0}
!214 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!215 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!216 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!217 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!218 = !{!219, !6, i64 56}
!219 = !{!"_ZTSSt5ctypeIcE", !220, i64 0, !221, i64 16, !213, i64 24, !73, i64 32, !73, i64 40, !222, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!220 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!221 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!222 = !{!"p1 short", !13, i64 0}
!223 = distinct !{null, null}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!226 = distinct !{!226, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!227 = !{!228, !229, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !229, i64 0, !229, i64 8, !229, i64 16}
!229 = !{!"p1 _ZTSN2cv3MatE", !13, i64 0}
!230 = !{!228, !229, i64 16}
!231 = distinct !{!231, !46}
!232 = !{!228, !229, i64 8}
!233 = distinct !{null}
!234 = distinct !{!234, !46}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZNK2cv3Mat3rowEi: argument 0"}
!237 = distinct !{!237, !"_ZNK2cv3Mat3rowEi"}
!238 = distinct !{!238, !46}
!239 = distinct !{!239, !46}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNK2cv3Mat3rowEi: argument 0"}
!242 = distinct !{!242, !"_ZNK2cv3Mat3rowEi"}
!243 = distinct !{!243, !46}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!246 = distinct !{!246, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!249 = distinct !{!249, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!250 = distinct !{!250, !46}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!253 = distinct !{!253, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN2cvL7argsortERKNS_11_InputArrayEb: argument 0"}
!256 = distinct !{!256, !"_ZN2cvL7argsortERKNS_11_InputArrayEb"}
!257 = !{!258, !255}
!258 = distinct !{!258, !259, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!259 = distinct !{!259, !"_ZNK2cv11_InputArray6getMatEi"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNK2cv3MatcvSt6vectorIT_SaIS2_EEIiEEv: argument 0"}
!262 = distinct !{!262, !"_ZNK2cv3MatcvSt6vectorIT_SaIS2_EEIiEEv"}
!263 = distinct !{!263, !46}
!264 = !{!73, !73, i64 0}
!265 = !{!195, !195, i64 0}
!266 = distinct !{!266, !46}
!267 = distinct !{!267, !46}
!268 = distinct !{!268, !46}
!269 = distinct !{!269, !46}
!270 = !{!271, !5, i64 0}
!271 = !{!"_ZTSSt4pairIKiiE", !5, i64 0, !5, i64 4}
!272 = !{!271, !5, i64 4}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!275 = distinct !{!275, !"_ZNK2cv11_InputArray6getMatEi"}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!278 = distinct !{!278, !"_ZNK2cv11_InputArray6getMatEi"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!281 = distinct !{!281, !"_ZNK2cv11_InputArray6getMatEi"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_ZNK2cv3MatcvSt6vectorIT_SaIS2_EEIiEEv: argument 0"}
!284 = distinct !{!284, !"_ZNK2cv3MatcvSt6vectorIT_SaIS2_EEIiEEv"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!287 = distinct !{!287, !"_ZNK2cv11_InputArray6getMatEi"}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZNK2cv3Mat3colEi: argument 0"}
!290 = distinct !{!290, !"_ZNK2cv3Mat3colEi"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZNK2cv3Mat3colEi: argument 0"}
!293 = distinct !{!293, !"_ZNK2cv3Mat3colEi"}
!294 = distinct !{!294, !46}
!295 = distinct !{!295, !46}
!296 = distinct !{!296, !80}
!297 = !{!64, !66, i64 32}
!298 = !{!64, !65, i64 8}
!299 = !{!64, !65, i64 16}
!300 = !{!64, !65, i64 24}
!301 = distinct !{!301, !46, !151, !152}
!302 = distinct !{!302, !80}
!303 = distinct !{!303, !46, !151, !152}
!304 = distinct !{!304, !80}
!305 = distinct !{!305, !46, !151}
!306 = distinct !{!306, !46}
!307 = distinct !{!307, !46, !151}
!308 = distinct !{!308, !80}
!309 = distinct !{!309, !46}
!310 = distinct !{!310, !80}
!311 = distinct !{!311, !46}
!312 = distinct !{!312, !46}
!313 = distinct !{!313, !80}
!314 = distinct !{!314, !46}
!315 = distinct !{!315, !46}
!316 = distinct !{!316, !46}
!317 = distinct !{!317, !80}
!318 = !{!319}
!319 = distinct !{!319, !320}
!320 = distinct !{!320, !"LVerDomain"}
!321 = !{!322}
!322 = distinct !{!322, !320}
!323 = distinct !{!323, !46, !151, !152}
!324 = distinct !{!324, !46}
!325 = distinct !{!325, !46}
!326 = distinct !{!326, !46, !151}
!327 = distinct !{!327, !46}
!328 = distinct !{!328, !46, !151, !152}
!329 = distinct !{!329, !46}
!330 = distinct !{!330, !46, !152, !151}
!331 = distinct !{!331, !46}
!332 = distinct !{!332, !46}
!333 = distinct !{!333, !46}
!334 = distinct !{!334, !46}
!335 = distinct !{!335, !46}
!336 = distinct !{!336, !46}
!337 = distinct !{!337, !46}
!338 = !{!339}
!339 = distinct !{!339, !340}
!340 = distinct !{!340, !"LVerDomain"}
!341 = !{!342}
!342 = distinct !{!342, !340}
!343 = distinct !{!343, !46, !151, !152}
!344 = distinct !{!344, !46, !151}
!345 = distinct !{!345, !46}
!346 = distinct !{!346, !46}
!347 = distinct !{!347, !80}
!348 = distinct !{!348, !46}
!349 = distinct !{!349, !80}
!350 = distinct !{!350, !46}
!351 = distinct !{!351, !46, !352}
!352 = !{!"llvm.loop.peeled.count", i32 1}
!353 = distinct !{!353, !46}
!354 = distinct !{!354, !46}
!355 = distinct !{!355, !46}
!356 = distinct !{!356, !46}
!357 = distinct !{!357, !46}
!358 = distinct !{!358, !80}
!359 = distinct !{!359, !46}
!360 = distinct !{!360, !46}
!361 = distinct !{!361, !46}
!362 = distinct !{!362, !46}
!363 = distinct !{!363, !46}
!364 = distinct !{!364, !46}
!365 = distinct !{!365, !46}
!366 = distinct !{!366, !46}
!367 = distinct !{!367, !80}
!368 = distinct !{!368, !46}
!369 = distinct !{!369, !80}
!370 = distinct !{!370, !46}
!371 = distinct !{!371, !46}
!372 = !{!193, !195, i64 24}
!373 = !{!193, !195, i64 16}
!374 = distinct !{!374, !46}
!375 = distinct !{!375, !46}
!376 = distinct !{!376, !46}
end_hunk_3
