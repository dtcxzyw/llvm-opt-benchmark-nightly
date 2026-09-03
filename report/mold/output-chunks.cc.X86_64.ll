Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4mold10OutputPhdrINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE:bb.a
  %.not.i.i.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EEaSEOS5_.exit
  %i.ahs = load ptr, ptr %i.aaj, align 16, !tbaa !405
  %i.aht = ptrtoint ptr %i.ahs to i64
  %i.ahu = ptrtoint ptr %.pr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ahv) #31
  br label %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit: ; preds = %_ZN4moldL11create_phdrINS_6X86_64EEESt6vectorINS_7ElfPhdrIT_EESaIS5_EERNS_7ContextIS4_EE.exit, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EEaSEOS5_.exit, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ahw = load ptr, ptr %i.ahk, align 8, !tbaa !404 ; 3 uses
  %i.ahx = load ptr, ptr %i.ahi, align 8, !tbaa !406 ; 3 uses
  %i.ahy = ptrtoint ptr %i.ahw to i64
  %i.ahz = ptrtoint ptr %i.ahx to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aia, ptr %i.aib, align 8
  %i.aic = icmp eq ptr %i.ahx, %i.ahw
  br i1 %i.aic, label %.loopexit, label %.lr.ph371

.lr.ph371:                                        ; preds = %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit, %.critedge
  %.sroa.0346.0370 = phi ptr [ %i.aij, %.critedge ], [ %i.ahx, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit ] ; 5 uses
  %.0.copyload.i = load i32, ptr %.sroa.0346.0370, align 1
  %.not = icmp eq i32 %.0.copyload.i, 7
  br i1 %.not, label %bb.gb, label %.critedge

bb.gb:                                            ; preds = %.lr.ph371
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.0346.0370, i64 16
  %.0.copyload.i12 = load i64, ptr %i.aid, align 1
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 14208
  store i64 %.0.copyload.i12, ptr %i.aie, align 8, !tbaa !415
  %i.aif = call noundef i64 @_ZN4mold11get_tp_addrINS_6X86_64EEEmRKNS_7ElfPhdrIT_EE(ptr noundef nonnull align 1 dereferenceable(56) %.sroa.0346.0370) #15
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 14216
  store i64 %i.aif, ptr %i.aig, align 8, !tbaa !416
  %i.aih = call noundef i64 @_ZN4mold12get_dtp_addrINS_6X86_64EEEmRKNS_7ElfPhdrIT_EE(ptr noundef nonnull align 1 dereferenceable(56) %.sroa.0346.0370) #15
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 14224
  store i64 %i.aih, ptr %i.aii, align 8, !tbaa !417
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph371
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.0346.0370, i64 56 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, %i.ahw
  br i1 %i.aik, label %.loopexit, label %.lr.ph371

.loopexit:                                        ; preds = %.critedge, %_ZNSt6vectorIN4mold7ElfPhdrINS0_6X86_64EEESaIS3_EED2Ev.exit, %bb.gb
  ret void
}

declare noundef i64 @_ZN4mold11get_tp_addrINS_6X86_64EEEmRKNS_7ElfPhdrIT_EE(ptr noundef nonnull align 1 dereferenceable(56)) local_unnamed_addr #5

declare noundef i64 @_ZN4mold12get_dtp_addrINS_6X86_64EEEmRKNS_7ElfPhdrIT_EE(ptr noundef nonnull align 1 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10OutputPhdrINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !414  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !414  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4mold12write_vectorINS_7ElfPhdrINS_6X86_64EEEEEvPvRKSt6vectorIT_SaIS6_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i = load i64, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.copyload.i
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.b, i64 %i.l, i1 false)
  br label %_ZN4mold12write_vectorINS_7ElfPhdrINS_6X86_64EEEEEvPvRKSt6vectorIT_SaIS6_EE.exit

