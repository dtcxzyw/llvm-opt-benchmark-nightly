Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nclx?download=true
inline.NumInlined: 647
inline.NumDeleted: 362
begin_hunk_0
@_ZTS17color_profile_raw = hidden constant [20 x i8] c"17color_profile_raw\00", align 1
@_ZTI13color_profile = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13color_profile }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13color_profile = linkonce_odr hidden constant [16 x i8] c"13color_profile\00", comdat, align 1
@_ZTV18color_profile_nclx = hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI18color_profile_nclx, ptr @_ZN13color_profileD2Ev, ptr @_ZN18color_profile_nclxD0Ev, ptr @_ZNK18color_profile_nclx8get_typeEv, ptr @_ZNK18color_profile_nclx4dumpER6Indent, ptr @_ZNK18color_profile_nclx5writeER12StreamWriter] }, align 8
@_ZTI18color_profile_nclx = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18color_profile_nclx, ptr @_ZTI13color_profile }, align 8
@_ZTS18color_profile_nclx = hidden constant [21 x i8] c"18color_profile_nclx\00", align 1
@_ZTV8Box_colr = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI8Box_colr, ptr @_ZN8Box_colrD2Ev, ptr @_ZN8Box_colrD0Ev, ptr @_ZNK9BoxHeader14debug_box_nameEv, ptr @_ZNK8Box_colr4dumpER6Indent, ptr @_ZNK9BoxHeader18is_full_box_headerEv, ptr @_ZNK8Box_colr5writeER12StreamWriter, ptr @_ZN3Box18derive_box_versionEv, ptr @_ZN3Box19patch_file_pointersER12StreamWriterm, ptr @_ZNK3BoxeqERKS_, ptr @_ZNK3Box24get_parse_error_fatalityEv, ptr @_ZNK3Box12is_essentialEv, ptr @_ZNK3Box26is_transformative_propertyEv, ptr @_ZN8Box_colr5parseER14BitstreamRangePK20heif_security_limits, ptr @_ZNK3Box24reserve_box_header_spaceER12StreamWriterb, ptr @_ZNK3Box12write_headerER12StreamWritermb] }, align 8
@_ZTI8Box_colr = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Box_colr, ptr @_ZTI3Box }, align 8
@_ZTS8Box_colr = hidden constant [10 x i8] c"8Box_colr\00", align 1
@_ZTI3Box = external constant ptr
@.str.16 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@_ZTV3Box = external constant { [17 x ptr] }, align 8
@_ZTV9BoxHeader = external constant { [7 x ptr] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZTVNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [72 x i8] c"NSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTVNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [71 x i8] c"NSt3__120__shared_ptr_emplaceI17color_profile_rawNS_9allocatorIS1_EEEE\00", comdat, align 1
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx = private unnamed_addr constant [22 x float] [float 3.000000e-01, float 0.000000e+00, float 0.000000e+00, float 2.100000e-01, float 2.900000e-01, float 3.100000e-01, float 3.100000e-01, float 2.430000e-01, float 1.700000e-01, float 0.000000e+00, float 2.650000e-01, float 2.650000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.950000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.8 = private unnamed_addr constant [22 x float] [float 6.000000e-01, float 0.000000e+00, float 0.000000e+00, float f0x3F35C28F, float 6.000000e-01, float 5.950000e-01, float 5.950000e-01, float f0x3F3126E9, float f0x3F4C0831, float 1.000000e+00, float f0x3F30A3D7, float f0x3F30A3D7, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.050000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.9 = private unnamed_addr constant [22 x float] [float 1.500000e-01, float 0.000000e+00, float 0.000000e+00, float 1.400000e-01, float 1.500000e-01, float 1.550000e-01, float 1.550000e-01, float 1.450000e-01, float 1.310000e-01, float 0.000000e+00, float 1.500000e-01, float 1.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.550000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.10 = private unnamed_addr constant [22 x float] [float 6.000000e-02, float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 6.000000e-02, float 7.000000e-02, float 7.000000e-02, float 4.900000e-02, float 4.600000e-02, float 0.000000e+00, float 6.000000e-02, float 6.000000e-02, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 7.700000e-02], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.11 = private unnamed_addr constant [22 x float] [float 6.400000e-01, float 0.000000e+00, float 0.000000e+00, float 6.700000e-01, float 6.400000e-01, float 6.300000e-01, float 6.300000e-01, float 6.810000e-01, float 7.080000e-01, float 1.000000e+00, float 6.800000e-01, float 6.800000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.300000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.12 = private unnamed_addr constant [22 x float] [float 3.300000e-01, float 0.000000e+00, float 0.000000e+00, float 3.300000e-01, float 3.300000e-01, float 3.400000e-01, float 3.400000e-01, float 3.190000e-01, float 2.920000e-01, float 0.000000e+00, float 3.200000e-01, float 3.200000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.400000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.13 = private unnamed_addr constant [22 x float] [float 3.127000e-01, float 0.000000e+00, float 0.000000e+00, float 3.100000e-01, float 3.127000e-01, float 3.127000e-01, float 3.127000e-01, float 3.100000e-01, float 3.127000e-01, float 3.333330e-01, float 3.140000e-01, float 3.127000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.127000e-01], align 4
@switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.14 = private unnamed_addr constant [22 x float] [float 3.290000e-01, float 0.000000e+00, float 0.000000e+00, float 3.160000e-01, float 3.290000e-01, float 3.290000e-01, float 3.290000e-01, float 3.160000e-01, float 3.290000e-01, float 3.333300e-01, float 3.510000e-01, float 3.290000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.290000e-01], align 4

@_ZN9primariesC1Effffffff = hidden unnamed_addr alias void (ptr, float, float, float, float, float, float, float, float), ptr @_ZN9primariesC2Effffffff

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN9primariesC2Effffffff(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(36) initializes((0, 1), (4, 36)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %0, align 4, !tbaa !8
  store float %5, ptr %i.e, align 4, !tbaa !12
  store float %6, ptr %i.f, align 4, !tbaa !13
  store float %1, ptr %i.a, align 4, !tbaa !14
  store float %2, ptr %i.b, align 4, !tbaa !15
  store float %3, ptr %i.c, align 4, !tbaa !16
  store float %4, ptr %i.d, align 4, !tbaa !17
  store float %7, ptr %i.g, align 4, !tbaa !18
  store float %8, ptr %i.h, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Z20get_colour_primariest(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.primaries) align 4 initializes((0, 1), (4, 36)) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  switch i16 %1, label %bb.l [
    i16 1, label %bb.b
    i16 4, label %bb.c
    i16 5, label %bb.d
    i16 6, label %bb.e
    i16 7, label %bb.e
    i16 8, label %bb.f
    i16 9, label %bb.g
    i16 10, label %bb.h
    i16 11, label %bb.i
    i16 12, label %bb.j
    i16 22, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 3.000000e-01, float 6.000000e-01, float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.b, align 4, !tbaa !20
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.100000e-01, float f0x3F35C28F, float 1.400000e-01, float 8.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.700000e-01, float 3.300000e-01, float 3.100000e-01, float 3.160000e-01>, ptr %i.c, align 4, !tbaa !20
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.900000e-01, float 6.000000e-01, float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.400000e-01, float 3.300000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.d, align 4, !tbaa !20
  br label %bb.m

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 3.100000e-01, float 5.950000e-01, float 1.550000e-01, float 7.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.300000e-01, float 3.400000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.e, align 4, !tbaa !20
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.430000e-01, float f0x3F3126E9, float 1.450000e-01, float 4.900000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.810000e-01, float 3.190000e-01, float 3.100000e-01, float 3.160000e-01>, ptr %i.f, align 4, !tbaa !20
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 1.700000e-01, float f0x3F4C0831, float 1.310000e-01, float 4.600000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 7.080000e-01, float 2.920000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.g, align 4, !tbaa !20
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 3.333330e-01, float 3.333300e-01>, ptr %i.h, align 4, !tbaa !20
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.650000e-01, float f0x3F30A3D7, float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 3.140000e-01, float 3.510000e-01>, ptr %i.i, align 4, !tbaa !20
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.650000e-01, float f0x3F30A3D7, float 1.500000e-01, float 6.000000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.800000e-01, float 3.200000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.j, align 4, !tbaa !20
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %0, align 4, !tbaa !8
  store <4 x float> <float 2.950000e-01, float 6.050000e-01, float 1.550000e-01, float 7.700000e-02>, ptr %i.a, align 4, !tbaa !20
  store <4 x float> <float 6.300000e-01, float 3.400000e-01, float 3.127000e-01, float 3.290000e-01>, ptr %i.k, align 4, !tbaa !20
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <2 x float> @_ZN5Kr_Kb8defaultsEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret <2 x float> <float 2.990000e-01, float 1.140000e-01>
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i16 %0, -2
  %or.cond = icmp eq i16 %i.a, 12
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i16 %1, -1               ; 9 uses
  %i.b = icmp ult i16 %switch.tableidx, 22
  br i1 %i.b, label %switch.lookup, label %_Z20get_colour_primariest.exit

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx, i64 %i.c
  %switch.load = load float, ptr %switch.gep, align 4 ; 4 uses
  %i.d = zext nneg i16 %switch.tableidx to i64
  %switch.gep59 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.8, i64 %i.d
  %switch.load60 = load float, ptr %switch.gep59, align 4 ; 3 uses
  %i.e = zext nneg i16 %switch.tableidx to i64
  %switch.gep61 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.9, i64 %i.e
  %switch.load62 = load float, ptr %switch.gep61, align 4 ; 2 uses
  %i.f = zext nneg i16 %switch.tableidx to i64
  %switch.gep63 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.10, i64 %i.f
  %switch.load64 = load float, ptr %switch.gep63, align 4 ; 3 uses
  %i.g = zext nneg i16 %switch.tableidx to i64
  %switch.gep65 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.11, i64 %i.g
  %switch.load66 = load float, ptr %switch.gep65, align 4 ; 2 uses
  %i.h = zext nneg i16 %switch.tableidx to i64
  %switch.gep67 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.12, i64 %i.h
  %switch.load68 = load float, ptr %switch.gep67, align 4 ; 3 uses
  %i.i = zext nneg i16 %switch.tableidx to i64
  %switch.gep69 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.13, i64 %i.i
  %switch.load70 = load float, ptr %switch.gep69, align 4 ; 2 uses
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep71 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.14, i64 %i.j
  %switch.load72 = load float, ptr %switch.gep71, align 4 ; 3 uses
  %2 = insertelement <2 x float> poison, float %switch.load72, i64 0
  %3 = insertelement <2 x float> %2, float %switch.load70, i64 1
  %i.k = insertelement <2 x float> poison, float %switch.load64, i64 0
  %i.l = insertelement <2 x float> %i.k, float %switch.load68, i64 1
  %i.m = insertelement <2 x float> poison, float %switch.load66, i64 0 ; 2 uses
  %i.n = insertelement <2 x float> %i.m, float %switch.load, i64 1
  %i.o = insertelement <2 x float> poison, float %switch.load60, i64 0
  %i.p = insertelement <2 x float> %i.o, float %switch.load64, i64 1
  %i.q = insertelement <2 x float> poison, float %switch.load, i64 0
  %i.r = insertelement <2 x float> %i.q, float %switch.load62, i64 1
  %i.s = insertelement <2 x float> poison, float %switch.load68, i64 0 ; 2 uses
  %i.t = insertelement <2 x float> %i.s, float %switch.load60, i64 1
  %i.u = insertelement <2 x float> %i.m, float %switch.load60, i64 1
  %i.v = insertelement <2 x float> %i.s, float %switch.load, i64 1
  %i.w = fadd <2 x float> %i.u, %i.v
  %4 = fadd float %switch.load70, %switch.load72
  br label %_Z20get_colour_primariest.exit

_Z20get_colour_primariest.exit:                   ; preds = %bb.b, %switch.lookup
  %.sroa.1325.0 = phi float [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.37.0 = phi float [ %switch.load62, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.48.0 = phi float [ %switch.load64, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.60.0 = phi float [ %switch.load66, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.72.0 = phi float [ %switch.load68, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.84.0 = phi float [ %4, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.96.0 = phi float [ %switch.load72, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %5 = phi <2 x float> [ %3, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.x = phi <2 x float> [ %i.l, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.y = phi <2 x float> [ %i.n, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.z = phi <2 x float> [ %i.p, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 4 uses
  %i.aa = phi <2 x float> [ %i.r, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 3 uses
  %i.ab = phi <2 x float> [ %i.t, %switch.lookup ], [ zeroinitializer, %bb.b ]
  %i.ac = phi <2 x float> [ %i.w, %switch.lookup ], [ zeroinitializer, %bb.b ]
  %i.ad = fadd <2 x float> %i.aa, %i.z
  %i.ae = fsub <2 x float> splat (float 1.000000e+00), %i.ac ; 3 uses
  %i.af = fsub <2 x float> splat (float 1.000000e+00), %i.ad ; 2 uses
  %i.ag = fneg <2 x float> %i.af                  ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1
  %i.ai = fmul float %.sroa.72.0, %i.ah
  %i.aj = extractelement <2 x float> %i.ae, i64 0
  %i.ak = tail call float @llvm.fmuladd.f32(float %.sroa.48.0, float %i.aj, float %i.ai)
  %i.al = fmul float %.sroa.1325.0, %i.ak
  %i.am = fneg <2 x float> %i.ae
  %i.an = fmul <2 x float> %i.z, %i.am
  %i.ao = shufflevector <2 x float> %i.x, <2 x float> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.af, <2 x float> %i.an) ; 3 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 1
  %i.ar = tail call float @llvm.fmuladd.f32(float %.sroa.60.0, float %i.aq, float %i.al)
  %i.as = extractelement <2 x float> %i.ap, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.37.0, float %i.as, float %i.ar)
  %i.au = fmul float %.sroa.96.0, %i.at           ; 2 uses
  %i.av = fcmp oeq float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_Z20get_colour_primariest.exit
  %i.aw = fsub float 1.000000e+00, %.sroa.84.0
  %i.ax = fmul <2 x float> %i.y, %i.ag
  %i.ay = fneg <2 x float> %i.ab
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ae, <2 x float> %i.ax)
  %i.ba = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %i.az
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.ap, <2 x float> %i.bb)
  %i.bd = fmul nnan <2 x float> %i.aa, %i.ay
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.z, <2 x float> %i.bd)
  %i.bf = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bi = fmul <2 x float> %i.x, %i.bh
  %i.bj = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x float> %i.bk, %i.bl
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  switch i16 %0, label %bb.j [
    i16 1, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
    i16 6, label %bb.g
    i16 7, label %bb.h
    i16 9, label %bb.i
    i16 10, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_Z20get_colour_primariest.exit, %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.033.1 = phi <2 x float> [ <float 2.627000e-01, float 5.930000e-02>, %bb.i ], [ zeroinitializer, %bb.d ], [ <float 2.126000e-01, float 7.220000e-02>, %bb.e ], [ <float 3.000000e-01, float 1.100000e-01>, %bb.f ], [ <float 2.990000e-01, float 1.140000e-01>, %bb.g ], [ <float 2.120000e-01, float 8.700000e-02>, %bb.h ], [ zeroinitializer, %_Z20get_colour_primariest.exit ], [ %i.bm, %bb.c ]
  ret <2 x float> %.sroa.033.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN25YCbCr_to_RGB_coefficients8defaultsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.YCbCr_to_RGB_coefficients) align 4 captures(none) initializes((0, 1), (4, 20)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !21
  store <4 x float> <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, ptr %i.a, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Z29get_YCbCr_to_RGB_coefficientstt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.YCbCr_to_RGB_coefficients) align 4 captures(none) initializes((0, 1), (4, 20)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %1, i16 noundef zeroext %2) ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.a, i64 1 ; 2 uses
  %i.b = fcmp une float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.0.0.vec.extract12 = extractelement <2 x float> %i.a, i64 0 ; 2 uses
  %i.c = fcmp une float %.sroa.0.0.vec.extract12, 0.000000e+00
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub <2 x float> splat (float 1.000000e+00), %i.a ; 2 uses
  %i.e = fmul <2 x float> %i.a, splat (float 2.000000e+00)
  %i.f = fadd float %.sroa.0.4.vec.extract, %.sroa.0.0.vec.extract12
  %i.g = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float -0.000000e+00>, float %i.f, i64 1
  %i.h = fadd <4 x float> %i.g, <float 2.000000e+00, float -1.000000e+00, float poison, float 2.000000e+00>
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.j = fmul <2 x float> %i.e, %i.d
  %i.k = shufflevector <2 x float> %i.d, <2 x float> %i.j, <4 x i32> <i32 0, i32 3, i32 2, i32 1> ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.i
  %i.m = fdiv <4 x float> %i.k, %i.i
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi <4 x float> [ %i.n, %bb.b ], [ <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !23
  store <4 x float> %i.o, ptr %i.p, align 4, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RGB_to_YCbCr_coefficients) align 4 captures(none) initializes((0, 1), (4, 40)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %1, i16 noundef zeroext %2) ; 5 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.a, i64 1 ; 3 uses
  %i.b = fcmp une float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.0.0.vec.extract16 = extractelement <2 x float> %i.a, i64 0 ; 3 uses
  %i.c = fcmp une float %.sroa.0.0.vec.extract16, 0.000000e+00
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub float 1.000000e+00, %.sroa.0.0.vec.extract16 ; 2 uses
  %i.e = fsub float 1.000000e+00, %.sroa.0.4.vec.extract
  %i.f = fsub float %i.d, %.sroa.0.4.vec.extract  ; 3 uses
  %i.g = insertelement <2 x float> %i.a, float %i.f, i64 1
  %i.h = fneg <2 x float> %i.g
  %i.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x float> %i.h, %i.j
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01)
  %i.m = insertelement <2 x float> %i.a, float %i.f, i64 0
  %i.n = fneg <2 x float> %i.m
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x float> %i.n, %i.p
  %i.r = fmul <2 x float> %i.q, splat (float 5.000000e-01)
  %i.s = shufflevector <2 x float> %i.a, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.t = insertelement <4 x float> %i.s, float %i.f, i64 0
  %i.u = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink38 = phi float [ %.sroa.0.0.vec.extract16, %bb.b ], [ 2.990000e-01, %bb.a ]
  %i.w = phi <4 x float> [ %i.v, %bb.b ], [ <float 5.870000e-01, float 1.140000e-01, float -1.687350e-01, float -3.312640e-01>, %bb.a ]
  %i.x = phi <2 x float> [ %i.r, %bb.b ], [ <float -4.186880e-01, float -8.131200e-02>, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !23
  store float %.sink38, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> %i.w, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> splat (float 5.000000e-01), ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.x, ptr %i.ab, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RGB_to_YCbCr_coefficients) align 4 captures(none) initializes((0, 1), (4, 40)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !24
  store <4 x float> <float 2.990000e-01, float 5.870000e-01, float 1.140000e-01, float -1.687350e-01>, ptr %i.a, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float -3.312640e-01, float 5.000000e-01, float 5.000000e-01, float -4.186880e-01>, ptr %i.b, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float -8.131200e-02, ptr %i.c, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18color_profile_nclx5parseER14BitstreamRange(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i8 @_ZN14BitstreamRange24wait_for_available_bytesEm(ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef 7)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i8 0, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !26
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.c = load i8, ptr %3, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = load i64, ptr %3, align 8
  %i.h = and i64 %i.g, -2
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i8, ptr %3, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8

bb.e:                                             ; preds = %bb.d
end_hunk_0
