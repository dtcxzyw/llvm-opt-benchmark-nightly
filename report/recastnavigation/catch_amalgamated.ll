Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5Catch9sortTestsERKNS_7IConfigERKSt6vectorINS_14TestCaseHandleESaIS4_EE:bb.a
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !9324
  %i.kj = sext i8 %i.ki to i64
  %i.kk = xor i64 %i.kg, %i.kj
  %i.kl = mul i64 %i.kk, 1099511628211
  %i.km = getelementptr inbounds nuw i8, ptr %.03555.i, i64 7
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !9324
  %i.ko = sext i8 %i.kn to i64
  %i.kp = xor i64 %i.kl, %i.ko
  %i.kq = mul i64 %i.kp, 1099511628211            ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.03555.i, i64 8 ; 2 uses
  %.not37.i.7 = icmp eq ptr %i.kr, %i.iv
  br i1 %.not37.i.7, label %._crit_edge59.i, label %.lr.ph58.i

_ZNK5Catch18TestCaseInfoHasherclERKNS_12TestCaseInfoE.exit: ; preds = %._crit_edge59.i, %._crit_edge52.i
  %.2.lcssa.i = phi i64 [ %.1.lcssa.i, %._crit_edge52.i ], [ %.3.lcssa.i, %._crit_edge59.i ]
  %i.ks = xor i64 %.2.lcssa.i, %i.bz
  %i.kt = mul i64 %i.ks, 1099511628211            ; 2 uses
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = lshr i64 %i.kt, 32
  %i.kw = trunc nuw i64 %i.kv to i32
  %i.kx = mul i32 %i.kw, %i.ku                    ; 2 uses
  %.not.i60 = icmp eq ptr %.sroa.11.0106, %.sroa.20.0107
  br i1 %.not.i60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK5Catch18TestCaseInfoHasherclERKNS_12TestCaseInfoE.exit
  %i.ky = zext i32 %i.kx to i64
  store i64 %i.ky, ptr %.sroa.11.0106, align 8, !tbaa !23535
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.11.0106, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.079.0108, i64 16, i1 false), !tbaa.struct !23533
  br label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12emplace_backIJjRKS2_EEERS3_DpOT_.exit

bb.v:                                             ; preds = %_ZNK5Catch18TestCaseInfoHasherclERKNS_12TestCaseInfoE.exit
  %i.la = ptrtoint ptr %.sroa.20.0107 to i64
  %i.lb = ptrtoint ptr %.sroa.082.0105 to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 4 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775800
  br i1 %i.ld, label %bb.w, label %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.le = sdiv exact i64 %i.lc, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = tail call i64 @llvm.umin.i64(i64 %i.lf, i64 384307168202282325)
  %i.li = select i1 %i.lg, i64 384307168202282325, i64 %i.lh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.li, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.lj = mul nuw nsw i64 %i.li, 24
  %i.lk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #59 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lc ; 2 uses
  %i.lm = zext i32 %i.kx to i64
  store i64 %i.lm, ptr %i.ll, align 8, !tbaa !23535
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ln, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.079.0108, i64 16, i1 false), !tbaa.struct !23533
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.082.0105, %.sroa.20.0107
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i61 ], [ %i.lk, %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i61 ], [ %.sroa.082.0105, %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !71034
  %i.lo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i62 = icmp eq ptr %i.lo, %.sroa.20.0107
  br i1 %.not.i.i.i.i.i62, label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i61, !llvm.loop !71030

_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i61, %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i63 = phi ptr [ %i.lk, %_ZNKSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.lp, %.lr.ph.i.i.i.i.i61 ]
  %.not.i24.i.i = icmp eq ptr %.sroa.082.0105, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0105, i64 noundef %i.lc) #60
  br label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.lk, i64 %i.li
  br label %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12emplace_backIJjRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE12emplace_backIJjRKS2_EEERS3_DpOT_.exit: ; preds = %bb.u, %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.082.2 = phi ptr [ %i.lk, %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.082.0105, %bb.u ] ; 11 uses
  %.0.lcssa.i.i.i.i.i63.pn = phi ptr [ %.0.lcssa.i.i.i.i.i63, %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.11.0106, %bb.u ] ; 2 uses
  %.sroa.20.2 = phi ptr [ %i.lq, %_ZNSt6vectorISt4pairImN5Catch14TestCaseHandleEESaIS3_EE17_M_realloc_insertIJjRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.20.0107, %bb.u ] ; 5 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i63.pn, i64 24 ; 10 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.cb
  br i1 %i.ls, label %._crit_edge, label %.lr.ph

._crit_edge114:                                   ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit
  %.not.i.i.i64 = icmp eq ptr %.sroa.082.0.lcssa160, null
  br i1 %.not.i.i.i64, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEEZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EvT_SF_T0_.exit", label %bb.y

bb.y:                                             ; preds = %._crit_edge114
  %i.lt = ptrtoint ptr %.sroa.20.0.lcssa164 to i64
  %i.lu = sub i64 %i.lt, %.pre-phi124
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0.lcssa160, i64 noundef %i.lu) #60
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEEZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EvT_SF_T0_.exit"

