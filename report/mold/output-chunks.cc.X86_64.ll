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
  %i.aa = phi i1 [ false, %._crit_edge.thread.i ], [ false, %._crit_edge.i ], [ true, %bb.g ] ; 2 uses
  %.sroa.0322.0.lcssa518.i = phi ptr [ null, %._crit_edge.thread.i ], [ %.sroa.0322.1.i, %._crit_edge.i ], [ %.sroa.0322.1.i, %bb.g ] ; 9 uses
  %.sroa.27.0.lcssa517.i = phi ptr [ null, %._crit_edge.thread.i ], [ %.sroa.27.1.i, %._crit_edge.i ], [ %.sroa.27.1.i, %bb.g ]
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
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !404 ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !405 ; 2 uses
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
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 56 ; 2 uses
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345

bb.t:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.u, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331: ; preds = %bb.t
  %i.cc = sdiv exact i64 %i.ca, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i332 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i332, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 164703072086692425)
  %i.cg = select i1 %i.ce, i64 164703072086692425, i64 %i.cf ; 3 uses
  %.not.i.i.i.i333 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i333)
  %i.ch = mul nuw nsw i64 %i.cg, 56
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #34 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 9 uses
  store i32 6, ptr %i.cj, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i334 = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i334, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i335 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.sroa.7.0.i317, ptr %.sroa.7.0..sroa_idx4.i335, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i336 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.br, ptr %.sroa.9.0..sroa_idx6.i336, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i337 = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %i.br, ptr %.sroa.10.0..sroa_idx8.i337, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i338 = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i64 %.sroa.11.0.i318, ptr %.sroa.11.0..sroa_idx10.i338, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i339 = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i64 %i.bq, ptr %.sroa.12.0..sroa_idx12.i339, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i340 = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store i64 %i.bf, ptr %.sroa.13.0..sroa_idx14.i340, align 1, !tbaa !348
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.v, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341

