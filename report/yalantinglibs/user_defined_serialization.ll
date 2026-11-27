Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/user_defined_serialization?download=true
inline.NumInlined: 467
inline.NumDeleted: 195
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.struct_pack::serialize_buffer_size" = type <{ i64, i8, [7 x i8] }>
%"struct.struct_pack::detail::memory_reader" = type { ptr, ptr }
%"class.struct_pack::detail::unpacker" = type <{ i64, ptr, i8, [7 x i8] }>
%"class.tl::expected" = type { %"struct.tl::detail::expected_move_assign_base.base", [7 x i8] }
%"struct.tl::detail::expected_move_assign_base.base" = type { %"struct.tl::detail::expected_copy_assign_base.base" }
%"struct.tl::detail::expected_copy_assign_base.base" = type { %"struct.tl::detail::expected_move_base.base" }
%"struct.tl::detail::expected_move_base.base" = type { %"struct.tl::detail::expected_copy_base.base" }
%"struct.tl::detail::expected_copy_base.base" = type { %"struct.tl::detail::expected_operations_base.base" }
%"struct.tl::detail::expected_operations_base.base" = type { %"struct.tl::detail::expected_storage_base.base" }
%"struct.tl::detail::expected_storage_base.base" = type <{ %union.anon, i8 }>
%union.anon = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<my_name_space::array2D, std::allocator<my_name_space::array2D>>::_Vector_impl" }
%"struct.std::_Vector_base<my_name_space::array2D, std::allocator<my_name_space::array2D>>::_Vector_impl" = type { %"struct.std::_Vector_base<my_name_space::array2D, std::allocator<my_name_space::array2D>>::_Vector_impl_data" }
%"struct.std::_Vector_base<my_name_space::array2D, std::allocator<my_name_space::array2D>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.tl::unexpected" = type { %"struct.struct_pack::err_code" }
%"struct.struct_pack::err_code" = type { i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.fwrite_stream = type { ptr }
%struct.fread_stream = type { ptr }
%"class.struct_pack::detail::unpacker.7" = type <{ i64, ptr, i8, [7 x i8] }>

$_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev = comdat any

$_ZN11struct_pack11deserializeIJSt6vectorIN13my_name_space7array2DESaIS3_EEETkNS_8reader_tE12fread_streamEEDaRT0_ = comdat any

$_ZNSt6vectorIN13my_name_space7array2DESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEaSIS7_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISB_EE5valueEvE4typeELPv0EEERS8_ONS_10unexpectedISB_EE = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorIN13my_name_space7array2DESaIS7_EEJEEENS_8err_codeERT_DpRT0_ = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_ = comdat any

$_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE7reserveEm = comdat any

$_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_ = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE20deserialize_with_lenISt6vectorIN13my_name_space7array2DESaIS7_EEJEEENS_8err_codeERmRT_DpRT0_ = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_ = comdat any

$_ZN13my_name_space17sp_deserialize_toI12fread_streamEEN11struct_pack8err_codeERT_RNS_7array2DE = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_ = comdat any

$_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJS1_IN13my_name_space7array2DESaIS5_EEEEEvRT0_DpRKT1_ = comdat any

$_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tE13fwrite_streamJSt6vectorIN13my_name_space7array2DESaIS5_EEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_ = comdat any

@.str = private unnamed_addr constant [6 x i8] c"1.tmp\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@switch.table._ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tE13fwrite_streamJSt6vectorIN13my_name_space7array2DESaIS5_EEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_ = private unnamed_addr constant [3 x i8] c"\02\04\08", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 8, 5) i64 @_ZN13my_name_space18sp_get_needed_sizeERKNS_7array2DE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.b, 2
  %i.g = mul i64 %i.f, %i.e
  %i.h = add i64 %i.g, 8
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z26user_defined_serializationv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.struct_pack::serialize_buffer_size", align 8 ; 5 uses
  %1 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %2 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %3 = alloca %"class.tl::expected", align 8      ; 12 uses
  %4 = alloca %"class.tl::unexpected", align 4    ; 4 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 12 uses
  %7 = alloca %struct.fwrite_stream, align 8      ; 7 uses
  %8 = alloca %struct.fread_stream, align 8       ; 7 uses
  %9 = alloca %"class.tl::expected", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 11, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 22, ptr %i.b, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit unwind label %bb.w

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 114, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 514, ptr %i.d, align 4, !tbaa !16
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19   ; 6 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not.i11 = icmp eq ptr %i.g, %i.h
  br i1 %.not.i11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit
  store i32 114, ptr %i.g, align 8, !tbaa !14
  %10 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 514, ptr %10, align 4, !tbaa !15
  %i.i = call noalias dereferenceable_or_null(234384) ptr @calloc(i64 noundef 58596, i64 noundef 4) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.e, align 8, !tbaa !19
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit14

bb.c:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit
  invoke void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit14 unwind label %bb.x

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit14: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.l = load ptr, ptr %5, align 8, !tbaa !22     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 24
  store float 3.140000e+00, ptr %i.s, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = zext i32 %i.w to i64
  %.idx = mul nuw nsw i64 %i.x, 348
  %i.y = getelementptr i8, ptr %i.u, i64 %.idx
  %i.z = getelementptr i8, ptr %i.y, i64 444
  store float 2.710000e+00, ptr %i.z, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !68
  invoke void @_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJS1_IN13my_name_space7array2DESaIS5_EEEEEvRT0_DpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJS2_IN13my_name_space7array2DESaIS6_EEEEET_DpRKT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit14
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !25, !alias.scope !68 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %.body, label %.body.sink.split

_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJS2_IN13my_name_space7array2DESaIS6_EEEEET_DpRKT0_.exit: ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJiiEEERS1_DpOT_.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !69
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %3, i8 0, i64 24, i1 false), !noalias !69
  store i8 1, ptr %i.ac, align 8, !tbaa !28, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16, !noalias !69
  %i.ad = load ptr, ptr %6, align 8, !tbaa !25, !noalias !69 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29, !noalias !69
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  store ptr %i.ad, ptr %1, align 8, !tbaa !31, !noalias !69
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !32, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !69
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !70, !noalias !69
  %i.am = invoke i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorIN13my_name_space7array2DESaIS7_EEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %.body.i, !noalias !69 ; 2 uses

