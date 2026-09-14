Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZN4mold10OutputShdrINS_6X86_64EEC2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef zeroext i1 @_ZN4mold10OutputShdrINS_6X86_64EE9is_headerEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10OutputShdrINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i = load i64, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.copyload.i ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i21 = load i64, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %.0.copyload.i21, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13944
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !384  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !389  ; 2 uses
  %i.j = icmp sgt i64 %i.i, 65279
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.i to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.k, ptr %i.l, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13832
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %.0.copyload.i22 = load i64, ptr %i.o, align 1  ; 2 uses
  %i.p = icmp ugt i64 %.0.copyload.i22, 4194303
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = lshr i64 %.0.copyload.i22, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.q, ptr %i.r, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 13192
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !395  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 13200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !395  ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.f
  ret void

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.sroa.023.026 = phi ptr [ %i.ac, %bb.h ], [ %i.t, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.023.026, align 8, !tbaa !397 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !389  ; 2 uses
  %.not20 = icmp eq i64 %i.z, 0
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !tbaa.struct !398
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.026, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.v
  br i1 %i.ad, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10OutputPhdrINS_6X86_64EEC2Ej(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) unnamed_addr #2 comdat($_ZN4mold10OutputPhdrINS_6X86_64EEC5Ej) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.d, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold10OutputPhdrINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 4, ptr %i.a, align 8, !tbaa !71
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.h, align 8
  store i64 8, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef zeroext i1 @_ZN4mold10OutputPhdrINS_6X86_64EE9is_headerEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10OutputPhdrINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.mold::Error", align 8       ; 12 uses
  %3 = alloca %"class.mold::Error", align 8       ; 12 uses
  %4 = alloca %"class.mold::Error", align 8       ; 12 uses
  %5 = alloca %"struct.std::ranges::less", align 1 ; 4 uses
  %6 = alloca %class.anon.700, align 1            ; 4 uses
  %7 = alloca %"class.std::vector.250", align 16  ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false), !alias.scope !1227
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13192 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !noalias !1227 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13200 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395, !noalias !1227 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1227
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1227
  br label %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i
  %i.f = ptrtoint ptr %.sroa.38.1.i to i64        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1227
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1227
  %i.g = icmp eq ptr %.sroa.0322.1.i, %.sroa.27.1.i
  br i1 %i.g, label %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.h = ptrtoint ptr %.sroa.27.1.i to i64        ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0322.1.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = add nsw i64 %i.k, 1
  %i.m = sdiv i64 %i.l, 2                         ; 4 uses
  %i.n = icmp sgt i64 %i.k, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %select.unfold.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.s, %select.unfold.i.i.i.i.i.i.i ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = shl nuw nsw i64 %.010.i.i.i.i.i.i.i, 3
  %i.p = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32, !noalias !1227 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.q = icmp eq i64 %.010.i.i.i.i.i.i.i, 1
  %i.r = add nuw nsw i64 %.010.i.i.i.i.i.i.i, 1
  %i.s = lshr i64 %i.r, 1
  br i1 %i.q, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1215

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ 0, %select.unfold.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ null, %bb.b ], [ null, %select.unfold.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ] ; 6 uses
  %i.t = icmp eq i64 %i.m, %.sroa.4.0.i.i.i.i.i
  br i1 %i.t, label %bb.c, label %bb.d, !prof !400

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.0322.1.i, i64 %i.m ; 4 uses
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_(ptr %.sroa.0322.1.i, ptr %i.u, ptr noundef %.sroa.10.0.i.i.i.i.i), !noalias !1227
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_(ptr %i.u, ptr %.sroa.27.1.i, ptr noundef %.sroa.10.0.i.i.i.i.i), !noalias !1227
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.h, %i.v
  %i.x = ashr exact i64 %i.w, 3
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_SK_ST_ST_T1_T2_(ptr %.sroa.0322.1.i, ptr %i.u, ptr %.sroa.27.1.i, i64 noundef %i.m, i64 noundef %i.x, ptr noundef %.sroa.10.0.i.i.i.i.i)
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_EC2ESB_l.exit.i.i.i.i.i
  %i.y = icmp eq ptr %.sroa.10.0.i.i.i.i.i, null
  br i1 %i.y, label %bb.e, label %bb.f, !prof !401

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_(ptr %.sroa.0322.1.i, ptr %.sroa.27.1.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_ST_T1_T2_(ptr %.sroa.0322.1.i, ptr %.sroa.27.1.i, ptr noundef nonnull %.sroa.10.0.i.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i.i, ptr nonnull %5, ptr nonnull %6), !noalias !1227
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.z = shl i64 %.sroa.4.0.i.i.i.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i.i.i.i, i64 noundef %i.z) #15, !noalias !1227
  br label %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i

