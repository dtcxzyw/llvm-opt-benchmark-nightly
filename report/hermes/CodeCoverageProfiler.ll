inline.NumInlined: 726
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm20CodeCoverageProfiler20getExecutedFunctionsB5cxx11Ev:bb.a
  %.not.i6 = icmp eq i32 %i.j, 0
  br i1 %.not.i6, label %_ZN6hermes2vm20CodeCoverageProfiler12allProfilersEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %i.k, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr @_ZZN6hermes2vm20CodeCoverageProfiler12allProfilersEvE12allProfilers, align 8, !tbaa !20
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6hermes2vm20CodeCoverageProfiler12allProfilersEvE12allProfilers) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes2vm20CodeCoverageProfiler12allProfilersEvE12allProfilers) #14
  br label %_ZN6hermes2vm20CodeCoverageProfiler12allProfilersEv.exit

_ZN6hermes2vm20CodeCoverageProfiler12allProfilersEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.e, %bb.f
  %i.r = load ptr, ptr @_ZZN6hermes2vm20CodeCoverageProfiler12allProfilersEvE12allProfilers, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.s, ptr %0, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.07.011 = load ptr, ptr %i.x, align 8, !tbaa !125 ; 2 uses
  %.not12 = icmp eq ptr %.sroa.07.011, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm20CodeCoverageProfiler12allProfilersEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit, %_ZN6hermes2vm20CodeCoverageProfiler12allProfilersEv.exit
  %i.aa = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #14 ; 0 uses
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit
  %.sroa.07.013 = phi ptr [ %.sroa.07.011, %.lr.ph ], [ %.sroa.07.0, %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126
  call void @_ZN6hermes2vm20CodeCoverageProfiler25getExecutedFunctionsLocalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.28") align 8 %1, ptr noundef nonnull align 8 dereferenceable(97) %i.ac)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !126
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128, !nonnull !89, !align !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1184
  %i.ag = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaISC_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RSE_EEES6_INSH_14_Node_iteratorISF_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !135   ; 3 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !138 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i ], [ %i.ah, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !139 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !140
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #17
  br label %_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ai
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !141

_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exit.i

_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exitthread-pre-split.i, %bb.g
  %i.aq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exitthread-pre-split.i ], [ %i.ah, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exit.i
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #17
  br label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes2vm20CodeCoverageProfiler8FuncInfoEEvT_S5_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.sroa.07.0 = load ptr, ptr %.sroa.07.013, align 8, !tbaa !125 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, null
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm20CodeCoverageProfiler25getExecutedFunctionsLocalEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.28") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"struct.std::pair.269", align 8    ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.hermes::OptValue", align 4  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !143
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !46   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.s ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.idx.i = mul nuw nsw i64 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i ; 5 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.d, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.w, %.critedge2.i8.i14.i6.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.v = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !50
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.v to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 48 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i9.i15.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !144

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %bb.c, %bb.d
  %.pn14.i = phi ptr [ %i.t, %bb.c ], [ %i.p, %bb.d ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ], [ %i.u, %.critedge2.i8.i14.i6.i ] ; 2 uses
  %.pn12.i = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.d ], [ %i.u, %.critedge2.i8.i14.i6.i ], [ %i.u, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.s ; 2 uses
  %.not4447 = icmp eq ptr %.pn14.i, %i.x
  br i1 %.not4447, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.e

._crit_edge50:                                    ; preds = %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E5beginEv.exit
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #14 ; 0 uses
  ret void

bb.e:                                             ; preds = %.lr.ph49, %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit
  %.sroa.040.048 = phi ptr [ %.pn14.i, %.lr.ph49 ], [ %.sroa.040.2, %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit ] ; 6 uses
  %i.ap = load ptr, ptr %.sroa.040.048, align 8, !tbaa !112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !94 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.at = load i32, ptr %i.as, align 8, !tbaa !145
  store i32 %i.at, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %9 = load ptr, ptr %.sroa.040.048, align 8, !tbaa !112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !146
  store ptr %i.av, ptr %6, align 8
  store i64 %i.ax, ptr %i.y, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 240 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !147 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.f, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(280) %i.ar) #14, !inline_history !148
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !147
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit: ; preds = %bb.e, %bb.f
  %i.bc = phi ptr [ %.pre.i, %bb.f ], [ %i.az, %bb.e ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !149
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = zext i32 %i.bh to i64
  %i.bo = sub nsw i64 0, %i.bn
  %.not51 = icmp eq i64 %i.bm, %i.bo
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  %i.bp = icmp ne ptr %i.bc, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  br label %bb.g

._crit_edge:                                      ; preds = %bb.aj, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.040.048, i64 48 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.bs, %.pn12.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %._crit_edge, %.critedge2.i6.i
  %.sroa.040.1 = phi ptr [ %i.bu, %.critedge2.i6.i ], [ %i.bs, %._crit_edge ] ; 3 uses
  %i.bt = load ptr, ptr %.sroa.040.1, align 8, !tbaa !50
  %magicptr.i5.i = ptrtoint ptr %i.bt to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit [
    i64 -8, label %.critedge2.i6.i
    i64 -16, label %.critedge2.i6.i
  ]

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i, %.lr.ph.i4.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.040.1, i64 48 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.bu, %.pn12.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !144

_ZN4llvh16DenseMapIteratorIPN6hermes2vm13RuntimeModuleESt6vectorIbSaIbEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EELb0EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %._crit_edge
  %.sroa.040.2 = phi ptr [ %i.bs, %._crit_edge ], [ %i.bu, %.critedge2.i6.i ], [ %.sroa.040.1, %.lr.ph.i4.i ] ; 2 uses
  %.not44 = icmp eq ptr %.sroa.040.2, %i.x
  br i1 %.not44, label %._crit_edge50, label %bb.e

bb.g:                                             ; preds = %.lr.ph, %bb.aj
  %i.bv = phi ptr [ %i.bi, %.lr.ph ], [ %i.gi, %bb.aj ]
  %i.bw = phi i64 [ 0, %.lr.ph ], [ %i.gf, %bb.aj ]
  %.046 = phi i32 [ 0, %.lr.ph ], [ %i.ge, %bb.aj ] ; 4 uses
  %i.bx = lshr i32 %.046, 6
  %.zext = zext nneg i32 %i.bx to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.zext
  %i.bz = and i64 %i.bw, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = load i64, ptr %i.by, align 8, !tbaa !45
  %i.cc = and i64 %i.cb, %i.ca
  %.not45 = icmp eq i64 %i.cc, 0
  br i1 %.not45, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.269") align 8 %5, ptr noundef nonnull align 8 dereferenceable(376) %i.ar, i32 noundef %.046) #14
  %i.cd = load ptr, ptr %i.z, align 8, !tbaa !150 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ce = icmp ne ptr %i.cd, null
  %or.cond = and i1 %i.bp, %i.ce
  br i1 %or.cond, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !155
  %.not = icmp eq i32 %i.cf, -1
  br i1 %.not, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %10 = load i32, ptr %i.cd, align 4, !tbaa !155
  call void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::OptValue") align 4 %7, ptr noundef nonnull align 8 dereferenceable(136) %i.bc, i32 noundef %10, i32 noundef 0) #14
  %i.cg = load i8, ptr %i.aa, align 4, !tbaa !157, !range !160, !noundef !89
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ci = load i32, ptr %i.ab, align 4, !tbaa !161
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !162
  store ptr %i.ac, ptr %4, align 8, !tbaa !165, !noalias !162
  store i64 0, ptr %i.ad, align 8, !tbaa !146, !noalias !162
  store i8 0, ptr %i.ac, align 8, !tbaa !140, !noalias !162
  %i.cj = zext i32 %i.ci to i64
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !166, !noalias !162
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load ptr, ptr %i.bq, align 8, !tbaa !169, !noalias !162 ; 2 uses
  %i.cn = load ptr, ptr %i.br, align 8, !tbaa !171, !noalias !162
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = call { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8) %i.cl, ptr %i.cm, i64 %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %4) #14, !noalias !162 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.not.i.i27 = icmp eq ptr %i.cs, null
  store ptr %i.ae, ptr %8, align 8, !tbaa !165, !alias.scope !175
  br i1 %.not.i.i27, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.af, align 8, !tbaa !146, !alias.scope !175
  store i8 0, ptr %i.ae, align 8, !tbaa !140, !alias.scope !175
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !175
  store i64 %i.ct, ptr %i.e, align 8, !tbaa !45, !noalias !175
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %bb.n, label %._crit_edge.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #14 ; 2 uses
  store ptr %i.cv, ptr %8, align 8, !tbaa !139, !alias.scope !175
  %i.cw = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !175
  store i64 %i.cw, ptr %i.ae, align 8, !tbaa !140, !alias.scope !175
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.n, %bb.m
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  switch i64 %i.ct, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !140
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 1 %i.cs, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !175 ; 2 uses
  store i64 %i.cz, ptr %i.af, align 8, !tbaa !146, !alias.scope !175
  %i.da = load ptr, ptr %8, align 8, !tbaa !139, !alias.scope !175
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !175
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.l
  %i.dc = load ptr, ptr %4, align 8, !tbaa !139, !noalias !162 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ac
  br i1 %i.dd, label %_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i
  %i.de = load i64, ptr %i.ac, align 8, !tbaa !140, !noalias !162
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #17
  br label %_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej.exit

