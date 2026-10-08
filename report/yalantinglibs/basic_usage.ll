Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/basic_usage?download=true
inline.NumInlined: 891
inline.NumDeleted: 363
begin_hunk_0
%"struct.tl::detail::expected_move_base.base.38" = type { %"struct.tl::detail::expected_copy_base.base.37" }
%"struct.tl::detail::expected_copy_base.base.37" = type { %"struct.tl::detail::expected_operations_base.base.36" }
%"struct.tl::detail::expected_operations_base.base.36" = type { %"struct.tl::detail::expected_storage_base.base.35" }
%"struct.tl::detail::expected_storage_base.base.35" = type <{ %union.anon.29, i8 }>
%union.anon.29 = type { %"class.tl::unexpected", [36 x i8] }
%"class.tl::unexpected" = type { %"struct.struct_pack::err_code" }
%struct.fread_stream = type { ptr }
%"class.struct_pack::detail::unpacker.55" = type <{ i64, ptr, i8, [7 x i8] }>
%class.anon.52 = type { ptr, ptr }
%class.anon.54 = type { ptr, ptr }
%class.anon.66 = type { ptr }

$_ZN11struct_pack11deserializeIJ6personETkNS_6detail16deserialize_viewESt6vectorIcSaIcEEEEDaRKT0_ = comdat any

$_ZN11struct_pack9get_fieldI6personLm1ELm0ETkNS_6detail16deserialize_viewESt6vectorIcSaIcEEEEDaRKT2_ = comdat any

$_ZN11struct_pack11deserializeIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETkNS_6detail16deserialize_viewESt6vectorIcS5_EEEDaRKT0_ = comdat any

$_ZN11struct_pack11deserializeIJ6personETkNS_8reader_tE12fread_streamEEDaRT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN2tl6detail15throw_exceptionINS_19bad_expected_accessIN11struct_pack8err_codeEEEEEvOT_ = comdat any

$_ZN2tl19bad_expected_accessIN11struct_pack8err_codeEED0Ev = comdat any

$_ZNK2tl19bad_expected_accessIN11struct_pack8err_codeEE4whatEv = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE9get_fieldI6personLm1EEENS_8err_codeERNSt13tuple_elementIXT0_EDTcl9get_typesIT_EEEE4typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZN3ylt10reflection8internal24object_tuple_view_helperIR6personLm2EE10tuple_viewIZN11struct_pack6detail8unpackerINS8_13memory_readerELm0ELb0EE14get_field_implILm2ELm18446744073709551615ES3_Lm1EEENS7_8err_codeERNSt13tuple_elementIXT2_EDTcl9get_typesIT1_EEEE4typeEEUlDpOT_E_EEDcS4_OT_ = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEENS_8err_codeERT_DpRT0_ = comdat any

$_ZSt13__invoke_implIvZN11struct_pack6detail8unpackerINS1_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt5tupleIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS0_8err_codeERT3_EUlDpOT_E_JRiRSC_EET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE20deserialize_with_lenI6personJEEENS_8err_codeERmRT_DpRT0_ = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8err_codeERT3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv = comdat any

$_ZN11struct_pack6detail8unpackerI12fread_streamLm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_8err_codeERT3_ = comdat any

$_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJ6personEEEvRT0_DpRKT1_ = comdat any

$_ZN11struct_pack24serialize_to_with_offsetILm0ETkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEEvRT0_mDpRKT1_ = comdat any

$_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEEEvRT0_DpRKT1_ = comdat any

$_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tE13fwrite_streamJ6personEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_ = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeI6personJEEENS_8err_codeERT_DpRT0_ = comdat any

$_ZN3ylt10reflection8internal24object_tuple_view_helperIR6personLm2EE10tuple_viewIZN11struct_pack6detail8unpackerINS8_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ES3_EENS7_8err_codeERT3_EUlDpOT_E_EEDcS4_OT_ = comdat any

$_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeIiJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_8err_codeERT_DpRT0_ = comdat any

$_ZTIN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = comdat any