bb.v:                                             ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 1 %i.bx, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341: ; preds = %bb.v, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i331
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 56 ; 2 uses
  %.not.i17.i.i.i342 = icmp eq ptr %i.bx, null
  br i1 %.not.i17.i.i.i342, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343: ; preds = %bb.w, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i341
  store ptr %i.ci, ptr %7, align 16, !tbaa !406
  store ptr %i.cl, ptr %i.bs, align 8, !tbaa !404
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  store ptr %i.cm, ptr %i.bu, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343, %bb.s, %bb.n, %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i
  %i.cn = phi ptr [ %i.cm, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343 ], [ %i.bv, %bb.s ], [ null, %bb.n ], [ null, %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i ]
  %i.co = phi ptr [ %i.cl, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i343 ], [ %i.bw, %bb.s ], [ null, %bb.n ], [ null, %_ZNKSt6ranges16__stable_sort_fnclITkNS_19random_access_rangeERSt6vectorIPN4mold5ChunkINS3_6X86_64EEESaIS7_EENS_4lessEZNS3_L11create_phdrIS5_EES2_INS3_7ElfPhdrIT_EESaISF_EERNS3_7ContextISE_EEEUlS7_E3_Q8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRSE_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISE_EEE4typeISN_NS_8danglingEEEOSE_SO_SP_.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 13848
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1229, !noalias !1227 ; 9 uses
  %.not155.i = icmp eq ptr %i.cq, null
  br i1 %.not155.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313, label %bb.x

bb.x:                                             ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !348 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %.0.copyload.i.i282 = load i32, ptr %i.ct, align 4
  %i.cu = icmp eq i32 %.0.copyload.i.i282, 8
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %.0.copyload.i11.i312 = load i64, ptr %i.cv, align 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4080
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1228
  %i.cy = urem i64 %.0.copyload.i11.i312, %i.cx
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !348
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !348
  %.phi.trans.insert.i283 = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %.pre.i284 = load i64, ptr %.phi.trans.insert.i283, align 8, !tbaa !348
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = phi i64 [ %.0.copyload.i11.i312, %bb.y ], [ %.pre.i284, %bb.z ] ; 4 uses
  %.sroa.7.0.i285 = phi i64 [ %i.cy, %bb.y ], [ %i.da, %bb.z ] ; 2 uses
  %.sroa.11.0.i286 = phi i64 [ 0, %bb.y ], [ %i.dc, %bb.z ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %.0.copyload.i12.i287 = load i64, ptr %i.de, align 8
  %i.df = and i64 %.0.copyload.i12.i287, 2
  %.not.i288 = icmp eq i64 %i.df, 0
  br i1 %.not.i288, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !348
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.12.0.i289 = phi i64 [ 0, %bb.aa ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !404 ; 11 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !405 ; 2 uses
  %.not.i.i290 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i290, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 3, ptr %i.dj, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i291, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.sroa.7.0.i285, ptr %.sroa.7.0..sroa_idx.i292, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i293 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dd, ptr %.sroa.9.0..sroa_idx.i293, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %i.dd, ptr %.sroa.10.0..sroa_idx.i294, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i64 %.sroa.11.0.i286, ptr %.sroa.11.0..sroa_idx.i295, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store i64 %.sroa.12.0.i289, ptr %.sroa.12.0..sroa_idx.i296, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store i64 %i.cs, ptr %.sroa.13.0..sroa_idx.i297, align 1, !tbaa !348
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 2 uses
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313

bb.ae:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.af, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299: ; preds = %bb.ae
  %i.ds = sdiv exact i64 %i.dq, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i300 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i300, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 164703072086692425)
  %i.dw = select i1 %i.du, i64 164703072086692425, i64 %i.dv ; 3 uses
  %.not.i.i.i.i301 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i301)
  %i.dx = mul nuw nsw i64 %i.dw, 56
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #34 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 9 uses
  store i32 3, ptr %i.dz, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i302 = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i302, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i303 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %.sroa.7.0.i285, ptr %.sroa.7.0..sroa_idx4.i303, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i304 = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.dd, ptr %.sroa.9.0..sroa_idx6.i304, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i305 = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %i.dd, ptr %.sroa.10.0..sroa_idx8.i305, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i306 = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store i64 %.sroa.11.0.i286, ptr %.sroa.11.0..sroa_idx10.i306, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i307 = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  store i64 %.sroa.12.0.i289, ptr %.sroa.12.0..sroa_idx12.i307, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i308 = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store i64 %i.cs, ptr %.sroa.13.0..sroa_idx14.i308, align 1, !tbaa !348
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.ag, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309

bb.ag:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309: ; preds = %bb.ag, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i299
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 56 ; 2 uses
  %.not.i17.i.i.i310 = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i.i310, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dq) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311: ; preds = %bb.ah, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i309
  store ptr %i.dy, ptr %7, align 16, !tbaa !406
  store ptr %i.eb, ptr %i.di, align 8, !tbaa !404
  %i.ec = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %i.dw ; 2 uses
  store ptr %i.ec, ptr %i.dk, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311, %bb.ad, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345
  %i.ed = phi ptr [ %i.ec, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311 ], [ %i.dl, %bb.ad ], [ %i.cn, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345 ]
  %i.ee = phi ptr [ %i.eb, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i311 ], [ %i.dm, %bb.ad ], [ %i.co, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit345 ]
  %i.ef = ptrtoint ptr %.sroa.27.0.lcssa517.i to i64
  %i.eg = ptrtoint ptr %.sroa.0322.0.lcssa518.i to i64 ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3                 ; 12 uses
  br i1 %i.aa, label %.lr.ph388.i, label %.preheader362.i

.lr.ph388.i:                                      ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit313
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 2681 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 2666 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 2694 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.eo = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !1227 ; 4 uses
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !1227 ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 -24    ; 3 uses
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !1227 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !1227 ; 4 uses
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !1227 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ew, i64 -24    ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 4080 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.ai

.preheader364.i:                                  ; preds = %.critedge.i, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 2678
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %bb.bb