bb.z:                                             ; preds = %.lr.ph113, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit
  %i.lv = phi ptr [ %.promoted111, %.lr.ph113 ], [ %i.mq, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.074.0112 = phi ptr [ %.sroa.082.0.lcssa160, %.lr.ph113 ], [ %i.mt, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.lw = phi ptr [ %.promoted, %.lr.ph113 ], [ %i.ms, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.lx = phi ptr [ %.promoted111, %.lr.ph113 ], [ %i.mr, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.074.0112, i64 8 ; 2 uses
  %.not.i65 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not.i65, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i64 16, i1 false), !tbaa.struct !23533
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  store ptr %i.lz, ptr %i.eo, align 8, !tbaa !23531
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ma = ptrtoint ptr %i.lv to i64
  %i.mb = ptrtoint ptr %i.lx to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 4 uses
  %i.md = icmp eq i64 %i.mc, 9223372036854775792
  br i1 %i.md, label %bb.ac, label %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.me = ashr exact i64 %i.mc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i66 = tail call i64 @llvm.umax.i64(i64 %i.me, i64 1)
  %i.mf = add nsw i64 %.sroa.speculated.i.i.i66, %i.me ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.me
  %i.mh = tail call i64 @llvm.umin.i64(i64 %i.mf, i64 576460752303423487)
  %i.mi = select i1 %i.mg, i64 576460752303423487, i64 %i.mh ; 3 uses
  %.not.i.i.i67 = icmp ne i64 %i.mi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i67)
  %i.mj = shl nuw nsw i64 %i.mi, 4
  %i.mk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #59 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i64 16, i1 false), !tbaa.struct !23533
  %.not10.i.i.i.i.i68 = icmp eq ptr %i.lx, %i.lv
  br i1 %.not10.i.i.i.i.i68, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i69
  %.012.i.i.i.i.i70 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i69 ], [ %i.mk, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i71 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i69 ], [ %i.lx, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i70, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i71, i64 16, i1 false), !tbaa.struct !23533, !alias.scope !71035
  %i.mm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i71, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i70, i64 16 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.mm, %i.lv
  br i1 %.not.i.i.i.i.i72, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i69, !llvm.loop !741

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i69, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %i.mk, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.mn, %.lr.ph.i.i.i.i.i69 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i73, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mc) #60
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.mk, ptr %0, align 8, !tbaa !19412
  store ptr %i.mo, ptr %i.eo, align 8, !tbaa !23531
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.mi ; 2 uses
  store ptr %i.mp, ptr %i.ej, align 8, !tbaa !19413
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.aa, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.mq = phi ptr [ %i.lz, %bb.aa ], [ %i.mo, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.mr = phi ptr [ %i.lx, %bb.aa ], [ %i.mk, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ms = phi ptr [ %i.lw, %bb.aa ], [ %i.mp, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.074.0112, i64 24 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %.sroa.11.0.lcssa163
  br i1 %i.mu, label %._crit_edge114, label %bb.z

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN5Catch20ReusableStringStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store ptr @.str.21, ptr %5, align 8, !tbaa !16172
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7104, ptr %i.mv, align 8, !tbaa !16173
  %i.mw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsINS_14SourceLineInfoEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.mx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIA26_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mw, ptr noundef nonnull align 1 dereferenceable(26) @.str.22)
  %i.my = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Catch20ReusableStringStreamlsIA26_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull align 1 dereferenceable(26) @.str.246)
  call void @_ZNK5Catch20ReusableStringStream3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.my)
  call void @_ZN5Catch17throw_logic_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3) #61
  unreachable

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEEZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EvT_SF_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9sortTestsERKNS2_7IConfigERKS7_E3$_0EEEvT_T0_.exit.i.i.i.i", %bb.y, %._crit_edge114, %bb.j, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit25.thread, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11filterTestsERKSt6vectorINS_14TestCaseHandleESaIS1_EERKNS_8TestSpecERKNS_7IConfigE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.134") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.std::vector.134", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23531 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19412  ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.499) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not32 = icmp eq ptr %i.b, %i.c
  br i1 %.not32, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.i, ptr %4, align 8, !tbaa !19412
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23531
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !19413
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.promoted.a = phi ptr [ null, %bb.c ], [ %i.k, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.promoted21 = phi ptr [ null, %bb.c ], [ %i.i, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.l = icmp eq ptr %i.c, %i.b
  br i1 %i.l, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.e

._crit_edge.a:                                    ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE7reserveEm.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !3602
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %3) #49
  %i.s = zext i32 %i.r to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !3602
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %3) #49
  %i.x = zext i32 %i.w to i64
  call void @_ZN5Catch11createShardISt6vectorINS_14TestCaseHandleESaIS2_EEEET_RKS5_mm(ptr dead_on_unwind writable sret(%"class.std::vector.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.s, i64 noundef %i.x)
  %i.y = load ptr, ptr %4, align 8, !tbaa !19412  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.a
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !19413
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #60
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit: ; preds = %._crit_edge.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit
  %i.ad = phi ptr [ %.promoted21, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %.sroa.014.020 = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %i.ae = phi ptr [ %.promoted.a, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %i.af = phi ptr [ %.promoted21, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !16101
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !16101
  %.not = icmp eq ptr %i.ag, %i.ah
  %i.ai = load ptr, ptr %.sroa.014.020, align 8, !tbaa !19391 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !19399
  %i.al = and i8 %i.ak, 2
  %.not18 = icmp eq i8 %i.al, 0
  br i1 %.not18, label %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.am = tail call noundef zeroext i1 @_ZNK5Catch8TestSpec7matchesERKNS_12TestCaseInfoE(ptr noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(121) %i.ai)
  br i1 %i.am, label %bb.h, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %.sroa.014.020, align 8, !tbaa !19391
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !19399
  %i.aq = and i8 %i.ap, 16
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit

_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit: ; preds = %bb.h
  %i.ar = load ptr, ptr %3, align 8, !tbaa !3602
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %3) #49, !inline_history !71036
  br i1 %i.au, label %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread: ; preds = %bb.h, %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit, %bb.f
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.020, i64 16, i1 false), !tbaa.struct !23533
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.n, align 8, !tbaa !23531
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit.thread
  %i.aw = ptrtoint ptr %i.ad to i64
  %i.ax = ptrtoint ptr %i.af to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775792
  br i1 %i.az, label %bb.k, label %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ba = ashr exact i64 %i.ay, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 576460752303423487)
  %i.be = select i1 %i.bc, i64 576460752303423487, i64 %i.bd ; 3 uses
  %.not.i.i.i13 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i13)
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #59 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.020, i64 16, i1 false), !tbaa.struct !23533
  %.not10.i.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !23533, !alias.scope !71040
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !741

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorIN5Catch14TestCaseHandleESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ay) #60
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bg, ptr %4, align 8, !tbaa !19412
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !23531
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.be ; 2 uses
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !19413
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i, %bb.f, %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit
  %i.bm = phi ptr [ %i.ad, %bb.g ], [ %i.bk, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.av, %bb.i ], [ %i.ad, %bb.f ], [ %i.ad, %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit ]
  %i.bn = phi ptr [ %i.af, %bb.g ], [ %i.bg, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.af, %bb.i ], [ %i.af, %bb.f ], [ %i.af, %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit ]
  %i.bo = phi ptr [ %i.ae, %bb.g ], [ %i.bl, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ae, %bb.i ], [ %i.ae, %bb.f ], [ %i.ae, %_ZN5Catch12_GLOBAL__N_19matchTestERKNS_14TestCaseHandleERKNS_8TestSpecERKNS_7IConfigE.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.b
  br i1 %i.bq, label %._crit_edge.a, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch11createShardISt6vectorINS_14TestCaseHandleESaIS2_EEEET_RKS5_mm(ptr dead_on_unwind noalias writable sret(%"class.std::vector.134") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23531 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !19412  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  br i1 %i.a, label %bb.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i.thread, label %bb.c

_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19413
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.j, label %bb.d, label %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i, !prof !9355

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !19412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !19413
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !23533
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.c
  br i1 %i.p, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !738

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.q = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.r = udiv i64 %i.q, %2                        ; 2 uses
  %i.s = urem i64 %i.q, %2                        ; 2 uses
  %i.t = mul i64 %i.r, %3
  %.sroa.speculated26 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %3)
  %i.u = add i64 %3, 1                            ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %.idx4447 = add i64 %.sroa.speculated26, %i.t
  %i.w = shl i64 %.idx4447, 4                     ; 3 uses
  %i.x = getelementptr i8, ptr %i.d, i64 %i.w
  %.idx46 = add i64 %.sroa.speculated, %i.v
  %i.y = shl i64 %.idx46, 4                       ; 2 uses
  store i64 0, ptr %0, align 8
  %gepdiff = sub i64 %i.y, %i.w                   ; 6 uses
  %i.z = icmp ugt i64 %gepdiff, 9223372036854775792
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.e:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.501) #58
  unreachable

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5Catch14TestCaseHandleESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.not.i.i.i = icmp eq i64 %i.y, %i.w
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr null, i64 %gepdiff
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #59 ; 4 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !19412
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %gepdiff
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.x, i64 %gepdiff, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.ab, i64 %gepdiff
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE11_M_allocateEm.exit.thread.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.sink = phi ptr [ %i.aa, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.preheader.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !19413
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i.thread, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit
  %.0.lcssa.i.i.i.i.i.i.sink = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEvEET_SA_RKS2_.exit ], [ null, %_ZNSt12_Vector_baseIN5Catch14TestCaseHandleESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.sink, ptr %i.ae, align 8, !tbaa !23531
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Catch21getAllTestCasesSortedERKNS_7IConfigE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZZN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEE11getInternalEvE10s_instance, align 8, !tbaa !9393 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5Catch14getRegistryHubEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #59 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_111RegistryHubE, i64 16), ptr %i.b, align 8, !tbaa !3602
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5Catch12_GLOBAL__N_111RegistryHubE, i64 144), ptr %i.c, align 8, !tbaa !3602
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch12TestRegistryE, i64 16), ptr %i.d, align 8, !tbaa !3602
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.e, i8 0, i64 100, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @_ZN5Catch16ReporterRegistryC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch27ExceptionTranslatorRegistryE, i64 16), ptr %i.h, align 8, !tbaa !3602
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch16TagAliasRegistryE, i64 16), ptr %i.j, align 8, !tbaa !3602
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !9394
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr null, ptr %i.l, align 8, !tbaa !9389
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.k, ptr %i.m, align 8, !tbaa !9395
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %i.k, ptr %i.n, align 8, !tbaa !9396
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i64 0, ptr %i.o, align 8, !tbaa !9397
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch6Detail18EnumValuesRegistryE, i64 16), ptr %i.p, align 8, !tbaa !3602
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEEE, i64 16), ptr %i.b, align 8, !tbaa !3602
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEEE, i64 144), ptr %i.c, align 8, !tbaa !3602
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEEE, i64 232), ptr %i.r, align 8, !tbaa !3602
  store ptr %i.b, ptr @_ZZN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEE11getInternalEvE10s_instance, align 8, !tbaa !9393
  tail call void @_ZN5Catch12addSingletonEPNS_10ISingletonE(ptr noundef nonnull %i.r)
  %.pre.i.i.i = load ptr, ptr @_ZZN5Catch9SingletonINS_12_GLOBAL__N_111RegistryHubENS_12IRegistryHubENS_19IMutableRegistryHubEE11getInternalEvE10s_instance, align 8, !tbaa !9393
  br label %_ZN5Catch14getRegistryHubEv.exit

