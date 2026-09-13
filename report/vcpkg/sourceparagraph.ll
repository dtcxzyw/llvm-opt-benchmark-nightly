Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/sourceparagraph?download=true
inline.NumInlined: 4999
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg26DependencyRequestedFeatureESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterINS2_12_GLOBAL__N_112Canonicalize21DependencyFeatureLessEEEEvT_T0_:bb.a
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %bb.e

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread1.i.i
  %i.ac = sub i64 %i.o, %i.q
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i
  %.0.in.i.i = phi i32 [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %.0.i.i = icmp slt i32 %.0.in.i.i, 0
  %i.ad = load ptr, ptr %.sroa.013.0, align 8, !tbaa !57 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 16 ; 7 uses
  %i.af = icmp eq ptr %i.ad, %i.ae                ; 2 uses
  br i1 %.0.i.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %.sroa.0.0, align 8, !tbaa !57 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -24 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  %.pre22 = load i64, ptr %i.p, align 8, !tbaa !58 ; 5 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %bb.f
  br i1 %i.ai, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.ai, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.aj = icmp ult i64 %.pre22, 16
  call void @llvm.assume(i1 %i.aj)
  switch i64 %.pre22, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !55
  store i8 %i.ak, ptr %i.ad, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %.pre22, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.al = load i64, ptr %i.p, align 8, !tbaa !58  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !58
  %i.an = load ptr, ptr %.sroa.013.0, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !55
  %.pre.i.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !57
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store ptr %i.ag, ptr %.sroa.013.0, align 8, !tbaa !57
  store i64 %.pre22, ptr %i.ap, align 8, !tbaa !58
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !55
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !55
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !55
  store ptr %i.ag, ptr %.sroa.013.0, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %.pre22, ptr %i.as, align 8, !tbaa !58
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !55
  store i64 %i.at, ptr %i.ae, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ad, ptr %.sroa.0.0, align 8, !tbaa !57
  store i64 %i.ar, ptr %i.ah, align 8, !tbaa !55
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %.sroa.0.0, align 8, !tbaa !57
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit

_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %i.au = phi ptr [ %i.ad, %bb.j ], [ %i.ah, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.p, align 8, !tbaa !58
  store i8 0, ptr %i.au, align 1, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 32
  %i.aw = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -8
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg18PlatformExpression4ExpraSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #24 ; 0 uses
  br label %bb.c, !llvm.loop !796

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg26DependencyRequestedFeatureD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ay

bb.m:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %1, align 8, !tbaa !57    ; 6 uses
  %i.ba = icmp eq ptr %i.az, %i.a                 ; 2 uses
  %.pre20 = load i64, ptr %i.l, align 8, !tbaa !58 ; 5 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.m
  br i1 %i.ba, label %bb.n, label %.thread.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2: ; preds = %bb.m
  br i1 %i.ba, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bb = icmp ult i64 %.pre20, 16
  call void @llvm.assume(i1 %i.bb)
  %.not21.i.i5 = icmp eq ptr %1, %.sroa.013.0
  br i1 %.not21.i.i5, label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10, label %bb.o, !prof !157

bb.o:                                             ; preds = %bb.n
  switch i64 %.pre20, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !55
  store i8 %i.bc, ptr %i.ad, align 1, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.az, i64 %.pre20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6: ; preds = %bb.q, %bb.p, %bb.o
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !58
  %i.bf = load ptr, ptr %.sroa.013.0, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !55
  %.pre.i.i7 = load ptr, ptr %1, align 8, !tbaa !57
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10

.thread.i.i9:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store ptr %i.az, ptr %.sroa.013.0, align 8, !tbaa !57
  store i64 %.pre20, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.bi, ptr %i.ae, align 8, !tbaa !55
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !55
  store ptr %i.az, ptr %.sroa.013.0, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 8
  store i64 %.pre20, ptr %i.bk, align 8, !tbaa !58
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.bl, ptr %i.ae, align 8, !tbaa !55
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3
  store ptr %i.ad, ptr %1, align 8, !tbaa !57
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !55
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i3, %.thread.i.i9
  store ptr %i.a, ptr %1, align 8, !tbaa !57
  br label %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10

_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6, %bb.r, %bb.s
  %i.bm = phi ptr [ %i.ad, %bb.r ], [ %i.a, %bb.s ], [ %i.az, %bb.n ], [ %.pre.i.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i6 ]
  store i64 0, ptr %i.l, align 8, !tbaa !58
  store i8 0, ptr %i.bm, align 1, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 32
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg18PlatformExpression4ExpraSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.m) #24 ; 0 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.bp = load ptr, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.a
  br i1 %i.bq, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10
  %i.br = load i64, ptr %i.a, align 8, !tbaa !55
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #26
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZN5vcpkg26DependencyRequestedFeatureaSEOS0_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.94", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.94", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEET_SJ_SJ_T0_.exit
  %i.h = icmp eq i64 %i.y, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph58, !llvm.loop !797

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa54 = phi i64 [ %i.d, %.lr.ph ], [ %i.bs, %bb.b ] ; 2 uses
  %.lcssa52 = phi i64 [ %i.c, %.lr.ph ], [ %i.br, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.025.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa54, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.n, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !150
  store ptr null, ptr %i.k, align 8, !tbaa !150
  store i64 %i.l, ptr %4, align 8, !tbaa !150
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_T2_(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa54, ptr noundef align 8 %4)
  %i.m = load ptr, ptr %4, align 8, !tbaa !150    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.m) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i, %bb.c
  %i.n = add nsw i64 %.010.i.i.i, -1
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_RT0_.exit.i.i, label %bb.c, !llvm.loop !798

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_RT0_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %5 = icmp sgt i64 %.lcssa52, 8
  br i1 %5, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i
  %.sroa.0.03.i.i = phi ptr [ %i.o, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i ], [ %storemerge25.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_RT0_.exit.i.i ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = load i64, ptr %i.o, align 8, !tbaa !150
  store ptr null, ptr %i.o, align 8, !tbaa !150
  %i.q = load ptr, ptr %0, align 8, !tbaa !150
  store ptr null, ptr %0, align 8, !tbaa !150
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !150  ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !150
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i11.i

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i11.i: ; preds = %.lr.ph.i9.i
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.r) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i.i11.i, %.lr.ph.i9.i
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.s, %i.a                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 3
  store i64 %i.p, ptr %3, align 8, !tbaa !150
  call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.u, ptr noundef align 8 %3)
  %i.v = load ptr, ptr %3, align 8, !tbaa !150    ; 3 uses
  %.not.i.i.i13.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i13.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i14.i

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i14.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.v) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 176) #26
  br label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i14.i, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = icmp sgt i64 %i.t, 8
  br i1 %i.w, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_T0_.exit, !llvm.loop !799