bb.ai:                                            ; preds = %.critedge.i, %.lr.ph388.i
  %.0145386.i = phi i64 [ 0, %.lr.ph388.i ], [ %.2147.i, %.critedge.i ] ; 2 uses
  %i.fv = add nuw nsw i64 %.0145386.i, 1          ; 4 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.0145386.i
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !397, !noalias !1227 ; 9 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 28     ; 2 uses
  %.val191.i = load i32, ptr %i.fy, align 1, !noalias !1227
  %i.fz = icmp eq i32 %.val191.i, 7
  br i1 %i.fz, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.ga = call noundef i64 @_ZN4mold13to_phdr_flagsINS_6X86_64EEElRNS_7ContextIT_EEPNS_5ChunkIS3_EE(ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %i.fx), !noalias !1227 ; 2 uses
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !348 ; 2 uses
  %.0.copyload.i.i250 = load i32, ptr %i.fy, align 4
  %i.ge = icmp eq i32 %.0.copyload.i.i250, 8
  br i1 %i.ge, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %.0.copyload.i11.i280 = load i64, ptr %i.gf, align 8 ; 2 uses
  %i.gg = load i64, ptr %i.fc, align 8, !tbaa !1228
  %i.gh = urem i64 %.0.copyload.i11.i280, %i.gg
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !348
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !348
  %.phi.trans.insert.i251 = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %.pre.i252 = load i64, ptr %.phi.trans.insert.i251, align 8, !tbaa !348
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gm = phi i64 [ %.0.copyload.i11.i280, %bb.ak ], [ %.pre.i252, %bb.al ] ; 4 uses
  %.sroa.7.0.i253 = phi i64 [ %i.gh, %bb.ak ], [ %i.gj, %bb.al ] ; 2 uses
  %.sroa.11.0.i254 = phi i64 [ 0, %bb.ak ], [ %i.gl, %bb.al ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %.0.copyload.i12.i255 = load i64, ptr %i.gn, align 8
  %i.go = and i64 %.0.copyload.i12.i255, 2
  %.not.i256 = icmp eq i64 %i.go, 0
  br i1 %.not.i256, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !348
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.12.0.i257 = phi i64 [ 0, %bb.am ], [ %i.gq, %bb.an ] ; 2 uses
  %i.gr = load ptr, ptr %i.fb, align 8, !tbaa !404 ; 11 uses
  %i.gs = load ptr, ptr %i.fd, align 16, !tbaa !405
  %.not.i.i258 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not.i.i258, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 4, ptr %i.gr, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i259 = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 %i.gb, ptr %.sroa.6.0..sroa_idx.i259, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i260 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %.sroa.7.0.i253, ptr %.sroa.7.0..sroa_idx.i260, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i64 %i.gm, ptr %.sroa.9.0..sroa_idx.i261, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i262 = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store i64 %i.gm, ptr %.sroa.10.0..sroa_idx.i262, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store i64 %.sroa.11.0.i254, ptr %.sroa.11.0..sroa_idx.i263, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store i64 %.sroa.12.0.i257, ptr %.sroa.12.0..sroa_idx.i264, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store i64 %i.gd, ptr %.sroa.13.0..sroa_idx.i265, align 1, !tbaa !348
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 56 ; 2 uses
  store ptr %i.gt, ptr %i.fb, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281

bb.aq:                                            ; preds = %bb.ao
  %i.gu = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 6 uses
  %i.gy = icmp eq i64 %i.gx, 9223372036854775800
  br i1 %i.gy, label %bb.ar, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267: ; preds = %bb.aq
  %i.gz = sdiv exact i64 %i.gx, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i268 = call i64 @llvm.umax.i64(i64 %i.gz, i64 1)
  %i.ha = add nsw i64 %.sroa.speculated.i.i.i.i268, %i.gz ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gz
  %i.hc = call i64 @llvm.umin.i64(i64 %i.ha, i64 164703072086692425)
  %i.hd = select i1 %i.hb, i64 164703072086692425, i64 %i.hc ; 3 uses
  %.not.i.i.i.i269 = icmp ne i64 %i.hd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i269)
  %i.he = mul nuw nsw i64 %i.hd, 56
  %i.hf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #34 ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.gx ; 9 uses
  store i32 4, ptr %i.hg, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i270 = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i32 %i.gb, ptr %.sroa.6.0..sroa_idx2.i270, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i271 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %.sroa.7.0.i253, ptr %.sroa.7.0..sroa_idx4.i271, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i272 = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 %i.gm, ptr %.sroa.9.0..sroa_idx6.i272, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i273 = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store i64 %i.gm, ptr %.sroa.10.0..sroa_idx8.i273, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i274 = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store i64 %.sroa.11.0.i254, ptr %.sroa.11.0..sroa_idx10.i274, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i275 = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  store i64 %.sroa.12.0.i257, ptr %.sroa.12.0..sroa_idx12.i275, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i276 = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  store i64 %i.gd, ptr %.sroa.13.0..sroa_idx14.i276, align 1, !tbaa !348
  %i.hh = icmp sgt i64 %i.gx, 0
  br i1 %i.hh, label %bb.as, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