_ZN5Catch14getRegistryHubEv.exit:                 ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3602
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #49 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3602
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %0) #49
  ret ptr %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch12TestRegistryD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch12TestRegistryE, i64 16), ptr %0, align 8, !tbaa !3602
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19412 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19413
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #60
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19412 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19413
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #60
  br label %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit2

_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN5Catch14TestCaseHandleESaIS1_EED2Ev.exit, %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv:bb.a
  store ptr %i.ir, ptr %i.fi, align 8, !tbaa !69400
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58

bb.by:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit56
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59

bb.bz:                                            ; preds = %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.iz = icmp eq ptr %i.iw, %i.iy
  br i1 %i.iz, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !69420
  switch i32 %i.jb, label %bb.cf [
    i32 0, label %bb.cc
    i32 2, label %bb.cd
    i32 1, label %bb.ce
  ]

bb.cc:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !69421
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !69421
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 10) #58
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.ji = load i32, ptr %i.e, align 8, !tbaa !69417
  %i.jj = icmp eq i32 %i.ji, 26
  br i1 %i.jj, label %bb.ci, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit60

bb.ci:                                            ; preds = %bb.ch
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.jk = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.jl = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %bb.co

bb.ck:                                            ; preds = %bb.ci
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !69420
  switch i32 %i.jo, label %bb.co [
    i32 0, label %bb.cl
    i32 2, label %bb.cm
    i32 1, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

bb.cn:                                            ; preds = %bb.ck
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.co

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit60: ; preds = %bb.ch
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #58
  unreachable

bb.co:                                            ; preds = %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.jp = load ptr, ptr %i.jd, align 8, !tbaa !69421, !noalias !73287 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !69398, !noalias !73287 ; 2 uses
  %i.js = icmp eq ptr %i.jp, %i.jr
  br i1 %i.js, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !tbaa.struct !69441
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62

bb.cq:                                            ; preds = %bb.co
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !69397, !noalias !73287
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !69396, !noalias !73288
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.jy, i64 24, i1 false), !tbaa.struct !69441
  tail call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef 504) #60, !noalias !73288
  %i.jz = load ptr, ptr %i.ju, align 8, !tbaa !69422, !noalias !73288
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -8 ; 2 uses
  store ptr %i.ka, ptr %i.ju, align 8, !tbaa !69397, !noalias !73288
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !69396, !noalias !73288 ; 3 uses
  store ptr %i.kb, ptr %i.jq, align 8, !tbaa !69398, !noalias !73288
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 504
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !69399, !noalias !73288
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62: ; preds = %bb.cp, %bb.cq
  %storemerge.i.i.i61 = phi ptr [ %i.jt, %bb.cp ], [ %i.ke, %bb.cq ]
  store ptr %storemerge.i.i.i61, ptr %i.jd, align 8, !tbaa !69400, !noalias !73288
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 5 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !69393 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 10, ptr %4, align 8, !tbaa !69423
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 -1, ptr %i.kh, align 8, !tbaa !69416
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 56 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 64 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !69424 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !69425
  %.not.i.i.i.i63 = icmp eq ptr %i.kk, %i.km
  br i1 %.not.i.i.i.i63, label %bb.cr, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kk, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !69427
  %.pre.i65 = load ptr, ptr %i.kj, align 8, !tbaa !69424
  %i.kn = getelementptr inbounds nuw i8, ptr %.pre.i65, i64 48 ; 2 uses
  store ptr %i.kn, ptr %i.kj, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66