_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej.exit: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.dg = load i32, ptr %i.ag, align 4, !tbaa !176
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.di = load i32, ptr %i.ah, align 4, !tbaa !177
  %i.dj = add i32 %i.di, -1                       ; 2 uses
  store i32 %i.dj, ptr %i.h, align 4, !tbaa !3
  %i.dk = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 7 uses
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !142
  %.not.i28 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i28, label %bb.x, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ak, ptr %3, align 8, !tbaa !165
  %i.dm = load ptr, ptr %8, align 8, !tbaa !139   ; 2 uses
  %i.dn = load i64, ptr %i.af, align 8, !tbaa !146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !45
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %bb.r, label %._crit_edge.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #14 ; 2 uses
  store ptr %i.dp, ptr %3, align 8, !tbaa !139
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !45
  store i64 %i.dq, ptr %i.ak, align 8, !tbaa !140
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r, %bb.q
  %i.dr = phi ptr [ %i.dp, %bb.r ], [ %i.ak, %bb.q ] ; 2 uses
  switch i64 %i.dn, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.ds = load i8, ptr %i.dm, align 1, !tbaa !140
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !140
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  store i64 %i.dt, ptr %i.al, align 8, !tbaa !146
  %i.du = load ptr, ptr %3, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  store i32 %i.dh, ptr %i.dk, align 8, !tbaa !178
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 %i.dj, ptr %i.dw, align 4, !tbaa !180
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 3 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !165
  %i.dz = load ptr, ptr %3, align 8, !tbaa !139   ; 2 uses
  %i.ea = load i64, ptr %i.al, align 8, !tbaa !146 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !45
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %bb.u, label %._crit_edge.i.i.i.i29

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ec = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #14 ; 2 uses
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !139
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.ed, ptr %i.dy, align 8, !tbaa !140
  br label %._crit_edge.i.i.i.i29

._crit_edge.i.i.i.i29:                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ee = phi ptr [ %i.ec, %bb.u ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.ea, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i29
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !140
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !140
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dz, i64 %i.ea, i1 false)
  br label %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i29
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !45  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !146
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !139
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.ek = load ptr, ptr %3, align 8, !tbaa !139   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ak
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.em = load i64, ptr %i.ak, align 8, !tbaa !140
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN6hermes2vm20CodeCoverageProfiler8FuncInfoC2EjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eo = load ptr, ptr %i.ai, align 8, !tbaa !138
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store ptr %i.ep, ptr %i.ai, align 8, !tbaa !138
  br label %_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE12emplace_backIJRKjS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS3_DpOT_.exit

bb.x:                                             ; preds = %_ZNK6hermes3hbc9DebugInfo15getFilenameByIDB5cxx11Ej.exit
  call void @_ZNSt6vectorIN6hermes2vm20CodeCoverageProfiler8FuncInfoESaIS3_EE17_M_realloc_insertIJRKjS8_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %8)
end_hunk_0
