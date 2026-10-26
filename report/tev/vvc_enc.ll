Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/vvc_enc?download=true
inline.NumInlined: 1082
inline.NumDeleted: 652
begin_hunk_0
$_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZN21Box_VisualSampleEntryD2Ev = comdat any

$_ZN8Box_vvc1D0Ev = comdat any

$_ZNK9BoxHeader14debug_box_nameEv = comdat any

$_ZNK9BoxHeader18is_full_box_headerEv = comdat any

$_ZN3Box18derive_box_versionEv = comdat any

$_ZN3Box19patch_file_pointersER12StreamWriterm = comdat any

$_ZNK3Box24get_parse_error_fatalityEv = comdat any

$_ZNK3Box12is_essentialEv = comdat any

$_ZNK3Box26is_transformative_propertyEv = comdat any

$_ZTI7Encoder = comdat any

$_ZTS7Encoder = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = comdat any

$_ZTV8Box_vvc1 = comdat any

$_ZTI8Box_vvc1 = comdat any

$_ZTS8Box_vvc1 = comdat any

@.str = private unnamed_addr constant [4 x i8] c"VVC\00", align 1
@_ZTV11Encoder_VVC = hidden constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI11Encoder_VVC, ptr @_ZN11Encoder_VVCD2Ev, ptr @_ZN11Encoder_VVCD0Ev, ptr @_ZNK7Encoder22get_forced_output_nclxEv, ptr @_ZN11Encoder_VVC6encodeERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK21heif_encoding_options22heif_image_input_class, ptr @_ZNK11Encoder_VVC23encode_sequence_startedEv, ptr @_ZN11Encoder_VVC21encode_sequence_frameERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK30heif_sequence_encoding_options22heif_image_input_classjjm, ptr @_ZN11Encoder_VVC21encode_sequence_flushEP12heif_encoder, ptr @_ZN11Encoder_VVC24encode_sequence_get_dataEv, ptr @_ZNK11Encoder_VVC26get_sample_description_boxERKN7Encoder14CodedImageDataE] }, align 8
@_ZTI11Encoder_VVC = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11Encoder_VVC, ptr @_ZTI7Encoder }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11Encoder_VVC = hidden constant [14 x i8] c"11Encoder_VVC\00", align 1
@_ZTI7Encoder = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7Encoder }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS7Encoder = linkonce_odr hidden constant [9 x i8] c"7Encoder\00", comdat, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.4 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [61 x i8] c"NSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTV8Box_vvcC = external constant { [17 x ptr] }, align 8
@_ZTV3Box = external constant { [17 x ptr] }, align 8
@_ZTV9BoxHeader = external constant { [7 x ptr] }, align 8
@_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE = linkonce_odr hidden constant [61 x i8] c"NSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTV8Box_vvc1 = linkonce_odr hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI8Box_vvc1, ptr @_ZN21Box_VisualSampleEntryD2Ev, ptr @_ZN8Box_vvc1D0Ev, ptr @_ZNK9BoxHeader14debug_box_nameEv, ptr @_ZNK21Box_VisualSampleEntry4dumpER6Indent, ptr @_ZNK9BoxHeader18is_full_box_headerEv, ptr @_ZNK21Box_VisualSampleEntry5writeER12StreamWriter, ptr @_ZN3Box18derive_box_versionEv, ptr @_ZN3Box19patch_file_pointersER12StreamWriterm, ptr @_ZNK3BoxeqERKS_, ptr @_ZNK3Box24get_parse_error_fatalityEv, ptr @_ZNK3Box12is_essentialEv, ptr @_ZNK3Box26is_transformative_propertyEv, ptr @_ZN21Box_VisualSampleEntry5parseER14BitstreamRangePK20heif_security_limits, ptr @_ZNK3Box24reserve_box_header_spaceER12StreamWriterb, ptr @_ZNK3Box12write_headerER12StreamWritermb] }, comdat, align 8
@_ZTI8Box_vvc1 = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Box_vvc1, ptr @_ZTI21Box_VisualSampleEntry }, comdat, align 8
@_ZTS8Box_vvc1 = linkonce_odr hidden constant [10 x i8] c"8Box_vvc1\00", comdat, align 1
@_ZTI21Box_VisualSampleEntry = external constant ptr
@_ZTV21Box_VisualSampleEntry = external constant { [17 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11Encoder_VVC6encodeERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK21heif_encoding_options22heif_image_input_class(ptr dead_on_unwind noalias writable sret(%class.Result) align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Encoder::CodedImageData", align 16 ; 25 uses
  %7 = alloca %"class.std::__1::shared_ptr", align 8 ; 8 uses
  %8 = alloca %"class.std::__1::shared_ptr.18", align 8 ; 7 uses
  %9 = alloca %struct.heif_image, align 8         ; 11 uses
  %10 = alloca %class.Error, align 8              ; 9 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %12 = alloca %class.Error, align 8              ; 9 uses
  %13 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %14 = alloca %"struct.Box_vvcC::configuration", align 8 ; 22 uses
  %15 = alloca %class.Error, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %6, i8 0, i64 51, i1 false)
  store i8 1, ptr %i.g, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.h, align 16, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.i = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #20
          to label %.noexc unwind label %bb.u     ; 18 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !121
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvcCNS_9allocatorIS1_EEEE, i64 16), ptr %i.i, align 8, !tbaa !34, !noalias !121
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(304) %i.k)
          to label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_vvcCvEERKNS0_IT_EE.exit unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvcCNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i, !noalias !121

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvcCNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i: ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(328) %i.i) #19, !noalias !121
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 328) #21, !noalias !121
  br label %.body

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_vvcCvEERKNS0_IT_EE.exit: ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.m, i8 0, i64 28, i1 false), !noalias !121
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 -1, i64 16, i1 false), !noalias !121
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 180
  store i32 0, ptr %i.p, align 4, !tbaa !43, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.o, i8 0, i64 50, i1 false), !noalias !121
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_vvcC, i64 16), ptr %i.k, align 8, !tbaa !34, !noalias !121
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i8 3, ptr %i.q, align 8, !tbaa !55, !noalias !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 185
  store i8 1, ptr %i.r, align 1, !tbaa !56, !noalias !121
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 186
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.s, i8 0, i64 12, i1 false), !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(102) %i.t, i8 0, i64 102, i1 false), !noalias !121
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !noalias !121
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 1987470147, ptr %i.v, align 8, !tbaa !57, !noalias !121
  store ptr %i.k, ptr %7, align 8, !tbaa !61, !alias.scope !122
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !62, !alias.scope !122
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %i.k, ptr %8, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.x, align 8, !tbaa !66
  %i.y = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !68
  %i.ad = icmp ult ptr %i.aa, %i.ac
  br i1 %i.ad, label %.thread129, label %bb.b