bb.cr:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit62
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ki, ptr %i.kk, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %.pre.i.i69 = load ptr, ptr %i.kj, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66: ; preds = %bb.cr, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64
  %i.ko = phi ptr [ %i.kn, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i64 ], [ %.pre.i.i69, %bb.cr ]
  %i.kp = load ptr, ptr %i.ki, align 8, !tbaa !69413
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 48                ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 100000
  br i1 %i.ku, label %bb.cs, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67

bb.cs:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66
  call void @abort() #58
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i66
  %i.kv = load i32, ptr %4, align 8, !tbaa !69423
  %i.kw = icmp eq i32 %i.kv, 11
  br i1 %i.kw, label %bb.ct, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70

bb.ct:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i68, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.la = call noundef zeroext i1 %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i32 noundef 3) #49, !inline_history !3565 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i67, %bb.ct, %bb.cu
  %i.lb = add nsw i64 %i.kt, -1                   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.kg, ptr %13, align 8, !tbaa !69436
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !69438
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store i64 %i.lb, ptr %i.ld, align 8, !tbaa !69439
  %i.le = load ptr, ptr %i.iu, align 8, !tbaa !9325 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !9323 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lg
  %i.li = icmp samesign eq i64 %i.lg, 0
  br i1 %i.li, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cy, %.lr.ph.i
  %.013.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ls, %bb.cy ]
  %.sroa.08.012.i = phi ptr [ %i.le, %.lr.ph.i ], [ %i.lt, %bb.cy ] ; 2 uses
  %i.lk = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.013.i, i32 10) ; 2 uses
  %i.ll = extractvalue { i32, i1 } %i.lk, 1
  br i1 %i.ll, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lm = extractvalue { i32, i1 } %i.lk, 0
  %i.ln = load i8, ptr %.sroa.08.012.i, align 1, !tbaa !9324
  %i.lo = load ptr, ptr %i.lj, align 8, !tbaa !69461, !nonnull !4069, !align !19313
  %i.lp = call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.lo, i8 noundef signext %i.ln, i32 noundef 10)
  %i.lq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lm, i32 %i.lp) ; 2 uses
  %i.lr = extractvalue { i32, i1 } %i.lq, 1
  br i1 %i.lr, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void @abort() #58
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.ls = extractvalue { i32, i1 } %i.lq, 0       ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 1 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.lh
  br i1 %i.lu, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, label %bb.cv

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit: ; preds = %bb.cy, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70
  %.0.lcssa.i = phi i32 [ 0, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit70 ], [ %i.ls, %bb.cy ] ; 2 uses
  %i.lv = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.lw = load i32, ptr %i.e, align 8, !tbaa !69417 ; 2 uses
  %i.lx = icmp eq i32 %i.lw, 25
  br i1 %i.lx, label %bb.cz, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

bb.cz:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.ly = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.lz = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread, label %bb.da

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread: ; preds = %bb.cz
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73

bb.da:                                            ; preds = %bb.cz
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !69420
  switch i32 %i.mc, label %bb.de [
    i32 0, label %bb.db
    i32 2, label %bb.dc
    i32 1, label %bb.dd
  ]