_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i: ; preds = %bb.g, %._crit_edge.i, %._crit_edge.thread.i
  %i.aa = phi i1 [ true, %._crit_edge.thread.i ], [ true, %._crit_edge.i ], [ false, %bb.g ]
  %.sroa.0322.0.lcssa518.i = phi ptr [ null, %._crit_edge.thread.i ], [ %.sroa.0322.1.i, %._crit_edge.i ], [ %.sroa.0322.1.i, %bb.g ] ; 10 uses
  %.sroa.27.0.lcssa517.i = phi ptr [ null, %._crit_edge.thread.i ], [ %.sroa.27.1.i, %._crit_edge.i ], [ %.sroa.27.1.i, %bb.g ] ; 2 uses
  %.sroa.38.0.lcssa516.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.f, %._crit_edge.i ], [ %i.f, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1227
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1227
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 13840
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !393, !noalias !1227 ; 9 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345, label %bb.n

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i
  %.sroa.0322.0376.i = phi ptr [ %.sroa.0322.1.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i ], [ null, %bb.a ] ; 7 uses
  %.sroa.27.0375.i = phi ptr [ %.sroa.27.1.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i ], [ null, %bb.a ] ; 6 uses
  %.sroa.38.0374.i = phi ptr [ %.sroa.38.1.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i ], [ null, %bb.a ] ; 4 uses
  %.sroa.0319.0373.i = phi ptr [ %i.ba, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0319.0373.i, align 8, !tbaa !397, !noalias !1227 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.0.copyload.i.i = load i64, ptr %i.ae, align 1, !noalias !1227 ; 2 uses
  %i.af = and i64 %.0.copyload.i.i, 2
  %.not166.i = icmp eq i64 %i.af, 0
  br i1 %.not166.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %.0.copyload.i.i.i = load i32, ptr %i.ag, align 1, !noalias !1227
  %i.ah = icmp eq i32 %.0.copyload.i.i.i, 8
  %i.ai = and i64 %.0.copyload.i.i, 1024
  %i.aj = icmp ne i64 %i.ai, 0
  %or.cond.i = and i1 %i.aj, %i.ah
  br i1 %or.cond.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE1_clESD_.exit.thread.i

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE1_clESD_.exit.thread.i: ; preds = %bb.h
  %.not.i.i = icmp eq ptr %.sroa.27.0375.i, %.sroa.38.0374.i
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE1_clESD_.exit.thread.i
  store ptr %i.ad, ptr %.sroa.27.0375.i, align 8, !tbaa !397, !noalias !1227
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.27.0375.i, i64 8
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i

bb.j:                                             ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE1_clESD_.exit.thread.i
  %i.al = ptrtoint ptr %.sroa.27.0375.i to i64
  %i.am = ptrtoint ptr %.sroa.0322.0376.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.k, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33, !noalias !1227
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #34, !noalias !1227 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %i.ad, ptr %i.aw, align 8, !tbaa !397, !noalias !1227
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.l, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.sroa.0322.0376.i, i64 %i.an, i1 false), !noalias !1227
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0322.0376.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0322.0376.i, i64 noundef %i.an) #31, !noalias !1227
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.i, %bb.h, %.lr.ph.i
  %.sroa.38.1.i = phi ptr [ %.sroa.38.0374.i, %.lr.ph.i ], [ %.sroa.38.0374.i, %bb.h ], [ %i.az, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.38.0374.i, %bb.i ] ; 2 uses
  %.sroa.27.1.i = phi ptr [ %.sroa.27.0375.i, %.lr.ph.i ], [ %.sroa.27.0375.i, %bb.h ], [ %i.ay, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ak, %bb.i ] ; 9 uses
  %.sroa.0322.1.i = phi ptr [ %.sroa.0322.0376.i, %.lr.ph.i ], [ %.sroa.0322.0376.i, %bb.h ], [ %i.av, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0322.0376.i, %bb.i ] ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0319.0373.i, i64 8 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.0.copyload.i200.i = load i64, ptr %i.bc, align 1, !noalias !1227
  %i.bd = and i64 %.0.copyload.i200.i, 2
  %.not154.i = icmp eq i64 %i.bd, 0
  br i1 %.not154.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !348 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.0.copyload.i.i314 = load i32, ptr %i.bg, align 4
  %i.bh = icmp eq i32 %.0.copyload.i.i314, 8
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.0.copyload.i11.i344 = load i64, ptr %i.bi, align 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4080
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1228
  %i.bl = urem i64 %.0.copyload.i11.i344, %i.bk
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !348
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !348
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !348 ; 2 uses
  %.phi.trans.insert.i315 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre.i316 = load i64, ptr %.phi.trans.insert.i315, align 8, !tbaa !348
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = phi i64 [ %.pre, %bb.p ], [ %i.bp, %bb.q ] ; 2 uses
  %i.br = phi i64 [ %.0.copyload.i11.i344, %bb.p ], [ %.pre.i316, %bb.q ] ; 4 uses
  %.sroa.7.0.i317 = phi i64 [ %i.bl, %bb.p ], [ %i.bn, %bb.q ] ; 2 uses
  %.sroa.11.0.i318 = phi i64 [ 0, %bb.p ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !404 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !405
  %.not.i.i322 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i322, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %i.bt, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i323, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.7.0.i317, ptr %.sroa.7.0..sroa_idx.i324, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.br, ptr %.sroa.9.0..sroa_idx.i325, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %i.br, ptr %.sroa.10.0..sroa_idx.i326, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 %.sroa.11.0.i318, ptr %.sroa.11.0..sroa_idx.i327, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i64 %i.bq, ptr %.sroa.12.0..sroa_idx.i328, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 %i.bf, ptr %.sroa.13.0..sroa_idx.i329, align 1, !tbaa !348
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !404
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56 ; 2 uses
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345

bb.t:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.bz = ptrtoint ptr %i.bt to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.u, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331: ; preds = %bb.t
  %i.cd = sdiv exact i64 %i.cb, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i332 = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i.i332, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 164703072086692425)
  %i.ch = select i1 %i.cf, i64 164703072086692425, i64 %i.cg ; 3 uses
  %.not.i.i.i.i333 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i.i.i333)
  %i.ci = mul nuw nsw i64 %i.ch, 56
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #34 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 9 uses
  store i32 6, ptr %i.ck, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i334 = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i334, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i335 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.7.0.i317, ptr %.sroa.7.0..sroa_idx4.i335, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i336 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %i.br, ptr %.sroa.9.0..sroa_idx6.i336, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i337 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i64 %i.br, ptr %.sroa.10.0..sroa_idx8.i337, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i338 = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %.sroa.11.0.i318, ptr %.sroa.11.0..sroa_idx10.i338, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i339 = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i64 %i.bq, ptr %.sroa.12.0..sroa_idx12.i339, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i340 = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 %i.bf, ptr %.sroa.13.0..sroa_idx14.i340, align 1, !tbaa !348
  %i.cl = icmp sgt i64 %i.cb, 0
  br i1 %i.cl, label %bb.v, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341

