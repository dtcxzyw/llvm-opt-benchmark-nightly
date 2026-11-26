Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RawDecoder?download=true
inline.NumInlined: 1110
inline.NumDeleted: 646
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_ZTIN8rawspeed15FileIOExceptionE = external constant ptr
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@.str.16 = private unnamed_addr constant [19 x i8] c"pixel_aspect_ratio\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%s, line 338: %s\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10RawDecoder9decodeRawEv = private unnamed_addr constant [53 x i8] c"rawspeed::RawImage rawspeed::RawDecoder::decodeRaw()\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%s, line 336: %s\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%s, line 334: %s\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"%s, line 350: %s\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10RawDecoder14decodeMetaDataEPKNS_14CameraMetaDataE = private unnamed_addr constant [66 x i8] c"void rawspeed::RawDecoder::decodeMetaData(const CameraMetaData *)\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"%s, line 348: %s\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"%s, line 346: %s\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"%s, line 362: %s\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10RawDecoder12checkSupportEPKNS_14CameraMetaDataE = private unnamed_addr constant [64 x i8] c"void rawspeed::RawDecoder::checkSupport(const CameraMetaData *)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"%s, line 360: %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"%s, line 358: %s\00", align 1
@_ZTIN8rawspeed10RawDecoderE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8rawspeed10RawDecoderE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8rawspeed10RawDecoderE = hidden constant [24 x i8] c"N8rawspeed10RawDecoderE\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [92 x i8] c"St23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8rawspeed12RawImageDataE = external constant { [11 x ptr] }, align 8
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.128" zeroinitializer, comdat, align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.31 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"stoi\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.128" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10RawDecoderC2ENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0, ptr %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed10RawDecoderE, i64 16), ptr %0, align 8, !tbaa !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.a = tail call noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #28, !noalias !2526 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !101, !noalias !2527
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !102, !noalias !2527
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !99, !noalias !2527
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN8rawspeed15RawImageDataU16C1Ev(ptr noundef nonnull align 8 dereferenceable(624) %i.d)
          to label %_ZN8rawspeed8RawImage6createENS_12RawImageTypeE.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i, !noalias !2527

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 640) #29, !noalias !2525
  resume { ptr, i32 } %i.e

_ZN8rawspeed8RawImage6createENS_12RawImageTypeE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !108, !alias.scope !2525
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !109, !alias.scope !2525
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <8 x i8> <i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0>, ptr %i.h, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.i, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !2528
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.k, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.j, ptr %i.l, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.m, align 8, !tbaa !122
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.n, align 8, !tbaa !123
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rawspeed::UncompressedDecompressor", align 8 ; 7 uses
  %4 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %5 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %6 = alloca %"class.rawspeed::iRectangle2D", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 273) ; 2 uses
  %i.b = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 279) ; 2 uses
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 278)
  %i.d = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0) ; 5 uses
  %i.e = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 256)
  %i.f = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i32 noundef 0) ; 5 uses
  %i.g = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 257)
  %i.h = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 noundef 0) ; 8 uses
  %i.i = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext 258)
  %i.j = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i32 noundef 0) ; 3 uses
  %i.k = add i32 %i.f, -5633
  %i.l = icmp ult i32 %i.k, -5632
  %i.m = add i32 %i.h, -3721
  %i.n = icmp ult i32 %i.m, -3720
  %or.cond5 = or i1 %i.l, %i.n
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE, i32 noundef %i.f, i32 noundef %i.h) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.4140.0.insert.ext = zext nneg i32 %i.h to i64
  %.sroa.4140.0.insert.shift = shl nuw nsw i64 %.sroa.4140.0.insert.ext, 32
  %.sroa.0139.0.insert.ext = zext nneg i32 %i.f to i64 ; 2 uses
  %.sroa.0139.0.insert.insert = or disjoint i64 %.sroa.4140.0.insert.shift, %.sroa.0139.0.insert.ext
  store i64 %.sroa.0139.0.insert.insert, ptr %i.q, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2542 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2542 ; 2 uses
  %.not = icmp eq i32 %i.s, %i.u
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE, i32 noundef %i.s, i32 noundef %i.u) #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = add i32 %i.d, -1
  %or.cond.not = icmp ult i32 %i.v, %i.h
  br i1 %or.cond.not, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.f

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.e
  %i.w = trunc nuw i32 %i.h to i16
  %.lhs.trunc = add nsw i16 %i.w, -1
  %.rhs.trunc = trunc i32 %i.d to i16
  %i.x = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %i.x to i64
  %i.y = add nuw nsw i64 %.zext, 1                ; 3 uses
  %i.z = zext i32 %i.s to i64
  %.not86 = icmp eq i64 %i.y, %i.z
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE, i32 noundef %i.d, i32 noundef %i.s, i32 noundef %i.h) #22
  unreachable