_ZN4mold12write_vectorINS_7ElfPhdrINS_6X86_64EEEEEvPvRKSt6vectorIT_SaIS6_EE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13InterpSectionINS_6X86_64EEC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat($_ZN4mold13InterpSectionINS_6X86_64EEC5Ev) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.d, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold13InterpSectionINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !69
  store i64 7, ptr %i.a, align 8, !tbaa !71
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 2, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13InterpSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.b = load i64, ptr %i.a, align 8, !tbaa !418
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13InterpSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i = load i64, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.copyload.i ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !381
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.h = load i64, ptr %i.g, align 8, !tbaa !418  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.f, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !348
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13OutputSectionINS_6X86_64EEC2ESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(344) %0, i64 %1, ptr %2, i32 noundef %3) unnamed_addr #2 comdat($_ZN4mold13OutputSectionINS_6X86_64EEC5ESt17basic_string_viewIcSt11char_traitsIcEEj) align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.d, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold13OutputSectionINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.f, i8 0, i64 132, i1 false)
  store i64 %1, ptr %i.a, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !73
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %3, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef ptr @_ZN4mold13OutputSectionINS_6X86_64EE7to_osecEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13OutputSectionINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 6 uses
  %3 = alloca %class.anon.294, align 1            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !422  ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %._crit_edge63.thread, label %.lr.ph.preheader