bb.v:                                             ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341: ; preds = %bb.v, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  %.not.i17.i.i.i342 = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i.i342, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341
  %i.cn = load ptr, ptr %i.bu, align 16, !tbaa !405
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cp) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343: ; preds = %bb.w, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341
  store ptr %i.cj, ptr %7, align 16, !tbaa !406
  store ptr %i.cm, ptr %i.bs, align 8, !tbaa !404
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.cq, ptr %i.bu, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343, %bb.s, %bb.n, %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i
  %i.cr = phi ptr [ %i.cm, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343 ], [ %i.bx, %bb.s ], [ null, %bb.n ], [ null, %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 13848
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1229, !noalias !1227 ; 9 uses
  %.not155.i = icmp eq ptr %i.ct, null
  br i1 %.not155.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313, label %bb.x

bb.x:                                             ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !348 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %.0.copyload.i.i282 = load i32, ptr %i.cw, align 4
  %i.cx = icmp eq i32 %.0.copyload.i.i282, 8
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.0.copyload.i11.i312 = load i64, ptr %i.cy, align 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4080
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1228
  %i.db = urem i64 %.0.copyload.i11.i312, %i.da
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !348
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.df = load i64, ptr %i.de, align 8, !tbaa !348
  %.phi.trans.insert.i283 = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.pre.i284 = load i64, ptr %.phi.trans.insert.i283, align 8, !tbaa !348
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dg = phi i64 [ %.0.copyload.i11.i312, %bb.y ], [ %.pre.i284, %bb.z ] ; 4 uses
  %.sroa.7.0.i285 = phi i64 [ %i.db, %bb.y ], [ %i.dd, %bb.z ] ; 2 uses
  %.sroa.11.0.i286 = phi i64 [ 0, %bb.y ], [ %i.df, %bb.z ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.0.copyload.i12.i287 = load i64, ptr %i.dh, align 8
  %i.di = and i64 %.0.copyload.i12.i287, 2
  %.not.i288 = icmp eq i64 %i.di, 0
  br i1 %.not.i288, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !348
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.12.0.i289 = phi i64 [ 0, %bb.aa ], [ %i.dk, %bb.ab ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !404 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !405
  %.not.i.i290 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i.i290, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 3, ptr %i.dm, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i291, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %.sroa.7.0.i285, ptr %.sroa.7.0..sroa_idx.i292, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i293 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.dg, ptr %.sroa.9.0..sroa_idx.i293, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 %i.dg, ptr %.sroa.10.0..sroa_idx.i294, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store i64 %.sroa.11.0.i286, ptr %.sroa.11.0..sroa_idx.i295, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i64 %.sroa.12.0.i289, ptr %.sroa.12.0..sroa_idx.i296, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i64 %i.cv, ptr %.sroa.13.0..sroa_idx.i297, align 1, !tbaa !348
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !404
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56 ; 2 uses
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313

bb.ae:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 5 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.af, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299: ; preds = %bb.ae
  %i.dw = sdiv exact i64 %i.du, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i300 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i300, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 164703072086692425)
  %i.ea = select i1 %i.dy, i64 164703072086692425, i64 %i.dz ; 3 uses
  %.not.i.i.i.i301 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i301)
  %i.eb = mul nuw nsw i64 %i.ea, 56
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #34 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 9 uses
  store i32 3, ptr %i.ed, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i302 = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i302, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i303 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.sroa.7.0.i285, ptr %.sroa.7.0..sroa_idx4.i303, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i304 = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %i.dg, ptr %.sroa.9.0..sroa_idx6.i304, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i305 = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i64 %i.dg, ptr %.sroa.10.0..sroa_idx8.i305, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i306 = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store i64 %.sroa.11.0.i286, ptr %.sroa.11.0..sroa_idx10.i306, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i307 = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i64 %.sroa.12.0.i289, ptr %.sroa.12.0..sroa_idx12.i307, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i308 = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i64 %i.cv, ptr %.sroa.13.0..sroa_idx14.i308, align 1, !tbaa !348
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.ag, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309

bb.ag:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309: ; preds = %bb.ag, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 56 ; 2 uses
  %.not.i17.i.i.i310 = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i.i310, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309
  %i.eg = load ptr, ptr %i.dn, align 16, !tbaa !405
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.ei) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311: ; preds = %bb.ah, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309
  store ptr %i.ec, ptr %7, align 16, !tbaa !406
  store ptr %i.ef, ptr %i.dl, align 8, !tbaa !404
  %i.ej = getelementptr inbounds nuw [56 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.ej, ptr %i.dn, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311, %bb.ad, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345
  %i.ek = phi ptr [ %i.ef, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311 ], [ %i.dq, %bb.ad ], [ %i.cr, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345 ]
  %i.el = ptrtoint ptr %.sroa.27.0.lcssa517.i to i64
  %i.em = ptrtoint ptr %.sroa.0322.0.lcssa518.i to i64 ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3                 ; 12 uses
  br i1 %i.aa, label %.preheader362.i, label %.lr.ph388.i

.lr.ph388.i:                                      ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 2681 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 2666 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 2694 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.eu = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !1227 ; 4 uses
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !1227 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 -24    ; 3 uses
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !1227 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !1227 ; 4 uses
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !1227 ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 -24    ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 4080 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  br label %bb.ai

.preheader364.i:                                  ; preds = %.critedge.i, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 2678
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.bb

bb.ai:                                            ; preds = %.critedge.i, %.lr.ph388.i
  %.0145386.i = phi i64 [ 0, %.lr.ph388.i ], [ %.2147.i, %.critedge.i ] ; 2 uses
  %i.gb = add nuw nsw i64 %.0145386.i, 1          ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.0145386.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !397, !noalias !1227 ; 9 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 28     ; 2 uses
  %.val191.i = load i32, ptr %i.ge, align 1, !noalias !1227
  %i.gf = icmp eq i32 %.val191.i, 7
  br i1 %i.gf, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.gg = call noundef i64 @_ZN4mold13to_phdr_flagsINS_6X86_64EEElRNS_7ContextIT_EEPNS_5ChunkIS3_EE(ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %i.gd), !noalias !1227 ; 2 uses
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !348 ; 2 uses
  %.0.copyload.i.i250 = load i32, ptr %i.ge, align 4
  %i.gk = icmp eq i32 %.0.copyload.i.i250, 8
  br i1 %i.gk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %.0.copyload.i11.i280 = load i64, ptr %i.gl, align 8 ; 2 uses
  %i.gm = load i64, ptr %i.fi, align 8, !tbaa !1228
  %i.gn = urem i64 %.0.copyload.i11.i280, %i.gm
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !348
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !348
  %.phi.trans.insert.i251 = getelementptr inbounds nuw i8, ptr %i.gd, i64 40
  %.pre.i252 = load i64, ptr %.phi.trans.insert.i251, align 8, !tbaa !348
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gs = phi i64 [ %.0.copyload.i11.i280, %bb.ak ], [ %.pre.i252, %bb.al ] ; 4 uses
  %.sroa.7.0.i253 = phi i64 [ %i.gn, %bb.ak ], [ %i.gp, %bb.al ] ; 2 uses
  %.sroa.11.0.i254 = phi i64 [ 0, %bb.ak ], [ %i.gr, %bb.al ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %.0.copyload.i12.i255 = load i64, ptr %i.gt, align 8
  %i.gu = and i64 %.0.copyload.i12.i255, 2
  %.not.i256 = icmp eq i64 %i.gu, 0
  br i1 %.not.i256, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !348
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.12.0.i257 = phi i64 [ 0, %bb.am ], [ %i.gw, %bb.an ] ; 2 uses
  %i.gx = load ptr, ptr %i.fh, align 8, !tbaa !404 ; 10 uses
  %i.gy = load ptr, ptr %i.fj, align 16, !tbaa !405
  %.not.i.i258 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i.i258, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 4, ptr %i.gx, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %i.gh, ptr %.sroa.6.0..sroa_idx.i259, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %.sroa.7.0.i253, ptr %.sroa.7.0..sroa_idx.i260, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.gs, ptr %.sroa.9.0..sroa_idx.i261, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 %i.gs, ptr %.sroa.10.0..sroa_idx.i262, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store i64 %.sroa.11.0.i254, ptr %.sroa.11.0..sroa_idx.i263, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store i64 %.sroa.12.0.i257, ptr %.sroa.12.0..sroa_idx.i264, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i64 %i.gj, ptr %.sroa.13.0..sroa_idx.i265, align 1, !tbaa !348
  %i.gz = load ptr, ptr %i.fh, align 8, !tbaa !404
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 56 ; 2 uses
  store ptr %i.ha, ptr %i.fh, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281

bb.aq:                                            ; preds = %bb.ao
  %i.hb = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = ptrtoint ptr %i.hb to i64               ; 2 uses
  %i.he = sub i64 %i.hc, %i.hd                    ; 5 uses
  %i.hf = icmp eq i64 %i.he, 9223372036854775800
  br i1 %i.hf, label %bb.ar, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267: ; preds = %bb.aq
  %i.hg = sdiv exact i64 %i.he, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i268 = call i64 @llvm.umax.i64(i64 %i.hg, i64 1)
  %i.hh = add nsw i64 %.sroa.speculated.i.i.i.i268, %i.hg ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hg
  %i.hj = call i64 @llvm.umin.i64(i64 %i.hh, i64 164703072086692425)
  %i.hk = select i1 %i.hi, i64 164703072086692425, i64 %i.hj ; 3 uses
  %.not.i.i.i.i269 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i269)
  %i.hl = mul nuw nsw i64 %i.hk, 56
  %i.hm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #34 ; 4 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.he ; 9 uses
  store i32 4, ptr %i.hn, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i270 = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %i.gh, ptr %.sroa.6.0..sroa_idx2.i270, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i271 = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %.sroa.7.0.i253, ptr %.sroa.7.0..sroa_idx4.i271, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i272 = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 %i.gs, ptr %.sroa.9.0..sroa_idx6.i272, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i273 = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i64 %i.gs, ptr %.sroa.10.0..sroa_idx8.i273, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i274 = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i64 %.sroa.11.0.i254, ptr %.sroa.11.0..sroa_idx10.i274, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i275 = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  store i64 %.sroa.12.0.i257, ptr %.sroa.12.0..sroa_idx12.i275, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i276 = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  store i64 %i.gj, ptr %.sroa.13.0..sroa_idx14.i276, align 1, !tbaa !348
  %i.ho = icmp sgt i64 %i.he, 0
  br i1 %i.ho, label %bb.as, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

bb.as:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr align 1 %i.hb, i64 %i.he, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277: ; preds = %bb.as, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 56 ; 2 uses
  %.not.i17.i.i.i278 = icmp eq ptr %i.hb, null
  br i1 %.not.i17.i.i.i278, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  %i.hq = load ptr, ptr %i.fj, align 16, !tbaa !405
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hs) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279: ; preds = %bb.at, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  store ptr %i.hm, ptr %7, align 16, !tbaa !406
  store ptr %i.hp, ptr %i.fh, align 8, !tbaa !404
  %i.ht = getelementptr inbounds nuw [56 x i8], ptr %i.hm, i64 %i.hk
  store ptr %i.ht, ptr %i.fj, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281: ; preds = %bb.ap, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279
  %.val196.val.i = phi ptr [ %i.ha, %bb.ap ], [ %i.hp, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279 ] ; 4 uses
  %i.hu = icmp ult i64 %i.gb, %i.eo
  br i1 %i.hu, label %.lr.ph381.i.preheader, label %.critedge.i