.thread129:                                       ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_vvcCvEERKNS0_IT_EE.exit
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.af, ptr %i.z, align 8, !tbaa !67
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

bb.b:                                             ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_vvcCvEERKNS0_IT_EE.exit
  %i.ag = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %i.x, align 8, !tbaa !66   ; 5 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !67
  %.not.i46 = icmp eq ptr %.pr, null
  br i1 %.not.i46, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %.pr, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #19, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pr) #19
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit:   ; preds = %.thread129, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %2, align 8, !tbaa !123   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i.thread, label %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i

_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i.thread: ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit
  store ptr %i.an, ptr %9, align 8, !tbaa !124
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !72
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i: ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !72 ; 5 uses
  store ptr %i.an, ptr %9, align 8, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !72
  %.not.i2.i = icmp eq ptr %.pre, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.g, label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %.pre, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #19, !inline_history !118
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #19
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit: ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i.thread, %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i, %bb.f, %bb.g
  %i.ba = phi ptr [ %i.aq, %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i.thread ], [ %i.at, %_ZNSt3__110shared_ptrI14HeifPixelImageEC2B8ne180100ERKS2_.exit.i ], [ %i.at, %bb.f ], [ %i.at, %bb.g ]
  %i.bb = load ptr, ptr %3, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !125
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bg = invoke { i64, ptr } %i.bd(ptr noundef %i.bf, ptr noundef nonnull %9, i32 noundef %5)
          to label %bb.h unwind label %bb.w       ; 2 uses

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit
  %i.bh = extractvalue { i64, ptr } %i.bg, 0      ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i64 %i.bh to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.03.0.extract.trunc, 0
  br i1 %.not, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = extractvalue { i64, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #19 ; 8 uses
  %i.bk = icmp ugt i64 %i.bj, -9
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #22
          to label %.noexc47 unwind label %bb.x

.noexc47:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bl = icmp ult i64 %i.bj, 23
  br i1 %i.bl, label %bb.l, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k
  %i.bm = or i64 %i.bj, 7                         ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 23
  %i.bo = add nuw i64 %i.bm, 1
  %i.bp = select i1 %i.bn, i64 25, i64 %i.bo      ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #20
          to label %.noexc48 unwind label %bb.x   ; 2 uses

.noexc48:                                         ; preds = %.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !79
  %i.bs = or i64 %i.bp, 1
  store i64 %i.bs, ptr %11, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bj, ptr %i.bt, align 8, !tbaa !79
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = trunc nuw nsw i64 %i.bj to i8
  %i.bv = shl nuw nsw i8 %i.bu, 1
  store i8 %i.bv, ptr %11, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc48
  %.017.i.i = phi ptr [ %i.bq, %.noexc48 ], [ %i.bw, %bb.l ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr nonnull align 1 %i.bi, i64 %i.bj, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.018.i.i = phi ptr [ %i.bw, %bb.l ], [ %.017.i.i, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.bj
  store i8 0, ptr %i.bx, align 1, !tbaa !79
  %.sroa.03.4.extract.shift = lshr i64 %i.bh, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %.sroa.03.0.extract.trunc, i32 noundef %.sroa.03.4.extract.trunc, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.by = load i64, ptr %10, align 8
  store i64 %i.by, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.cb = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !tbaa.struct !126
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !79
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !79
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %._crit_edge unwind label %bb.z

._crit_edge:                                      ; preds = %bb.q
  %.pre106 = load i8, ptr %i.ca, align 8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %i.ch = phi i8 [ %.pre106, %._crit_edge ], [ %i.cb, %bb.p ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.ci, align 8, !tbaa !128
  %i.cj = trunc i8 %i.ch to i1
  br i1 %i.cj, label %bb.s, label %_ZN5ErrorD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %i.cm = load i64, ptr %i.ca, align 8
  %i.cn = and i64 %i.cm, -2
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cn) #21
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.r, %bb.s
  %i.co = load i8, ptr %11, align 8
  %i.cp = trunc i8 %i.co to i1
  br i1 %i.cp, label %bb.t, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.t:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !79
  %i.cs = load i64, ptr %11, align 8
  %i.ct = and i64 %i.cs, -2
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.ct) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN5ErrorD2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bn

bb.u:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bx

bb.w:                                             ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.x:                                             ; preds = %.thread.i.i, %bb.j
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit51

bb.y:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit50

bb.z:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load i8, ptr %i.ca, align 8
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.aa, label %_ZN5ErrorD2Ev.exit50

bb.aa:                                            ; preds = %bb.z
  %i.dc = load ptr, ptr %i.cd, align 8, !tbaa !79
  %i.dd = load i64, ptr %i.ca, align 8
  %i.de = and i64 %i.dd, -2
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #21
  br label %_ZN5ErrorD2Ev.exit50

end_hunk_0
begin_hunk_1_@_ZN7Encoder14CodedImageDataD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.c, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #21
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.l, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #19, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #19
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %0, align 8, !tbaa !92
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.c
  %i.u = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.i, %bb.c ] ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10heif_imageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19, !inline_history !131
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_vvcCED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11Encoder_VVC26get_sample_description_boxERKN7Encoder14CodedImageDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.41") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::shared_ptr.42", align 8 ; 9 uses
  %4 = alloca %"class.std::__1::shared_ptr.18", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.a = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20, !noalias !141 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !141
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_vvc1NS_9allocatorIS1_EEEE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.c)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvc1NS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i, !noalias !141