bb.e:                                             ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJS2_IN13my_name_space7array2DESaIS6_EEEEET_DpRKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !69
  %.not.i15 = icmp eq i32 %i.am, 0
  br i1 %.not.i15, label %bb.g, label %bb.f, !prof !34

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !69
  store i32 %i.am, ptr %4, align 4, !tbaa !36, !noalias !69
  %i.an = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEaSIS7_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISB_EE5valueEvE4typeELPv0EEERS8_ONS_10unexpectedISB_EE(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #16, !noalias !69 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !69
  br label %bb.g

.body.i:                                          ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJS2_IN13my_name_space7array2DESaIS6_EEEEET_DpRKT0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #16, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !69
  %i.ap = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i30, label %.body, label %.body.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = load i8, ptr %i.ac, align 8, !tbaa !28, !range !37, !noalias !69, !noundef !38
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !69
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %3, align 8, !tbaa !22, !noalias !69 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19, !noalias !69 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !69
  %.not4.i.i.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.as, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  call void @free(ptr noundef %i.ay) #16
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.az, %i.au
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.as to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bc) #18
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit: ; preds = %bb.h, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.j
  %i.bd = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bj = call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  store ptr %i.bj, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !19, !noalias !71 ; 3 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !22, !noalias !71 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.bk
  br i1 %i.bm, label %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.09.014.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ 0, %bb.l ]
  %.sroa.06.013.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.bl, %bb.l ] ; 3 uses
  %i.bn = load i32, ptr %.sroa.06.013.i.i, align 8, !tbaa !14, !noalias !72
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !15, !noalias !72
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.bo, 2
  %i.bt = mul i64 %i.bs, %i.br
  %i.bu = add i64 %.sroa.09.014.i.i, 8
  %i.bv = add i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bk
  br i1 %i.bx, label %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i, label %.lr.ph.i.i