.lr.ph381.i.preheader:                            ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281
  %i.hv = getelementptr inbounds i8, ptr %.val196.val.i, i64 -8 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.val196.val.i, i64 -40
  %i.hx = getelementptr inbounds i8, ptr %.val196.val.i, i64 -16
  %i.hy = getelementptr inbounds i8, ptr %.val196.val.i, i64 -24
  br label %.lr.ph381.i

end_hunk_0
begin_hunk_1_@_ZN4mold10OutputPhdrINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE:bb.a

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.yx = phi i64 [ %.0.copyload.i11.i88, %bb.ea ], [ %.pre.i60, %bb.eb ] ; 4 uses
  %.sroa.7.0.i61 = phi i64 [ %i.ys, %bb.ea ], [ %i.yu, %bb.eb ] ; 2 uses
  %.sroa.11.0.i62 = phi i64 [ 0, %bb.ea ], [ %i.yw, %bb.eb ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %.0.copyload.i12.i63 = load i64, ptr %i.yy, align 8
  %i.yz = and i64 %.0.copyload.i12.i63, 2
  %.not.i64 = icmp eq i64 %i.yz, 0
  br i1 %.not.i64, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.za = getelementptr inbounds nuw i8, ptr %i.xw, i64 56
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !348
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.12.0.i65 = phi i64 [ 0, %bb.ec ], [ %i.zb, %bb.ed ] ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !404 ; 10 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.zf = load ptr, ptr %i.ze, align 16, !tbaa !405
  %.not.i.i66 = icmp eq ptr %i.zd, %i.zf
  br i1 %.not.i.i66, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i32 1685382483, ptr %i.zd, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i67, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  store i64 %.sroa.7.0.i61, ptr %.sroa.7.0..sroa_idx.i68, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  store i64 %i.yx, ptr %.sroa.9.0..sroa_idx.i69, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.zd, i64 24
  store i64 %i.yx, ptr %.sroa.10.0..sroa_idx.i70, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.zd, i64 32
  store i64 %.sroa.11.0.i62, ptr %.sroa.11.0..sroa_idx.i71, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.zd, i64 40
  store i64 %.sroa.12.0.i65, ptr %.sroa.12.0..sroa_idx.i72, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.zd, i64 48
  store i64 %i.ym, ptr %.sroa.13.0..sroa_idx.i73, align 1, !tbaa !348
  %i.zg = load ptr, ptr %i.zc, align 8, !tbaa !404
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 56 ; 2 uses
  store ptr %i.zh, ptr %i.zc, align 8, !tbaa !404
  br label %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.eg:                                            ; preds = %bb.ee
  %i.zi = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.zj = ptrtoint ptr %i.zd to i64
  %i.zk = ptrtoint ptr %i.zi to i64               ; 2 uses
  %i.zl = sub i64 %i.zj, %i.zk                    ; 5 uses
  %i.zm = icmp eq i64 %i.zl, 9223372036854775800
  br i1 %i.zm, label %bb.eh, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75

bb.eh:                                            ; preds = %bb.eg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.eg
  %i.zn = sdiv exact i64 %i.zl, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i76 = call i64 @llvm.umax.i64(i64 %i.zn, i64 1)
  %i.zo = add nsw i64 %.sroa.speculated.i.i.i.i76, %i.zn ; 2 uses
  %i.zp = icmp ult i64 %i.zo, %i.zn
  %i.zq = call i64 @llvm.umin.i64(i64 %i.zo, i64 164703072086692425)
  %i.zr = select i1 %i.zp, i64 164703072086692425, i64 %i.zq ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.zr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.zs = mul nuw nsw i64 %i.zr, 56
  %i.zt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zs) #34 ; 4 uses
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 %i.zl ; 9 uses
  store i32 1685382483, ptr %i.zu, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i78 = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i78, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i79 = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  store i64 %.sroa.7.0.i61, ptr %.sroa.7.0..sroa_idx4.i79, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i80 = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  store i64 %i.yx, ptr %.sroa.9.0..sroa_idx6.i80, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i81 = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  store i64 %i.yx, ptr %.sroa.10.0..sroa_idx8.i81, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i82 = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  store i64 %.sroa.11.0.i62, ptr %.sroa.11.0..sroa_idx10.i82, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i83 = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  store i64 %.sroa.12.0.i65, ptr %.sroa.12.0..sroa_idx12.i83, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i84 = getelementptr inbounds nuw i8, ptr %i.zu, i64 48
  store i64 %i.ym, ptr %.sroa.13.0..sroa_idx14.i84, align 1, !tbaa !348
  %i.zv = icmp sgt i64 %i.zl, 0
  br i1 %i.zv, label %bb.ei, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85