bb.db:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.dd:                                            ; preds = %bb.da
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd
  %.pr = load i32, ptr %i.e, align 8, !tbaa !69417 ; 2 uses
  %i.md = icmp eq i32 %.pr, 26
  br i1 %i.md, label %bb.df, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

bb.df:                                            ; preds = %bb.de
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.me = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.mf = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !69420
  switch i32 %i.mi, label %bb.dl [
    i32 0, label %bb.di
    i32 2, label %bb.dj
    i32 1, label %bb.dk
  ]

bb.di:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %i.mj = call noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef 10)
  %i.mk = sext i32 %i.mj to i64
  %i.ml = sub nsw i64 %i.mk, %i.lv
  %.pre = load i32, ptr %i.e, align 8, !tbaa !69417
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71: ; preds = %bb.de, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit, %bb.dl
  %i.mm = phi i32 [ %.pre, %bb.dl ], [ %i.lw, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ %.pr, %bb.de ]
  %.019 = phi i1 [ false, %bb.dl ], [ false, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ true, %bb.de ]
  %.018 = phi i64 [ %i.ml, %bb.dl ], [ 0, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi.exit ], [ 0, %bb.de ] ; 3 uses
  %i.mn = icmp eq i32 %i.mm, 13
  br i1 %i.mn, label %bb.dm, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73

bb.dm:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.mo = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.mp = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %bb.ds

bb.do:                                            ; preds = %bb.dm
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !69420
  switch i32 %i.ms, label %bb.ds [
    i32 0, label %bb.dp
    i32 2, label %bb.dq
    i32 1, label %bb.dr
  ]

bb.dp:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

bb.dr:                                            ; preds = %bb.do
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %bb.ds

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit73: ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71.thread, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit71
  call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #58
  unreachable

bb.ds:                                            ; preds = %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr
  br i1 %.not, label %bb.ea, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mt = load i32, ptr %i.e, align 8, !tbaa !69417
  %i.mu = icmp eq i32 %i.mt, 18                   ; 2 uses
  br i1 %i.mu, label %bb.du, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.du:                                            ; preds = %bb.dt
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
  %i.mv = load ptr, ptr %i.iv, align 8, !tbaa !69418
  %i.mw = load ptr, ptr %i.ix, align 8, !tbaa !69419
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 27, ptr %i.e, align 8, !tbaa !69417
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dw:                                            ; preds = %bb.du
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !69420
  switch i32 %i.mz, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74 [
    i32 0, label %bb.dx
    i32 2, label %bb.dy
    i32 1, label %bb.dz
  ]

bb.dx:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dy:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

bb.dz:                                            ; preds = %bb.dw
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74: ; preds = %bb.dt, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz
  %i.na = zext i1 %i.mu to i8
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74, %bb.ds
  %i.nb = phi i8 [ 0, %bb.ds ], [ %i.na, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit74 ] ; 5 uses
  %i.nc = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.nc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ea
  %i.nd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.eb

._crit_edge:                                      ; preds = %bb.eb, %bb.ea
  %i.nf = phi i64 [ %i.lb, %bb.ea ], [ %i.nl, %bb.eb ] ; 3 uses
  br i1 %.019, label %bb.ec, label %bb.eh

bb.eb:                                            ; preds = %.lr.ph, %bb.eb
  %i.ng = phi i64 [ %i.lb, %.lr.ph ], [ %i.nl, %bb.eb ]
  %.017216 = phi i64 [ 0, %.lr.ph ], [ %i.nm, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %i.nh = load i64, ptr %i.nd, align 8, !tbaa !69438
  %i.ni = load ptr, ptr %i.ki, align 8, !tbaa !69413
  %i.nj = getelementptr inbounds nuw [48 x i8], ptr %i.ni, i64 %i.ng
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store i64 %i.nh, ptr %i.nk, align 8, !tbaa !69416
  %i.nl = load i64, ptr %i.ne, align 8, !tbaa !69439 ; 3 uses
  store i64 %i.nl, ptr %i.ld, align 8, !tbaa !69439
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  %i.nm = add nuw nsw i64 %.017216, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.nm, %i.lv
  br i1 %exitcond.not, label %._crit_edge, label %bb.eb, !llvm.loop !73276

bb.ec:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %12)
  %i.nn = load ptr, ptr %i.kf, align 8, !tbaa !69393 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.np = load i64, ptr %i.no, align 8, !tbaa !69438 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 2, ptr %3, align 8, !tbaa !69426
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.5181.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 %i.np, ptr %.sroa.6184.0..sroa_idx, align 8
  %.sroa.8187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.nb, ptr %.sroa.8187.0..sroa_idx, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 56 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 64 ; 4 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !69424 ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !69425
  %.not.i.i.i.i75 = icmp eq ptr %i.ns, %i.nu
  br i1 %.not.i.i.i.i75, label %bb.ed, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76: ; preds = %bb.ec
  store i32 2, ptr %i.ns, align 8
  %.sroa.5181.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store i64 -1, ptr %.sroa.5181.0..sroa_idx182, align 8
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  store i64 %i.np, ptr %.sroa.6184.0..sroa_idx185, align 8
  %.sroa.8187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store i8 %i.nb, ptr %.sroa.8187.0..sroa_idx188, align 8
  %.pre231 = load ptr, ptr %i.nr, align 8, !tbaa !69424
  %i.nv = getelementptr inbounds nuw i8, ptr %.pre231, i64 48 ; 2 uses
  store ptr %i.nv, ptr %i.nr, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77

bb.ed:                                            ; preds = %bb.ec
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nq, ptr %i.ns, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %.pre.i.i81 = load ptr, ptr %i.nr, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77: ; preds = %bb.ed, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76
  %i.nw = phi ptr [ %i.nv, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i76 ], [ %.pre.i.i81, %bb.ed ]
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !69413
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = sdiv exact i64 %i.oa, 48                ; 2 uses
  %i.oc = icmp ugt i64 %i.ob, 100000
  br i1 %i.oc, label %bb.ee, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78