bb.g:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  switch i32 %i.j, label %bb.h [
    i32 12, label %bb.i
    i32 14, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE, i32 noundef %i.j) #22
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.g
  %.not141 = icmp eq i32 %i.s, 0
  br i1 %.not141, label %._crit_edge.thread, label %_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.aa = mul nuw nsw i64 %i.y, 12
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28
          to label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit unwind label %bb.x ; 4 uses

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %.pre = load i32, ptr %i.r, align 4, !tbaa !2542
  %i.ad = icmp eq i32 %.pre, 0
  br i1 %i.ad, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit
  %i.af = icmp eq ptr %.sroa.0122.4, %.sroa.13.2
  br i1 %i.af, label %._crit_edge.thread, label %bb.y

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit
  %.0167 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %.071166 = phi i32 [ 0, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0122.0165 = phi ptr [ %i.ab, %.lr.ph ], [ %.sroa.0122.4, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit ] ; 10 uses
  %.sroa.13.0164 = phi ptr [ %i.ab, %.lr.ph ], [ %.sroa.13.2, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %.sroa.22.0163 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.22.4, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.ag = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %.0167)
          to label %bb.k unwind label %.loopexit  ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %.0167)
          to label %bb.l unwind label %.loopexit  ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE, i32 noundef %.0167) #22
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.aj = add i32 %.071166, %i.d                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, %i.h
  %i.al = sub i32 %i.h, %.071166
  %storemerge = select i1 %i.ak, i32 %i.al, i32 %i.d ; 2 uses
  %i.am = zext i32 %i.ag to i64
  %i.an = zext i32 %i.ah to i64
  %i.ao = add nuw nsw i64 %i.an, %i.am
  %i.ap = load i32, ptr %i.ae, align 8, !tbaa !2543
  %i.aq = zext i32 %i.ap to i64
  %.not142 = icmp samesign ugt i64 %i.ao, %i.aq
  br i1 %.not142, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE) #22
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %.not.i93 = icmp eq ptr %.sroa.13.0164, %.sroa.22.0163
  br i1 %.not.i93, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %storemerge, ptr %.sroa.13.0164, align 4, !tbaa !114
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0164, i64 4
  store i32 %i.ag, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !114
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0164, i64 8
  store i32 %i.ah, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !114
  br label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.ar = ptrtoint ptr %.sroa.13.0164 to i64
  %i.as = ptrtoint ptr %.sroa.0122.0165 to i64    ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.u, label %_ZNKSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #30
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.av = sdiv exact i64 %i.at, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 768614336404564650)
  %i.az = select i1 %i.ax, i64 768614336404564650, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = mul nuw nsw i64 %i.az, 12
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #28
          to label %.noexc95 unwind label %.loopexit ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at ; 3 uses
  store i32 %storemerge, ptr %i.bc, align 4, !tbaa !114
  %.sroa.7.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.ag, ptr %.sroa.7.0..sroa_idx118, align 4, !tbaa !114
  %.sroa.10.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.ah, ptr %.sroa.10.0..sroa_idx120, align 4, !tbaa !114
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0122.0165, %.sroa.13.0164
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc95, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc95 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0122.0165, %.noexc95 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !2544, !alias.scope !2545
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.13.0164
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2532

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc95
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %.noexc95 ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0122.0165, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %7 = ptrtoint ptr %.sroa.22.0163 to i64
  %8 = sub i64 %7, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.0165, i64 noundef %8) #29
  br label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.s
  %.sroa.22.4 = phi ptr [ %i.bf, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.22.0163, %bb.s ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.13.0164, %bb.s ] ; 2 uses
  %.sroa.0122.4 = phi ptr [ %i.bb, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0122.0165, %bb.s ] ; 10 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12 ; 2 uses
  %i.bg = add nuw i32 %.0167, 1                   ; 2 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !2542
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.j, label %._crit_edge, !llvm.loop !2533

._crit_edge.thread:                               ; preds = %bb.i, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit, %._crit_edge
  %.sroa.0122.0.lcssa207 = phi ptr [ %.sroa.0122.4, %._crit_edge ], [ %i.ab, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit ], [ null, %bb.i ]
  %.sroa.22.0.lcssa206 = phi ptr [ %.sroa.22.4, %._crit_edge ], [ %i.ac, %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE7reserveEm.exit ], [ null, %bb.i ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE) #22
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %._crit_edge.thread
  unreachable