$_ZTSN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = comdat any

$_ZTVN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = comdat any

@.str = private unnamed_addr constant [4 x i8] c"tom\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Betty\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"The next line is struct_pack data.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"struct_pack_demo.data\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZTIN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2tl19bad_expected_accessIN11struct_pack8err_codeEEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = linkonce_odr dso_local constant [53 x i8] c"N2tl19bad_expected_accessIN11struct_pack8err_codeEEE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN2tl19bad_expected_accessIN11struct_pack8err_codeEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN2tl19bad_expected_accessIN11struct_pack8err_codeEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN2tl19bad_expected_accessIN11struct_pack8err_codeEED0Ev, ptr @_ZNK2tl19bad_expected_accessIN11struct_pack8err_codeEE4whatEv] }, comdat, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"Bad expected access\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@_ZTIN10__cxxabiv115__forced_unwindE = external constant ptr
@.str.10 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@switch.table._ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tE13fwrite_streamJ6personEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_ = private unnamed_addr constant [3 x i8] c"\02\04\08", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11basic_usagev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %0 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %1 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %2 = alloca %"class.tl::bad_expected_access", align 8 ; 6 uses
  %3 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %4 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %5 = alloca %"struct.struct_pack::serialize_buffer_size", align 8 ; 5 uses
  %6 = alloca %struct.person, align 8             ; 20 uses
  %7 = alloca %struct.person, align 8             ; 8 uses
  %8 = alloca %"class.std::vector", align 8       ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::vector", align 8      ; 10 uses
  %11 = alloca %"class.std::vector", align 8      ; 9 uses
  %12 = alloca %struct.person, align 8            ; 8 uses
  %13 = alloca %"class.std::vector", align 8      ; 9 uses
  %14 = alloca %struct.fwrite_stream, align 8     ; 7 uses
  %15 = alloca %"class.std::vector", align 8      ; 14 uses
  %16 = alloca %"class.tl::expected", align 8     ; 7 uses
  %17 = alloca %struct.person, align 8            ; 7 uses
  %18 = alloca %"class.tl::expected.3", align 8   ; 7 uses
  %19 = alloca %"class.std::vector", align 8      ; 11 uses
  %20 = alloca %"class.tl::expected.22", align 8  ; 10 uses
  %21 = alloca %struct.person, align 8            ; 7 uses
  %22 = alloca %"class.std::vector", align 8      ; 12 uses
  %23 = alloca %struct.fread_stream, align 8      ; 7 uses
  %24 = alloca %"class.tl::expected", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 20, ptr %6, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store i64 3, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i32 21, ptr %7, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 5, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !133
  invoke void @_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJ6personEEEvRT0_DpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %8, align 8, !tbaa !20, !alias.scope !133 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21, !alias.scope !133
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %.body

