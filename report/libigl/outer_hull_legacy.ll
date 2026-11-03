Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/outer_hull_legacy?download=true
inline.NumInlined: 4238
inline.NumDeleted: 1631
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK4CGAL14Lazy_exact_MaxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv:bb.a
bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #36
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

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
  %i.aq = atomicrmw add ptr %i.aj, i32 -1 release, align 4
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
  %i.bg = atomicrmw add ptr %i.az, i32 -1 release, align 4
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
  %4 = icmp sgt i64 %i.k, 0
  %i.p = shl nuw i64 %i.k, 3                      ; 3 uses
  br i1 %i.o, label %.noexc, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.q = icmp samesign ugt i64 %i.k, 2305843009213693951
  tail call void @llvm.assume(i1 %4)
  br i1 %i.q, label %.noexc55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.idx = shl i64 %i.g, 3
  %min.iters.check234 = icmp samesign ugt i64 %i.k, 3
  %ident.check232.not = icmp eq i64 %i.m, 1
  %or.cond = select i1 %min.iters.check234, i1 %ident.check232.not, i1 false
  %n.vec236 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.k, %n.vec236
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check220 = icmp samesign ugt i64 %i.k, 3
  %ident.check218.not = icmp eq i64 %i.m, 1
  %or.cond245 = select i1 %min.iters.check220, i1 %ident.check218.not, i1 false
  %n.vec222 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n229 = icmp eq i64 %i.k, %n.vec222
  %xtraiter260 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  %min.iters.check = icmp samesign ugt i64 %i.k, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond246 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.k, 2305843009213693948      ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %xtraiter263 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %.lcssa133165 = phi double [ %i.fx, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ -1.000000e+26, %.preheader.preheader ] ; 3 uses
  %.017156 = phi i64 [ %i.gd, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.lcssa151155 = phi double [ %i.fu, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 1.000000e+26, %.preheader.preheader ] ; 3 uses
  %i.r = phi <2 x double> [ %i.gc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double -1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.s = phi <2 x double> [ %i.ga, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double 1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.t = getelementptr [4 x i8], ptr %i.h, i64 %.017156 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.v ; 6 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.p) #35 ; 10 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc56.split.loop.exit280, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader
  br i1 %or.cond, label %vector.body237, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249

vector.body237:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index238 ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %index238 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load239 = load <2 x double>, ptr %i.aa, align 8, !tbaa !177
  %wide.load240 = load <2 x double>, ptr %i.ab, align 8, !tbaa !177
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load239, ptr %i.z, align 8, !tbaa !177
  store <2 x double> %wide.load240, ptr %i.ac, align 8, !tbaa !177
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ad, label %middle.block242, label %vector.body237, !llvm.loop !563

middle.block242:                                  ; preds = %vector.body237
  br i1 %cmp.n243, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249

.lr.ph.i.i.i.i.i.i.i.i.preheader249:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader249, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.af = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !177
  store double %i.ah, ptr %i.ae, align 8, !tbaa !177
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !564

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader249
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.aj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.k
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %i.al = extractelement <2 x double> %i.ga, i64 0
  store double %i.al, ptr %i.a, align 16
  %i.am = extractelement <2 x double> %i.ga, i64 1
  store double %i.am, ptr %i.b, align 16
  store double %i.fx, ptr %i.c, align 8
  %i.an = extractelement <2 x double> %i.gc, i64 0
  store double %i.an, ptr %i.d, align 8
  %i.ao = extractelement <2 x double> %i.gc, i64 1
  store double %i.ao, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa151.lcssa = phi double [ %i.fu, %._crit_edge ], [ 1.000000e+26, %bb.a ]
  store double %.lcssa151.lcssa, ptr %0, align 16
  ret void

.noexc:                                           ; preds = %.preheader.lr.ph
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc55:                                         ; preds = %.preheader.lr.ph.split
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc56.split.loop.exit:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  %i.ar = extractelement <2 x double> %i.ef, i64 0
  %i.as = extractelement <2 x double> %i.ef, i64 1
  %i.at = extractelement <2 x double> %i.ed, i64 0
  %i.au = extractelement <2 x double> %i.ed, i64 1
  br label %.noexc56

.noexc56.split.loop.exit273:                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  %i.av = extractelement <2 x double> %i.ci, i64 0
  %i.aw = extractelement <2 x double> %i.ci, i64 1
  %i.ax = extractelement <2 x double> %i.cg, i64 0
  %i.ay = extractelement <2 x double> %i.cg, i64 1
  br label %.noexc56

.noexc56.split.loop.exit280:                      ; preds = %.preheader
  %i.az = extractelement <2 x double> %i.r, i64 0
  %i.ba = extractelement <2 x double> %i.r, i64 1
  %i.bb = extractelement <2 x double> %i.s, i64 0
  %i.bc = extractelement <2 x double> %i.s, i64 1
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc56.split.loop.exit280, %.noexc56.split.loop.exit273, %.noexc56.split.loop.exit
  %.lcssa185 = phi double [ %i.aw, %.noexc56.split.loop.exit273 ], [ %i.as, %.noexc56.split.loop.exit ], [ %i.ba, %.noexc56.split.loop.exit280 ]
  %.lcssa183 = phi double [ %i.av, %.noexc56.split.loop.exit273 ], [ %i.ar, %.noexc56.split.loop.exit ], [ %i.az, %.noexc56.split.loop.exit280 ]
  %.lcssa181 = phi double [ %i.cd, %.noexc56.split.loop.exit273 ], [ %i.ea, %.noexc56.split.loop.exit ], [ %.lcssa133165, %.noexc56.split.loop.exit280 ]
  %.lcssa179 = phi double [ %i.ay, %.noexc56.split.loop.exit273 ], [ %i.au, %.noexc56.split.loop.exit ], [ %i.bc, %.noexc56.split.loop.exit280 ]
  %.lcssa177 = phi double [ %i.ax, %.noexc56.split.loop.exit273 ], [ %i.at, %.noexc56.split.loop.exit ], [ %i.bb, %.noexc56.split.loop.exit280 ]
  %.lcssa = phi double [ %i.ca, %.noexc56.split.loop.exit273 ], [ %i.dx, %.noexc56.split.loop.exit ], [ %.lcssa151155, %.noexc56.split.loop.exit280 ]
  store double %.lcssa177, ptr %i.a, align 16
  store double %.lcssa179, ptr %i.b, align 16
  store double %.lcssa181, ptr %i.c, align 8
  store double %.lcssa183, ptr %i.d, align 8
  store double %.lcssa185, ptr %i.e, align 8
  store double %.lcssa, ptr %0, align 16
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i
  %i.bf = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !177
  store double %i.bh, ptr %i.be, align 8, !tbaa !177
  %i.bi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bi
  %i.bk = mul nsw i64 %i.bi, %i.m
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !177
  store double %i.bm, ptr %i.bj, align 8, !tbaa !177
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bn
  %i.bp = mul nsw i64 %i.bn, %i.m
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !177
  store double %i.br, ptr %i.bo, align 8, !tbaa !177
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bs
  %i.bu = mul nsw i64 %i.bs, %i.m
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !177
  store double %i.bw, ptr %i.bt, align 8, !tbaa !177
  %i.bx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !565

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block242
  %i.by = load double, ptr %i.x, align 8, !tbaa !177 ; 4 uses
  %i.bz = fcmp olt double %i.by, %.lcssa151155
  %i.ca = select i1 %i.bz, double %i.by, double %.lcssa151155 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.x, i64 8
  %i.cc = fcmp olt double %.lcssa133165, %i.by
  %i.cd = select i1 %i.cc, double %i.by, double %.lcssa133165 ; 3 uses
  %i.ce = load <2 x double>, ptr %i.cb, align 8, !tbaa !177 ; 4 uses
  %i.cf = fcmp olt <2 x double> %i.ce, %i.s
  %i.cg = select <2 x i1> %i.cf, <2 x double> %i.ce, <2 x double> %i.s ; 4 uses
  %i.ch = fcmp olt <2 x double> %i.r, %i.ce
  %i.ci = select <2 x i1> %i.ch, <2 x double> %i.ce, <2 x double> %i.r ; 4 uses
  tail call void @free(ptr noundef nonnull %i.x) #22
  %i.cj = getelementptr [4 x i8], ptr %i.t, i64 %i.g
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !58
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cl ; 6 uses
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.p) #35 ; 10 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.noexc56.split.loop.exit273, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.1.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  br i1 %or.cond245, label %vector.body223, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248

vector.body223:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %vector.body223
  %index224 = phi i64 [ %index.next227, %vector.body223 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index224 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %index224 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load225 = load <2 x double>, ptr %i.cq, align 8, !tbaa !177
  %wide.load226 = load <2 x double>, ptr %i.cr, align 8, !tbaa !177
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x double> %wide.load225, ptr %i.cp, align 8, !tbaa !177
  store <2 x double> %wide.load226, ptr %i.cs, align 8, !tbaa !177
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.ct, label %middle.block228, label %vector.body223, !llvm.loop !566

middle.block228:                                  ; preds = %vector.body223
  br i1 %cmp.n229, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248

.lr.ph.i.i.i.i.i.i.i.i.1.preheader248:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %middle.block228
  %.05.i.i.i.i.i.i.i.i.1.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ], [ %n.vec222, %middle.block228 ] ; 3 uses
  br i1 %lcmp.mod261.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.i.i.1.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248, %.lr.ph.i.i.i.i.i.i.i.i.1.prol
  %.05.i.i.i.i.i.i.i.i.1.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248 ] ; 3 uses
  %prol.iter262 = phi i64 [ %prol.iter262.next, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248 ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.i.1.prol
  %i.cv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, %i.m
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !177
  store double %i.cx, ptr %i.cu, align 8, !tbaa !177
  %i.cy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1.prol, 1 ; 2 uses
  %prol.iter262.next = add i64 %prol.iter262, 1   ; 2 uses
  %prol.iter262.cmp.not = icmp eq i64 %prol.iter262.next, %xtraiter260
  br i1 %prol.iter262.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.1.prol, !llvm.loop !567

.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248
  %.05.i.i.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.1.prol ]
  %i.cz = sub nsw i64 %.05.i.i.i.i.i.i.i.i.1.ph, %i.k
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.i.1
  %i.dc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.1, %i.m
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !177
  store double %i.de, ptr %i.db, align 8, !tbaa !177
  %i.df = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.df
  %i.dh = mul nsw i64 %i.df, %i.m
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !177
  store double %i.dj, ptr %i.dg, align 8, !tbaa !177
  %i.dk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  %i.dm = mul nsw i64 %i.dk, %i.m
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !177
  store double %i.do, ptr %i.dl, align 8, !tbaa !177
  %i.dp = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dp
  %i.dr = mul nsw i64 %i.dp, %i.m
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !177
  store double %i.dt, ptr %i.dq, align 8, !tbaa !177
  %i.du = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.1, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1.3 = icmp eq i64 %i.du, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1, !llvm.loop !568

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.1, %middle.block228
  %i.dv = load double, ptr %i.cn, align 8, !tbaa !177 ; 4 uses
  %i.dw = fcmp olt double %i.dv, %i.ca
  %i.dx = select i1 %i.dw, double %i.dv, double %i.ca ; 3 uses
  %i.dy = getelementptr i8, ptr %i.cn, i64 8
  %i.dz = fcmp olt double %i.cd, %i.dv
  %i.ea = select i1 %i.dz, double %i.dv, double %i.cd ; 3 uses
  %i.eb = load <2 x double>, ptr %i.dy, align 8, !tbaa !177 ; 4 uses
  %i.ec = fcmp olt <2 x double> %i.eb, %i.cg
  %i.ed = select <2 x i1> %i.ec, <2 x double> %i.eb, <2 x double> %i.cg ; 4 uses
  %i.ee = fcmp olt <2 x double> %i.ci, %i.eb
  %i.ef = select <2 x i1> %i.ee, <2 x double> %i.eb, <2 x double> %i.ci ; 4 uses
  tail call void @free(ptr noundef nonnull %i.cn) #22
  %i.eg = getelementptr i8, ptr %i.t, i64 %.idx
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !58
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ei ; 6 uses
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.p) #35 ; 10 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.noexc56.split.loop.exit, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.i.i.i.2.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  br i1 %or.cond246, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <2 x double>, ptr %i.en, align 8, !tbaa !177
  %wide.load216 = load <2 x double>, ptr %i.eo, align 8, !tbaa !177
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x double> %wide.load, ptr %i.em, align 8, !tbaa !177
  store <2 x double> %wide.load216, ptr %i.ep, align 8, !tbaa !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247