bb.x:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i, %bb.y, %._crit_edge.thread
  %.sroa.22.1 = phi ptr [ %.sroa.22.0.lcssa206, %._crit_edge.thread ], [ %.sroa.22.4, %bb.y ], [ null, %_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.0122.1 = phi ptr [ %.sroa.0122.0.lcssa207, %._crit_edge.thread ], [ %.sroa.0122.4, %bb.y ], [ null, %_ZNSt12_Vector_baseIN8rawspeed10RawDecoder8RawSliceESaIS2_EE11_M_allocateEm.exit.i ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.y:                                             ; preds = %._crit_edge
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !108
  invoke void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624) %i.bk)
          to label %.lr.ph173 unwind label %bb.x

.lr.ph173:                                        ; preds = %bb.y
  %i.bl = zext nneg i32 %i.j to i64
  %notmask = shl nsw i64 -1, %i.bl
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  %i.bo = and i64 %notmask, 4294967295
  %.sroa.0.0.insert.insert.i = xor i64 %i.bo, 8589934591
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0..0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.aa

._crit_edge174:                                   ; preds = %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit
  %.not.i.i.i96 = icmp eq ptr %.sroa.0122.4, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge174
  %i.bw = ptrtoint ptr %.sroa.22.4 to i64
  %i.bx = ptrtoint ptr %.sroa.0122.4 to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.4, i64 noundef %i.by) #29
  br label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit: ; preds = %._crit_edge174, %bb.z
  ret void

bb.aa:                                            ; preds = %.lr.ph173, %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit
  %.1171 = phi i32 [ 0, %.lr.ph173 ], [ %i.dw, %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit ] ; 2 uses
  %.sroa.0113.0170 = phi ptr [ %.sroa.0122.4, %.lr.ph173 ], [ %i.en, %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit ] ; 6 uses
  %i.bz = load i32, ptr %.sroa.0113.0170, align 4, !tbaa !2547 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0113.0170, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !2548
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = mul i32 %i.bz, %i.f
  %i.cf = zext i32 %i.ce to i64
  %i.cg = udiv i64 %i.cd, %i.cf
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = mul i32 %i.f, %i.ch
  %i.cj = lshr i32 %i.ci, 3                       ; 2 uses
  %.not87 = icmp eq i32 %i.cj, 0
  br i1 %.not87, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10RawDecoder18decodeUncompressedEPKNS_7TiffIFDENS_8BitOrderE) #22
          to label %bb.ac unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.k, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.u, %bb.p, %bb.m
  %.sroa.22.0162 = phi ptr [ %.sroa.22.4, %bb.ab ], [ %.sroa.22.0163, %bb.u ], [ %.sroa.22.0163, %bb.p ], [ %.sroa.22.0163, %bb.m ]
  %.sroa.0122.0152 = phi ptr [ %.sroa.0122.4, %bb.ab ], [ %.sroa.0122.0165, %bb.u ], [ %.sroa.0122.0165, %bb.p ], [ %.sroa.0122.0165, %bb.m ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0113.0170, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !2549 ; 2 uses
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !2548 ; 3 uses
  %i.cn = zext i32 %i.cl to i64                   ; 2 uses
  %i.co = zext i32 %i.cm to i64                   ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, %i.cn
  %i.cq = load i32, ptr %i.bp, align 8, !tbaa !2543 ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %.not.i97 = icmp samesign ugt i64 %i.cp, %i.cr
  br i1 %.not.i97, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #22
          to label %.noexc98 unwind label %bb.ax

.noexc98:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !2550
  %i.ct = icmp sgt i32 %i.cq, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw nsw i32 %i.cm, %i.cl
  %i.cv = icmp samesign ule i32 %i.cu, %i.cq
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cn
  %i.cx = icmp sgt i32 %i.cm, -1
  call void @llvm.assume(i1 %i.cx)
  %.sroa.2.8.insert.insert = or disjoint i64 %i.co, 244834610708480
  store ptr %i.cw, ptr %4, align 8
  store i64 %.sroa.2.8.insert.insert, ptr %.sroa.2.0..0..sroa_idx.i99, align 8
  store i32 0, ptr %i.br, align 8, !tbaa !2551
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !109 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.o, align 8, !tbaa !2552
  store <2 x ptr> %i.cz, ptr %5, align 16, !tbaa !2552
  %.not.i.i.i.i100 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i100, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i.i101 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !114
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !114
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.de = atomicrmw volatile add ptr %i.da, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.af, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %.sroa.5109.0.insert.ext = zext i32 %.1171 to i64
  %.sroa.5109.0.insert.shift = shl nuw i64 %.sroa.5109.0.insert.ext, 32
  store i64 %.sroa.5109.0.insert.shift, ptr %6, align 8, !tbaa !114
  %.sroa.5111.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.5111.0.insert.shift = shl nuw i64 %.sroa.5111.0.insert.ext, 32
  %.sroa.0110.0.insert.insert = or disjoint i64 %.sroa.5111.0.insert.shift, %.sroa.0139.0.insert.ext
  store i64 %.sroa.0110.0.insert.insert, ptr %i.bu, align 8, !tbaa !114
  invoke void @_ZN8rawspeed24UncompressedDecompressorC1ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %4, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %i.cj, i32 noundef %i.ch, i8 noundef zeroext %2)
          to label %bb.aj unwind label %bb.ay

