Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SamplingProfilerSampler?download=true
inline.NumInlined: 568
inline.NumDeleted: 379
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_:bb.a

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !79
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !79
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !31
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !31
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #16
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !78
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 !guid !160 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
  unreachable

_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !17
  %.sroa.02.0.copyload.i = load i64, ptr %3, align 8, !tbaa !17
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !55 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !55 ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.02.0.copyload.i, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.v = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ugt i64 %i.x, 384307168202282325
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.z = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !22
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 4 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !21
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !22
  %i.ae = icmp sgt i64 %i.w, 24
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !163

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.w, i1 false)
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i
  %i.af = icmp eq i64 %i.w, 24
  br i1 %i.af, label %bb.f, label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.copyload.i, i64 24, i1 false), !tbaa.struct !61
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit

_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit: ; preds = %.thread.i.i.i, %bb.d, %bb.e, %bb.f
  %i.ag = phi ptr [ %i.ac, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.z, %.thread.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !62
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 16, i1 false), !alias.scope !166
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !55, !alias.scope !165
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !55, !alias.scope !164
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22, !alias.scope !165
  store ptr %i.an, ptr %i.al, align 8, !tbaa !22, !alias.scope !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false), !alias.scope !165
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !156

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes2vm16SamplingProfiler10StackTraceC2EmNSt6chrono10time_pointINS3_3_V212steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS1_10StackFrameESt6vectorISE_SaISE_EEEESJ_.exit ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i20
  %.012.i.i.i21 = phi ptr [ %i.ay, %.lr.ph.i.i.i20 ], [ %i.aq, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i22 = phi ptr [ %i.ax, %.lr.ph.i.i.i20 ], [ %1, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i22, i64 16, i1 false), !alias.scope !169
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 16 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !55, !alias.scope !168
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !55, !alias.scope !167
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22, !alias.scope !168
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !22, !alias.scope !167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !alias.scope !168
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, label %.lr.ph.i.i.i20, !llvm.loop !156

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25: ; preds = %.lr.ph.i.i.i20, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aq, %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ay, %.lr.ph.i.i.i20 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #16
  br label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit25, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !161
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef double @_ZNSt19normal_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !175 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !71, !range !73, !noundef !74
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000), !tbaa !6
  %i.e = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00), !tbaa !6
  %i.f = fdiv x86_fp80 %i.d, %i.e
  %i.g = fptoui x86_fp80 %i.f to i64              ; 2 uses
  %i.h = add i64 %i.g, 52
  %i.i = udiv i64 %i.h, %i.g
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4992 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4984 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3168 ; 2 uses
  %.pre.pre = load i64, ptr %i.j, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4984
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4984
  br label %select.unfold.i.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load double, ptr %i.s, align 8, !tbaa !70
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.u = fdiv double %i.cn, %i.cq                 ; 2 uses
  %i.v = fcmp ult double %i.u, 1.000000e+00
  br i1 %i.v, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit, label %bb.d, !prof !77