.lr.ph58:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2557 = phi ptr [ %.sroa.025.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02656 = phi i64 [ %i.y, %bb.b ], [ %2, %.lr.ph ]
  %i.x = phi i64 [ %i.bs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.y = add nsw i64 %.02656, -1                  ; 3 uses
  %i.z = lshr i64 %i.x, 1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %storemerge2557, i64 -8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !150 ; 6 uses
  %.val1.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !150 ; 6 uses
  %i.ac = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val2.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !58 ; 6 uses
  %i.ad = getelementptr i8, ptr %.val1.i.i.i, i64 8
  %.val1.val3.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !58 ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i.i.i, i64 %.val.val2.i.i.i) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph58
  %.val1.val.i.i.i = load ptr, ptr %.val1.i.i.i, align 8
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8
  %i.af = tail call i32 @memcmp(ptr noundef readonly %.val.val.i.i.i, ptr noundef readonly %.val1.val.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph58
  %i.ag = sub i64 %.val.val2.i.i.i, %.val1.val3.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  %.val1.i27.i.i = load ptr, ptr %i.ab, align 8, !tbaa !150 ; 7 uses
  %i.ai = getelementptr i8, ptr %.val1.i27.i.i, i64 8
  %.val1.val3.i29.i.i = load i64, ptr %i.ai, align 8, !tbaa !58 ; 8 uses
  br i1 %i.ah, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i.i
  %.sroa.speculated.i.i.i.i.i30.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i29.i.i, i64 %.val1.val3.i.i.i) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i.i.i30.i.i, 0
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i36.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i31.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i31.i.i: ; preds = %bb.d
  %.val1.val.i32.i.i = load ptr, ptr %.val1.i27.i.i, align 8
  %.val.val.i33.i.i = load ptr, ptr %.val1.i.i.i, align 8
  %i.ak = tail call i32 @memcmp(ptr noundef readonly %.val.val.i33.i.i, ptr noundef readonly %.val1.val.i32.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i30.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i34.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i34.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i36.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit40.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i36.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i31.i.i, %bb.d
  %i.al = sub i64 %.val1.val3.i.i.i, %.val1.val3.i29.i.i
  %spec.select7.i.i.i.i.i.i37.i.i = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i38.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i37.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i39.i.i = trunc nsw i64 %.08.i.i.i.i.i.i38.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit40.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit40.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i36.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i31.i.i
  %.0.i.i.i.i.i35.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i31.i.i ], [ %.0.i6.i.i.i.i.i39.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i36.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i35.i.i, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit40.i.i
  %i.an = load ptr, ptr %0, align 8, !tbaa !150
  store ptr %.val1.i.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit40.i.i
  %.sroa.speculated.i.i.i.i.i45.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i29.i.i, i64 %.val.val2.i.i.i) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i45.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i51.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i46.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i46.i.i: ; preds = %bb.f
  %.val1.val.i47.i.i = load ptr, ptr %.val1.i27.i.i, align 8
  %.val.val.i48.i.i = load ptr, ptr %.val.i.i.i, align 8
  %i.ap = tail call i32 @memcmp(ptr noundef readonly %.val.val.i48.i.i, ptr noundef readonly %.val1.val.i47.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i45.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i49.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i49.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i51.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit55.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i51.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i46.i.i, %bb.f
  %i.aq = sub i64 %.val.val2.i.i.i, %.val1.val3.i29.i.i
  %spec.select7.i.i.i.i.i.i52.i.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i53.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i52.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i54.i.i = trunc nsw i64 %.08.i.i.i.i.i.i53.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit55.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit55.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i51.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i46.i.i
  %.0.i.i.i.i.i50.i.i = phi i32 [ %i.ap, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i46.i.i ], [ %.0.i6.i.i.i.i.i54.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i51.i.i ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i50.i.i, 0
  %i.as = load ptr, ptr %0, align 8, !tbaa !150   ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit55.i.i
  store ptr %.val1.i27.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit55.i.i
  store ptr %.val.i.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.as, ptr %i.f, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i.i
  %.sroa.speculated.i.i.i.i.i60.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i29.i.i, i64 %.val.val2.i.i.i) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i60.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61.i.i: ; preds = %bb.i
  %.val1.val.i62.i.i = load ptr, ptr %.val1.i27.i.i, align 8
  %.val.val.i63.i.i = load ptr, ptr %.val.i.i.i, align 8
  %i.au = tail call i32 @memcmp(ptr noundef readonly %.val.val.i63.i.i, ptr noundef readonly %.val1.val.i62.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i60.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i64.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i64.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit70.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61.i.i, %bb.i
  %i.av = sub i64 %.val.val2.i.i.i, %.val1.val3.i29.i.i
  %spec.select7.i.i.i.i.i.i67.i.i = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -2147483648)
  %.08.i.i.i.i.i.i68.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i67.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i69.i.i = trunc nsw i64 %.08.i.i.i.i.i.i68.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit70.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit70.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61.i.i
  %.0.i.i.i.i.i65.i.i = phi i32 [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i61.i.i ], [ %.0.i6.i.i.i.i.i69.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i66.i.i ]
  %i.aw = icmp slt i32 %.0.i.i.i.i.i65.i.i, 0
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit70.i.i
  %i.ax = load ptr, ptr %0, align 8, !tbaa !150
  store ptr %.val.i.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit70.i.i
  %.sroa.speculated.i.i.i.i.i75.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i29.i.i, i64 %.val1.val3.i.i.i) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i.i.i75.i.i, 0
  br i1 %i.ay, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i81.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i76.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i76.i.i: ; preds = %bb.k
  %.val1.val.i77.i.i = load ptr, ptr %.val1.i27.i.i, align 8
  %.val.val.i78.i.i = load ptr, ptr %.val1.i.i.i, align 8
  %i.az = tail call i32 @memcmp(ptr noundef readonly %.val.val.i78.i.i, ptr noundef readonly %.val1.val.i77.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i75.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i79.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i79.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i81.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit85.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i81.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i76.i.i, %bb.k
  %i.ba = sub i64 %.val1.val3.i.i.i, %.val1.val3.i29.i.i
  %spec.select7.i.i.i.i.i.i82.i.i = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i.i.i83.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i82.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i84.i.i = trunc nsw i64 %.08.i.i.i.i.i.i83.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit85.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit85.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i81.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i76.i.i
  %.0.i.i.i.i.i80.i.i = phi i32 [ %i.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i76.i.i ], [ %.0.i6.i.i.i.i.i84.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i81.i.i ]
  %i.bb = icmp slt i32 %.0.i.i.i.i.i80.i.i, 0
  %i.bc = load ptr, ptr %0, align 8, !tbaa !150   ; 2 uses
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit85.i.i
  store ptr %.val1.i27.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.bc, ptr %i.ab, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit85.i.i
  store ptr %.val1.i.i.i, ptr %0, align 8, !tbaa !150
  store ptr %i.bc, ptr %i.aa, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader: ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader, %bb.p
  %.sroa.025.0.i.i = phi ptr [ %i.bj, %bb.p ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.p ], [ %storemerge2557, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.val1.i.i13.i = load ptr, ptr %0, align 8, !tbaa !150 ; 3 uses
  %i.bd = getelementptr i8, ptr %.val1.i.i13.i, i64 8
  %.val1.val3.i.i14.i = load i64, ptr %i.bd, align 8, !tbaa !58 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i
  %.sroa.025.1.i.i = phi ptr [ %.sroa.025.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i ], [ %i.bj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i ] ; 8 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.025.1.i.i, align 8, !tbaa !150 ; 3 uses
  %i.be = getelementptr i8, ptr %.val.i.i15.i, i64 8
  %.val.val2.i.i16.i = load i64, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i.i14.i, i64 %.val.val2.i.i16.i) ; 2 uses
  %i.bf = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i17.i, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i18.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i18.i: ; preds = %bb.n
  %.val1.val.i.i19.i = load ptr, ptr %.val1.i.i13.i, align 8
  %.val.val.i.i20.i = load ptr, ptr %.val.i.i15.i, align 8
  %i.bg = tail call i32 @memcmp(ptr noundef readonly %.val.val.i.i20.i, ptr noundef readonly %.val1.val.i.i19.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i17.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i21.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i21.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i18.i, %bb.n
  %i.bh = sub i64 %.val.val2.i.i16.i, %.val1.val3.i.i14.i
  %spec.select7.i.i.i.i.i.i.i25.i = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i26.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i25.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i27.i = trunc nsw i64 %.08.i.i.i.i.i.i.i26.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i18.i
  %.0.i.i.i.i.i.i23.i = phi i32 [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i18.i ], [ %.0.i6.i.i.i.i.i.i27.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24.i ]
  %i.bi = icmp slt i32 %.0.i.i.i.i.i.i23.i, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i, i64 8 ; 2 uses
  br i1 %i.bi, label %bb.n, label %.preheader.i.i, !llvm.loop !800

.preheader.i.i:                                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit.i22.i ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !150 ; 3 uses
  %i.bk = getelementptr i8, ptr %.val1.i9.i.i, i64 8
  %.val1.val3.i11.i.i = load i64, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i.i12.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i11.i.i, i64 %.val1.val3.i.i14.i) ; 2 uses
  %i.bl = icmp eq i64 %.sroa.speculated.i.i.i.i.i12.i.i, 0
  br i1 %i.bl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i18.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i13.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i13.i.i: ; preds = %.preheader.i.i
  %.val1.val.i14.i.i = load ptr, ptr %.val1.i9.i.i, align 8
  %.val.val.i15.i.i = load ptr, ptr %.val1.i.i13.i, align 8
  %i.bm = tail call i32 @memcmp(ptr noundef readonly %.val.val.i15.i.i, ptr noundef readonly %.val1.val.i14.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i12.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i16.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i16.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i18.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i18.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i13.i.i, %.preheader.i.i
  %i.bn = sub i64 %.val1.val3.i.i14.i, %.val1.val3.i11.i.i
  %spec.select7.i.i.i.i.i.i19.i.i = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i20.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i19.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i21.i.i = trunc nsw i64 %.08.i.i.i.i.i.i20.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i18.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i13.i.i
  %.0.i.i.i.i.i17.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i13.i.i ], [ %.0.i6.i.i.i.i.i21.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i18.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i17.i.i, 0
  br i1 %i.bo, label %.preheader.i.i, label %bb.o, !llvm.loop !801

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit22.i.i
  %i.bp = icmp ult ptr %.sroa.025.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bp, label %bb.p, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEET_SJ_SJ_T0_.exit

bb.p:                                             ; preds = %bb.o
  store ptr %.val1.i9.i.i, ptr %.sroa.025.1.i.i, align 8, !tbaa !150
  store ptr %.val.i.i15.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_SJ_T0_.exit.i, !llvm.loop !802

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEET_SJ_SJ_T0_.exit: ; preds = %bb.o
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_T0_T1_(ptr nonnull %.sroa.025.1.i.i, ptr %storemerge2557, i64 noundef %i.y)
  %i.bq = ptrtoint ptr %.sroa.025.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, 16
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_T0_.exit, !llvm.loop !797

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEET_SJ_SJ_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_SJ_RT0_.exit.i15.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_SJ_RT0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_T2_(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  %.042 = phi i64 [ %spec.select, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.042, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !150 ; 2 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !tbaa !150 ; 2 uses
  %i.i = getelementptr i8, ptr %.val.i, i64 8
  %.val.val2.i = load i64, ptr %i.i, align 8, !tbaa !58 ; 2 uses
  %i.j = getelementptr i8, ptr %.val1.i, i64 8
  %.val1.val3.i = load i64, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.val3.i, i64 %.val.val2.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph
  %.val1.val.i = load ptr, ptr %.val1.i, align 8
  %.val.val.i = load ptr, ptr %.val.i, align 8
  %i.l = tail call i32 @memcmp(ptr noundef readonly %.val.val.i, ptr noundef readonly %.val1.val.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph
  %i.m = sub i64 %.val.val2.i, %.val1.val3.i
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select = select i1 %i.n, i64 %i.g, i64 %i.e ; 4 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.042 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !150
  store ptr null, ptr %i.o, align 8, !tbaa !150
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !150  ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !150
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.r) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESI_EEbT_T0_.exit, %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i
  %i.s = icmp slt i64 %spec.select, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !803

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit ] ; 5 uses
  %i.t = and i64 %2, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27

bb.b:                                             ; preds = %._crit_edge
  %i.v = add nsw i64 %2, -2
  %i.w = ashr exact i64 %i.v, 1
  %i.x = icmp eq i64 %.0.lcssa, %i.w
  br i1 %i.x, label %bb.c, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27

bb.c:                                             ; preds = %bb.b
  %i.y = shl nsw i64 %.0.lcssa, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !150
  store ptr null, ptr %i.aa, align 8, !tbaa !150
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !150 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !150
  %.not.i.i.i.i25 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i26

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i26: ; preds = %bb.c
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.ad) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i26, %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.b ], [ %i.z, %bb.c ], [ %i.z, %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i26 ] ; 3 uses
  %i.ae = load i64, ptr %3, align 8, !tbaa !150
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  store ptr null, ptr %3, align 8, !tbaa !150
  %i.ag = icmp sgt i64 %.1, %1
  br i1 %i.ag, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.1, %.lr.ph.i.preheader ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.val10.i = load i64, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ai, align 8, !tbaa !150 ; 3 uses
  %i.aj = getelementptr i8, ptr %.val.i.i, i64 8
  %.val.val3.i.i = load i64, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val.val10.i, i64 %.val.val3.i.i) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.val.val.i29 = load ptr, ptr %i.af, align 8
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8
  %i.al = tail call i32 @memcmp(ptr noundef readonly %.val.val.i.i, ptr noundef readonly %.val.val.i29, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i
  %i.am = sub i64 %.val.val3.i.i, %.val.val10.i
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.an, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !150
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !150 ; 3 uses
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !150
  %.not.i.i.i.i.i30 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i30, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.ap) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg16FeatureParagraphEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.aq = icmp sgt i64 %.0911.i, %1
  br i1 %i.aq, label %.lr.ph.i, label %.critedge.i, !llvm.loop !804

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit27 ], [ %.010.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN5vcpkg12_GLOBAL__N_112Canonicalize11FeatureLessEEclINS_17__normal_iteratorIPSt10unique_ptrINS2_16FeatureParagraphESt14default_deleteISA_EESt6vectorISD_SaISD_EEEESD_EEbT_RT0_.exit.i ], [ %.0911.i, %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EEaSEOS4_.exit.i ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150 ; 3 uses
  store ptr %i.af, ptr %i.ar, align 8, !tbaa !150
  %.not.i.i.i.i11.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i11.i, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_RT2_.exit

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_RT2_.exit: ; preds = %.critedge.i
  tail call void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.as) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_comp_valINS3_12_GLOBAL__N_112Canonicalize11FeatureLessEEEEvT_T0_SK_T1_RT2_.exit, %.critedge.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg16FeatureParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  tail call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #24
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !55
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1
end_hunk_0