.lr.ph.i.i.i.i.i.i.i.i.2.preheader247:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.2.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod264.not, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol

.lr.ph.i.i.i.i.i.i.i.i.2.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247, %.lr.ph.i.i.i.i.i.i.i.i.2.prol
  %.05.i.i.i.i.i.i.i.i.2.prol = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ], [ %.05.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247 ] ; 3 uses
  %prol.iter265 = phi i64 [ %prol.iter265.next, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247 ]
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.05.i.i.i.i.i.i.i.i.2.prol
  %i.es = mul nsw i64 %.05.i.i.i.i.i.i.i.i.2.prol, %i.m
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !177
  store double %i.eu, ptr %i.er, align 8, !tbaa !177
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2.prol, 1 ; 2 uses
  %prol.iter265.next = add i64 %prol.iter265, 1   ; 2 uses
  %prol.iter265.cmp.not = icmp eq i64 %prol.iter265.next, %xtraiter263
  br i1 %prol.iter265.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.2.prol, !llvm.loop !570

.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247
  %.05.i.i.i.i.i.i.i.i.2.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.i.i.2.preheader247 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.2.prol ]
  %i.ew = sub nsw i64 %.05.i.i.i.i.i.i.i.i.2.ph, %i.k
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.2
  %.05.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i.i.2 ], [ %.05.i.i.i.i.i.i.i.i.2.unr, %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.05.i.i.i.i.i.i.i.i.2
  %i.ez = mul nsw i64 %.05.i.i.i.i.i.i.i.i.2, %i.m
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !177
  store double %i.fb, ptr %i.ey, align 8, !tbaa !177
  %i.fc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fc
  %i.fe = mul nsw i64 %i.fc, %i.m
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !177
  store double %i.fg, ptr %i.fd, align 8, !tbaa !177
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 2 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fh
  %i.fj = mul nsw i64 %i.fh, %i.m
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !177
  store double %i.fl, ptr %i.fi, align 8, !tbaa !177
  %i.fm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fm
  %i.fo = mul nsw i64 %i.fm, %i.m
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !177
  store double %i.fq, ptr %i.fn, align 8, !tbaa !177
  %i.fr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.2, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.2.3 = icmp eq i64 %i.fr, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.2.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2, label %.lr.ph.i.i.i.i.i.i.i.i.2, !llvm.loop !571

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block
  %i.fs = load double, ptr %i.ek, align 8, !tbaa !177 ; 4 uses
  %i.ft = fcmp olt double %i.fs, %i.dx
  %i.fu = select i1 %i.ft, double %i.fs, double %i.dx ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ek, i64 8
  %i.fw = fcmp olt double %i.ea, %i.fs
  %i.fx = select i1 %i.fw, double %i.fs, double %i.ea ; 2 uses
  %i.fy = load <2 x double>, ptr %i.fv, align 8, !tbaa !177 ; 4 uses
  %i.fz = fcmp olt <2 x double> %i.fy, %i.ed
  %i.ga = select <2 x i1> %i.fz, <2 x double> %i.fy, <2 x double> %i.ed ; 3 uses
  %i.gb = fcmp olt <2 x double> %i.ef, %i.fy
  %i.gc = select <2 x i1> %i.gb, <2 x double> %i.fy, <2 x double> %i.ef ; 3 uses
  tail call void @free(ptr noundef nonnull %i.ek) #22
  %i.gd = add nuw i64 %.017156, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gd, %i.g
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
  %4 = icmp sgt i64 %i.k, 0
  %i.p = shl nuw i64 %i.k, 3                      ; 3 uses
  br i1 %i.o, label %.noexc, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.q = icmp samesign ugt i64 %i.k, 2305843009213693951
  tail call void @llvm.assume(i1 %4)
  br i1 %i.q, label %.noexc55, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %.idx = shl i64 %i.g, 3
  %min.iters.check234 = icmp samesign ugt i64 %i.k, 3
  %ident.check232.not = icmp eq i64 %i.m, 1
  %or.cond = select i1 %min.iters.check234, i1 %ident.check232.not, i1 false
  %n.vec236 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.k, %n.vec236
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check220 = icmp samesign ugt i64 %i.k, 3
  %ident.check218.not = icmp eq i64 %i.m, 1
  %or.cond245 = select i1 %min.iters.check220, i1 %ident.check218.not, i1 false
  %n.vec222 = and i64 %i.k, 2305843009213693948   ; 3 uses
  %cmp.n229 = icmp eq i64 %i.k, %n.vec222
  %xtraiter260 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  %min.iters.check = icmp samesign ugt i64 %i.k, 3
  %ident.check.not = icmp eq i64 %i.m, 1
  %or.cond246 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.k, 2305843009213693948      ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %xtraiter263 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %.lcssa133165 = phi double [ %i.fx, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ -1.000000e+26, %.preheader.preheader ] ; 3 uses
  %.017156 = phi i64 [ %i.gd, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.lcssa151155 = phi double [ %i.fu, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ 1.000000e+26, %.preheader.preheader ] ; 3 uses
  %i.r = phi <2 x double> [ %i.gc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double -1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.s = phi <2 x double> [ %i.ga, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2 ], [ splat (double 1.000000e+26), %.preheader.preheader ] ; 4 uses
  %i.t = getelementptr [4 x i8], ptr %i.h, i64 %.017156 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.v ; 6 uses
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.p) #35 ; 10 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.noexc56.split.loop.exit280, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader
  br i1 %or.cond, label %vector.body237, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249

vector.body237:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index238 ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %index238 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load239 = load <2 x double>, ptr %i.aa, align 8, !tbaa !177
  %wide.load240 = load <2 x double>, ptr %i.ab, align 8, !tbaa !177
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load239, ptr %i.z, align 8, !tbaa !177
  store <2 x double> %wide.load240, ptr %i.ac, align 8, !tbaa !177
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ad, label %middle.block242, label %vector.body237, !llvm.loop !579

middle.block242:                                  ; preds = %vector.body237
  br i1 %cmp.n243, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249

.lr.ph.i.i.i.i.i.i.i.i.preheader249:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader249, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.af = mul nsw i64 %.05.i.i.i.i.i.i.i.i.prol, %i.m
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !177
  store double %i.ah, ptr %i.ae, align 8, !tbaa !177
  %i.ai = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !580

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader249
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.aj = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %i.k
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.2
  %i.al = extractelement <2 x double> %i.ga, i64 0
  store double %i.al, ptr %i.a, align 16
  %i.am = extractelement <2 x double> %i.ga, i64 1
  store double %i.am, ptr %i.b, align 16
  store double %i.fx, ptr %i.c, align 8
  %i.an = extractelement <2 x double> %i.gc, i64 0
  store double %i.an, ptr %i.d, align 8
  %i.ao = extractelement <2 x double> %i.gc, i64 1
  store double %i.ao, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.lcssa151.lcssa = phi double [ %i.fu, %._crit_edge ], [ 1.000000e+26, %bb.a ]
  store double %.lcssa151.lcssa, ptr %0, align 16
  ret void

.noexc:                                           ; preds = %.preheader.lr.ph
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc55:                                         ; preds = %.preheader.lr.ph.split
  store double 1.000000e+26, ptr %i.a, align 16
  store double 1.000000e+26, ptr %i.b, align 16
  store double -1.000000e+26, ptr %i.c, align 8
  store double -1.000000e+26, ptr %i.d, align 8
  store double -1.000000e+26, ptr %i.e, align 8
  store double 1.000000e+26, ptr %0, align 16
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aq, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.noexc56.split.loop.exit:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1
  %i.ar = extractelement <2 x double> %i.ef, i64 0
  %i.as = extractelement <2 x double> %i.ef, i64 1
  %i.at = extractelement <2 x double> %i.ed, i64 0
  %i.au = extractelement <2 x double> %i.ed, i64 1
  br label %.noexc56

.noexc56.split.loop.exit273:                      ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  %i.av = extractelement <2 x double> %i.ci, i64 0
  %i.aw = extractelement <2 x double> %i.ci, i64 1
  %i.ax = extractelement <2 x double> %i.cg, i64 0
  %i.ay = extractelement <2 x double> %i.cg, i64 1
  br label %.noexc56

.noexc56.split.loop.exit280:                      ; preds = %.preheader
  %i.az = extractelement <2 x double> %i.r, i64 0
  %i.ba = extractelement <2 x double> %i.r, i64 1
  %i.bb = extractelement <2 x double> %i.s, i64 0
  %i.bc = extractelement <2 x double> %i.s, i64 1
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc56.split.loop.exit280, %.noexc56.split.loop.exit273, %.noexc56.split.loop.exit
  %.lcssa185 = phi double [ %i.aw, %.noexc56.split.loop.exit273 ], [ %i.as, %.noexc56.split.loop.exit ], [ %i.ba, %.noexc56.split.loop.exit280 ]
  %.lcssa183 = phi double [ %i.av, %.noexc56.split.loop.exit273 ], [ %i.ar, %.noexc56.split.loop.exit ], [ %i.az, %.noexc56.split.loop.exit280 ]
  %.lcssa181 = phi double [ %i.cd, %.noexc56.split.loop.exit273 ], [ %i.ea, %.noexc56.split.loop.exit ], [ %.lcssa133165, %.noexc56.split.loop.exit280 ]
  %.lcssa179 = phi double [ %i.ay, %.noexc56.split.loop.exit273 ], [ %i.au, %.noexc56.split.loop.exit ], [ %i.bc, %.noexc56.split.loop.exit280 ]
  %.lcssa177 = phi double [ %i.ax, %.noexc56.split.loop.exit273 ], [ %i.at, %.noexc56.split.loop.exit ], [ %i.bb, %.noexc56.split.loop.exit280 ]
  %.lcssa = phi double [ %i.ca, %.noexc56.split.loop.exit273 ], [ %i.dx, %.noexc56.split.loop.exit ], [ %.lcssa151155, %.noexc56.split.loop.exit280 ]
  store double %.lcssa177, ptr %i.a, align 16
  store double %.lcssa179, ptr %i.b, align 16
  store double %.lcssa181, ptr %i.c, align 8
  store double %.lcssa183, ptr %i.d, align 8
  store double %.lcssa185, ptr %i.e, align 8
  store double %.lcssa, ptr %0, align 16
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i.i
  %i.bf = mul nsw i64 %.05.i.i.i.i.i.i.i.i, %i.m
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !177
  store double %i.bh, ptr %i.be, align 8, !tbaa !177
  %i.bi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bi
  %i.bk = mul nsw i64 %i.bi, %i.m
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !177
  store double %i.bm, ptr %i.bj, align 8, !tbaa !177
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bn
  %i.bp = mul nsw i64 %i.bn, %i.m
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !177
  store double %i.br, ptr %i.bo, align 8, !tbaa !177
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bs
  %i.bu = mul nsw i64 %i.bs, %i.m
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !177
  store double %i.bw, ptr %i.bt, align 8, !tbaa !177
  %i.bx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !581

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block242
  %i.by = load double, ptr %i.x, align 8, !tbaa !177 ; 4 uses
  %i.bz = fcmp olt double %i.by, %.lcssa151155
  %i.ca = select i1 %i.bz, double %i.by, double %.lcssa151155 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.x, i64 8
  %i.cc = fcmp olt double %.lcssa133165, %i.by
  %i.cd = select i1 %i.cc, double %i.by, double %.lcssa133165 ; 3 uses
  %i.ce = load <2 x double>, ptr %i.cb, align 8, !tbaa !177 ; 4 uses
  %i.cf = fcmp olt <2 x double> %i.ce, %i.s
  %i.cg = select <2 x i1> %i.cf, <2 x double> %i.ce, <2 x double> %i.s ; 4 uses
  %i.ch = fcmp olt <2 x double> %i.r, %i.ce
  %i.ci = select <2 x i1> %i.ch, <2 x double> %i.ce, <2 x double> %i.r ; 4 uses
  tail call void @free(ptr noundef nonnull %i.x) #22
  %i.cj = getelementptr [4 x i8], ptr %i.t, i64 %i.g
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !58
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cl ; 6 uses
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.p) #35 ; 10 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.noexc56.split.loop.exit273, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.i.i.1.preheader:               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread
  br i1 %or.cond245, label %vector.body223, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248

vector.body223:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1.preheader, %vector.body223
  %index224 = phi i64 [ %index.next227, %vector.body223 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.1.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index224 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %index224 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load225 = load <2 x double>, ptr %i.cq, align 8, !tbaa !177
  %wide.load226 = load <2 x double>, ptr %i.cr, align 8, !tbaa !177
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x double> %wide.load225, ptr %i.cp, align 8, !tbaa !177
  store <2 x double> %wide.load226, ptr %i.cs, align 8, !tbaa !177
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.ct, label %middle.block228, label %vector.body223, !llvm.loop !582

middle.block228:                                  ; preds = %vector.body223
  br i1 %cmp.n229, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll.exit.thread.1, label %.lr.ph.i.i.i.i.i.i.i.i.1.preheader248
end_hunk_0