._crit_edge63.thread:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPZN4mold13OutputSectionINS5_6X86_64EE20compute_section_sizeERNS5_7ContextIS7_EEE5GroupSt6vectorISC_SaISC_EEEEZNS8_20compute_section_sizeESB_EUlRSC_E_EEvT_SK_RKT0_(ptr null, ptr null, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPZN4mold13OutputSectionINS5_6X86_64EE20compute_section_sizeERNS5_7ContextIS7_EEE5GroupSt6vectorISC_SaISC_EEEEZNS8_20compute_section_sizeESB_EUlRSC_E0_EEvT_SK_RKT0_(ptr null, ptr null, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit
  %i.k = ptrtoint ptr %.sroa.16.1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPZN4mold13OutputSectionINS5_6X86_64EE20compute_section_sizeERNS5_7ContextIS7_EEE5GroupSt6vectorISC_SaISC_EEEEZNS8_20compute_section_sizeESB_EUlRSC_E_EEvT_SK_RKT0_(ptr %.sroa.038.1, ptr nonnull %.sroa.9.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.l = icmp eq ptr %.sroa.038.1, %.sroa.9.1
  br i1 %i.l, label %._crit_edge63, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %._crit_edge
  %.sroa.038.1.lcssa8485 = ptrtoaddr ptr %.sroa.038.1 to i64
  %.0.lcssa.i.i.i.i.i.i.pn.lcssa8283 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %4 = sub i64 %.0.lcssa.i.i.i.i.i.i.pn.lcssa8283, %.sroa.038.1.lcssa8485 ; 2 uses
  %5 = udiv i64 %4, 40                            ; 2 uses
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %7 = icmp ult i64 %4, 40
  br i1 %7, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter = and i64 %6, 1152921504606846974
  br label %.lr.ph62

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit
  %.sroa.038.056 = phi ptr [ %.sroa.038.1, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.030.055 = phi ptr [ %i.ac, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.sroa.632.054 = phi i64 [ %i.ab, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.sroa.16.053 = phi ptr [ %.sroa.16.1, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.sroa.9.052 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %.sroa.632.054, i64 10000) ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.9.052, %.sroa.16.053
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %.sroa.030.055, ptr %.sroa.9.052, align 8, !tbaa !423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.052, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !71
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.052, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.052, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  br label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %.sroa.16.053 to i64
  %i.n = ptrtoint ptr %.sroa.038.056 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.d, label %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #33
  unreachable

_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = sdiv exact i64 %i.o, 40                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 230584300921369395)
  %i.u = select i1 %i.s, i64 230584300921369395, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = mul nuw nsw i64 %i.u, 40
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #34 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o ; 4 uses
  store ptr %.sroa.030.055, ptr %i.x, align 8, !tbaa !423
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.speculated, ptr %.sroa.5.0..sroa_idx21, align 8, !tbaa !71
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.8.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx23, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.8.0..sroa_idx27, align 8, !tbaa !71
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.038.056, %.sroa.16.053
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.038.056, %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !1240, !alias.scope !1241
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %.sroa.16.053
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1238

_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.038.056, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.056, i64 noundef %i.o) #31
  br label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %i.u
  br label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE9push_backEOS7_.exit: ; preds = %bb.b, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.9.052, %bb.b ] ; 2 uses
  %.sroa.16.1 = phi ptr [ %i.aa, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.16.053, %bb.b ] ; 2 uses
  %.sroa.038.1 = phi ptr [ %i.w, %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.038.056, %bb.b ] ; 10 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 40 ; 4 uses
  %i.ab = sub i64 %.sroa.632.054, %.sroa.speculated ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.055, i64 %.sroa.speculated
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph, !llvm.loop !1239

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %.lr.ph62
  %8 = and i64 %5, 1
  %lcmp.mod.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph62.epil.preheader, label %._crit_edge63

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %.lr.ph62.preheader
  %.060.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %i.ar, %._crit_edge63.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.016.059.epil.init = phi ptr [ %.sroa.038.1, %.lr.ph62.preheader ], [ %i.as, %._crit_edge63.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod87 = trunc i64 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.016.059.epil.init, i64 32
  %10 = load i64, ptr %9, align 8, !tbaa !426     ; 3 uses
  %11 = icmp eq i64 %10, 0
  %12 = add i64 %.060.epil.init, -1
  %13 = add i64 %12, %10
  %14 = sub i64 0, %10
  %15 = and i64 %13, %14
  %.0.i15.epil = select i1 %11, i64 %.060.epil.init, i64 %15 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.016.059.epil.init, i64 24
  store i64 %.0.i15.epil, ptr %16, align 8, !tbaa !427
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.016.059.epil.init, i64 16
  %18 = load i64, ptr %17, align 8, !tbaa !428
  %19 = add nsw i64 %.0.i15.epil, %18
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.lr.ph62.epil.preheader, %._crit_edge63.loopexit.unr-lcssa, %._crit_edge
  %.0.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.ar, %._crit_edge63.loopexit.unr-lcssa ], [ %19, %.lr.ph62.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.0.lcssa, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPZN4mold13OutputSectionINS5_6X86_64EE20compute_section_sizeERNS5_7ContextIS7_EEE5GroupSt6vectorISC_SaISC_EEEEZNS8_20compute_section_sizeESB_EUlRSC_E0_EEvT_SK_RKT0_(ptr %.sroa.038.1, ptr nonnull %.sroa.9.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.not.i.i.i = icmp eq ptr %.sroa.038.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge63
  %i.af = ptrtoint ptr %.sroa.038.1 to i64
  %i.ag = sub i64 %i.k, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.1, i64 noundef %i.ag) #31
  br label %_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EED2Ev.exit

_ZNSt6vectorIZN4mold13OutputSectionINS0_6X86_64EE20compute_section_sizeERNS0_7ContextIS2_EEE5GroupSaIS7_EED2Ev.exit: ; preds = %._crit_edge63.thread, %._crit_edge63, %bb.f
  ret void

.lr.ph62:                                         ; preds = %.lr.ph62, %.lr.ph62.preheader.new
  %.060 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %i.ar, %.lr.ph62 ] ; 2 uses
  %.sroa.016.059 = phi ptr [ %.sroa.038.1, %.lr.ph62.preheader.new ], [ %i.as, %.lr.ph62 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter.next.1, %.lr.ph62 ]
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 32
  %21 = load i64, ptr %20, align 8, !tbaa !426    ; 3 uses
  %22 = icmp eq i64 %21, 0
  %23 = add i64 %.060, -1
  %24 = add i64 %23, %21
  %25 = sub i64 0, %21
  %26 = and i64 %24, %25
  %.0.i15 = select i1 %22, i64 %.060, i64 %26     ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 24
  store i64 %.0.i15, ptr %27, align 8, !tbaa !427
  %28 = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 16
  %29 = load i64, ptr %28, align 8, !tbaa !428
  %30 = add nsw i64 %.0.i15, %29                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !426 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %30, -1
  %i.al = add i64 %i.ak, %i.ai
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am
  %.0.i15.1 = select i1 %i.aj, i64 %30, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 64
  store i64 %.0.i15.1, ptr %i.ao, align 8, !tbaa !427
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !428
  %i.ar = add nsw i64 %.0.i15.1, %i.aq            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.016.059, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local noundef i64 @_ZNK4mold13OutputSectionINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold13OutputSectionINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(14448) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d1::parallel_for_body_wrapper", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %class.anon.296, align 8            ; 5 uses
  %7 = alloca %"class.std::vector.297", align 8   ; 9 uses
  %8 = alloca %class.anon.302, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %i.j = add nsw i64 %i.i, -1                     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @_ZNSt6vectorIlSaIlEE14_M_fill_assignEmRKl(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i64, ptr %i.l, align 8, !tbaa !432  ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #34 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !433
  store ptr %i.r, ptr %i.p, align 8, !tbaa !434
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m
  store ptr %i.s, ptr %i.o, align 8, !tbaa !435
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %1, ptr %6, align 8, !tbaa !438
  %i.t = icmp slt i64 %i.i, 3
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !441
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !442
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  call void @_ZZN4mold13OutputSectionINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EEENKUlllRSt6vectorImSaImEEE_clEllS9_(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !434
  %i.ae = load ptr, ptr %0, align 8, !tbaa !433
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !431
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.j
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !71
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.al = icmp samesign ugt i64 %i.i, 384307168202282326
  br i1 %i.al, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #33
  unreachable

.lr.ph:                                           ; preds = %bb.e
  %i.am = mul nuw nsw i64 %i.j, 24                ; 3 uses
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #34 ; 4 uses
  store ptr %i.an, ptr %7, align 8, !tbaa !445
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.j
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.an, i8 0, i64 %i.am, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.an, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !1244
  store ptr %scevgep.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !1245
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %1, ptr %8, align 8, !tbaa !448
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.ar, align 8, !tbaa !449
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %i.as, align 8, !tbaa !1246
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i64 %i.j, ptr %3, align 8, !tbaa !451
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !452
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.au, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %8, ptr %4, align 8, !tbaa !449
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !455
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.aw, align 8, !tbaa !456
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold13OutputSectionINS6_6X86_64EE16get_relr_offsetsERNS6_7ContextIS8_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %7, align 8, !tbaa !445
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !1245 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bz, %i.ay
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i ], [ %i.bz, %._crit_edge ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i, align 8, !tbaa !433 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !435
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #31
  br label %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i:  ; preds = %bb.g, %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1242

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i:   ; preds = %_ZSt8_DestroyISt6vectorImSaImEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !445  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit, label %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.thread

_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.thread: ; preds = %._crit_edge, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i ], [ %i.bz, %._crit_edge ] ; 2 uses
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !1244
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #31
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i, %_ZSt8_DestroyIPSt6vectorImSaImEEEvT_S4_.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.bl = phi ptr [ %.pre, %.lr.ph ], [ %i.bz, %bb.h ]
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.cj, %bb.h ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.015 ; 2 uses
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !429
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !429
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !429
  %i.br = load ptr, ptr %0, align 8, !tbaa !429   ; 2 uses
  %i.bs = ptrtoint ptr %i.bn to i64
end_hunk_0
