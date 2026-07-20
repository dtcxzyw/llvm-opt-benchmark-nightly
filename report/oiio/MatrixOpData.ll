inline.NumInlined: 704
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN16OpenColorIO_v2_512MatrixOpData7cleanUpEd:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 14 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge68, label %.preheader58.lr.ph

.preheader58.lr.ph:                               ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %xtraiter = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.f, 1
  %unroll_iter = and i64 %i.f, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod83 = trunc i64 %i.f to i1
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.lr.ph, %bb.b
  %.062 = phi double [ 0.000000e+00, %.preheader58.lr.ph ], [ %.lcssa, %bb.b ] ; 2 uses
  %.05261 = phi i64 [ 0, %.preheader58.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.i = mul i64 %.05261, %i.f
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %i.i ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader58.new

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = fcmp ogt double %.lcssa, 1.000000e-04
  %i.l = select i1 %i.k, double %.lcssa, double 1.000000e-04
  %i.m = fmul double %i.l, f0x3E7AD7F29ABCAF48    ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !11
  %min.iters.check = icmp eq i64 %i.f, 1
  %n.vec = and i64 %i.f, -2                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader58.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader58
  %.160.epil.init = phi double [ %.062, %.preheader58 ], [ %i.ae, %.unr-lcssa ] ; 2 uses
  %.05459.epil.init = phi i64 [ 0, %.preheader58 ], [ %i.af, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %.05459.epil.init
  %i.p = load double, ptr %i.o, align 8, !tbaa !9
  %i.q = tail call double @llvm.fabs.f64(double %i.p) ; 2 uses
  %i.r = fcmp ogt double %.160.epil.init, %i.q
  %i.s = select i1 %i.r, double %.160.epil.init, double %i.q
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.ae, %.unr-lcssa ], [ %i.s, %.epil.preheader ] ; 3 uses
  %i.t = add nuw i64 %.05261, 1                   ; 2 uses
  %exitcond71.not = icmp eq i64 %i.t, %i.f
  br i1 %exitcond71.not, label %.preheader.lr.ph, label %.preheader58, !llvm.loop !142

.preheader58.new:                                 ; preds = %.preheader58, %.preheader58.new
  %.160 = phi double [ %i.ae, %.preheader58.new ], [ %.062, %.preheader58 ] ; 2 uses
  %.05459 = phi i64 [ %i.af, %.preheader58.new ], [ 0, %.preheader58 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader58.new ], [ 0, %.preheader58 ]
  %i.u = getelementptr [8 x i8], ptr %i.j, i64 %.05459
  %i.v = load double, ptr %i.u, align 8, !tbaa !9
  %i.w = tail call double @llvm.fabs.f64(double %i.v) ; 2 uses
  %i.x = fcmp ogt double %.160, %i.w
  %i.y = select i1 %i.x, double %.160, double %i.w ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.j, i64 %.05459
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !9
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab) ; 2 uses
  %i.ad = fcmp ogt double %i.y, %i.ac
  %i.ae = select i1 %i.ad, double %i.y, double %i.ac ; 3 uses
  %i.af = add nuw i64 %.05459, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader58.new, !llvm.loop !143

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.05564 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ax, %.loopexit ] ; 2 uses
  %i.ag = mul i64 %.05564, %i.f
  %invariant.gep = getelementptr [8 x i8], ptr %i.n, i64 %i.ag ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %pred.store.continue81
  %index = phi i64 [ %index.next, %pred.store.continue81 ], [ 0, %.preheader ] ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !9 ; 2 uses
  %i.ai = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load) ; 3 uses
  %i.aj = fsub <2 x double> %wide.load, %i.ai
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.al = fcmp olt <2 x double> %i.ak, %broadcast.splat ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  br i1 %i.am, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.an = extractelement <2 x double> %i.ai, i64 0
  store double %i.an, ptr %i.ah, align 8, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ao = extractelement <2 x i1> %i.al, i64 1
  br i1 %i.ao, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue
  %i.ap = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = extractelement <2 x double> %i.ai, i64 1
  store double %i.ar, ptr %i.aq, align 8, !tbaa !9
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %pred.store.continue81
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.05663.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.at = fcmp ogt double %1, 1.000000e-04
  %i.au = select i1 %i.at, double %1, double 1.000000e-04
  %i.av = fmul nnan double %i.au, f0x3E7AD7F29ABCAF48
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.e