_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i: ; preds = %.lr.ph.i.i, %bb.l
  %.sroa.09.0.lcssa.i.i = phi i64 [ 0, %bb.l ], [ %i.bv, %.lr.ph.i.i ] ; 4 uses
  %i.by = ptrtoint ptr %i.bk to i64
  %i.bz = ptrtoint ptr %i.bl to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4                 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 256
  br i1 %i.cc, label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIN13my_name_space7array2DESaIS4_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i, label %bb.m, !prof !34

bb.m:                                             ; preds = %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i
  %i.cd = icmp ult i64 %i.cb, 65536
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = add i64 %.sroa.09.0.lcssa.i.i, 2
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIN13my_name_space7array2DESaIS4_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cf = icmp ult i64 %i.cb, 4294967296
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = add i64 %.sroa.09.0.lcssa.i.i, 4
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIN13my_name_space7array2DESaIS4_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ch = add i64 %.sroa.09.0.lcssa.i.i, 8
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIN13my_name_space7array2DESaIS4_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i

_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIN13my_name_space7array2DESaIS4_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i: ; preds = %bb.q, %bb.p, %bb.n, %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i
  %.sroa.1214.1.i = phi i8 [ 0, %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i ], [ 8, %bb.n ], [ 16, %bb.p ], [ 24, %bb.q ]
  %storemerge.i.in.i = phi i64 [ %.sroa.09.0.lcssa.i.i, %_ZN11struct_pack6detail18calculate_one_sizeISt6vectorIN13my_name_space7array2DESaIS4_EELm0EEENS0_9size_infoERKT_.exit.i ], [ %i.ce, %bb.n ], [ %i.cg, %bb.p ], [ %i.ch, %bb.q ]
  %i.ci = add i64 %storemerge.i.in.i, 5
  store i64 %i.ci, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.1214.1.i, ptr %.sroa.2.0..sroa_idx.i, align 8