bb.as:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr align 1 %i.gu, i64 %i.gx, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277: ; preds = %bb.as, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i267
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 56 ; 2 uses
  %.not.i17.i.i.i278 = icmp eq ptr %i.gu, null
  br i1 %.not.i17.i.i.i278, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gx) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279: ; preds = %bb.at, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i277
  store ptr %i.hf, ptr %7, align 16, !tbaa !406
  store ptr %i.hi, ptr %i.fb, align 8, !tbaa !404
  %i.hj = getelementptr inbounds nuw [56 x i8], ptr %i.hf, i64 %i.hd
  store ptr %i.hj, ptr %i.fd, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281: ; preds = %bb.ap, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279
  %.val196.val.i = phi ptr [ %i.gt, %bb.ap ], [ %i.hi, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i279 ] ; 4 uses
  %i.hk = icmp ult i64 %i.fv, %i.ei
  br i1 %i.hk, label %.lr.ph381.i.preheader, label %.critedge.i

.lr.ph381.i.preheader:                            ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit281
  %i.hl = getelementptr inbounds i8, ptr %.val196.val.i, i64 -8 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.val196.val.i, i64 -40
  %i.hn = getelementptr inbounds i8, ptr %.val196.val.i, i64 -16
  %i.ho = getelementptr inbounds i8, ptr %.val196.val.i, i64 -24
  br label %.lr.ph381.i

.lr.ph381.i:                                      ; preds = %.lr.ph381.i.preheader, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit.i
  %.1146379.i = phi i64 [ %i.is, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit.i ], [ %i.fv, %.lr.ph381.i.preheader ] ; 5 uses
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !407, !noalias !1227
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.1146379.i
end_hunk_0
begin_hunk_1_@_ZN4mold10OutputPhdrINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE:bb.a
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !348
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wy, i64 56
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !348
  %.phi.trans.insert.i59 = getelementptr inbounds nuw i8, ptr %i.wy, i64 40
  %.pre.i60 = load i64, ptr %.phi.trans.insert.i59, align 8, !tbaa !348
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.xz = phi i64 [ %.0.copyload.i11.i88, %bb.ea ], [ %.pre.i60, %bb.eb ] ; 4 uses
  %.sroa.7.0.i61 = phi i64 [ %i.xu, %bb.ea ], [ %i.xw, %bb.eb ] ; 2 uses
  %.sroa.11.0.i62 = phi i64 [ 0, %bb.ea ], [ %i.xy, %bb.eb ] ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %.0.copyload.i12.i63 = load i64, ptr %i.ya, align 8
  %i.yb = and i64 %.0.copyload.i12.i63, 2
  %.not.i64 = icmp eq i64 %i.yb, 0
  br i1 %.not.i64, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wy, i64 56
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !348
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.12.0.i65 = phi i64 [ 0, %bb.ec ], [ %i.yd, %bb.ed ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !404 ; 11 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 16, !tbaa !405 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.yf, %i.yh
  br i1 %.not.i.i66, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i32 1685382483, ptr %i.yf, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i67, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  store i64 %.sroa.7.0.i61, ptr %.sroa.7.0..sroa_idx.i68, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  store i64 %i.xz, ptr %.sroa.9.0..sroa_idx.i69, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  store i64 %i.xz, ptr %.sroa.10.0..sroa_idx.i70, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  store i64 %.sroa.11.0.i62, ptr %.sroa.11.0..sroa_idx.i71, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.yf, i64 40
  store i64 %.sroa.12.0.i65, ptr %.sroa.12.0..sroa_idx.i72, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.yf, i64 48
  store i64 %i.xo, ptr %.sroa.13.0..sroa_idx.i73, align 1, !tbaa !348
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 56
  br label %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.eg:                                            ; preds = %bb.ee
  %i.yj = load ptr, ptr %7, align 16, !tbaa !406  ; 4 uses
  %i.yk = ptrtoint ptr %i.yf to i64
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = sub i64 %i.yk, %i.yl                    ; 6 uses
  %i.yn = icmp eq i64 %i.ym, 9223372036854775800
  br i1 %i.yn, label %bb.eh, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75

bb.eh:                                            ; preds = %bb.eg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.eg
  %i.yo = sdiv exact i64 %i.ym, 56                ; 3 uses
  %.sroa.speculated.i.i.i.i76 = call i64 @llvm.umax.i64(i64 %i.yo, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i.i76, %i.yo ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yo
  %i.yr = call i64 @llvm.umin.i64(i64 %i.yp, i64 164703072086692425)
  %i.ys = select i1 %i.yq, i64 164703072086692425, i64 %i.yr ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.yt = mul nuw nsw i64 %i.ys, 56
  %i.yu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #34 ; 4 uses
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %i.ym ; 9 uses
  store i32 1685382483, ptr %i.yv, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i78 = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i78, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i79 = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store i64 %.sroa.7.0.i61, ptr %.sroa.7.0..sroa_idx4.i79, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i80 = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store i64 %i.xz, ptr %.sroa.9.0..sroa_idx6.i80, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i81 = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  store i64 %i.xz, ptr %.sroa.10.0..sroa_idx8.i81, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i82 = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  store i64 %.sroa.11.0.i62, ptr %.sroa.11.0..sroa_idx10.i82, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i83 = getelementptr inbounds nuw i8, ptr %i.yv, i64 40
  store i64 %.sroa.12.0.i65, ptr %.sroa.12.0..sroa_idx12.i83, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i84 = getelementptr inbounds nuw i8, ptr %i.yv, i64 48
  store i64 %i.xo, ptr %.sroa.13.0..sroa_idx14.i84, align 1, !tbaa !348
  %i.yw = icmp sgt i64 %i.ym, 0
  br i1 %i.yw, label %bb.ei, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85

bb.ei:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yu, ptr align 1 %i.yj, i64 %i.ym, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85: ; preds = %bb.ei, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i75
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 56
  %.not.i17.i.i.i86 = icmp eq ptr %i.yj, null
  br i1 %.not.i17.i.i.i86, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.ym) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87: ; preds = %bb.ej, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i85
  store ptr %i.yu, ptr %7, align 16, !tbaa !406
  %i.yy = getelementptr inbounds nuw [56 x i8], ptr %i.yu, i64 %i.ys ; 2 uses
  store ptr %i.yy, ptr %i.yg, align 16, !tbaa !405
  br label %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87, %bb.ef, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit121
  %i.yz = phi ptr [ %i.wt, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit121 ], [ %i.yy, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87 ], [ %i.yh, %bb.ef ], [ %i.wt, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ] ; 2 uses
  %i.za = phi ptr [ %i.wu, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit121 ], [ %i.yx, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i87 ], [ %i.yi, %bb.ef ], [ %i.wu, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ] ; 7 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 2713
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !1231, !range !350, !noalias !1227, !noundef !351
  %i.zd = trunc nuw i8 %i.zc to i1
  %i.ze = select i1 %i.zd, i32 7, i32 6           ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 2776
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !1232, !noalias !1227 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %.not.i271.i = icmp eq ptr %i.za, %i.yz
  br i1 %.not.i271.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  store i32 1685382481, ptr %i.za, align 1, !tbaa !348, !noalias !1227
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  store i32 %i.ze, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i8 0, i64 32, i1 false), !noalias !1227
  %.sroa.7303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.za, i64 40
  store i64 %i.zg, ptr %.sroa.7303.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx.i, align 1, !tbaa !348, !noalias !1227
  %i.zj = getelementptr inbounds nuw i8, ptr %i.za, i64 56 ; 2 uses
  store ptr %i.zj, ptr %i.zh, align 8, !tbaa !404, !alias.scope !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i