bb.ei:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zt, ptr align 1 %i.zi, i64 %i.zl, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85: ; preds = %bb.ei, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 56 ; 2 uses
  %.not.i17.i.i.i86 = icmp eq ptr %i.zi, null
  br i1 %.not.i17.i.i.i86, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85
  %i.zx = load ptr, ptr %i.ze, align 16, !tbaa !405
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = sub i64 %i.zy, %i.zk
  call void @_ZdlPvm(ptr noundef nonnull %i.zi, i64 noundef %i.zz) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87: ; preds = %bb.ej, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85
  store ptr %i.zt, ptr %7, align 16, !tbaa !406
  store ptr %i.zw, ptr %i.zc, align 8, !tbaa !404
  %i.aaa = getelementptr inbounds nuw [56 x i8], ptr %i.zt, i64 %i.zr
  store ptr %i.aaa, ptr %i.ze, align 16, !tbaa !405
  br label %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87, %bb.ef, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit121
  %i.aab = phi ptr [ %i.xs, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit121 ], [ %i.zw, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87 ], [ %i.zh, %bb.ef ], [ %i.xs, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ] ; 8 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %1, i64 2713
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !1231, !range !350, !noalias !1227, !noundef !351
  %i.aae = trunc nuw i8 %i.aad to i1
  %i.aaf = select i1 %i.aae, i32 7, i32 6         ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 2776
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !1232, !noalias !1227 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 13 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.aak = load ptr, ptr %i.aaj, align 16, !tbaa !405, !alias.scope !1227
  %.not.i271.i = icmp eq ptr %i.aab, %i.aak
  br i1 %.not.i271.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  store i32 1685382481, ptr %i.aab, align 1, !tbaa !348, !noalias !1227
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  store i32 %i.aaf, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i8 0, i64 32, i1 false), !noalias !1227
  %.sroa.7303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 40
  store i64 %i.aah, ptr %.sroa.7303.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aab, i64 56 ; 2 uses
  store ptr %i.aal, ptr %i.aai, align 8, !tbaa !404, !alias.scope !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i