bb.aj:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i102 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i102, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dg, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !102
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #31, !call_target !131, !inline_history !4
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !99
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #31, !call_target !146, !inline_history !4
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i103 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i103, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i = phi i32 [ %i.dj, %bb.an ], [ %i.dt, %bb.ao ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.du, label %bb.ap, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !192

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #31
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ap
  invoke void @_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.dv = load i32, ptr %.sroa.0113.0170, align 4, !tbaa !2547
  %i.dw = add i32 %i.dv, %.1171
  %i.dx = load ptr, ptr %i.bv, align 8, !tbaa !109 ; 8 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i104, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.dy, align 8, !tbaa !101
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !102
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !99
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #31, !call_target !131, !inline_history !2534
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !99
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #31, !call_target !146, !inline_history !2534
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit

bb.at:                                            ; preds = %bb.ar
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i.i105 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i105, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.au ], [ %i.el, %bb.av ]
  %i.em = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.em, label %bb.aw, label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit, !prof !192

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #31
  br label %_ZN8rawspeed24UncompressedDecompressorD2Ev.exit

_ZN8rawspeed24UncompressedDecompressorD2Ev.exit:  ; preds = %bb.aq, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0113.0170, i64 12
  %i.eo = icmp eq ptr %.sroa.0113.0170, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.eo, label %._crit_edge174, label %bb.aa

bb.ax:                                            ; preds = %bb.ae
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ay:                                            ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  br label %bb.ba

bb.az:                                            ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed24UncompressedDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #31
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.er, %bb.az ], [ %i.eq, %bb.ay ], [ %i.ep, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ba, %bb.x
  %.sroa.22.2 = phi ptr [ %.sroa.22.4, %bb.ba ], [ %.sroa.22.1, %bb.x ], [ %.sroa.22.0163, %.loopexit ], [ %.sroa.22.0162, %.loopexit.split-lp ]
  %.sroa.0122.2 = phi ptr [ %.sroa.0122.4, %bb.ba ], [ %.sroa.0122.1, %bb.x ], [ %.sroa.0122.0165, %.loopexit ], [ %.sroa.0122.0152, %.loopexit.split-lp ] ; 3 uses
  %.pn90.pn = phi { ptr, i32 } [ %.pn, %bb.ba ], [ %i.bj, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i106 = icmp eq ptr %.sroa.0122.2, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit107, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.es = ptrtoint ptr %.sroa.22.2 to i64
  %i.et = ptrtoint ptr %.sroa.0122.2 to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.2, i64 noundef %i.eu) #29
  br label %_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit107

_ZNSt6vectorIN8rawspeed10RawDecoder8RawSliceESaIS2_EED2Ev.exit107: ; preds = %bb.bb, %bb.bc
  resume { ptr, i32 } %.pn90.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #31 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #2

declare void @_ZN8rawspeed24UncompressedDecompressorC1ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef byval(%"class.rawspeed::ByteStream") align 8, ptr noundef align 8, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, i32 noundef, i8 noundef zeroext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !102
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !131, !inline_history !2553
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !146, !inline_history !2553
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !192

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare void @_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed24UncompressedDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !102
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !131, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !call_target !146, !inline_history !4
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !114
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !192

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8rawspeed10RawDecoder19handleCameraSupportEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.d = load i8, ptr %i.c, align 8, !tbaa !2554  ; 2 uses
  switch i8 %i.d, label %bb.f [
    i8 3, label %.thread
    i8 4, label %bb.c
    i8 0, label %bb.c
    i8 2, label %.thread25
    i8 5, label %bb.d
  ]

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !229
  %i.g = icmp eq i64 %i.f, 3
  %.pre = load ptr, ptr %4, align 8, !tbaa !230   ; 3 uses
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.thread
  %i.h = load i16, ptr %.pre, align 1
  %i.i = xor i16 %i.h, 28260
end_hunk_0