bb.el:                                            ; preds = %_ZN4mold10find_chunkINS_6X86_64EEEPNS_5ChunkIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %i.zk = load ptr, ptr %7, align 16, !tbaa !406, !alias.scope !1227 ; 4 uses
  %i.zl = ptrtoint ptr %i.yz to i64
  %i.zm = ptrtoint ptr %i.zk to i64
  %i.zn = sub i64 %i.zl, %i.zm                    ; 6 uses
  %i.zo = icmp eq i64 %i.zn, 9223372036854775800
  br i1 %i.zo, label %bb.em, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.em:                                            ; preds = %bb.el
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33, !noalias !1227
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.el
  %i.zp = sdiv exact i64 %i.zn, 56                ; 3 uses
  %.sroa.speculated.i.i.i272.i = call i64 @llvm.umax.i64(i64 %i.zp, i64 1)
  %i.zq = add nsw i64 %.sroa.speculated.i.i.i272.i, %i.zp ; 2 uses
  %i.zr = icmp ult i64 %i.zq, %i.zp
  %i.zs = call i64 @llvm.umin.i64(i64 %i.zq, i64 164703072086692425)
  %i.zt = select i1 %i.zr, i64 164703072086692425, i64 %i.zs ; 3 uses
  %.not.i.i.i273.i = icmp ne i64 %i.zt, 0
  call void @llvm.assume(i1 %.not.i.i.i273.i)
  %i.zu = mul nuw nsw i64 %i.zt, 56
  %i.zv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zu) #34, !noalias !1227 ; 4 uses
  %i.zw = getelementptr inbounds i8, ptr %i.zv, i64 %i.zn ; 6 uses
  store i32 1685382481, ptr %i.zw, align 1, !tbaa !348, !noalias !1227
  %.sroa.6.0..sroa_idx300.i = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  store i32 %i.ze, ptr %.sroa.6.0..sroa_idx300.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.7.0..sroa_idx302.i = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.7.0..sroa_idx302.i, i8 0, i64 32, i1 false), !noalias !1227
  %.sroa.7303.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.zw, i64 40
  store i64 %i.zg, ptr %.sroa.7303.0..sroa_idx304.i, align 1, !tbaa !348, !noalias !1227
  %.sroa.8.0..sroa_idx306.i = getelementptr inbounds nuw i8, ptr %i.zw, i64 48
  store i64 1, ptr %.sroa.8.0..sroa_idx306.i, align 1, !tbaa !348, !noalias !1227
  %i.zx = icmp sgt i64 %i.zn, 0
  br i1 %i.zx, label %bb.en, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.en:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zv, ptr align 1 %i.zk, i64 %i.zn, i1 false), !noalias !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.en, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 56 ; 2 uses
  %.not.i17.i.i274.i = icmp eq ptr %i.zk, null
  br i1 %.not.i17.i.i274.i, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zn) #31, !noalias !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.eo, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.zv, ptr %7, align 16, !tbaa !406, !alias.scope !1227
  store ptr %i.zy, ptr %i.zh, align 8, !tbaa !404, !alias.scope !1227
  %i.zz = getelementptr inbounds nuw [56 x i8], ptr %i.zv, i64 %i.zt
  store ptr %i.zz, ptr %i.zi, align 16, !tbaa !405, !alias.scope !1227
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ek
  %.pre457.i = phi ptr [ %i.zj, %bb.ek ], [ %i.zy, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 2722
  %i.aab = load i8, ptr %i.aaa, align 2, !tbaa !1233, !range !350, !noalias !1227, !noundef !351
  %i.aac = trunc nuw i8 %i.aab to i1
  %or.cond438.i = and i1 %i.aa, %i.aac
  br i1 %or.cond438.i, label %.lr.ph423.i.preheader, label %.loopexit.i

.lr.ph423.i.preheader:                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit.i
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 4080
  br label %.lr.ph423.i

.lr.ph423.i:                                      ; preds = %.lr.ph423.i.preheader, %bb.fc
  %i.aae = phi ptr [ %.pre455.i.a, %bb.fc ], [ %.pre457.i, %.lr.ph423.i.preheader ] ; 11 uses
  %.0137422.i = phi i64 [ %.2.i, %bb.fc ], [ 0, %.lr.ph423.i.preheader ] ; 2 uses
  %i.aaf = add nuw nsw i64 %.0137422.i, 1         ; 4 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.0137422.i
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !397, !noalias !1227 ; 9 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 136
  %i.aaj = load i8, ptr %i.aai, align 8, !tbaa !413, !range !350, !noalias !1227, !noundef !351
  %i.aak = trunc nuw i8 %i.aaj to i1
  br i1 %i.aak, label %bb.ep, label %bb.fc

bb.ep:                                            ; preds = %.lr.ph423.i
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 72
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !348 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 28
  %.0.copyload.i.i26 = load i32, ptr %i.aan, align 4
  %i.aao = icmp eq i32 %.0.copyload.i.i26, 8
  br i1 %i.aao, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %.0.copyload.i11.i56 = load i64, ptr %i.aap, align 8 ; 2 uses
  %i.aaq = load i64, ptr %i.aad, align 8, !tbaa !1228
  %i.aar = urem i64 %.0.copyload.i11.i56, %i.aaq
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !348
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !348
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %.pre.i28 = load i64, ptr %.phi.trans.insert.i27, align 8, !tbaa !348
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.aaw = phi i64 [ %.0.copyload.i11.i56, %bb.eq ], [ %.pre.i28, %bb.er ] ; 4 uses
  %.sroa.7.0.i29 = phi i64 [ %i.aar, %bb.eq ], [ %i.aat, %bb.er ] ; 2 uses
  %.sroa.11.0.i30 = phi i64 [ 0, %bb.eq ], [ %i.aav, %bb.er ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %.0.copyload.i12.i31 = load i64, ptr %i.aax, align 8
  %i.aay = and i64 %.0.copyload.i12.i31, 2
  %.not.i32 = icmp eq i64 %i.aay, 0
  br i1 %.not.i32, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !348
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.sroa.12.0.i33 = phi i64 [ 0, %bb.es ], [ %i.aba, %bb.et ] ; 2 uses
  %i.abb = load ptr, ptr %i.zi, align 16, !tbaa !405
  %.not.i.i34 = icmp eq ptr %i.aae, %i.abb
  br i1 %.not.i.i34, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  store i32 1685382482, ptr %i.aae, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx.i35, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %.sroa.7.0.i29, ptr %.sroa.7.0..sroa_idx.i36, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.aaw, ptr %.sroa.9.0..sroa_idx.i37, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.aaw, ptr %.sroa.10.0..sroa_idx.i38, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.aae, i64 32
  store i64 %.sroa.11.0.i30, ptr %.sroa.11.0..sroa_idx.i39, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.aae, i64 40
  store i64 %.sroa.12.0.i33, ptr %.sroa.12.0..sroa_idx.i40, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.aae, i64 48
  store i64 %i.aam, ptr %.sroa.13.0..sroa_idx.i41, align 1, !tbaa !348
  %i.abc = load ptr, ptr %i.zh, align 8, !tbaa !404
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 56 ; 2 uses
  store ptr %i.abd, ptr %i.zh, align 8, !tbaa !404
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57

bb.ew:                                            ; preds = %bb.eu
  %i.abe = load ptr, ptr %7, align 16, !tbaa !406 ; 4 uses
  %i.abf = ptrtoint ptr %i.aae to i64
  %i.abg = ptrtoint ptr %i.abe to i64
  %i.abh = sub i64 %i.abf, %i.abg                 ; 6 uses
  %i.abi = icmp eq i64 %i.abh, 9223372036854775800
  br i1 %i.abi, label %bb.ex, label %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43

bb.ex:                                            ; preds = %bb.ew
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43: ; preds = %bb.ew
  %i.abj = sdiv exact i64 %i.abh, 56              ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.abj, i64 1)
  %i.abk = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.abj ; 2 uses
  %i.abl = icmp ult i64 %i.abk, %i.abj
  %i.abm = call i64 @llvm.umin.i64(i64 %i.abk, i64 164703072086692425)
  %i.abn = select i1 %i.abl, i64 164703072086692425, i64 %i.abm ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.abn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.abo = mul nuw nsw i64 %i.abn, 56
  %i.abp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abo) #34 ; 4 uses
  %i.abq = getelementptr inbounds i8, ptr %i.abp, i64 %i.abh ; 9 uses
  store i32 1685382482, ptr %i.abq, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx2.i46 = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  store i32 4, ptr %.sroa.6.0..sroa_idx2.i46, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx4.i47 = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store i64 %.sroa.7.0.i29, ptr %.sroa.7.0..sroa_idx4.i47, align 1, !tbaa !348
  %.sroa.9.0..sroa_idx6.i48 = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  store i64 %i.aaw, ptr %.sroa.9.0..sroa_idx6.i48, align 1, !tbaa !348
  %.sroa.10.0..sroa_idx8.i49 = getelementptr inbounds nuw i8, ptr %i.abq, i64 24
  store i64 %i.aaw, ptr %.sroa.10.0..sroa_idx8.i49, align 1, !tbaa !348
  %.sroa.11.0..sroa_idx10.i50 = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  store i64 %.sroa.11.0.i30, ptr %.sroa.11.0..sroa_idx10.i50, align 1, !tbaa !348
  %.sroa.12.0..sroa_idx12.i51 = getelementptr inbounds nuw i8, ptr %i.abq, i64 40
  store i64 %.sroa.12.0.i33, ptr %.sroa.12.0..sroa_idx12.i51, align 1, !tbaa !348
  %.sroa.13.0..sroa_idx14.i52 = getelementptr inbounds nuw i8, ptr %i.abq, i64 48
  store i64 %i.aam, ptr %.sroa.13.0..sroa_idx14.i52, align 1, !tbaa !348
  %i.abr = icmp sgt i64 %i.abh, 0
  br i1 %i.abr, label %bb.ey, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53