bb.el:                                            ; preds = %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %i.aam = load ptr, ptr %7, align 16, !tbaa !406, !alias.scope !1227 ; 4 uses
  %i.aan = ptrtoint ptr %i.aab to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao                 ; 6 uses
  %i.aaq = icmp eq i64 %i.aap, 9223372036854775800
  br i1 %i.aaq, label %bb.em, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.em:                                            ; preds = %bb.el
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33, !noalias !1227
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.el
  %i.aar = sdiv exact i64 %i.aap, 56              ; 3 uses
  %.sroa.speculated.i.i.i272.i = call i64 @llvm.umax.i64(i64 %i.aar, i64 1)
  %i.aas = add nsw i64 %.sroa.speculated.i.i.i272.i, %i.aar ; 2 uses
  %i.aat = icmp ult i64 %i.aas, %i.aar
  %i.aau = call i64 @llvm.umin.i64(i64 %i.aas, i64 164703072086692425)
  %i.aav = select i1 %i.aat, i64 164703072086692425, i64 %i.aau ; 3 uses
  %.not.i.i.i273.i = icmp ne i64 %i.aav, 0
  call void @llvm.assume(i1 %.not.i.i.i273.i)
  %i.aaw = mul nuw nsw i64 %i.aav, 56
  %i.aax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaw) #34, !noalias !1227 ; 4 uses
  %i.aay = getelementptr inbounds i8, ptr %i.aax, i64 %i.aap ; 6 uses
  store i32 1685382481, ptr %i.aay, align 1, !tbaa !348, !noalias !1227
  %.sroa.6.0..sroa_idx300.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  store i32 %i.aaf, ptr %.sroa.6.0..sroa_idx300.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.7.0..sroa_idx302.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.0..sroa_idx302.i, i8 0, i64 32, i1 false), !noalias !1227
  %.sroa.7303.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 40
  store i64 %i.aah, ptr %.sroa.7303.0..sroa_idx304.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.8.0..sroa_idx306.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx306.i, align 1, !tbaa !348, !noalias !1227
  %i.aaz = icmp sgt i64 %i.aap, 0
  br i1 %i.aaz, label %bb.en, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.en:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aax, ptr align 1 %i.aam, i64 %i.aap, i1 false), !noalias !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.en, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 56 ; 2 uses
  %.not.i17.i.i274.i = icmp eq ptr %i.aam, null
  br i1 %.not.i17.i.i274.i, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.aap) #31, !noalias !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.eo, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.aax, ptr %7, align 16, !tbaa !406, !alias.scope !1227
  store ptr %i.aba, ptr %i.aai, align 8, !tbaa !404, !alias.scope !1227
  %i.abb = getelementptr inbounds nuw [56 x i8], ptr %i.aax, i64 %i.aav
  store ptr %i.abb, ptr %i.aaj, align 16, !tbaa !405, !alias.scope !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ek
  %.pre457.i.a = phi ptr [ %i.aal, %bb.ek ], [ %i.aba, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 2722
  %i.abd = load i8, ptr %i.abc, align 2, !tbaa !1233, !range !350, !noalias !1227, !noundef !351
  %i.abe = trunc nuw i8 %i.abd to i1
  %8 = icmp ne ptr %.sroa.27.0.lcssa517.i, %.sroa.0322.0.lcssa518.i
  %or.cond438.i = and i1 %8, %i.abe
  br i1 %or.cond438.i, label %.lr.ph423.i.preheader, label %.loopexit.i

.lr.ph423.i.preheader:                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 4080
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader, %bb.fc
  %.pre456.i.a = phi ptr [ %.pre455.i.a, %bb.fc ], [ %.pre457.i.a, %.lr.ph423.i.preheader ]
  %.0137422.i = phi i64 [ %.2.i, %bb.fc ], [ 0, %.lr.ph423.i.preheader ] ; 2 uses
  %i.abg = add nuw nsw i64 %.0137422.i, 1         ; 4 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.0137422.i
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !397, !noalias !1227 ; 9 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 136
  %i.abk = load i8, ptr %i.abj, align 8, !tbaa !413, !range !350, !noalias !1227, !noundef !351
  %i.abl = trunc nuw i8 %i.abk to i1
  br i1 %i.abl, label %bb.ep, label %bb.fc

bb.ep:                                            ; preds = %.lr.ph423.i
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 72
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !348 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 28
  %.0.copyload.i.i26 = load i32, ptr %i.abo, align 4
  %i.abp = icmp eq i32 %.0.copyload.i.i26, 8
  br i1 %i.abp, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %.0.copyload.i11.i56 = load i64, ptr %i.abq, align 8 ; 2 uses
  %i.abr = load i64, ptr %i.abf, align 8, !tbaa !1228
  %i.abs = urem i64 %.0.copyload.i11.i56, %i.abr
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abi, i64 48
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !348
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !348
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.abi, i64 40
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !348
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.abx = phi i64 [ %.0.copyload.i11.i56, %bb.eq ], [ %.pre.i28, %bb.er ] ; 4 uses
  %.sroa.7.0.i29 = phi i64 [ %i.abs, %bb.eq ], [ %i.abu, %bb.er ] ; 2 uses
  %.sroa.11.0.i30 = phi i64 [ 0, %bb.eq ], [ %i.abw, %bb.er ] ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %.0.copyload.i12.i31 = load i64, ptr %i.aby, align 8
  %i.abz = and i64 %.0.copyload.i12.i31, 2
  %.not.i32 = icmp eq i64 %i.abz, 0
  br i1 %.not.i32, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abi, i64 56
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !348
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sroa.12.0.i33 = phi i64 [ 0, %bb.es ], [ %i.acb, %bb.et ] ; 2 uses
  %i.acc = load ptr, ptr %i.aai, align 8, !tbaa !404 ; 10 uses
  %i.acd = load ptr, ptr %i.aaj, align 16, !tbaa !405
  %.not.i.i34 = icmp eq ptr %i.acc, %i.acd
  br i1 %.not.i.i34, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  store i32 1685382482, ptr %i.acc, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i35, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  store i64 %.sroa.7.0.i29, ptr %.sroa.7.0..sroa_idx.i36, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  store i64 %i.abx, ptr %.sroa.9.0..sroa_idx.i37, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.acc, i64 24
  store i64 %i.abx, ptr %.sroa.10.0..sroa_idx.i38, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  store i64 %.sroa.11.0.i30, ptr %.sroa.11.0..sroa_idx.i39, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.acc, i64 40
  store i64 %.sroa.12.0.i33, ptr %.sroa.12.0..sroa_idx.i40, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.acc, i64 48
  store i64 %i.abn, ptr %.sroa.13.0..sroa_idx.i41, align 1, !tbaa !348
  %i.ace = load ptr, ptr %i.aai, align 8, !tbaa !404
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 56 ; 2 uses
  store ptr %i.acf, ptr %i.aai, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57

bb.ew:                                            ; preds = %bb.eu
  %i.acg = load ptr, ptr %7, align 16, !tbaa !406 ; 4 uses
  %i.ach = ptrtoint ptr %i.acc to i64
  %i.aci = ptrtoint ptr %i.acg to i64             ; 2 uses
  %i.acj = sub i64 %i.ach, %i.aci                 ; 5 uses
  %i.ack = icmp eq i64 %i.acj, 9223372036854775800
  br i1 %i.ack, label %bb.ex, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43

bb.ex:                                            ; preds = %bb.ew
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43: ; preds = %bb.ew
  %i.acl = sdiv exact i64 %i.acj, 56              ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.acl, i64 1)
  %i.acm = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.acl ; 2 uses
  %i.acn = icmp ult i64 %i.acm, %i.acl
  %i.aco = call i64 @llvm.umin.i64(i64 %i.acm, i64 164703072086692425)
  %i.acp = select i1 %i.acn, i64 164703072086692425, i64 %i.aco ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.acp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.acq = mul nuw nsw i64 %i.acp, 56
  %i.acr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acq) #34 ; 4 uses
  %i.acs = getelementptr inbounds i8, ptr %i.acr, i64 %i.acj ; 9 uses
  store i32 1685382482, ptr %i.acs, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i46 = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i46, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i47 = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store i64 %.sroa.7.0.i29, ptr %.sroa.7.0..sroa_idx4.i47, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i48 = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  store i64 %i.abx, ptr %.sroa.9.0..sroa_idx6.i48, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i49 = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  store i64 %i.abx, ptr %.sroa.10.0..sroa_idx8.i49, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i50 = getelementptr inbounds nuw i8, ptr %i.acs, i64 32
  store i64 %.sroa.11.0.i30, ptr %.sroa.11.0..sroa_idx10.i50, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i51 = getelementptr inbounds nuw i8, ptr %i.acs, i64 40
  store i64 %.sroa.12.0.i33, ptr %.sroa.12.0..sroa_idx12.i51, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i52 = getelementptr inbounds nuw i8, ptr %i.acs, i64 48
  store i64 %i.abn, ptr %.sroa.13.0..sroa_idx14.i52, align 1, !tbaa !348
  %i.act = icmp sgt i64 %i.acj, 0
  br i1 %i.act, label %bb.ey, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53