bb.ee:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77
  call void @abort() #58
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i77
  %i.od = load i32, ptr %3, align 8, !tbaa !69423
  %i.oe = icmp eq i32 %i.od, 11
  br i1 %i.oe, label %bb.ef, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82

bb.ef:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i79, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.oh = call noundef zeroext i1 %i.og(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6184.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6184.0..sroa_idx, i32 noundef 3) #49, !inline_history !73263 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i78, %bb.ef, %bb.eg
  %i.oi = add nsw i64 %i.ob, -1                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.oj = load ptr, ptr %15, align 8, !tbaa !69460, !nonnull !4069, !align !19313
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 56
  %i.ol = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !69439
  %i.on = load ptr, ptr %i.ok, align 8, !tbaa !69413
  %i.oo = getelementptr inbounds nuw [48 x i8], ptr %i.on, i64 %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i64 %i.oi, ptr %i.op, align 8, !tbaa !69416
  %i.oq = load ptr, ptr %i.ki, align 8, !tbaa !69413
  %i.or = getelementptr inbounds nuw [48 x i8], ptr %i.oq, i64 %i.nf
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store i64 %i.oi, ptr %i.os, align 8, !tbaa !69416
  store i64 %i.oi, ptr %i.ld, align 8, !tbaa !69439
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.fb

bb.eh:                                            ; preds = %._crit_edge
  %i.ot = icmp slt i64 %.018, 0
  br i1 %i.ot, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #58
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.ou = load ptr, ptr %i.kf, align 8, !tbaa !69393 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 10, ptr %2, align 8, !tbaa !69423
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %i.ov, align 8, !tbaa !69416
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 56 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 64 ; 4 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !69424 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !69425
  %.not.i.i.i.i83 = icmp eq ptr %i.oy, %i.pa
  br i1 %.not.i.i.i.i83, label %bb.ek, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84: ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oy, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !69427
  %.pre.i85 = load ptr, ptr %i.ox, align 8, !tbaa !69424
  %i.pb = getelementptr inbounds nuw i8, ptr %.pre.i85, i64 48 ; 2 uses
  store ptr %i.pb, ptr %i.ox, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ow, ptr %i.oy, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre.i.i89 = load ptr, ptr %i.ox, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86: ; preds = %bb.ek, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84
  %i.pc = phi ptr [ %i.pb, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i84 ], [ %.pre.i.i89, %bb.ek ]
  %i.pd = load ptr, ptr %i.ow, align 8, !tbaa !69413
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = sdiv exact i64 %i.pg, 48                ; 2 uses
  %i.pi = icmp ugt i64 %i.ph, 100000
  br i1 %i.pi, label %bb.el, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87

bb.el:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86
  call void @abort() #58
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i86
  %i.pj = load i32, ptr %2, align 8, !tbaa !69423
  %i.pk = icmp eq i32 %i.pj, 11
  br i1 %i.pk, label %bb.em, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90

bb.em:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i88, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.po = call noundef zeroext i1 %i.pm(ptr noundef nonnull align 8 dereferenceable(32) %i.pn, ptr noundef nonnull align 8 dereferenceable(32) %i.pn, i32 noundef 3) #49, !inline_history !3565 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i87, %bb.em, %bb.en
  %i.pp = add nsw i64 %i.ph, -1                   ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #49
  %i.pq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 8, ptr %i.pq, align 8, !tbaa !69465
  %i.pr = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #59 ; 2 uses
  store ptr %i.pr, ptr %16, align 8, !tbaa !69466
  %.06.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 24 ; 3 uses
  %i.ps = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #59 ; 6 uses
  store ptr %i.ps, ptr %.06.i.i.ptr.i.i.i, align 8, !tbaa !16310
  %i.pt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.pu, align 8, !tbaa !69467
  %i.pv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !69468
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 512 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.pw, ptr %i.px, align 8, !tbaa !69469
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 5 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 5 uses
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.pz, align 8, !tbaa !69467
  %i.qa = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  store ptr %i.ps, ptr %i.qa, align 8, !tbaa !69468
  %i.qb = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  store ptr %i.pw, ptr %i.qb, align 8, !tbaa !69469
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !69470
  store ptr %i.ps, ptr %i.py, align 8, !tbaa !69471
  %.not223 = icmp eq i64 %.018, 0
  br i1 %.not223, label %._crit_edge219.thread, label %.lr.ph218

._crit_edge219.thread:                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90
  %.pre225 = load ptr, ptr %i.ki, align 8, !tbaa !69413
  %i.qc = getelementptr inbounds nuw [48 x i8], ptr %.pre225, i64 %i.nf
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.pp, ptr %i.qd, align 8, !tbaa !69416
  store i64 %i.pp, ptr %i.ld, align 8, !tbaa !69439
  br label %._crit_edge222

.lr.ph218:                                        ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_dummyEv.exit90
  %i.qe = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.8203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.eo

._crit_edge219:                                   ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %.pre226 = load ptr, ptr %i.py, align 8, !tbaa !69472 ; 2 uses
  %.pre227 = load ptr, ptr %i.pt, align 8, !tbaa !69472 ; 2 uses
  %i.qi = getelementptr inbounds nuw [48 x i8], ptr %i.rt, i64 %i.rs
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %i.pp, ptr %i.qj, align 8, !tbaa !69416
  store i64 %i.pp, ptr %i.ld, align 8, !tbaa !69439
  %i.qk = icmp eq ptr %.pre226, %.pre227
  br i1 %i.qk, label %._crit_edge222, label %.lr.ph221.preheader

.lr.ph221.preheader:                              ; preds = %._crit_edge219
  %.pre228 = load ptr, ptr %i.qa, align 8, !tbaa !69468, !noalias !73289
  br label %.lr.ph221