select.unfold.i.i:                                ; preds = %select.unfold.i.i.backedge, %.preheader
  %i.w = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.023.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ %.023.i.i.be, %select.unfold.i.i.backedge ]
  %.01422.i.i = phi double [ 1.000000e+00, %.preheader ], [ %.01422.i.i.be, %select.unfold.i.i.backedge ] ; 2 uses
  %.01521.i.i = phi double [ 0.000000e+00, %.preheader ], [ %.01521.i.i.be, %select.unfold.i.i.backedge ]
  %i.x = icmp ugt i64 %i.w, 623
  br i1 %i.x, label %vector.ph101, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph101:                                     ; preds = %select.unfold.i.i
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !17
  %vector.recur.init104 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next108, %vector.body102 ] ; 3 uses
  %vector.recur105 = phi <2 x i64> [ %vector.recur.init104, %vector.ph101 ], [ %wide.load106, %vector.body102 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %wide.load106 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !17 ; 5 uses
  %i.ab = shufflevector <2 x i64> %vector.recur105, <2 x i64> %wide.load106, <2 x i32> <i32 1, i32 2>
  %i.ac = and <2 x i64> %i.ab, splat (i64 -2147483648)
  %i.ad = and <2 x i64> %wide.load106, splat (i64 2147483646)
  %i.ae = or disjoint <2 x i64> %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 3176
  %wide.load107 = load <2 x i64>, ptr %i.af, align 8, !tbaa !17
  %i.ag = lshr exact <2 x i64> %i.ae, splat (i64 1)
  %i.ah = xor <2 x i64> %i.ag, %wide.load107
  %i.ai = and <2 x i64> %wide.load106, splat (i64 1)
  %i.aj = icmp eq <2 x i64> %i.ai, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.al = xor <2 x i64> %i.ah, %i.ak
  store <2 x i64> %i.al, ptr %i.y, align 8, !tbaa !17
  %index.next108 = add nuw i64 %index103, 2       ; 2 uses
  %i.am = icmp eq i64 %index.next108, 226
  br i1 %i.am, label %vector.ph91, label %vector.body102, !llvm.loop !170

vector.ph91:                                      ; preds = %vector.body102
  %vector.recur.extract110 = extractelement <2 x i64> %wide.load106, i64 1
  %i.an = and i64 %vector.recur.extract110, -2147483648
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %i.ap = and i64 %i.ao, 2147483646
  %i.aq = or disjoint i64 %i.ap, %i.an
  %i.ar = load i64, ptr %i.o, align 8, !tbaa !17
  %i.as = lshr exact i64 %i.aq, 1
  %i.at = xor i64 %i.as, %i.ar
  %i.au = and i64 %i.ao, 1
  %.not20.i.i = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.aw = xor i64 %i.at, %i.av
  store i64 %i.aw, ptr %i.m, align 8, !tbaa !17
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !17
  %vector.recur.init94 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph91
  %index93 = phi i64 [ 0, %vector.ph91 ], [ %index.next98, %vector.body92 ] ; 3 uses
  %vector.recur95 = phi <2 x i64> [ %vector.recur.init94, %vector.ph91 ], [ %wide.load96, %vector.body92 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index93 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1816
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1824
  %wide.load96 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !17 ; 4 uses
  %i.bb = shufflevector <2 x i64> %vector.recur95, <2 x i64> %wide.load96, <2 x i32> <i32 1, i32 2>
  %i.bc = and <2 x i64> %i.bb, splat (i64 -2147483648)
  %i.bd = and <2 x i64> %wide.load96, splat (i64 2147483646)
  %i.be = or disjoint <2 x i64> %i.bd, %i.bc
  %wide.load97 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !17
  %i.bf = lshr exact <2 x i64> %i.be, splat (i64 1)
  %i.bg = xor <2 x i64> %i.bf, %wide.load97
  %i.bh = and <2 x i64> %wide.load96, splat (i64 1)
  %i.bi = icmp eq <2 x i64> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bk = xor <2 x i64> %i.bg, %i.bj
  store <2 x i64> %i.bk, ptr %i.ay, align 8, !tbaa !17
  %index.next98 = add nuw i64 %index93, 2         ; 2 uses
  %i.bl = icmp eq i64 %index.next98, 396
  br i1 %i.bl, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body92, !llvm.loop !171

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body92
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !17
  %i.bn = and i64 %i.bm, -2147483648
  %i.bo = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.bp = and i64 %i.bo, 2147483646
  %i.bq = or disjoint i64 %i.bp, %i.bn
  %i.br = load i64, ptr %i.l, align 8, !tbaa !17
  %i.bs = lshr exact i64 %i.bq, 1
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = and i64 %i.bo, 1
  %.not.i.i27 = icmp eq i64 %i.bu, 0
  %i.bv = select i1 %.not.i.i27, i64 0, i64 2567483615
  %i.bw = xor i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !17
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.bx = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.w, %select.unfold.i.i ] ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 3 uses
  store i64 %i.by, ptr %i.j, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !17 ; 2 uses
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
  br label %select.unfold.i.i

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.d ], [ %i.u, %bb.c ]
  br label %select.unfold.i.i20

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41
  %i.cs = tail call double @llvm.fmuladd.f64(double %.016.i.i, double 2.000000e+00, double -1.000000e+00) ; 3 uses
  %i.ct = fdiv double %i.fm, %i.fp                ; 2 uses
  %i.cu = fcmp ult double %i.ct, 1.000000e+00
  br i1 %i.cu, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit26, label %bb.f, !prof !77