.loopexit:                                        ; preds = %bb.d, %middle.block
  %i.ax = add nuw i64 %.05564, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ax, %i.f
  br i1 %exitcond73.not, label %.lr.ph, label %.preheader, !llvm.loop !145

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.05663 = phi i64 [ %i.bd, %bb.d ], [ %.05663.ph, %scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.05663 ; 2 uses
  %i.ay = load double, ptr %gep, align 8, !tbaa !9 ; 2 uses
  %i.az = tail call double @llvm.round.f64(double %i.ay) ; 2 uses
  %i.ba = fsub double %i.ay, %i.az
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp olt double %i.bb, %i.m
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %scalar.ph
  store double %i.az, ptr %gep, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %scalar.ph
  %i.bd = add nuw i64 %.05663, 1                  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.bd, %i.f
  br i1 %exitcond72.not, label %.loopexit, label %scalar.ph, !llvm.loop !150

._crit_edge68:                                    ; preds = %bb.g, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.05366 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.05366
  %i.bf = load double, ptr %i.be, align 8, !tbaa !9 ; 2 uses
  %i.bg = tail call double @llvm.round.f64(double %i.bf) ; 2 uses
  %i.bh = fsub double %i.bf, %i.bg
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp olt double %i.bi, %i.av
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN16OpenColorIO_v2_512MatrixOpData14setOffsetValueEmd(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 noundef %.05366, double noundef %i.bg)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = add nuw i64 %.05366, 1                  ; 2 uses
  %exitcond74.not = icmp eq i64 %i.bk, %i.f
  br i1 %exitcond74.not, label %._crit_edge68, label %bb.e, !llvm.loop !147
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_512MatrixOpData6equalsERKNS_6OpDataE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br i1 %i.a, label %bb.b, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = load i128, ptr %i.g, align 1
  %i.j = load i128, ptr %i.h, align 1
  %i.k = xor i128 %i.i, %i.j
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i128, ptr %i.l, align 1
  %i.o = load i128, ptr %i.m, align 1
  %i.p = xor i128 %i.n, %i.o
  %i.q = or i128 %i.k, %i.p
  %i.r = icmp ne i128 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = icmp eq ptr %0, %1
  br i1 %i.u, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.y = load i64, ptr %i.x, align 8, !tbaa !17
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp eq i64 %i.am, %i.as
  br i1 %i.at, label %bb.h, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %bb.h ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.au = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !9
  %i.av = load double, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !9
  %i.aw = fcmp oeq double %i.au, %i.av            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp ne ptr %i.ax, %i.ai
  %or.cond.not = select i1 %i.aw, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit, !llvm.loop !151

_ZNK16OpenColorIO_v2_56ArrayTIdEeqERKS1_.exit:    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.g ], [ true, %bb.h ], [ %i.aw, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_56OpData6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_512MatrixOpData10getCacheIDB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(260) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #28
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !152
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK16OpenColorIO_v2_56OpData5getIDB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !152
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

bb.g:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.k, %bb.j, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.p = load i32, ptr %i.o, align 8, !tbaa !65
  %i.q = invoke noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef %i.p)
          to label %bb.i unwind label %bb.h       ; 3 uses

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %2, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %2, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !153
  %i.x = or i32 %i.w, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef %i.x)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #27
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.q, i64 noundef %i.y)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %bb.j, %bb.k
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !162
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !152
  store i8 0, ptr %i.ab, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  invoke void @_ZN16OpenColorIO_v2_511CacheIDHashB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.ae, i64 noundef 128)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !152 ; 2 uses
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !152
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
          to label %.noexc21 unwind label %bb.u

.noexc21:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.ak = load ptr, ptr %4, align 8, !tbaa !59
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ak, i64 noundef %i.ag)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !48
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