bb.ey:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.acr, ptr align 1 %i.acg, i64 %i.acj, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53: ; preds = %bb.ey, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acs, i64 56 ; 2 uses
  %.not.i17.i.i.i54 = icmp eq ptr %i.acg, null
  br i1 %.not.i17.i.i.i54, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53
  %i.acv = load ptr, ptr %i.aaj, align 16, !tbaa !405
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = sub i64 %i.acw, %i.aci
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef %i.acx) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55: ; preds = %bb.ez, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53
  store ptr %i.acr, ptr %7, align 16, !tbaa !406
  store ptr %i.acu, ptr %i.aai, align 8, !tbaa !404
  %i.acy = getelementptr inbounds nuw [56 x i8], ptr %i.acr, i64 %i.acp
  store ptr %i.acy, ptr %i.aaj, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57: ; preds = %bb.ev, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55
  %.val192.val.i = phi ptr [ %i.acf, %bb.ev ], [ %i.acu, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55 ] ; 5 uses
  %i.acz = icmp ult i64 %i.abg, %i.eo
  br i1 %i.acz, label %.lr.ph418.i.preheader, label %.critedge8.i

.lr.ph418.i.preheader:                            ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57
  %i.ada = getelementptr inbounds i8, ptr %.val192.val.i, i64 -8 ; 2 uses
  %i.adb = getelementptr inbounds i8, ptr %.val192.val.i, i64 -40
  %i.adc = getelementptr inbounds i8, ptr %.val192.val.i, i64 -16
  %i.add = getelementptr inbounds i8, ptr %.val192.val.i, i64 -24
  br label %.lr.ph418.i