select.unfold.i.i20:                              ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit
  %i.cv = phi i64 [ %i.by, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.ex, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.023.i.i21 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fq, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %.01422.i.i22 = phi double [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fp, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ] ; 2 uses
  %.01521.i.i23 = phi double [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv.exit ], [ %i.fm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41 ]
  %i.cw = icmp ugt i64 %i.cv, 623
  br i1 %i.cw, label %vector.ph81, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

vector.ph81:                                      ; preds = %select.unfold.i.i20
  %.pre.i.i28 = load i64, ptr %1, align 8, !tbaa !17
  %vector.recur.init84 = insertelement <2 x i64> poison, i64 %.pre.i.i28, i64 1
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next88, %vector.body82 ] ; 3 uses
  %vector.recur85 = phi <2 x i64> [ %vector.recur.init84, %vector.ph81 ], [ %wide.load86, %vector.body82 ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %wide.load86 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !17 ; 5 uses
  %i.da = shufflevector <2 x i64> %vector.recur85, <2 x i64> %wide.load86, <2 x i32> <i32 1, i32 2>
  %i.db = and <2 x i64> %i.da, splat (i64 -2147483648)
  %i.dc = and <2 x i64> %wide.load86, splat (i64 2147483646)
  %i.dd = or disjoint <2 x i64> %i.dc, %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 3176
  %wide.load87 = load <2 x i64>, ptr %i.de, align 8, !tbaa !17
  %i.df = lshr exact <2 x i64> %i.dd, splat (i64 1)
  %i.dg = xor <2 x i64> %i.df, %wide.load87
  %i.dh = and <2 x i64> %wide.load86, splat (i64 1)
  %i.di = icmp eq <2 x i64> %i.dh, zeroinitializer
  %i.dj = select <2 x i1> %i.di, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dk = xor <2 x i64> %i.dg, %i.dj
  store <2 x i64> %i.dk, ptr %i.cx, align 8, !tbaa !17
  %index.next88 = add nuw i64 %index83, 2         ; 2 uses
  %i.dl = icmp eq i64 %index.next88, 226
  br i1 %i.dl, label %vector.ph, label %vector.body82, !llvm.loop !172

vector.ph:                                        ; preds = %vector.body82
  %vector.recur.extract = extractelement <2 x i64> %wide.load86, i64 1
  %i.dm = and i64 %vector.recur.extract, -2147483648
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !17  ; 2 uses
  %i.do = and i64 %i.dn, 2147483646
  %i.dp = or disjoint i64 %i.do, %i.dm
  %i.dq = load i64, ptr %i.r, align 8, !tbaa !17
  %i.dr = lshr exact i64 %i.dp, 1
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = and i64 %i.dn, 1
  %.not20.i.i30 = icmp eq i64 %i.dt, 0
  %i.du = select i1 %.not20.i.i30, i64 0, i64 2567483615
  %i.dv = xor i64 %i.ds, %i.du
  store i64 %i.dv, ptr %i.p, align 8, !tbaa !17
  %.pre24.i.i34 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !17
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i34, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1816
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1824
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !17 ; 4 uses
  %i.ea = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.eb = and <2 x i64> %i.ea, splat (i64 -2147483648)
  %i.ec = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.ed = or disjoint <2 x i64> %i.ec, %i.eb
  %wide.load80 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !17
  %i.ee = lshr exact <2 x i64> %i.ed, splat (i64 1)
  %i.ef = xor <2 x i64> %i.ee, %wide.load80
  %i.eg = and <2 x i64> %wide.load, splat (i64 1)
  %i.eh = icmp eq <2 x i64> %i.eg, zeroinitializer
  %i.ei = select <2 x i1> %i.eh, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ej = xor <2 x i64> %i.ef, %i.ei
  store <2 x i64> %i.ej, ptr %i.dx, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ek = icmp eq i64 %index.next, 396
  br i1 %i.ek, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39, label %vector.body, !llvm.loop !173

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39: ; preds = %vector.body
  %i.el = load i64, ptr %i.k, align 8, !tbaa !17
  %i.em = and i64 %i.el, -2147483648
  %i.en = load i64, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.eo = and i64 %i.en, 2147483646
  %i.ep = or disjoint i64 %i.eo, %i.em
  %i.eq = load i64, ptr %i.l, align 8, !tbaa !17
  %i.er = lshr exact i64 %i.ep, 1
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.en, 1
  %.not.i.i40 = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i.i40, i64 0, i64 2567483615
  %i.ev = xor i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.k, align 8, !tbaa !17
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit41: ; preds = %select.unfold.i.i20, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39
  %i.ew = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i39 ], [ %i.cv, %select.unfold.i.i20 ] ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 3 uses
  store i64 %i.ex, ptr %i.j, align 8, !tbaa !64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ew
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !17 ; 2 uses
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
  br i1 %.not.i.i24, label %bb.e, label %select.unfold.i.i20, !llvm.loop !174

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
  %i.ga = tail call double @sqrt(double noundef %i.fz) #14, !tbaa !6 ; 2 uses
  %i.gb = fmul double %i.cs, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.gb, ptr %i.gc, align 8, !tbaa !70
  store i8 1, ptr %i.a, align 8, !tbaa !71
  %i.gd = fmul double %i.fr, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi double [ %i.t, %bb.b ], [ %i.gd, %bb.g ]
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !68
  %i.gg = load double, ptr %2, align 8, !tbaa !67
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
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 !guid !178 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 !guid !179 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS6_dEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !guid !181 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182
  %.unpack.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !58 ; 3 uses
  %.elt3.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.unpack4.i.i.i.i = load i64, ptr %.elt3.i.i.i.i, align 8, !tbaa !58
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack4.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !74
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm17sampling_profiler7SamplerEFvdEPS5_dEEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !183
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.d, double noundef %i.m) #14, !inline_history !180
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
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 8903782900973678226}
!8 = !{i64 6696727238241492743}
!9 = !{i64 -4665501529601166075}
!10 = !{i64 -1397500906339616749}
!11 = !{i64 9115291000924304939}
!12 = !{i64 -3180403799685036522}
!13 = !{i64 -5487137369149356438}
!14 = !{!"vtable pointer", !3, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !4, i64 0}
!19 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackFrameE", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 16}
!23 = !{!"any p2 pointer", !18, i64 0}
!24 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !23, i64 0}
!25 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!26 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!27 = !{!"float", !4, i64 0}
!28 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !27, i64 0, !16, i64 8}
!29 = !{!"_ZTSSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE", !24, i64 0, !16, i64 8, !26, i64 16, !16, i64 24, !28, i64 32, !25, i64 48}
!30 = !{!29, !25, i64 16}
!31 = !{!26, !25, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!29, !24, i64 0}
!34 = !{!29, !16, i64 8}
!35 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !18, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSSt12__mutex_base", !4, i64 0}
!38 = !{!"_ZTSSt5mutex", !37, i64 0}
!39 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackTraceE", !18, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !16, i64 0}
!42 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !41, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE12_Vector_implE", !20, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE", !44, i64 0}
!46 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackTraceE", !16, i64 0, !42, i64 8, !45, i64 16}
!47 = !{!"_ZTSSt13unordered_setIPN6hermes2vm16SamplingProfilerESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !29, i64 0}
!48 = !{!"bool", !4, i64 0}
!49 = !{!"_ZTSNSt6thread2idE", !16, i64 0}
!50 = !{!"_ZTSSt6thread", !49, i64 0}
!51 = !{!"_ZTSSt9__condvar", !4, i64 0}
!52 = !{!"_ZTSSt18condition_variable", !51, i64 0}
!53 = !{!"_ZTSN6hermes2vm17sampling_profiler7SamplerE", !38, i64 8, !47, i64 48, !48, i64 104, !5, i64 108, !46, i64 112, !50, i64 152, !52, i64 160}
!54 = !{!53, !5, i64 108}
!55 = !{!19, !19, i64 0}
!56 = !{!40, !39, i64 8}
!57 = !{!40, !39, i64 16}
!58 = !{!4, !4, i64 0}
!59 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackFrame9FrameKindE", !4, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{i64 0, i64 16, !58, i64 16, i64 4, !60}
!62 = !{!20, !19, i64 8}
!63 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !4, i64 0, !16, i64 4992}
!64 = !{!63, !16, i64 4992}
!65 = !{!"double", !4, i64 0}
!66 = !{!"_ZTSNSt19normal_distributionIdE10param_typeE", !65, i64 0, !65, i64 8}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!"_ZTSSt19normal_distributionIdE", !66, i64 0, !65, i64 16, !48, i64 24}
!70 = !{!69, !65, i64 16}
!71 = !{!69, !48, i64 24}
!72 = !{!53, !48, i64 104}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!"p1 _ZTSN6hermes2vm17sampling_profiler7SamplerE", !18, i64 0}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{!29, !16, i64 24}
!79 = !{!25, !25, i64 0}
!80 = distinct !{!80, !32}
!81 = !{i64 -255843425217623951}
!82 = !{i64 -2995098404034876734}
!83 = !{i64 6884177987045399249}
!84 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN6hermes2vm16SamplingProfilerELb0EEEEEE", !18, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{i64 -4361450308820994778}
!87 = !{i64 2074415107407003873}
!88 = !{i64 -3666504975314972031}
!89 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_Vector_implE", !40, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE", !90, i64 0}
!92 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !18, i64 0}
!93 = !{!"_ZTSN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEEE", !92, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!94 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !24, i64 0, !16, i64 8, !26, i64 16, !16, i64 24, !28, i64 32, !25, i64 48}
!95 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !94, i64 0}
!96 = !{!"p2 _ZTSN6hermes2vm6DomainE", !23, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIPN6hermes2vm6DomainESaIS3_EE", !99, i64 0}
!101 = !{!"p2 _ZTSN6hermes2vm14NativeFunctionE", !23, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE", !104, i64 0}
!106 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !18, i64 0}
!107 = !{!"_ZTSN6hermes2vm16SamplingProfilerE", !38, i64 8, !91, i64 48, !5, i64 72, !5, i64 76, !46, i64 80, !93, i64 120, !16, i64 144, !95, i64 152, !100, i64 208, !105, i64 232, !106, i64 256}
!108 = !{!107, !5, i64 72}
!109 = !{!107, !5, i64 76}
!110 = !{!97, !96, i64 8}
!111 = !{!97, !96, i64 0}
!112 = !{!97, !96, i64 16}
!113 = !{!102, !101, i64 8}
!114 = !{!102, !101, i64 0}
!115 = !{!102, !101, i64 16}
!116 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!117 = !{i64 3082217237016603923}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !32}
!120 = !{i64 -7190694308722144132}
!121 = !{!"p1 omnipotent char", !18, i64 0}
!122 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !121, i64 0}
!123 = !{!122, !121, i64 0}
!124 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !122, i64 0, !16, i64 8, !4, i64 16}
!125 = !{!124, !16, i64 8}
!126 = !{!124, !121, i64 0}
!127 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!128 = !{!127, !16, i64 0}
!129 = !{!127, !16, i64 8}
!130 = !{i64 3294669909799152332}
!131 = distinct !{null, null, null}
!132 = !{i64 5901364105152994808}
!133 = !{!49, !16, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm2EdLb0EE", !65, i64 0}
!135 = !{!134, !65, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm1EPN6hermes2vm17sampling_profiler7SamplerELb0EE", !75, i64 0}
!137 = !{!136, !75, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EMN6hermes2vm17sampling_profiler7SamplerEFvdELb0EE", !4, i64 0}
!139 = !{!138, !4, i64 0}
!140 = !{!"p1 _ZTSNSt6thread6_StateE", !18, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{i64 -8875540675659232388}
!143 = !{i64 6011609371932169213}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !32}
!146 = !{i64 -8376558464502268828}
!147 = distinct !{!147, !32}
!148 = !{i64 7223008678201882737}
!149 = !{!29, !25, i64 48}
!150 = distinct !{!150, !32}
!151 = distinct !{!151, !32}
!152 = !{i64 8694904590248348790}
!153 = distinct !{!153, i1 true, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_"}
!154 = distinct !{!154, !153, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!155 = distinct !{!155, !153, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !32}
!157 = distinct !{!157, i1 true, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_"}
!158 = distinct !{!158, !157, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!159 = distinct !{!159, !157, !"_ZSt19__relocate_object_aIN6hermes2vm16SamplingProfiler10StackTraceES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!160 = !{i64 -4899882550379836961}
!161 = !{!40, !39, i64 0}
!162 = !{!46, !16, i64 0}
!163 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!164 = !{!154}
!165 = !{!155}
!166 = !{!154, !155}
!167 = !{!158}
!168 = !{!159}
!169 = !{!158, !159}
!170 = distinct !{!170, !32, !176, !177}
!171 = distinct !{!171, !32, !176, !177}
!172 = distinct !{!172, !32, !176, !177}
!173 = distinct !{!173, !32, !176, !177}
!174 = distinct !{!174, !32}
!175 = !{i64 -7692725526086168878}
!176 = !{!"llvm.loop.isvectorized", i32 1}
!177 = !{!"llvm.loop.unroll.runtime.disable"}
!178 = !{i64 7069532069847734166}
!179 = !{i64 5012755659366687576}
!180 = distinct !{null, null, null, null}
!181 = !{i64 -7172192401363517478}
!182 = !{!75, !75, i64 0}
!183 = !{!65, !65, i64 0}
end_hunk_0