bb.ey:                                            ; preds = %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.abp, ptr align 1 %i.abe, i64 %i.abh, i1 false)
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53: ; preds = %bb.ey, %_ZNKSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i43
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 56 ; 2 uses
  %.not.i17.i.i.i54 = icmp eq ptr %i.abe, null
  br i1 %.not.i17.i.i.i54, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef %i.abh) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55: ; preds = %bb.ez, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i53
  store ptr %i.abp, ptr %7, align 16, !tbaa !406
  store ptr %i.abs, ptr %i.zh, align 8, !tbaa !404
  %i.abt = getelementptr inbounds nuw [56 x i8], ptr %i.abp, i64 %i.abn
  store ptr %i.abt, ptr %i.zi, align 16, !tbaa !405
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57: ; preds = %bb.ev, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55
  %i.abu = phi ptr [ %i.abd, %bb.ev ], [ %i.abs, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i55 ] ; 6 uses
  %i.abv = icmp ult i64 %i.aaf, %i.ei
  br i1 %i.abv, label %.lr.ph418.i.preheader, label %.critedge8.i

.lr.ph418.i.preheader:                            ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57
  %i.abw = getelementptr inbounds i8, ptr %i.abu, i64 -8 ; 2 uses
  %i.abx = getelementptr inbounds i8, ptr %i.abu, i64 -40
  %i.aby = getelementptr inbounds i8, ptr %i.abu, i64 -16
  %i.abz = getelementptr inbounds i8, ptr %i.abu, i64 -24
  br label %.lr.ph418.i