end_hunk_0
begin_hunk_1_@_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev:bb.a
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.h) #16
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #18
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EED2Ev.exit

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11struct_pack11deserializeIJSt6vectorIN13my_name_space7array2DESaIS3_EEETkNS_8reader_tE12fread_streamEEDaRT0_(ptr dead_on_unwind noalias writable sret(%"class.tl::expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.struct_pack::detail::unpacker.7", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.tl::expected", align 16     ; 11 uses
  %4 = alloca %"class.tl::unexpected", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %3, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = load ptr, ptr %1, align 8, !tbaa !45
  %i.e = tail call noundef i64 @ftell(ptr noundef %i.d)
  %i.f = invoke i32 @_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE20deserialize_with_lenISt6vectorIN13my_name_space7array2DESaIS7_EEJEEENS_8err_codeERmRT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %.body    ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !45
  %i.h = call noundef i64 @ftell(ptr noundef %i.g)
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !49

bb.b:                                             ; preds = %.noexc
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.thread, label %bb.c, !prof !49

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.j, %i.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !45
  %i.n = call i32 @fseek(ptr noundef %i.m, i64 noundef %i.l, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %.thread, %bb.d
  %.sroa.0.0.i4 = phi i32 [ 2, %.thread ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %.sroa.0.0.i4, ptr %4, align 4, !tbaa !36
  %i.o = call noundef nonnull align 8 dereferenceable(25) ptr @_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEaSIS7_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISB_EE5valueEvE4typeELPv0EEERS8_ONS_10unexpectedISB_EE(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.f

.body:                                            ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load i8, ptr %i.b, align 8, !tbaa !28, !range !37, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEC2EOS8_.exit

_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEC2EOS8_.exit: ; preds = %bb.f
  %i.s = load i32, ptr %3, align 16, !tbaa !36
  store i32 %i.s, ptr %0, align 8, !tbaa !36
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.f
  %i.t = load <2 x ptr>, ptr %3, align 16, !tbaa !50
  store <2 x ptr> %i.t, ptr %0, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !20
  store ptr %i.w, ptr %i.u, align 8, !tbaa !20
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeELb0ELb1EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, %_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEC2EOS8_.exit
  %storemerge = phi i8 [ 0, %_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEC2EOS8_.exit ], [ 1, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %storemerge, ptr %i.x, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.e) #16
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !16     ; 2 uses
  store i32 %i.r, ptr %i.q, align 8, !tbaa !14
  %4 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.s, ptr %4, align 4, !tbaa !15
  %5 = zext i32 %i.r to i64
  %6 = zext i32 %i.s to i64
  %i.t = mul nuw i64 %6, %5
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 4) #17
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !21
  %i.w = icmp eq ptr %i.c, %1
  br i1 %i.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.x = load <2 x i32>, ptr %.sroa.08.011.i.i.i.i.i, align 8, !tbaa !16
  store <2 x i32> %i.x, ptr %.012.i.i.i.i.i, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !21
  store ptr null, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %1
  br i1 %i.ad, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %1, %i.b
  br i1 %i.af, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i29
  %.012.i.i.i.i.i30 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i29 ], [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i31 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %7 = load <2 x i32>, ptr %.sroa.08.011.i.i.i.i.i31, align 8, !tbaa !16
  store <2 x i32> %7, ptr %.012.i.i.i.i.i30, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i30, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i31, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !21
  store ptr null, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i31, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i30, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.b
  br i1 %i.al, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33: ; preds = %.lr.ph.i.i.i.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.ae, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i29 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.an) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit33
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #18
  br label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !22
  store ptr %.0.lcssa.i.i.i.i.i32, ptr %i.a, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZN2tl8expectedISt6vectorIN13my_name_space7array2DESaIS3_EEN11struct_pack8err_codeEEaSIS7_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISB_EE5valueEvE4typeELPv0EEERS8_ONS_10unexpectedISB_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !36
  store i32 %i.d, ptr %0, align 8, !tbaa !36
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail24expected_operations_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeEE11destroy_valEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZN2tl6detail24expected_operations_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeEE11destroy_valEv.exit

_ZN2tl6detail24expected_operations_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeEE11destroy_valEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = load i32, ptr %1, align 4, !tbaa !36
  store i32 %i.q, ptr %0, align 8, !tbaa !36
  store i8 0, ptr %i.a, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %_ZN2tl6detail24expected_operations_baseISt6vectorIN13my_name_space7array2DESaIS4_EEN11struct_pack8err_codeEE11destroy_valEv.exit, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorIN13my_name_space7array2DESaIS7_EEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !38, !align !53 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !31   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

bb.b:                                             ; preds = %bb.a
  %.0.copyload47 = load i32, ptr %i.e, align 1    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !31
  %.mask.i = and i32 %.0.copyload47, -2
  %.not.i = icmp eq i32 %.mask.i, -1387136424
  br i1 %.not.i, label %bb.c, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.0.copyload47, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.d, !prof !34

.thread:                                          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !54
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  %.0.copyload = load i8, ptr %i.j, align 1       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !31
  %i.o = and i8 %.0.copyload, 3
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.f, %i.p
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.f, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

bb.h:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.f, %i.v
  %i.x = icmp ugt i64 %i.w, 7
  br i1 %i.x, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split: ; preds = %bb.h, %bb.g, %bb.f
  %.sink97 = phi i64 [ 9, %bb.g ], [ 7, %bb.f ], [ 13, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink97 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !31
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, %bb.e
  %i.z = phi ptr [ %i.n, %bb.e ], [ %i.y, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split ] ; 4 uses
  %i.aa = and i8 %.0.copyload, 4
  %.not8.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.f, %i.ab
  %i.ad = icmp ult i64 %i.ac, 26
  br i1 %i.ad, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.j, !prof !49

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !31
  %i.af = load i128, ptr %i.z, align 1
  %i.ag = xor i128 %i.af, 77621661416721461682980163269591693700
  %i.ah = getelementptr i8, ptr %i.z, i64 10
  %i.ai = load i128, ptr %i.ah, align 1
  %i.aj = xor i128 %i.ai, 1325418901753047524680204919786008691
  %i.ak = or i128 %i.ag, %i.aj
  %i.al = icmp ne i128 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not4.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i, label %bb.k, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !34

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit, %bb.j
  %i.an = lshr i8 %.0.copyload, 3
  %i.ao = and i8 %i.an, 3                         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !54
  %i.aq = icmp eq i8 %i.ao, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ar = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.as = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread: ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.ar, %bb.l ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.as, %bb.m ], [ 3, %bb.j ], [ 1, %bb.i ]
  ret i32 %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !38, !align !53 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %.not30 = icmp eq ptr %i.d, %i.e
  br i1 %.not30, label %.critedge15, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i8, ptr %i.e, align 1       ; 2 uses
  %.0.insert.ext = zext i8 %.0.copyload to i64    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.b, align 8, !tbaa !31
  %i.g = icmp eq i8 %.0.copyload, 0
  br i1 %i.g, label %.critedge15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.l) #16
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !19
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.0.insert.ext)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit, %bb.i
  %.031 = phi i64 [ 0, %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit ], [ %i.az, %bb.i ]
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.i, align 8, !tbaa !19
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.o)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !38, !align !53 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %bb.g, label %.critedge15, !prof !34