bb.eo:                                            ; preds = %.lr.ph218, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit
  %i.ql = phi i64 [ %i.nf, %.lr.ph218 ], [ %i.rs, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit ]
  %.016217 = phi i64 [ 0, %.lr.ph218 ], [ %i.rw, %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #49
  call void @_ZNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEE8_M_cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__detail::_StateSeq") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.qm = load ptr, ptr %i.kf, align 8, !tbaa !69393 ; 3 uses
  %i.qn = load i64, ptr %i.qe, align 8, !tbaa !69438 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 2, ptr %1, align 8, !tbaa !69426
  store i64 %i.qn, ptr %.sroa.5197.0..sroa_idx, align 8, !tbaa !9357
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx, align 8
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 56 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 64 ; 4 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !69424 ; 8 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 72
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !69425
  %.not.i.i.i.i91 = icmp eq ptr %i.qq, %i.qs
  br i1 %.not.i.i.i.i91, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 2, ptr %i.qq, align 8
  %.sroa.5197.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %i.qn, ptr %.sroa.5197.0..sroa_idx198, align 8
  %.sroa.6200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.qq, i64 16 ; 3 uses
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx201, align 8
  %.sroa.8203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.qq, i64 24 ; 2 uses
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx204, align 8
  %i.qt = load i32, ptr %1, align 8, !tbaa !69423
  %i.qu = icmp eq i32 %i.qt, 11
  br i1 %i.qu, label %bb.eq, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92

bb.eq:                                            ; preds = %bb.ep
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx201, i8 0, i64 24, i1 false)
  %i.qw = load ptr, ptr %i.qf, align 8, !tbaa !69435
  store ptr %i.qw, ptr %i.qv, align 8, !tbaa !69435
  %i.qx = load ptr, ptr %i.qg, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i96 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i96, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 32
  store i64 %i.pp, ptr %.sroa.6200.0..sroa_idx201, align 8
  store i8 %i.nb, ptr %.sroa.8203.0..sroa_idx204, align 8
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !69429
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92: ; preds = %bb.er, %bb.eq, %bb.ep
  %i.qz = load ptr, ptr %i.qp, align 8, !tbaa !69424
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 48 ; 2 uses
  store ptr %i.ra, ptr %i.qp, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93

bb.es:                                            ; preds = %bb.eo
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr %i.qq, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.pre.i.i97 = load ptr, ptr %i.qp, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93: ; preds = %bb.es, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92
  %i.rb = phi ptr [ %i.ra, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i92 ], [ %.pre.i.i97, %bb.es ]
  %i.rc = load ptr, ptr %i.qo, align 8, !tbaa !69413
  %i.rd = ptrtoint ptr %i.rb to i64
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = sub i64 %i.rd, %i.re
  %i.rg = sdiv exact i64 %i.rf, 48                ; 2 uses
  %i.rh = icmp ugt i64 %i.rg, 100000
  br i1 %i.rh, label %bb.et, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94

bb.et:                                            ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93
  call void @abort() #58
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i.i93
  %i.ri = load i32, ptr %1, align 8, !tbaa !69423
  %i.rj = icmp eq i32 %i.ri, 11
  br i1 %i.rj, label %bb.eu, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98

bb.eu:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94
  %i.rk = load ptr, ptr %i.qg, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i95, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.rl = call noundef zeroext i1 %i.rk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6200.0..sroa_idx, i32 noundef 3) #49, !inline_history !73263 ; 0 uses
  br label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98: ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit.i94, %bb.eu, %bb.ev
  %i.rm = add nsw i64 %i.rg, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store i64 %i.rm, ptr %i.a, align 8, !tbaa !9357
  %i.rn = load ptr, ptr %i.py, align 8, !tbaa !69471 ; 3 uses
  %i.ro = load ptr, ptr %i.qb, align 8, !tbaa !69473
  %i.rp = getelementptr inbounds i8, ptr %i.ro, i64 -8
  %.not.i.i99 = icmp eq ptr %i.rn, %i.rp
  br i1 %.not.i.i99, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !9357
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.rq, ptr %i.py, align 8, !tbaa !69471
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

bb.ex:                                            ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit98
  call void @_ZNSt5dequeIlSaIlEE16_M_push_back_auxIJRKlEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE4pushERKl.exit:     ; preds = %bb.ew, %bb.ex
  %i.rr = load i64, ptr %i.a, align 8, !tbaa !9357
  %i.rs = load i64, ptr %i.qh, align 8, !tbaa !69439 ; 2 uses
  %i.rt = load ptr, ptr %i.ki, align 8, !tbaa !69413 ; 2 uses
  %i.ru = getelementptr inbounds nuw [48 x i8], ptr %i.rt, i64 %i.ql
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i64 %i.rr, ptr %i.rv, align 8, !tbaa !69416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #49
  %i.rw = add nuw nsw i64 %.016217, 1             ; 2 uses
  %exitcond224.not = icmp eq i64 %i.rw, %.018
  br i1 %exitcond224.not, label %._crit_edge219, label %bb.eo, !llvm.loop !73279

.lr.ph221:                                        ; preds = %.lr.ph221.preheader, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit
  %i.rx = phi ptr [ %i.st, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre227, %.lr.ph221.preheader ]
  %i.ry = phi ptr [ %i.su, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre228, %.lr.ph221.preheader ] ; 3 uses
  %i.rz = phi ptr [ %storemerge.i.i, %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit ], [ %.pre226, %.lr.ph221.preheader ] ; 2 uses
  %i.sa = load ptr, ptr %i.kf, align 8, !tbaa !69393
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 56 ; 2 uses
  %i.sc = icmp eq ptr %i.rz, %i.ry
  br i1 %i.sc, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph221
  %i.sd = getelementptr inbounds i8, ptr %i.rz, i64 -8 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !9357
  %i.sf = load ptr, ptr %i.sb, align 8, !tbaa !69413
  %i.sg = getelementptr inbounds nuw [48 x i8], ptr %i.sf, i64 %i.se
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