common.resume:                                    ; preds = %bb.k, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvc1NS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvc1NS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i ], [ %i.bo, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_vvc1NS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i: ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(248) %i.a) #19, !noalias !141
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 248) #21, !noalias !141
  br label %common.resume

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.e, i8 0, i64 28, i1 false), !noalias !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 -1, i64 16, i1 false), !noalias !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i8 0, i64 49, i1 false), !noalias !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i16 1, ptr %i.h, align 8, !tbaa !143, !noalias !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.i, i8 0, i64 18, i1 false), !noalias !141
  store i32 4718592, ptr %i.j, align 4, !tbaa !144, !noalias !141
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i32 4718592, ptr %i.k, align 8, !tbaa !145, !noalias !141
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i16 1, ptr %i.l, align 4, !tbaa !146, !noalias !141
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i16 24, ptr %i.n, align 8, !tbaa !147, !noalias !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 242
  store i16 -1, ptr %i.o, align 2, !tbaa !148, !noalias !141
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_vvc1, i64 16), ptr %i.c, align 8, !tbaa !34, !noalias !141
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 1987470129, ptr %i.p, align 8, !tbaa !57, !noalias !141
  store ptr %i.c, ptr %3, align 8, !tbaa !149, !alias.scope !150
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.a, ptr %i.q, align 8, !tbaa !95, !alias.scope !150
  store i8 6, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 217
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.r, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.s = load ptr, ptr %2, align 8, !tbaa !92     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 2 uses
  %.not2022 = icmp eq ptr %i.s, %i.u
  br i1 %.not2022, label %.critedge11, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.017.023 = phi ptr [ %i.s, %.lr.ph ], [ %i.bv, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.w = load ptr, ptr %.sroa.017.023, align 8, !tbaa !65 ; 5 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66   ; 11 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !57
  %.not = icmp eq i32 %i.aa, 1987470147
  br i1 %.not, label %bb.d, label %.critedge

.thread:                                          ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57
  %.not31 = icmp eq i32 %i.ae, 1987470147
  br i1 %.not31, label %.thread32, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %3, align 8, !tbaa !149   ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !68
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.g

.thread32:                                        ; preds = %.thread
  %i.al = load ptr, ptr %3, align 8, !tbaa !149   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.ah, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.y, ptr %i.ar, align 8, !tbaa !66
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i

bb.f:                                             ; preds = %.thread32
  store ptr %i.w, ptr %i.an, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.y, ptr %i.as, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i: ; preds = %bb.e, %bb.f
  %i.av = phi ptr [ %i.al, %bb.f ], [ %i.af, %bb.e ]
  %i.aw = phi ptr [ %i.am, %bb.f ], [ %i.ag, %bb.e ]
  %i.ax = phi ptr [ %i.an, %bb.f ], [ %i.ah, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.thread32, %bb.d
  %i.az = phi ptr [ %i.am, %.thread32 ], [ %i.ag, %bb.d ]
  %i.ba = phi ptr [ %i.al, %.thread32 ], [ %i.af, %bb.d ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %._crit_edge unwind label %bb.k

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i
  %i.bd = phi ptr [ %i.aw, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i ], [ %i.az, %._crit_edge ]
  %i.be = phi ptr [ %i.av, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i ], [ %i.ba, %._crit_edge ]
  %i.bf = phi ptr [ %i.y, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i ], [ %.pre, %._crit_edge ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ay, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i ], [ %i.bc, %._crit_edge ]
  store ptr %.0.i.i, ptr %i.bd, align 8, !tbaa !67
  store ptr %i.be, ptr %0, align 8, !tbaa !153
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !95
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i13, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 acq_rel, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #19, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #19
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume

bb.l:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #19, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #19
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.023, i64 16 ; 2 uses
  %.not20 = icmp eq ptr %i.bv, %i.u
  br i1 %.not20, label %.critedge11, label %bb.b

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.o

.critedge11:                                      ; preds = %.critedge, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge11
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !95  ; 5 uses
  %.not.i16 = icmp eq ptr %i.bw, null
  br i1 %.not.i16, label %_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = atomicrmw add ptr %i.bx, i64 -1 acq_rel, align 8
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.q, label %_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #19, !inline_history !138
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #19
  br label %_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_vvc1ED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #19
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11Encoder_VVC21encode_sequence_frameERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK30heif_sequence_encoding_options22heif_image_input_classjjm(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %struct.heif_image, align 16        ; 8 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %11 = alloca %class.Error, align 8              ; 11 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !91
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x ptr> %i.c, ptr %9, align 16, !tbaa !91
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !105, !range !106
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = trunc nuw i8 %.pre to i1
  br i1 %i.h, label %bb.w, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__110shared_ptrI14HeifPixelImageEaSB8ne180100ERKS2_.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = invoke { i64, ptr } %i.k(ptr noundef %i.m, ptr noundef nonnull %9, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.v       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i64, ptr } %i.n, 0        ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i64 %i.o to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.06.0.extract.trunc, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #19 ; 8 uses
  %i.r = icmp ugt i64 %i.q, -9
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #22
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.q, 23
  br i1 %i.s, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.t = or i64 %i.q, 7                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 23
  %i.v = add nuw i64 %i.t, 1
  %i.w = select i1 %i.u, i64 25, i64 %i.v         ; 2 uses
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #20
          to label %.noexc44 unwind label %bb.m   ; 2 uses

.noexc44:                                         ; preds = %.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !79
  %i.z = or i64 %i.w, 1
  store i64 %i.z, ptr %10, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.q, ptr %i.aa, align 8, !tbaa !79
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nuw nsw i64 %i.q to i8
  %i.ac = shl nuw nsw i8 %i.ab, 1
  store i8 %i.ac, ptr %10, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc44
  %.017.i.i = phi ptr [ %i.x, %.noexc44 ], [ %i.ad, %bb.h ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
end_hunk_1