_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit: ; preds = %._crit_edge.i.i
  %i.p = load ptr, ptr %8, align 8, !tbaa !20     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.v, ptr %9, align 8, !tbaa !16, !alias.scope !134
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !17, !alias.scope !134
  store i8 0, ptr %i.v, align 8, !tbaa !18, !alias.scope !134
  %i.x = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !135 ; 5 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.z = add nuw nsw i64 %i.x, 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.aa = icmp ult i64 %i.x, 65536                ; 2 uses
  %i.ab = icmp ult i64 %i.x, 4294967296           ; 2 uses
  %..i205 = select i1 %i.ab, i64 8, i64 12
  %.33.i206 = select i1 %i.ab, i8 16, i8 24
  %.sink.i207 = select i1 %i.aa, i64 6, i64 %..i205
  %.sroa.1230.0.i208 = select i1 %i.aa, i8 8, i8 %.33.i206
  %i.ac = add i64 %i.x, 1
  %i.ad = add i64 %i.ac, %.sink.i207
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213: ; preds = %bb.e, %bb.d
  %.sroa.1230.1.i210 = phi i8 [ 0, %bb.d ], [ %.sroa.1230.0.i208, %bb.e ] ; 3 uses
  %storemerge.i.i211 = phi i64 [ %i.z, %bb.d ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = add i64 %storemerge.i.i211, 4           ; 4 uses
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i232, label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i232: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213
  %i.ag = icmp slt i64 %i.ae, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i232
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc242 unwind label %bb.n

.noexc242:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i232
  %.0.i235 = call i64 @llvm.umax.i64(i64 %i.ae, i64 30) ; 2 uses
  %i.ah = add nuw i64 %.0.i235, 1                 ; 2 uses
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i236, !prof !23

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc243 unwind label %bb.n

.noexc243:                                        ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i236: ; preds = %bb.g
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #22
          to label %.noexc223 unwind label %bb.n  ; 3 uses

.noexc223:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i236
  store i8 0, ptr %i.aj, align 1, !tbaa !18
  store ptr %i.aj, ptr %9, align 8, !tbaa !24
  store i64 %.0.i235, ptr %i.v, align 8, !tbaa !18
  br label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i214

_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i214: ; preds = %.noexc223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213
  %i.ak = phi ptr [ %i.aj, %.noexc223 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i213 ]
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17
  %25 = getelementptr i8, ptr %i.ak, i64 %storemerge.i.i211
  %i.al = getelementptr i8, ptr %25, i64 4
  store i8 0, ptr %i.al, align 1, !tbaa !18
  %i.am = load ptr, ptr %9, align 8, !tbaa !24
  %26 = getelementptr i8, ptr %i.am, i64 %storemerge.i.i211
  %i.an = getelementptr i8, ptr %26, i64 4
  store i8 0, ptr %i.an, align 1, !tbaa !18
  %i.ao = load ptr, ptr %9, align 8, !tbaa !24    ; 7 uses
  %i.ap = and i8 %.sroa.1230.1.i210, 24
  %i.aq = icmp eq i8 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i214
  store i32 -2052522522, ptr %i.ao, align 1
  %i.as = load i32, ptr %6, align 8
  store i32 %i.as, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.c, align 8, !tbaa !17
  %.0.extract.trunc.i.i.i.i.i.i.i220 = trunc i64 %i.au to i8
  store i8 %.0.extract.trunc.i.i.i.i.i.i.i220, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  br label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJ6personEEET_DpRKT0_.exit

bb.j:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i214
  store i32 -2052522521, ptr %i.ao, align 1
  store i8 %.sroa.1230.1.i210, ptr %i.ar, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.ax = load i32, ptr %6, align 8
  store i32 %i.ax, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 9 ; 4 uses
  %i.az = load i64, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  %i.ba = lshr i8 %.sroa.1230.1.i210, 3
  switch i8 %i.ba, label %default.unreachable.i.i.i.i.i.i.i219 [
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.0.extract.trunc6.i.i.i.i.i.i.i218 = trunc i64 %i.az to i16
  store i16 %.0.extract.trunc6.i.i.i.i.i.i.i218, ptr %i.ay, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215

bb.l:                                             ; preds = %bb.j
  %.0.extract.trunc.i.i.i.i.i5.i.i217 = trunc i64 %i.az to i32
  store i32 %.0.extract.trunc.i.i.i.i.i5.i.i217, ptr %i.ay, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215

bb.m:                                             ; preds = %bb.j
  store i64 %i.az, ptr %i.ay, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215

default.unreachable.i.i.i.i.i.i.i219:             ; preds = %bb.j
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215: ; preds = %bb.m, %bb.l, %bb.k
  %.sink8.i.i.i.i.i.i.i216 = phi i64 [ 8, %bb.m ], [ 4, %bb.l ], [ 2, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sink8.i.i.i.i.i.i.i216
  br label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJ6personEEET_DpRKT0_.exit

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i236, %bb.h, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %9, align 8, !tbaa !24, !alias.scope !134 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.v
  br i1 %i.be, label %.body54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bf = load i64, ptr %i.v, align 8, !tbaa !18, !alias.scope !134
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #20
  br label %.body54

_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJ6personEEET_DpRKT0_.exit: ; preds = %bb.i, %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215
  %.sink = phi ptr [ %i.av, %bb.i ], [ %i.bb, %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i215 ]
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 9223372036854775807
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  %i.bk = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.v
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJ6personEEET_DpRKT0_.exit
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJ6personEEET_DpRKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.bo = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #22
          to label %.noexc62 unwind label %bb.ba  ; 6 uses

.noexc62:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.bo, ptr noundef nonnull align 1 dereferenceable(35) @.str.2, i64 35, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 35
  store i8 0, ptr %i.bp, align 1, !tbaa !18
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !136 ; 5 uses
  %i.br = icmp ult i64 %i.bq, 256
  br i1 %i.br, label %bb.o, label %bb.p, !prof !22

bb.o:                                             ; preds = %.noexc62
  %i.bs = add nuw nsw i64 %i.bq, 5
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i

bb.p:                                             ; preds = %.noexc62
  %i.bt = icmp ult i64 %i.bq, 65536               ; 2 uses
  %i.bu = icmp ult i64 %i.bq, 4294967296          ; 2 uses
  %..i = select i1 %i.bu, i64 8, i64 12
  %.33.i = select i1 %i.bu, i8 16, i8 24
  %.sink.i = select i1 %i.bt, i64 6, i64 %..i
  %.sroa.1230.0.i = select i1 %i.bt, i8 8, i8 %.33.i
  %i.bv = add i64 %i.bq, 1
  %i.bw = add i64 %i.bv, %.sink.i
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i

_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.1230.1.i = phi i8 [ 0, %bb.o ], [ %.sroa.1230.0.i, %bb.p ] ; 3 uses
  %storemerge.i.i = phi i64 [ %i.bs, %bb.o ], [ %i.bw, %bb.p ] ; 3 uses
  %i.bx = add i64 %storemerge.i.i, 39             ; 3 uses
  %i.by = icmp ugt i64 %i.bx, 35
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i
  %i.bz = icmp slt i64 %i.bx, 0
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc228 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

.noexc228:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %.0.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 70) ; 2 uses
  %i.ca = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !23

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #21
          to label %.noexc229 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

.noexc229:                                        ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.r
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #22
          to label %.noexc66 unwind label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ; 2 uses

.noexc66:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.cc, ptr noundef nonnull align 1 dereferenceable(36) %i.bo, i64 36, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 36) #20
  %i.cd = add nuw i64 %.0.i, 1
  br label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i: ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i, %.noexc66
  %.sroa.10.0 = phi i64 [ %i.cd, %.noexc66 ], [ 36, %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i ]
  %i.ce = phi ptr [ %i.cc, %.noexc66 ], [ %i.bo, %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJ6personEEENS_21serialize_buffer_sizeEDpRKT0_.exit.i ] ; 9 uses
  %27 = getelementptr i8, ptr %i.ce, i64 %storemerge.i.i
  %28 = getelementptr i8, ptr %27, i64 39
  store i8 0, ptr %28, align 1, !tbaa !18
  %29 = getelementptr i8, ptr %i.ce, i64 %storemerge.i.i
  %i.cf = getelementptr i8, ptr %29, i64 39
  store i8 0, ptr %i.cf, align 1, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 35 ; 2 uses
  %i.ch = and i8 %.sroa.1230.1.i, 24
  %i.ci = icmp eq i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 39 ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 -2052522522, ptr %i.cg, align 1
  %i.ck = load i32, ptr %6, align 8
  store i32 %i.ck, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 43
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  %.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.cm to i8
  store i8 %.0.extract.trunc.i.i.i.i.i.i.i, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.cp = icmp ult i64 %i.cm, 9223372036854775807
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.co, i64 %i.cm, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.u:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 -2052522521, ptr %i.cg, align 1
  store i8 %.sroa.1230.1.i, ptr %i.cj, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cr = load i32, ptr %6, align 8
  store i32 %i.cr, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 44 ; 4 uses
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !17  ; 5 uses
  %i.cu = lshr i8 %.sroa.1230.1.i, 3
  switch i8 %i.cu, label %default.unreachable.i.i.i.i.i.i.i [
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %.0.extract.trunc6.i.i.i.i.i.i.i = trunc i64 %i.ct to i16
  store i16 %.0.extract.trunc6.i.i.i.i.i.i.i, ptr %i.cs, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i

bb.w:                                             ; preds = %bb.u
  %.0.extract.trunc.i.i.i.i.i5.i.i = trunc i64 %i.ct to i32
  store i32 %.0.extract.trunc.i.i.i.i.i5.i.i, ptr %i.cs, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i

bb.x:                                             ; preds = %bb.u
  store i64 %i.ct, ptr %i.cs, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i

default.unreachable.i.i.i.i.i.i.i:                ; preds = %bb.u
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sink8.i.i.i.i.i.i.i = phi i64 [ 8, %bb.x ], [ 4, %bb.w ], [ 2, %bb.v ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink8.i.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.cx = icmp ult i64 %i.ct, 9223372036854775807
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cw, i64 %i.ct, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.t, %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %.sroa.10.0) #20
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !137 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 256
  br i1 %i.cz, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i75

_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i75: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.da = icmp ult i64 %i.cy, 9223372036854775807
  call void @llvm.assume(i1 %i.da)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %_ZN11struct_pack6detail6packerINS0_13memory_writerE6personLb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES3_EEvRKT2_.exit.i.i75
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !alias.scope !138
  invoke void @_ZN11struct_pack24serialize_to_with_offsetILm0ETkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEEvRT0_mDpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZN11struct_pack21serialize_with_offsetITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_mDpRKT0_.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %10, align 8, !tbaa !20, !alias.scope !138 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i81, label %.body83, label %.body83.sink.split

_ZN11struct_pack21serialize_with_offsetITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_mDpRKT0_.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !139
  invoke void @_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJ6personEEEvRT0_DpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit89 unwind label %bb.z

bb.z:                                             ; preds = %_ZN11struct_pack21serialize_with_offsetITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_mDpRKT0_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %11, align 8, !tbaa !20, !alias.scope !139 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i85, label %.body87, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !21, !alias.scope !139
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #20
  br label %.body87

_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit89: ; preds = %_ZN11struct_pack21serialize_with_offsetITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_mDpRKT0_.exit
  %i.dk = load ptr, ptr %11, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIcSaIcEED2Ev.exit91, label %bb.ab

bb.ab:                                            ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit89
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !21
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit91

_ZNSt6vectorIcSaIcEED2Ev.exit91:                  ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJ6personEEET_DpRKT0_.exit89, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.dq = load ptr, ptr %10, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIcSaIcEED2Ev.exit93, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit91
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit93

_ZNSt6vectorIcSaIcEED2Ev.exit93:                  ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit91, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i32 21, ptr %12, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 6 uses
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dx, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 5, ptr %i.dy, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.dz, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !alias.scope !140
  invoke void @_ZN11struct_pack12serialize_toILm0ESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEEEEvRT0_DpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEET_DpRKT0_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit93
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %13, align 8, !tbaa !20, !alias.scope !140 ; 3 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i102, label %.body104, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !21, !alias.scope !140
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #20
  br label %.body104

_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEET_DpRKT0_.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit93
  %i.eh = load ptr, ptr %13, align 8, !tbaa !20   ; 3 uses
  %.not.i.i.i106 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIcSaIcEED2Ev.exit107, label %bb.af

bb.af:                                            ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEET_DpRKT0_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !21
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit107

_ZNSt6vectorIcSaIcEED2Ev.exit107:                 ; preds = %_ZN11struct_pack9serializeITkNS_6detail18struct_pack_bufferESt6vectorIcSaIcEEJiNSt7__cxx1112basic_stringIcSt11char_traitsIcES3_EEEEET_DpRKT0_.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.dx
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit107
  %i.ep = load i64, ptr %i.dx, align 8, !tbaa !18
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i110: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
end_hunk_0
