Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_redis?download=true
inline.NumInlined: 16494
inline.NumDeleted: 6231
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5boost5redis5resp39flat_treeC2ERKS2_:bb.a
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !416 ; 2 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !416 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc8, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !418
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2175

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %.noexc8 ], [ %i.af, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.z, align 8, !tbaa !413
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !232
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !232
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !423
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !423
  %i.am = load ptr, ptr %0, align 8, !tbaa !397
  %.not13.i = icmp eq ptr %i.y, %.0.lcssa.i.i.i.i.i
  br i1 %.not13.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.an = load ptr, ptr %1, align 8, !tbaa !397
  %i.ao = ptrtoint ptr %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ax, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !424
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !425
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.av
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !397
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 40 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ax, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i9, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %bb.f

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit: ; preds = %bb.h, %.loopexit
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %0, align 8, !tbaa !397   ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.az) #53
  br label %_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit

_ZN5boost5redis5resp36detail11flat_bufferD2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN5boost5redis5resp39flat_treeaSERKS2_(ptr noundef nonnull returned align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !407  ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 512)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %.sroa.speculated.i.i, %bb.c ], [ %i.g, %bb.d ] ; 4 uses
  %i.f = icmp ult i64 %.0.i.i, %i.d
  %i.g = shl i64 %.0.i.i, 1
  br i1 %i.f, label %bb.d, label %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i, !llvm.loop !6

_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i: ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #52
  %i.i = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !397
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  store i64 %.0.i.i, ptr %i.a, align 8, !tbaa !408
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !409
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !409
  %.pre.i = load i64, ptr %i.c, align 8, !tbaa !407
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i, %bb.b
  %i.m = phi i64 [ %.pre.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !397    ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !397    ; 2 uses
  %i.p = icmp sgt i64 %i.m, 1
  br i1 %i.p, label %bb.f, label %bb.g, !prof !410

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.n, i64 %i.m, i1 false)
  br label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = load i8, ptr %i.n, align 1, !tbaa !230
  store i8 %i.r, ptr %i.o, align 1, !tbaa !230
  br label %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit

_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.s = load i64, ptr %i.c, align 8, !tbaa !407
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !407
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !397
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !416  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !416 ; 2 uses
  %.not13.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not13.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit
  %i.ab = load ptr, ptr %1, align 8, !tbaa !397
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.010.014.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.al, %bb.k ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !424
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !425
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !397
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %i.aa
  br i1 %.not.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, label %bb.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit: ; preds = %bb.k, %_ZN5boost5redis5resp36detail11copy_assignERNS2_11flat_bufferERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !232
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !232
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !423
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !423
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !414    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !415
  %i.i = load ptr, ptr %0, align 8, !tbaa !414    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 40
  %i.o = icmp ugt i64 %i.n, 230584300921369395
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, !prof !302

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #51
  unreachable

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #52 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -40
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 40
  %i.s = add i64 %.fr.i, 40
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit

_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit: ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !414      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !415
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #53
  br label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS8_SA_EEEEPS8_mT_SI_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !414
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !415
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !413
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 40
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !410

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 40
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !tbaa.struct !418
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 40
  br i1 %i.af, label %bb.l, label %bb.m, !prof !410

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 40
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !tbaa.struct !418
  br label %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !414
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !413 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !414
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !413 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i, i64 40, i1 false), !tbaa.struct !418
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2178

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEES9_ET0_T_SB_SA_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE13_M_deallocateEPS8_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !414
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !413
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis5resp39flat_tree7reserveEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408  ; 2 uses
  %.not.i = icmp ugt i64 %1, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 512)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %.sroa.speculated.i.i, %bb.b ], [ %i.e, %bb.c ] ; 4 uses
  %i.d = icmp ult i64 %.0.i.i, %1
  %i.e = shl i64 %.0.i.i, 1
  br i1 %i.d, label %bb.c, label %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i, !llvm.loop !6

_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i: ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #52 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !397    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !407  ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = icmp sgt i64 %i.i, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !410

bb.d:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZN5boost5redis5resp36detail16compute_capacityEmm.exit.i
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.g, align 1, !tbaa !230
  store i8 %i.m, ptr %i.f, align 1, !tbaa !230
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !416  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !416  ; 2 uses
  %.not13.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not13.i.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i, %bb.h
  %.sroa.010.014.i.i = phi ptr [ %i.y, %bb.h ], [ %i.n, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !424
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !425
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.j
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 %i.w
  store ptr %i.x, ptr %i.t, align 8, !tbaa !397
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.p
  br i1 %.not.i.i, label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i, label %.lr.ph.i.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i: ; preds = %bb.h
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !397
  br label %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i

_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i: ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i
  %i.z = phi ptr [ %.pre.i, %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.loopexit.i ], [ %i.g, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit.i ] ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !397
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.z) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN5boost5redis5resp36detail14rebase_stringsERSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS9_EEPKcSE_.exit.i
  store i64 %.0.i.i, ptr %i.b, align 8, !tbaa !408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !409
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !409
  br label %_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit

_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %i.ad = icmp ugt i64 %2, 230584300921369395
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #51
  unreachable

bb.j:                                             ; preds = %_ZN5boost5redis5resp36detail4growERNS2_11flat_bufferEmRSt6vectorINS1_10basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaISB_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !415
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !414
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %i.al = icmp ult i64 %i.ak, %2
  br i1 %i.al, label %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !413
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ai
  %i.aq = mul nuw nsw i64 %2, 40
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #52 ; 4 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !414 ; 5 uses
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !413 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5boost5redis5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEESaIS8_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
end_hunk_0