bb.ez:                                            ; preds = %.lr.ph221
  %i.sh = load ptr, ptr %i.pz, align 8, !tbaa !69467, !noalias !73289
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 -8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !16310
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 504
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !9357
  %i.sm = load ptr, ptr %i.sb, align 8, !tbaa !69413
  %i.sn = getelementptr inbounds nuw [48 x i8], ptr %i.sm, i64 %i.sl
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef 512) #60
  %i.so = load ptr, ptr %i.pz, align 8, !tbaa !69474
  %i.sp = getelementptr inbounds i8, ptr %i.so, i64 -8 ; 2 uses
  store ptr %i.sp, ptr %i.pz, align 8, !tbaa !69467
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !16310 ; 4 uses
  store ptr %i.sq, ptr %i.qa, align 8, !tbaa !69468
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 512
  store ptr %i.sr, ptr %i.qb, align 8, !tbaa !69469
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 504
  %.pre229 = load ptr, ptr %i.pt, align 8, !tbaa !69472
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit

_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit:        ; preds = %bb.ey, %bb.ez
  %i.st = phi ptr [ %i.rx, %bb.ey ], [ %.pre229, %bb.ez ] ; 2 uses
  %i.su = phi ptr [ %i.ry, %bb.ey ], [ %i.sq, %bb.ez ]
  %i.sv = phi ptr [ %i.sg, %bb.ey ], [ %i.sn, %bb.ez ]
  %storemerge.i.i = phi ptr [ %i.sd, %bb.ey ], [ %i.ss, %bb.ez ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.py, align 8, !tbaa !69471
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8 ; 2 uses
  %i.sx = load <2 x i64>, ptr %i.sw, align 8, !tbaa !9357
  %i.sy = shufflevector <2 x i64> %i.sx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.sy, ptr %i.sw, align 8, !tbaa !9357
  %i.sz = icmp eq ptr %storemerge.i.i, %i.st
  br i1 %i.sz, label %._crit_edge222, label %.lr.ph221, !llvm.loop !73280

._crit_edge222:                                   ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEE3popEv.exit, %._crit_edge219.thread, %._crit_edge219
  %i.ta = load ptr, ptr %16, align 8, !tbaa !69466 ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %i.ta, null
  br i1 %.not.i.i.i101, label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge222
  %i.tb = load ptr, ptr %i.pu, align 8, !tbaa !69475 ; 2 uses
  %i.tc = load ptr, ptr %i.pz, align 8, !tbaa !69474 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = icmp ult ptr %i.tb, %i.td
  br i1 %i.te, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fa, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.tg, %.lr.ph.i.i.i.i ], [ %i.tb, %bb.fa ] ; 3 uses
  %i.tf = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !16310
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef 512) #60
  %i.tg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.th = icmp ult ptr %.06.i.i.i.i, %i.tc
  br i1 %i.th, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, !llvm.loop !3568

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %16, align 8, !tbaa !69466
  br label %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i

_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i, %bb.fa
  %i.ti = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.loopexit.i.i.i ], [ %i.ta, %bb.fa ]
  %i.tj = load i64, ptr %i.pq, align 8, !tbaa !69465
  %i.tk = shl i64 %i.tj, 3
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tk) #60
  br label %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit

_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit:          ; preds = %._crit_edge222, %_ZNSt11_Deque_baseIlSaIlEE16_M_destroy_nodesEPPlS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #49
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNSt5stackIlSt5dequeIlSaIlEEED2Ev.exit, %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE16_M_insert_repeatEllb.exit82
  %i.tl = load ptr, ptr %i.jd, align 8, !tbaa !69400 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !69440
  %i.to = getelementptr inbounds i8, ptr %i.tn, i64 -24
  %.not.i.i102 = icmp eq ptr %i.tl, %i.to
  br i1 %.not.i.i102, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !69441
  %i.tp = load ptr, ptr %i.jd, align 8, !tbaa !69400
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 24
  store ptr %i.tq, ptr %i.jd, align 8, !tbaa !69400
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103

bb.fd:                                            ; preds = %bb.fb
  call void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103: ; preds = %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit59: ; preds = %bb.a, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit35
  %.0 = phi i1 [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit35 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit103 ], [ true, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushERKS5_.exit58 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE20_M_insert_word_boundEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 {
_ZNSt8__detail6_StateIcEC2EOS1_.exit:
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 10 uses
  %i.a = zext i1 %1 to i8                         ; 3 uses
  store i32 6, ptr %2, align 8, !tbaa !69426
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -1, ptr %.sroa.510.0..sroa_idx, align 8, !tbaa !9357
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 %i.a, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69424 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69425
  %.not.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  store i32 6, ptr %i.d, align 8
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %.sroa.510.0..sroa_idx11, align 8
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.a, ptr %.sroa.7.0..sroa_idx15, align 8
  %i.g = load i32, ptr %2, align 8, !tbaa !69423
  %i.h = icmp eq i32 %i.g, 11
  br i1 %i.h, label %bb.b, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69435
  store ptr %i.l, ptr %i.j, align 8, !tbaa !69435
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.a, ptr %.sroa.7.16..sroa_idx, align 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !69429
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !69424
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !69424
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.d, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.r = phi ptr [ %i.q, %_ZSt12construct_atINSt8__detail6_StateIcEEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !69413
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 48                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 100000
  br i1 %i.x, label %bb.e, label %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit

bb.e:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  call void @abort() #58
  unreachable

_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.y = load i32, ptr %2, align 8, !tbaa !69423
  %i.z = icmp eq i32 %i.y, 11
  br i1 %i.z, label %bb.f, label %_ZNSt8__detail6_StateIcED2Ev.exit2

bb.f:                                             ; preds = %_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE15_M_insert_stateENS_6_StateIcEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69429 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit2, label %bb.g

end_hunk_1
