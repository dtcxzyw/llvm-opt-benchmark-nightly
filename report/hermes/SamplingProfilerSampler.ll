inline.NumInlined: 568
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_:bb.a

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.z = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !11
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !15
  %i.ae = icmp sgt i64 %i.w, 24
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.w, i1 false)
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  %i.af = icmp eq i64 %i.w, 24
  br i1 %i.af, label %bb.f, label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.copyload.i, i64 24, i1 false), !tbaa.struct !82
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit: ; preds = %.thread.i.i.i, %bb.d, %bb.e, %bb.f
  %i.ag = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.z, %.thread.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !86
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 16, i1 false), !alias.scope !139
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !78, !alias.scope !137, !noalias !134
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !78, !alias.scope !134, !noalias !137
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15, !alias.scope !137, !noalias !134
  store ptr %i.an, ptr %i.al, align 8, !tbaa !15, !alias.scope !134, !noalias !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false), !alias.scope !137, !noalias !134
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !140

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi ptr [ %i.ay, %.lr.ph.i.i.i20 ], [ %i.aq, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i22 = phi ptr [ %i.ax, %.lr.ph.i.i.i20 ], [ %1, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i22, i64 16, i1 false), !alias.scope !146
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 16 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !78, !alias.scope !144, !noalias !141
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !78, !alias.scope !141, !noalias !144
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15, !alias.scope !144, !noalias !141
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !15, !alias.scope !141, !noalias !144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !alias.scope !144, !noalias !141
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20, !llvm.loop !140

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25: ; preds = %.lr.ph.i.i.i20, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aq, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ay, %.lr.ph.i.i.i20 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !80
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #16
  br label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !131
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !101, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !3
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !3
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4992 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4984 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3168 ; 2 uses
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4984
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4984
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !99
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.u = fdiv double %i.cn, %i.cq                 ; 2 uses
  %i.v = fcmp ult double %i.u, 1.000000e+00
  br i1 %i.v, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit, label %bb.d, !prof !122

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %i.w = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.x = icmp ugt i64 %i.w, 623
  br i1 %i.x, label %vector.ph101, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph101:                                     ; preds = %select.unfold.i.i
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !9
  %vector.recur.init104 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next108, %vector.body102 ] ; 3 uses
  %vector.recur105 = phi <2 x i64> [ %vector.recur.init104, %vector.ph101 ], [ %wide.load106, %vector.body102 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load106 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !9 ; 5 uses
  %i.ab = shufflevector <2 x i64> %vector.recur105, <2 x i64> %wide.load106, <2 x i32> <i32 1, i32 2>
  %i.ac = and <2 x i64> %i.ab, splat (i64 -2147483648)
  %i.ad = and <2 x i64> %wide.load106, splat (i64 2147483646)
  %i.ae = or disjoint <2 x i64> %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 3176
  %wide.load107 = load <2 x i64>, ptr %i.af, align 8, !tbaa !9
  %i.ag = lshr exact <2 x i64> %i.ae, splat (i64 1)
  %i.ah = xor <2 x i64> %i.ag, %wide.load107
  %i.ai = and <2 x i64> %wide.load106, splat (i64 1)
  %i.aj = icmp eq <2 x i64> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.al = xor <2 x i64> %i.ah, %i.ak
  store <2 x i64> %i.al, ptr %i.y, align 8, !tbaa !9
  %index.next108 = add nuw i64 %index103, 2       ; 2 uses
  %i.am = icmp eq i64 %index.next108, 226
  br i1 %i.am, label %vector.ph91, label %vector.body102, !llvm.loop !147

vector.ph91:                                      ; preds = %vector.body102
  %vector.recur.extract110 = extractelement <2 x i64> %wide.load106, i64 1
  %i.an = and i64 %vector.recur.extract110, -2147483648
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !9   ; 2 uses
  %i.ap = and i64 %i.ao, 2147483646
  %i.aq = or disjoint i64 %i.ap, %i.an
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !9
  %i.as = lshr exact i64 %i.aq, 1
  %i.at = xor i64 %i.as, %i.ar
  %i.au = and i64 %i.ao, 1
  %.not20.i.i = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.aw = xor i64 %i.at, %i.av
  store i64 %i.aw, ptr %i.m, align 8, !tbaa !9
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !9
  %vector.recur.init94 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph91
  %index93 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %vector.recur95 = phi <2 x i64> [ %vector.recur.init94, %vector.ph91 ], [ %wide.load96, %vector.body92 ]
  %i.ax = getelementptr [8 x i8], ptr %1, i64 %index93 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 1816
  %i.az = getelementptr [8 x i8], ptr %1, i64 %index93
  %i.ba = getelementptr i8, ptr %i.az, i64 1824
  %wide.load96 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !9 ; 4 uses
  %i.bb = shufflevector <2 x i64> %vector.recur95, <2 x i64> %wide.load96, <2 x i32> <i32 1, i32 2>
  %i.bc = and <2 x i64> %i.bb, splat (i64 -2147483648)
  %i.bd = and <2 x i64> %wide.load96, splat (i64 2147483646)
  %i.be = or disjoint <2 x i64> %i.bd, %i.bc
  %wide.load97 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !9
  %i.bf = lshr exact <2 x i64> %i.be, splat (i64 1)
  %i.bg = xor <2 x i64> %i.bf, %wide.load97
  %i.bh = and <2 x i64> %wide.load96, splat (i64 1)
  %i.bi = icmp eq <2 x i64> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bk = xor <2 x i64> %i.bg, %i.bj
  store <2 x i64> %i.bk, ptr %i.ay, align 8, !tbaa !9
  %index.next98 = add nuw i64 %index93, 2         ; 2 uses
  %i.bl = icmp eq i64 %index.next98, 396
  br i1 %i.bl, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body92, !llvm.loop !150

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body92
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !9
  %i.bn = and i64 %i.bm, -2147483648
  %i.bo = load i64, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bp = and i64 %i.bo, 2147483646
  %i.bq = or disjoint i64 %i.bp, %i.bn
  %i.br = load i64, ptr %i.l, align 8, !tbaa !9
  %i.bs = lshr exact i64 %i.bq, 1
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = and i64 %i.bo, 1
  %.not.i.i27 = icmp eq i64 %i.bu, 0
  %i.bv = select i1 %.not.i.i27, i64 0, i64 2567483615
  %i.bw = xor i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !9
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.bx = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.w, %select.unfold.i.i ] ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 3 uses
  store i64 %i.by, ptr %i.j, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !9  ; 2 uses
  %i.cb = lshr i64 %i.ca, 11
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = xor i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = shl i64 %i.cd, 7
  %i.cf = and i64 %i.ce, 2636928640
  %i.cg = xor i64 %i.cf, %i.cd                    ; 2 uses
  %i.ch = shl i64 %i.cg, 15
  %i.ci = and i64 %i.ch, 4022730752
  %i.cj = xor i64 %i.ci, %i.cg                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 18
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %.01422.i.i, double %.01521.i.i) ; 2 uses
  %i.co = fpext double %.01422.i.i to x86_fp80
  %i.cp = fmul x86_fp80 %i.co, f0x401F8000000000000000
  %i.cq = fptrunc x86_fp80 %i.cp to double        ; 2 uses
  %i.cr = add i64 %.023.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26
  %.be = phi i64 [ %i.by, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %i.ex, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.023.i.i.be = phi i64 [ %i.cr, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.01422.i.i.be = phi double [ %i.cq, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  %.01521.i.i.be = phi double [ %i.cn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26 ]
  br label %select.unfold.i.i, !llvm.loop !151

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.u, %bb.c ]
  br label %select.unfold.i.i20

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41
  %i.cs = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.ct = fdiv double %i.fm, %i.fp                ; 2 uses
  %i.cu = fcmp ult double %i.ct, 1.000000e+00
  br i1 %i.cu, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26, label %bb.f, !prof !122

select.unfold.i.i20:                              ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit
  %i.cv = phi i64 [ %i.by, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.ex, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.023.i.i21 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fq, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %.01422.i.i22 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fp, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.01521.i.i23 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %i.cw = icmp ugt i64 %i.cv, 623
  br i1 %i.cw, label %vector.ph81, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

vector.ph81:                                      ; preds = %select.unfold.i.i20
  %.pre.i.i28 = load i64, ptr %1, align 8, !tbaa !9
  %vector.recur.init84 = insertelement <2 x i64> poison, i64 %.pre.i.i28, i64 1
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next88, %vector.body82 ] ; 3 uses
  %vector.recur85 = phi <2 x i64> [ %vector.recur.init84, %vector.ph81 ], [ %wide.load86, %vector.body82 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load86 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !9 ; 5 uses
  %i.da = shufflevector <2 x i64> %vector.recur85, <2 x i64> %wide.load86, <2 x i32> <i32 1, i32 2>
  %i.db = and <2 x i64> %i.da, splat (i64 -2147483648)
  %i.dc = and <2 x i64> %wide.load86, splat (i64 2147483646)
  %i.dd = or disjoint <2 x i64> %i.dc, %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 3176
  %wide.load87 = load <2 x i64>, ptr %i.de, align 8, !tbaa !9
  %i.df = lshr exact <2 x i64> %i.dd, splat (i64 1)
  %i.dg = xor <2 x i64> %i.df, %wide.load87
  %i.dh = and <2 x i64> %wide.load86, splat (i64 1)
  %i.di = icmp eq <2 x i64> %i.dh, zeroinitializer
  %i.dj = select <2 x i1> %i.di, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dk = xor <2 x i64> %i.dg, %i.dj
  store <2 x i64> %i.dk, ptr %i.cx, align 8, !tbaa !9
  %index.next88 = add nuw i64 %index83, 2         ; 2 uses
  %i.dl = icmp eq i64 %index.next88, 226
  br i1 %i.dl, label %vector.ph, label %vector.body82, !llvm.loop !152

vector.ph:                                        ; preds = %vector.body82
  %vector.recur.extract = extractelement <2 x i64> %wide.load86, i64 1
  %i.dm = and i64 %vector.recur.extract, -2147483648
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !9   ; 2 uses
  %i.do = and i64 %i.dn, 2147483646
  %i.dp = or disjoint i64 %i.do, %i.dm
  %i.dq = load i64, ptr %i.r, align 8, !tbaa !9
  %i.dr = lshr exact i64 %i.dp, 1
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = and i64 %i.dn, 1
  %.not20.i.i30 = icmp eq i64 %i.dt, 0
  %i.du = select i1 %.not20.i.i30, i64 0, i64 2567483615
  %i.dv = xor i64 %i.ds, %i.du
  store i64 %i.dv, ptr %i.p, align 8, !tbaa !9
  %.pre24.i.i34 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !9
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i34, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.dw = getelementptr [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 1816
  %i.dy = getelementptr [8 x i8], ptr %1, i64 %index
  %i.dz = getelementptr i8, ptr %i.dy, i64 1824
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !9 ; 4 uses
  %i.ea = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.eb = and <2 x i64> %i.ea, splat (i64 -2147483648)
  %i.ec = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.ed = or disjoint <2 x i64> %i.ec, %i.eb
  %wide.load80 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !9
  %i.ee = lshr exact <2 x i64> %i.ed, splat (i64 1)
  %i.ef = xor <2 x i64> %i.ee, %wide.load80
  %i.eg = and <2 x i64> %wide.load, splat (i64 1)
  %i.eh = icmp eq <2 x i64> %i.eg, zeroinitializer
  %i.ei = select <2 x i1> %i.eh, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ej = xor <2 x i64> %i.ef, %i.ei
  store <2 x i64> %i.ej, ptr %i.dx, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ek = icmp eq i64 %index.next, 396
  br i1 %i.ek, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39, label %vector.body, !llvm.loop !153

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39: ; preds = %vector.body
  %i.el = load i64, ptr %i.k, align 8, !tbaa !9
  %i.em = and i64 %i.el, -2147483648
  %i.en = load i64, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.eo = and i64 %i.en, 2147483646
  %i.ep = or disjoint i64 %i.eo, %i.em
  %i.eq = load i64, ptr %i.l, align 8, !tbaa !9
  %i.er = lshr exact i64 %i.ep, 1
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.en, 1
  %.not.i.i40 = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i.i40, i64 0, i64 2567483615
  %i.ev = xor i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.k, align 8, !tbaa !9
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41: ; preds = %select.unfold.i.i20, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39
  %i.ew = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39 ], [ %i.cv, %select.unfold.i.i20 ] ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 3 uses
  store i64 %i.ex, ptr %i.j, align 8, !tbaa !93
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ew
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !9  ; 2 uses
  %i.fa = lshr i64 %i.ez, 11
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = xor i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = shl i64 %i.fc, 7
  %i.fe = and i64 %i.fd, 2636928640
  %i.ff = xor i64 %i.fe, %i.fc                    ; 2 uses
  %i.fg = shl i64 %i.ff, 15
  %i.fh = and i64 %i.fg, 4022730752
  %i.fi = xor i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 18
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = uitofp i64 %i.fk to double
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %.01422.i.i22, double %.01521.i.i23) ; 2 uses
  %i.fn = fpext double %.01422.i.i22 to x86_fp80
  %i.fo = fmul x86_fp80 %i.fn, f0x401F8000000000000000
  %i.fp = fptrunc x86_fp80 %i.fo to double        ; 2 uses
  %i.fq = add i64 %.023.i.i21, -1                 ; 2 uses
  %.not.i.i24 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i24, label %bb.e, label %select.unfold.i.i20, !llvm.loop !154

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26: ; preds = %bb.e, %bb.f
  %.016.i.i25 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.f ], [ %i.ct, %bb.e ]
  %i.fr = tail call double @llvm.fmuladd.f64(double %.016.i.i25, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.fs = fmul double %i.fr, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.fs) ; 4 uses
  %i.fu = fcmp ogt double %i.ft, 1.000000e+00
  %i.fv = fcmp oeq double %i.ft, 0.000000e+00
  %i.fw = or i1 %i.fu, %i.fv
  br i1 %i.fw, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26
  %i.fx = tail call ninf double @llvm.log.f64(double %i.ft)
  %i.fy = fmul double %i.fx, -2.000000e+00
  %i.fz = fdiv double %i.fy, %i.ft
  %i.ga = tail call double @sqrt(double noundef %i.fz) #14, !tbaa !3 ; 2 uses
  %i.gb = fmul double %i.cs, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gb, ptr %i.gc, align 8, !tbaa !99
  store i8 1, ptr %i.a, align 8, !tbaa !101
  %i.gd = fmul double %i.fr, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.t, %bb.b ], [ %i.gd, %bb.g ]
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !98
  %i.gg = load double, ptr %2, align 8, !tbaa !95
  %i.gh = tail call double @llvm.fmuladd.f64(double %.0, double %i.gf, double %i.gg)
  ret double %i.gh
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #1

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %.unpack.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !83 ; 3 uses
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !tbaa !83
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !104
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !156
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.d, double noundef %i.m) #14, !inline_history !157
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
