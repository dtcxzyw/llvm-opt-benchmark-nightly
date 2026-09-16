Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/outer_hull_legacy?download=true
inline.NumInlined: 4238
inline.NumDeleted: 1631
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK4CGAL14Lazy_exact_MaxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv:bb.a
bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !225
  store ptr null, ptr %i.f, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  store ptr null, ptr %i.e, align 8, !tbaa !225
  store ptr null, ptr %i.f, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.s = icmp slt i32 %i.r, 0
  %..i.i.i = select i1 %i.s, ptr %i.q, ptr %i.j
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %..i.i.i)
          to label %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit unwind label %bb.k

_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !94
  %i.w = load double, ptr %i.t, align 16, !tbaa !94
  %i.x = fneg double %i.w
  %i.y = fcmp oeq double %i.v, %i.x
  br i1 %i.y, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1
  store <2 x double> %i.ae, ptr %i.t, align 16, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.l

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.af, %bb.k ], [ %i.o, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.j, %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ag release, align 16
  %i.ah = load ptr, ptr %i.b, align 16, !tbaa !93 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i10 = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i10, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #22, !inline_history !17
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ap = add nsw i32 %i.ak, -1
  store atomic i32 %i.ap, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.s, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.as = load ptr, ptr %i.b, align 16, !tbaa !93 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #22, !inline_history !17
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  store ptr null, ptr %i.b, align 16, !tbaa !93
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.l
  %i.ax = load ptr, ptr %i.k, align 16, !tbaa !93 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i2.i = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #22, !inline_history !17
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.x:                                             ; preds = %bb.v
  %i.bf = add nsw i32 %i.ba, -1
  store atomic i32 %i.bf, ptr %i.az monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.u
  br i1 %i.bb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = atomicrmw sub ptr %i.az, i32 1 release, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.aa, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.bi = load ptr, ptr %i.k, align 16, !tbaa !93 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #22, !inline_history !17
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  store ptr null, ptr %i.k, align 16, !tbaa !93
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #21

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3igl8copyleft4cgal17outer_hull_legacyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES6_NS4_IiLin1ELi1ELi0ELin1ELi1EEES7_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERNS3_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EEENKUlRKNS8_IS5_EERKS6_SV_E_clEST_SV_SV_ENKUlST_SV_E_clEST_SV_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.328") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store <2 x double> <double -1.000000e+26, double 1.000000e+26>, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store <2 x double> <double -1.000000e+26, double 1.000000e+26>, ptr %i.d, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store double -1.000000e+26, ptr %i.e, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !54
  %i.i = load ptr, ptr %2, align 8, !tbaa !180, !noalias !573 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228, !noalias !573 ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !181, !noalias !574 ; 18 uses
  %i.n = sdiv i64 9223372036854775807, %i.k
  %i.o = icmp slt i64 %i.n, 1
  %i.p = icmp sgt i64 %i.k, 0
  %i.q = shl nuw i64 %i.k, 3                      ; 3 uses
  br i1 %i.o, label %.noexc, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.r = icmp samesign ugt i64 %i.k, 2305843009213693951
  tail call void @llvm.assume(i1 %i.p)
  br i1 %i.r, label %.noexc55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.idx = shl i64 %i.g, 3
  %min.iters.check380 = icmp samesign ugt i64 %i.k, 3
  %ident.check378.not = icmp eq i64 %i.m, 1
  %or.cond = select i1 %min.iters.check380, i1 %ident.check378.not, i1 false
  %n.vec382 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n389 = icmp eq i64 %i.k, %n.vec382
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check366 = icmp samesign ugt i64 %i.k, 3
  %ident.check364.not = icmp eq i64 %i.m, 1
  %or.cond391 = select i1 %min.iters.check366, i1 %ident.check364.not, i1 false
  %n.vec368 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n375 = icmp eq i64 %i.k, %n.vec368
  %xtraiter406 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  %min.iters.check = icmp samesign ugt i64 %i.k, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond392 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.k, 2305843009213693948      ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %xtraiter409 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %.lcssa133265 = phi double [ %i.fw, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ -1.000000e+26, %.preheader.preheader ] ; 3 uses
  %.017256 = phi i64 [ %i.gc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.lcssa251255 = phi double [ %i.ft, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 1.000000e+26, %.preheader.preheader ] ; 3 uses
  %i.s = phi <2 x double> [ %i.gb, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double -1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.t = phi <2 x double> [ %i.fz, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double 1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.u = getelementptr [4 x i8], ptr %i.h, i64 %.017256 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w ; 6 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.noexc56.split.loop.exit426, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader
  br i1 %or.cond, label %vector.body383, label %.lr.ph.i.i.i.i.i.i.i.i.preheader395

vector.body383:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index384 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.x, i64 %index384 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load385 = load <2 x double>, ptr %i.ab, align 8, !tbaa !177
  %wide.load386 = load <2 x double>, ptr %i.ac, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load385, ptr %i.aa, align 8, !tbaa !177
  store <2 x double> %wide.load386, ptr %i.ad, align 8, !tbaa !177
  %index.next387 = add nuw i64 %index384, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.ae, label %middle.block388, label %vector.body383, !llvm.loop !563

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader395

.lr.ph.i.i.i.i.i.i.i.i.preheader395:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block388
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec382, %middle.block388 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader395, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ag = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !177
  store double %i.ai, ptr %i.af, align 8, !tbaa !177
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !564

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader395
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.k
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %i.am = extractelement <2 x double> %i.fz, i64 0
  store double %i.am, ptr %i.a, align 16
  %i.an = extractelement <2 x double> %i.fz, i64 1
  store double %i.an, ptr %i.b, align 16
  store double %i.fw, ptr %i.c, align 8
  %i.ao = extractelement <2 x double> %i.gb, i64 0
  store double %i.ao, ptr %i.d, align 8
  %i.ap = extractelement <2 x double> %i.gb, i64 1
  store double %i.ap, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa251.lcssa = phi double [ %i.ft, %._crit_edge ], [ 1.000000e+26, %bb.a ]
  store double %.lcssa251.lcssa, ptr %0, align 16
  ret void

.noexc:                                           ; preds = %.preheader.lr.ph
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %4 = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %4, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc55:                                         ; preds = %.preheader.lr.ph.split
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %5 = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %5, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc56.split.loop.exit:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  %i.aq = extractelement <2 x double> %i.ee, i64 0
  %i.ar = extractelement <2 x double> %i.ee, i64 1
  %i.as = extractelement <2 x double> %i.ec, i64 0
  %i.at = extractelement <2 x double> %i.ec, i64 1
  br label %.noexc56

.noexc56.split.loop.exit419:                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  %i.au = extractelement <2 x double> %i.ch, i64 0
  %i.av = extractelement <2 x double> %i.ch, i64 1
  %i.aw = extractelement <2 x double> %i.cf, i64 0
  %i.ax = extractelement <2 x double> %i.cf, i64 1
  br label %.noexc56

.noexc56.split.loop.exit426:                      ; preds = %.preheader
  %i.ay = extractelement <2 x double> %i.s, i64 0
  %i.az = extractelement <2 x double> %i.s, i64 1
  %i.ba = extractelement <2 x double> %i.t, i64 0
  %i.bb = extractelement <2 x double> %i.t, i64 1
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc56.split.loop.exit426, %.noexc56.split.loop.exit419, %.noexc56.split.loop.exit
  %.lcssa331 = phi double [ %i.av, %.noexc56.split.loop.exit419 ], [ %i.ar, %.noexc56.split.loop.exit ], [ %i.az, %.noexc56.split.loop.exit426 ]
  %.lcssa329 = phi double [ %i.au, %.noexc56.split.loop.exit419 ], [ %i.aq, %.noexc56.split.loop.exit ], [ %i.ay, %.noexc56.split.loop.exit426 ]
  %.lcssa327 = phi double [ %i.cc, %.noexc56.split.loop.exit419 ], [ %i.dz, %.noexc56.split.loop.exit ], [ %.lcssa133265, %.noexc56.split.loop.exit426 ]
  %.lcssa325 = phi double [ %i.ax, %.noexc56.split.loop.exit419 ], [ %i.at, %.noexc56.split.loop.exit ], [ %i.bb, %.noexc56.split.loop.exit426 ]
  %.lcssa323 = phi double [ %i.aw, %.noexc56.split.loop.exit419 ], [ %i.as, %.noexc56.split.loop.exit ], [ %i.ba, %.noexc56.split.loop.exit426 ]
  %.lcssa = phi double [ %i.bz, %.noexc56.split.loop.exit419 ], [ %i.dw, %.noexc56.split.loop.exit ], [ %.lcssa251255, %.noexc56.split.loop.exit426 ]
  store double %.lcssa323, ptr %i.a, align 16
  store double %.lcssa325, ptr %i.b, align 16
  store double %.lcssa327, ptr %i.c, align 8
  store double %.lcssa329, ptr %i.d, align 8
  store double %.lcssa331, ptr %i.e, align 8
  store double %.lcssa, ptr %0, align 16
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bc, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !177
  store double %i.bg, ptr %i.bd, align 8, !tbaa !177
  %i.bh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh
  %i.bj = mul nsw i64 %i.bh, %i.m
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !177
  store double %i.bl, ptr %i.bi, align 8, !tbaa !177
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bm
  %i.bo = mul nsw i64 %i.bm, %i.m
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !177
  store double %i.bq, ptr %i.bn, align 8, !tbaa !177
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.br
  %i.bt = mul nsw i64 %i.br, %i.m
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !177
  store double %i.bv, ptr %i.bs, align 8, !tbaa !177
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !565

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block388
  %i.bx = load double, ptr %i.y, align 8, !tbaa !177 ; 4 uses
  %i.by = fcmp olt double %i.bx, %.lcssa251255
  %i.bz = select i1 %i.by, double %i.bx, double %.lcssa251255 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.y, i64 8
  %i.cb = fcmp olt double %.lcssa133265, %i.bx
  %i.cc = select i1 %i.cb, double %i.bx, double %.lcssa133265 ; 3 uses
  %i.cd = load <2 x double>, ptr %i.ca, align 8, !tbaa !177 ; 4 uses
  %i.ce = fcmp olt <2 x double> %i.cd, %i.t
  %i.cf = select <2 x i1> %i.ce, <2 x double> %i.cd, <2 x double> %i.t ; 4 uses
  %i.cg = fcmp olt <2 x double> %i.s, %i.cd
  %i.ch = select <2 x i1> %i.cg, <2 x double> %i.cd, <2 x double> %i.s ; 4 uses
  tail call void @free(ptr noundef nonnull %i.y) #22
  %i.ci = getelementptr [4 x i8], ptr %i.u, i64 %i.g
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ck ; 6 uses
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.noexc56.split.loop.exit419, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.1.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  br i1 %or.cond391, label %vector.body369, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394

vector.body369:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %vector.body369
  %index370 = phi i64 [ %index.next373, %vector.body369 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index370 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %index370 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load371 = load <2 x double>, ptr %i.cp, align 8, !tbaa !177
  %wide.load372 = load <2 x double>, ptr %i.cq, align 8, !tbaa !177
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x double> %wide.load371, ptr %i.co, align 8, !tbaa !177
  store <2 x double> %wide.load372, ptr %i.cr, align 8, !tbaa !177
  %index.next373 = add nuw i64 %index370, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.cs, label %middle.block374, label %vector.body369, !llvm.loop !566

middle.block374:                                  ; preds = %vector.body369
  br i1 %cmp.n375, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394

.lr.ph.i.i.i.i.i.i.i.i.1.preheader394:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %middle.block374
  %.05.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ], [ %n.vec368, %middle.block374 ] ; 3 uses
  br i1 %lcmp.mod407.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.1.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394, %.lr.ph.i.i.i.i.i.i.i.i.1.prol
  %.05.i.i.i.i.i.i.i.i.1.prol = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ] ; 3 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i.1.prol
  %i.cu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, %i.m
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !177
  store double %i.cw, ptr %i.ct, align 8, !tbaa !177
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, 1 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol, !llvm.loop !567

.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394
  %.05.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ]
  %i.cy = sub nsw i64 %.05.i.i.i.i.i.i.i.i.1.ph, %i.k
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i.1
  %i.db = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1, %i.m
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !177
  store double %i.dd, ptr %i.da, align 8, !tbaa !177
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.de
  %i.dg = mul nsw i64 %i.de, %i.m
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !177
  store double %i.di, ptr %i.df, align 8, !tbaa !177
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dj
  %i.dl = mul nsw i64 %i.dj, %i.m
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !177
  store double %i.dn, ptr %i.dk, align 8, !tbaa !177
  %i.do = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.do
  %i.dq = mul nsw i64 %i.do, %i.m
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !177
  store double %i.ds, ptr %i.dp, align 8, !tbaa !177
  %i.dt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1.3 = icmp eq i64 %i.dt, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1, !llvm.loop !568

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1, %middle.block374
  %i.du = load double, ptr %i.cm, align 8, !tbaa !177 ; 4 uses
  %i.dv = fcmp olt double %i.du, %i.bz
  %i.dw = select i1 %i.dv, double %i.du, double %i.bz ; 3 uses
  %i.dx = getelementptr i8, ptr %i.cm, i64 8
  %i.dy = fcmp olt double %i.cc, %i.du
  %i.dz = select i1 %i.dy, double %i.du, double %i.cc ; 3 uses
  %i.ea = load <2 x double>, ptr %i.dx, align 8, !tbaa !177 ; 4 uses
  %i.eb = fcmp olt <2 x double> %i.ea, %i.cf
  %i.ec = select <2 x i1> %i.eb, <2 x double> %i.ea, <2 x double> %i.cf ; 4 uses
  %i.ed = fcmp olt <2 x double> %i.ch, %i.ea
  %i.ee = select <2 x i1> %i.ed, <2 x double> %i.ea, <2 x double> %i.ch ; 4 uses
  tail call void @free(ptr noundef nonnull %i.cm) #22
  %i.ef = getelementptr i8, ptr %i.u, i64 %.idx
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !58
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.eh ; 6 uses
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.noexc56.split.loop.exit, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.2.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  br i1 %or.cond392, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x double>, ptr %i.em, align 8, !tbaa !177
  %wide.load362 = load <2 x double>, ptr %i.en, align 8, !tbaa !177
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %wide.load, ptr %i.el, align 8, !tbaa !177
  store <2 x double> %wide.load362, ptr %i.eo, align 8, !tbaa !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393

.lr.ph.i.i.i.i.i.i.i.i.2.preheader393:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.2.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod410.not, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol

.lr.ph.i.i.i.i.i.i.i.i.2.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393, %.lr.ph.i.i.i.i.i.i.i.i.2.prol
  %.05.i.i.i.i.i.i.i.i.2.prol = phi i64 [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ], [ %.05.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393 ] ; 3 uses
  %prol.iter411 = phi i64 [ %prol.iter411.next, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393 ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.2.prol
  %i.er = mul nsw i64 %.05.i.i.i.i.i.i.i.i.2.prol, %i.m
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !177
  store double %i.et, ptr %i.eq, align 8, !tbaa !177
  %i.eu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2.prol, 1 ; 2 uses
  %prol.iter411.next = add i64 %prol.iter411, 1   ; 2 uses
  %prol.iter411.cmp.not = icmp eq i64 %prol.iter411.next, %xtraiter409
  br i1 %prol.iter411.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol, !llvm.loop !570

.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393
  %.05.i.i.i.i.i.i.i.i.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ]
  %i.ev = sub nsw i64 %.05.i.i.i.i.i.i.i.i.2.ph, %i.k
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.2
  %.05.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.fq, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %.05.i.i.i.i.i.i.i.i.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.05.i.i.i.i.i.i.i.i.2
  %i.ey = mul nsw i64 %.05.i.i.i.i.i.i.i.i.2, %i.m
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !177
  store double %i.fa, ptr %i.ex, align 8, !tbaa !177
  %i.fb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fb
  %i.fd = mul nsw i64 %i.fb, %i.m
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !177
  store double %i.ff, ptr %i.fc, align 8, !tbaa !177
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fg
  %i.fi = mul nsw i64 %i.fg, %i.m
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !177
  store double %i.fk, ptr %i.fh, align 8, !tbaa !177
  %i.fl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fl
  %i.fn = mul nsw i64 %i.fl, %i.m
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !177
  store double %i.fp, ptr %i.fm, align 8, !tbaa !177
  %i.fq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.2.3 = icmp eq i64 %i.fq, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.2.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2, !llvm.loop !571

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block
  %i.fr = load double, ptr %i.ej, align 8, !tbaa !177 ; 4 uses
  %i.fs = fcmp olt double %i.fr, %i.dw
  %i.ft = select i1 %i.fs, double %i.fr, double %i.dw ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ej, i64 8
  %i.fv = fcmp olt double %i.dz, %i.fr
  %i.fw = select i1 %i.fv, double %i.fr, double %i.dz ; 2 uses
  %i.fx = load <2 x double>, ptr %i.fu, align 8, !tbaa !177 ; 4 uses
  %i.fy = fcmp olt <2 x double> %i.fx, %i.ec
  %i.fz = select <2 x i1> %i.fy, <2 x double> %i.fx, <2 x double> %i.ec ; 3 uses
  %i.ga = fcmp olt <2 x double> %i.ee, %i.fx
  %i.gb = select <2 x i1> %i.ga, <2 x double> %i.fx, <2 x double> %i.ee ; 3 uses
  tail call void @free(ptr noundef nonnull %i.ej) #22
  %i.gc = add nuw i64 %.017256, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !572
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZN3igl8copyleft4cgal17outer_hull_legacyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_EEvRKNS3_10MatrixBaseIT_EERKNS7_IT0_EERNS3_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EEENKUlRKNS7_IS5_EERKS6_SU_E_clESS_SU_SU_ENKUlSS_SU_E_clESS_SU_(ptr dead_on_unwind noalias writable sret(%"class.Eigen::Matrix.328") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store <2 x double> <double -1.000000e+26, double 1.000000e+26>, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store <2 x double> <double -1.000000e+26, double 1.000000e+26>, ptr %i.d, align 8, !tbaa !177
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store double -1.000000e+26, ptr %i.e, align 8, !tbaa !177
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !54
  %i.i = load ptr, ptr %2, align 8, !tbaa !180, !noalias !589 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228, !noalias !589 ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !181, !noalias !590 ; 18 uses
  %i.n = sdiv i64 9223372036854775807, %i.k
  %i.o = icmp slt i64 %i.n, 1
  %i.p = icmp sgt i64 %i.k, 0
  %i.q = shl nuw i64 %i.k, 3                      ; 3 uses
  br i1 %i.o, label %.noexc, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.r = icmp samesign ugt i64 %i.k, 2305843009213693951
  tail call void @llvm.assume(i1 %i.p)
  br i1 %i.r, label %.noexc55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.idx = shl i64 %i.g, 3
  %min.iters.check380 = icmp samesign ugt i64 %i.k, 3
  %ident.check378.not = icmp eq i64 %i.m, 1
  %or.cond = select i1 %min.iters.check380, i1 %ident.check378.not, i1 false
  %n.vec382 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n389 = icmp eq i64 %i.k, %n.vec382
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check366 = icmp samesign ugt i64 %i.k, 3
  %ident.check364.not = icmp eq i64 %i.m, 1
  %or.cond391 = select i1 %min.iters.check366, i1 %ident.check364.not, i1 false
  %n.vec368 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n375 = icmp eq i64 %i.k, %n.vec368
  %xtraiter406 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  %min.iters.check = icmp samesign ugt i64 %i.k, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond392 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.k, 2305843009213693948      ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %xtraiter409 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %.lcssa133265 = phi double [ %i.fw, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ -1.000000e+26, %.preheader.preheader ] ; 3 uses
  %.017256 = phi i64 [ %i.gc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.lcssa251255 = phi double [ %i.ft, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 1.000000e+26, %.preheader.preheader ] ; 3 uses
  %i.s = phi <2 x double> [ %i.gb, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double -1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.t = phi <2 x double> [ %i.fz, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double 1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.u = getelementptr [4 x i8], ptr %i.h, i64 %.017256 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.w ; 6 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.noexc56.split.loop.exit426, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader
  br i1 %or.cond, label %vector.body383, label %.lr.ph.i.i.i.i.i.i.i.i.preheader395

vector.body383:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index384 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.x, i64 %index384 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load385 = load <2 x double>, ptr %i.ab, align 8, !tbaa !177
  %wide.load386 = load <2 x double>, ptr %i.ac, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load385, ptr %i.aa, align 8, !tbaa !177
  store <2 x double> %wide.load386, ptr %i.ad, align 8, !tbaa !177
  %index.next387 = add nuw i64 %index384, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.ae, label %middle.block388, label %vector.body383, !llvm.loop !579

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader395

.lr.ph.i.i.i.i.i.i.i.i.preheader395:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block388
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec382, %middle.block388 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader395, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ag = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !177
  store double %i.ai, ptr %i.af, align 8, !tbaa !177
  %i.aj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !580

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader395
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader395 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.k
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %i.am = extractelement <2 x double> %i.fz, i64 0
  store double %i.am, ptr %i.a, align 16
  %i.an = extractelement <2 x double> %i.fz, i64 1
  store double %i.an, ptr %i.b, align 16
  store double %i.fw, ptr %i.c, align 8
  %i.ao = extractelement <2 x double> %i.gb, i64 0
  store double %i.ao, ptr %i.d, align 8
  %i.ap = extractelement <2 x double> %i.gb, i64 1
  store double %i.ap, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa251.lcssa = phi double [ %i.ft, %._crit_edge ], [ 1.000000e+26, %bb.a ]
  store double %.lcssa251.lcssa, ptr %0, align 16
  ret void

.noexc:                                           ; preds = %.preheader.lr.ph
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %4 = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %4, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc55:                                         ; preds = %.preheader.lr.ph.split
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %5 = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %5, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc56.split.loop.exit:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  %i.aq = extractelement <2 x double> %i.ee, i64 0
  %i.ar = extractelement <2 x double> %i.ee, i64 1
  %i.as = extractelement <2 x double> %i.ec, i64 0
  %i.at = extractelement <2 x double> %i.ec, i64 1
  br label %.noexc56

.noexc56.split.loop.exit419:                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  %i.au = extractelement <2 x double> %i.ch, i64 0
  %i.av = extractelement <2 x double> %i.ch, i64 1
  %i.aw = extractelement <2 x double> %i.cf, i64 0
  %i.ax = extractelement <2 x double> %i.cf, i64 1
  br label %.noexc56

.noexc56.split.loop.exit426:                      ; preds = %.preheader
  %i.ay = extractelement <2 x double> %i.s, i64 0
  %i.az = extractelement <2 x double> %i.s, i64 1
  %i.ba = extractelement <2 x double> %i.t, i64 0
  %i.bb = extractelement <2 x double> %i.t, i64 1
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc56.split.loop.exit426, %.noexc56.split.loop.exit419, %.noexc56.split.loop.exit
  %.lcssa331 = phi double [ %i.av, %.noexc56.split.loop.exit419 ], [ %i.ar, %.noexc56.split.loop.exit ], [ %i.az, %.noexc56.split.loop.exit426 ]
  %.lcssa329 = phi double [ %i.au, %.noexc56.split.loop.exit419 ], [ %i.aq, %.noexc56.split.loop.exit ], [ %i.ay, %.noexc56.split.loop.exit426 ]
  %.lcssa327 = phi double [ %i.cc, %.noexc56.split.loop.exit419 ], [ %i.dz, %.noexc56.split.loop.exit ], [ %.lcssa133265, %.noexc56.split.loop.exit426 ]
  %.lcssa325 = phi double [ %i.ax, %.noexc56.split.loop.exit419 ], [ %i.at, %.noexc56.split.loop.exit ], [ %i.bb, %.noexc56.split.loop.exit426 ]
  %.lcssa323 = phi double [ %i.aw, %.noexc56.split.loop.exit419 ], [ %i.as, %.noexc56.split.loop.exit ], [ %i.ba, %.noexc56.split.loop.exit426 ]
  %.lcssa = phi double [ %i.bz, %.noexc56.split.loop.exit419 ], [ %i.dw, %.noexc56.split.loop.exit ], [ %.lcssa251255, %.noexc56.split.loop.exit426 ]
  store double %.lcssa323, ptr %i.a, align 16
  store double %.lcssa325, ptr %i.b, align 16
  store double %.lcssa327, ptr %i.c, align 8
  store double %.lcssa329, ptr %i.d, align 8
  store double %.lcssa331, ptr %i.e, align 8
  store double %.lcssa, ptr %0, align 16
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bc, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.05.i.i.i.i.i.i.i.i
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !177
  store double %i.bg, ptr %i.bd, align 8, !tbaa !177
  %i.bh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh
  %i.bj = mul nsw i64 %i.bh, %i.m
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !177
  store double %i.bl, ptr %i.bi, align 8, !tbaa !177
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bm
  %i.bo = mul nsw i64 %i.bm, %i.m
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !177
  store double %i.bq, ptr %i.bn, align 8, !tbaa !177
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.br
  %i.bt = mul nsw i64 %i.br, %i.m
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !177
  store double %i.bv, ptr %i.bs, align 8, !tbaa !177
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !581

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block388
  %i.bx = load double, ptr %i.y, align 8, !tbaa !177 ; 4 uses
  %i.by = fcmp olt double %i.bx, %.lcssa251255
  %i.bz = select i1 %i.by, double %i.bx, double %.lcssa251255 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.y, i64 8
  %i.cb = fcmp olt double %.lcssa133265, %i.bx
  %i.cc = select i1 %i.cb, double %i.bx, double %.lcssa133265 ; 3 uses
  %i.cd = load <2 x double>, ptr %i.ca, align 8, !tbaa !177 ; 4 uses
  %i.ce = fcmp olt <2 x double> %i.cd, %i.t
  %i.cf = select <2 x i1> %i.ce, <2 x double> %i.cd, <2 x double> %i.t ; 4 uses
  %i.cg = fcmp olt <2 x double> %i.s, %i.cd
  %i.ch = select <2 x i1> %i.cg, <2 x double> %i.cd, <2 x double> %i.s ; 4 uses
  tail call void @free(ptr noundef nonnull %i.y) #22
  %i.ci = getelementptr [4 x i8], ptr %i.u, i64 %i.g
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ck ; 6 uses
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.noexc56.split.loop.exit419, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.1.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  br i1 %or.cond391, label %vector.body369, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394

vector.body369:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %vector.body369
  %index370 = phi i64 [ %index.next373, %vector.body369 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index370 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %index370 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load371 = load <2 x double>, ptr %i.cp, align 8, !tbaa !177
  %wide.load372 = load <2 x double>, ptr %i.cq, align 8, !tbaa !177
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x double> %wide.load371, ptr %i.co, align 8, !tbaa !177
  store <2 x double> %wide.load372, ptr %i.cr, align 8, !tbaa !177
  %index.next373 = add nuw i64 %index370, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next373, %n.vec368
  br i1 %i.cs, label %middle.block374, label %vector.body369, !llvm.loop !582

middle.block374:                                  ; preds = %vector.body369
  br i1 %cmp.n375, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394

.lr.ph.i.i.i.i.i.i.i.i.1.preheader394:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %middle.block374
  %.05.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ], [ %n.vec368, %middle.block374 ] ; 3 uses
  br i1 %lcmp.mod407.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.1.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394, %.lr.ph.i.i.i.i.i.i.i.i.1.prol
  %.05.i.i.i.i.i.i.i.i.1.prol = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ] ; 3 uses
  %prol.iter408 = phi i64 [ %prol.iter408.next, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i.1.prol
  %i.cu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, %i.m
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !177
  store double %i.cw, ptr %i.ct, align 8, !tbaa !177
  %i.cx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, 1 ; 2 uses
  %prol.iter408.next = add i64 %prol.iter408, 1   ; 2 uses
  %prol.iter408.cmp.not = icmp eq i64 %prol.iter408.next, %xtraiter406
  br i1 %prol.iter408.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol, !llvm.loop !583

.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394
  %.05.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader394 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ]
  %i.cy = sub nsw i64 %.05.i.i.i.i.i.i.i.i.1.ph, %i.k
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.05.i.i.i.i.i.i.i.i.1
  %i.db = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1, %i.m
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !177
  store double %i.dd, ptr %i.da, align 8, !tbaa !177
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.de
  %i.dg = mul nsw i64 %i.de, %i.m
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !177
  store double %i.di, ptr %i.df, align 8, !tbaa !177
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dj
  %i.dl = mul nsw i64 %i.dj, %i.m
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !177
  store double %i.dn, ptr %i.dk, align 8, !tbaa !177
  %i.do = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.do
  %i.dq = mul nsw i64 %i.do, %i.m
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !177
  store double %i.ds, ptr %i.dp, align 8, !tbaa !177
  %i.dt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1.3 = icmp eq i64 %i.dt, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1, !llvm.loop !584

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1, %middle.block374
  %i.du = load double, ptr %i.cm, align 8, !tbaa !177 ; 4 uses
  %i.dv = fcmp olt double %i.du, %i.bz
  %i.dw = select i1 %i.dv, double %i.du, double %i.bz ; 3 uses
  %i.dx = getelementptr i8, ptr %i.cm, i64 8
  %i.dy = fcmp olt double %i.cc, %i.du
  %i.dz = select i1 %i.dy, double %i.du, double %i.cc ; 3 uses
  %i.ea = load <2 x double>, ptr %i.dx, align 8, !tbaa !177 ; 4 uses
  %i.eb = fcmp olt <2 x double> %i.ea, %i.cf
  %i.ec = select <2 x i1> %i.eb, <2 x double> %i.ea, <2 x double> %i.cf ; 4 uses
  %i.ed = fcmp olt <2 x double> %i.ch, %i.ea
  %i.ee = select <2 x i1> %i.ed, <2 x double> %i.ea, <2 x double> %i.ch ; 4 uses
  tail call void @free(ptr noundef nonnull %i.cm) #22
  %i.ef = getelementptr i8, ptr %i.u, i64 %.idx
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !58
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.eh ; 6 uses
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.q) #35 ; 10 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %.noexc56.split.loop.exit, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.2.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  br i1 %or.cond392, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader393

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <2 x double>, ptr %i.em, align 8, !tbaa !177
  %wide.load362 = load <2 x double>, ptr %i.en, align 8, !tbaa !177
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x double> %wide.load, ptr %i.el, align 8, !tbaa !177
  store <2 x double> %wide.load362, ptr %i.eo, align 8, !tbaa !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !585

middle.block:                                     ; preds = %vector.body
end_hunk_0