.lr.ph418.i:                                      ; preds = %.lr.ph418.i.preheader, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i
  %.1138416.i = phi i64 [ %i.adj, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i ], [ %i.abg, %.lr.ph418.i.preheader ] ; 3 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.1138416.i
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !397, !noalias !1227 ; 5 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 136
  %i.adh = load i8, ptr %i.adg, align 8, !tbaa !413, !range !350, !noalias !1227, !noundef !351
  %i.adi = trunc nuw i8 %i.adh to i1
  br i1 %i.adi, label %bb.fa, label %.critedge8.i.loopexit

bb.fa:                                            ; preds = %.lr.ph418.i
  %i.adj = add i64 %.1138416.i, 1                 ; 2 uses
  %.0.copyload.i.i275.i = load i64, ptr %i.ada, align 1, !noalias !1227
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 72
  %.0.copyload.i11.i276.i = load i64, ptr %i.adk, align 8, !noalias !1227
  %.sroa.speculated.i277.i = call i64 @llvm.umax.i64(i64 %.0.copyload.i.i275.i, i64 %.0.copyload.i11.i276.i)
  store i64 %.sroa.speculated.i277.i, ptr %i.ada, align 1, !noalias !1227
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 40
  %.0.copyload.i12.i278.i = load i64, ptr %i.adl, align 8, !noalias !1227
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adf, i64 56
  %.0.copyload.i13.i279.i = load i64, ptr %i.adm, align 8, !noalias !1227
  %i.adn = add i64 %.0.copyload.i13.i279.i, %.0.copyload.i12.i278.i
  %.0.copyload.i14.i280.i = load i64, ptr %i.adb, align 1, !noalias !1227
  %i.ado = sub i64 %i.adn, %.0.copyload.i14.i280.i ; 2 uses
  store i64 %i.ado, ptr %i.adc, align 1, !noalias !1227
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adf, i64 28
  %.0.copyload.i15.i281.i = load i32, ptr %i.adp, align 4, !noalias !1227
  %.not.i282.i = icmp eq i32 %.0.copyload.i15.i281.i, 8
  br i1 %.not.i282.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i64 %i.ado, ptr %i.add, align 1, !tbaa !348, !noalias !1227
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i: ; preds = %bb.fb, %bb.fa
  %exitcond450.not.i = icmp eq i64 %i.adj, %i.eo
  br i1 %exitcond450.not.i, label %.critedge8.i.loopexit, label %.lr.ph418.i, !llvm.loop !1223

.critedge8.i.loopexit:                            ; preds = %.lr.ph418.i, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i
  %.1138.lcssa.i.ph = phi i64 [ %i.eo, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i ], [ %.1138416.i, %.lr.ph418.i ]
end_hunk_1