bb.g:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.ac = load i32, ptr %i.w, align 1             ; 2 uses
  store i32 %i.ac, ptr %i.ab, align 4
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  store ptr %i.ae, ptr %i.t, align 8, !tbaa !31
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 3
  br i1 %i.aj, label %bb.h, label %.critedge15, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds i8, ptr %i.s, i64 -12
  %i.al = load i32, ptr %i.ae, align 1            ; 2 uses
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 4 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !31
  %i.ao = zext i32 %i.ac to i64
  %i.ap = zext i32 %i.al to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = mul i64 %i.aq, %i.ao                    ; 4 uses
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = sub i64 %i.at, %i.au
  %.not.i.i16 = icmp ult i64 %i.av, %i.ar
  br i1 %.not.i.i16, label %.critedge15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.ar) #21 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.an, i64 %i.ar, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  store ptr %i.ay, ptr %i.t, align 8, !tbaa !31
  %i.az = add nuw nsw i64 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.0.insert.ext
  br i1 %exitcond.not, label %.critedge15, label %bb.d, !llvm.loop !75

.critedge15:                                      ; preds = %bb.i, %bb.g, %bb.h, %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.a, %bb.b
  %.sroa.024.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.h ], [ 1, %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ], [ 1, %bb.g ], [ 0, %bb.i ]
  ret i32 %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i, label %bb.e

_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 4 uses
  %i.p = icmp eq ptr %i.d, %i.k
  br i1 %i.p, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %2 = load <2 x i32>, ptr %.sroa.08.011.i.i.i.i.i, align 8, !tbaa !16
  store <2 x i32> %2, ptr %.012.i.i.i.i.i, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  store ptr %i.s, ptr %i.q, align 8, !tbaa !21
  store ptr null, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.k
  br i1 %i.v, label %.lr.ph.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.d, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.x) #16
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.y, %i.k
  br i1 %.not.i.i8, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit

_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit.loopexit, %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i
  %i.z = phi ptr [ %.pre, %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #18
  br label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %1
  store ptr %i.af, ptr %i.b, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = icmp eq ptr %i.c, %1
  br i1 %i.r, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %i.s = load <2 x i32>, ptr %.sroa.08.011.i.i.i.i.i, align 8, !tbaa !16
  store <2 x i32> %i.s, ptr %.012.i.i.i.i.i, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  store ptr %i.v, ptr %i.t, align 8, !tbaa !21
  store ptr null, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %1
  br i1 %i.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN13my_name_space7array2DESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %1, %i.b
  br i1 %i.aa, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i27 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i29 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i27 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %2 = load <2 x i32>, ptr %.sroa.08.011.i.i.i.i.i29, align 8, !tbaa !16
  store <2 x i32> %2, ptr %.012.i.i.i.i.i28, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i29, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !21
  store ptr null, ptr %i.ac, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i29, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i28, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31, label %.lr.ph.i.i.i.i.i27, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31: ; preds = %.lr.ph.i.i.i.i.i27, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i30 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.af, %.lr.ph.i.i.i.i.i27 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ai) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN13my_name_space7array2DES2_SaIS1_EET0_T_S5_S4_RT1_.exit31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #18
  br label %_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN13my_name_space7array2DESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN13my_name_space7array2DEEvT_S3_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !22
  store ptr %.0.lcssa.i.i.i.i.i30, ptr %i.a, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorIN13my_name_space7array2DESaIS7_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !38, !align !53 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !31   ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  switch i8 %i.b, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread, label %.critedge, !prof !34

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread: ; preds = %bb.b
  %.0.copyload27 = load i16, ptr %i.g, align 1
  %.0.insert.ext29 = zext i16 %.0.copyload27 to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.j, 3
  br i1 %i.l, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, label %.critedge, !prof !34

_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread: ; preds = %bb.c
  %.0.copyload26 = load i32, ptr %i.g, align 1
  %.0.insert.ext = zext i32 %.0.copyload26 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, 7
  br i1 %i.m, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, label %.critedge, !prof !34

_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread: ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.g, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread
  %.sink46 = phi i64 [ 8, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ 2, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ]
  %.035 = phi i64 [ %.0.copyload, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ %.0.insert.ext, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ %.0.insert.ext29, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink46
  store ptr %i.n, ptr %i.d, align 8, !tbaa !31
  %i.o = icmp eq i64 %.035, 0
  br i1 %i.o, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.p, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.t) #16
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !19
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit: ; preds = %bb.g, %_ZSt8_DestroyIPN13my_name_space7array2DES1_EvT_S3_RSaIT0_E.exit.i.i
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.035, i64 65536)
  tail call void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.speculated)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit, %bb.m
  %.041 = phi i64 [ 0, %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE5clearEv.exit ], [ %i.bi, %bb.m ]
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !19   ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !19
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.x)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !50
  br label %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.i, %bb.j
  %i.ab = phi ptr [ %i.aa, %bb.i ], [ %.pre, %bb.j ] ; 3 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !52, !nonnull !38, !align !53 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 3
  br i1 %i.aj, label %bb.k, label %.critedge, !prof !34

bb.k:                                             ; preds = %_ZNSt6vectorIN13my_name_space7array2DESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 -16
  %i.al = load i32, ptr %i.af, align 1            ; 2 uses
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp ugt i64 %i.ar, 3
  br i1 %i.as, label %bb.l, label %.critedge, !prof !34

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.ab, i64 -12
  %i.au = load i32, ptr %i.an, align 1            ; 2 uses
  store i32 %i.au, ptr %i.at, align 4
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 4 uses
  store ptr %i.aw, ptr %i.ac, align 8, !tbaa !31
  %i.ax = zext i32 %i.al to i64
  %i.ay = zext i32 %i.au to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = mul i64 %i.az, %i.ax                    ; 4 uses
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.bc, %i.bd
  %.not.i.i20 = icmp ult i64 %i.be, %i.ba
  br i1 %.not.i.i20, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.ba) #21 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.aw, i64 %i.ba, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  store ptr %i.bh, ptr %i.ac, align 8, !tbaa !31
end_hunk_1