.lr.ph418.i:                                      ; preds = %.lr.ph418.i.preheader, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i
  %.1138416.i = phi i64 [ %i.acf, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i ], [ %i.aaf, %.lr.ph418.i.preheader ] ; 3 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0322.0.lcssa518.i, i64 %.1138416.i
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !397, !noalias !1227 ; 5 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 136
  %i.acd = load i8, ptr %i.acc, align 8, !tbaa !413, !range !350, !noalias !1227, !noundef !351
  %i.ace = trunc nuw i8 %i.acd to i1
  br i1 %i.ace, label %bb.fa, label %.critedge8.i

bb.fa:                                            ; preds = %.lr.ph418.i
  %i.acf = add i64 %.1138416.i, 1                 ; 2 uses
  %.0.copyload.i.i275.i = load i64, ptr %i.abw, align 1, !noalias !1227
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 72
  %.0.copyload.i11.i276.i = load i64, ptr %i.acg, align 8, !noalias !1227
  %.sroa.speculated.i277.i = call i64 @llvm.umax.i64(i64 %.0.copyload.i.i275.i, i64 %.0.copyload.i11.i276.i)
  store i64 %.sroa.speculated.i277.i, ptr %i.abw, align 1, !noalias !1227
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acb, i64 40
  %.0.copyload.i12.i278.i = load i64, ptr %i.ach, align 8, !noalias !1227
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acb, i64 56
  %.0.copyload.i13.i279.i = load i64, ptr %i.aci, align 8, !noalias !1227
  %i.acj = add i64 %.0.copyload.i13.i279.i, %.0.copyload.i12.i278.i
  %.0.copyload.i14.i280.i = load i64, ptr %i.abx, align 1, !noalias !1227
  %i.ack = sub i64 %i.acj, %.0.copyload.i14.i280.i ; 2 uses
  store i64 %i.ack, ptr %i.aby, align 1, !noalias !1227
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acb, i64 28
  %.0.copyload.i15.i281.i = load i32, ptr %i.acl, align 4, !noalias !1227
  %.not.i282.i = icmp eq i32 %.0.copyload.i15.i281.i, 8
  br i1 %.not.i282.i, label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i64 %i.ack, ptr %i.abz, align 1, !tbaa !348, !noalias !1227
  br label %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i

_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i: ; preds = %bb.fb, %bb.fa
  %exitcond450.not.i = icmp eq i64 %i.acf, %i.ei
  br i1 %exitcond450.not.i, label %.critedge8.i, label %.lr.ph418.i, !llvm.loop !1223

.critedge8.i:                                     ; preds = %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i, %.lr.ph418.i, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57
  %.1138.lcssa.i = phi i64 [ %i.aaf, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlmmPNS_5ChunkIS1_EEE_clEmmSD_.exit57 ], [ %.1138416.i, %.lr.ph418.i ], [ %i.ei, %_ZZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EEENKUlPNS_5ChunkIS1_EEE_clESD_.exit283.i ]
  %i.acm = getelementptr inbounds i8, ptr %i.abu, i64 -8
  store i64 1, ptr %i.acm, align 1, !noalias !1227
  br label %bb.fc

end_hunk_1
