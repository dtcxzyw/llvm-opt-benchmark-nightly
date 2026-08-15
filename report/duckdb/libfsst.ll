inline.NumInlined: 716
inline.NumDeleted: 392
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.libfsst::Symbol" = type { %union.anon, i64 }
%union.anon = type { i64 }
%"class.std::unordered_set" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const unsigned char *, std::allocator<const unsigned char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const unsigned char *, std::allocator<const unsigned char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const unsigned char *, std::allocator<const unsigned char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const unsigned char *, std::allocator<const unsigned char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.34 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.34 = type { i64, [8 x i8] }
%"class.std::allocator.31" = type { i8 }
%"class.duckdb::unique_ptr" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }
%struct.duckdb_fsst_decoder_t = type { i64, i8, [255 x i8], [255 x i64] }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"struct.libfsst::QSymbol" = type <{ %"struct.libfsst::Symbol", i32, [4 x i8] }>

$_ZN7libfsst11SymbolTable8finalizeEh = comdat any

$_ZNSt10unique_ptrISt6vectorImSaImEESt14default_deleteIS2_EED2Ev = comdat any

$_ZNK6duckdb10unique_ptrISt6vectorImSaImEESt14default_deleteIS3_ELb1EEptEv = comdat any

$_ZN7libfsst13_compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi = comdat any

$_ZNSt13unordered_setIN7libfsst7QSymbolESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS1_ = comdat any

$_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm = comdat any

$_ZNSt10_HashtableIN7libfsst7QSymbolES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTIN6duckdb17InternalExceptionE = comdat any

$_ZTSN6duckdb17InternalExceptionE = comdat any

$_ZTIN6duckdb9ExceptionE = comdat any

$_ZTSN6duckdb9ExceptionE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr hidden constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr hidden constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [75 x i8] c"St15_Sp_counted_ptrIPN7libfsst11SymbolTableELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i64 } @_ZN7libfsst6concatENS_6SymbolES0_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 28                          ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i64 %3, 28
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, %i.b
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 8)
  %reass.sub = mul nuw nsw i32 %spec.store.select, 268435448
  %i.f = add nuw i32 %reass.sub, 33488960
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.a, 3
  %i.i = and i64 %i.h, 4294967288
  %i.j = shl i64 %2, %i.i
  %i.k = or i64 %i.j, %0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.k, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.g, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7libfsst12isEscapeCodeEt(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i16 %0, 256
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN7libfsstlsERSoRKNS_6SymbolE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  %i.d = and i64 %i.c, 1152921504338411520
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  ret ptr %0

.lr.ph:                                           ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.f, ptr %i.a, align 1, !tbaa !10
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.f) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !7
  %i.p = lshr i64 %i.o, 28
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(394240) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.libfsst::Symbol", align 8  ; 5 uses
  %5 = alloca %"struct.libfsst::Symbol", align 8  ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [256 x i16], align 16             ; 5 uses
  %6 = alloca [1024 x i8], align 16               ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(156192) ptr @_Znwm(i64 noundef 156192) #21 ; 46 uses
  %.ptr25.i = getelementptr inbounds nuw i8, ptr %i.c, i64 131584 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 156162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24578) %.ptr25.i, i8 0, i64 24578, i1 false)
  store i16 512, ptr %i.d, align 2, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 156164 ; 3 uses
  store i16 0, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 156166 ; 2 uses
  store i8 0, ptr %i.f, align 2, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 5 uses
  %i.g = shl nuw nsw i64 %indvars.iv.i, 16
  %i.h = add nuw nsw i64 %i.g, 268435512
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv.i ; 2 uses
  store i64 %indvars.iv.i, ptr %i.i, align 8, !tbaa !10
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %.sroa.433.0..sroa_idx.i, align 8, !tbaa !31
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.j = shl nuw nsw i64 %indvars.iv.next.i, 16
  %i.k = add nuw nsw i64 %i.j, 268435512
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv.next.i ; 2 uses
  store i64 %indvars.iv.next.i, ptr %i.l, align 8, !tbaa !10
  %.sroa.433.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %.sroa.433.0..sroa_idx.i.1, align 8, !tbaa !31
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader36.i, label %bb.b, !llvm.loop !32

.preheader36.i:                                   ; preds = %bb.b, %.preheader36.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i.3, %.preheader36.i ], [ 256, %bb.b ] ; 5 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv43.i ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 301924408, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv43.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 301924408, ptr %.sroa.4.0..sroa_idx.i.1, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv43.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 0, ptr %i.q, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 301924408, ptr %.sroa.4.0..sroa_idx.i.2, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %indvars.iv43.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 0, ptr %i.s, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 301924408, ptr %.sroa.4.0..sroa_idx.i.3, align 8, !tbaa !31
  %indvars.iv.next44.i.3 = add nuw nsw i64 %indvars.iv43.i, 4 ; 2 uses
  %exitcond46.not.i.3 = icmp eq i64 %indvars.iv.next44.i.3, 512
  br i1 %exitcond46.not.i.3, label %.preheader35.i.preheader, label %.preheader36.i, !llvm.loop !33

.preheader35.i.preheader:                         ; preds = %.preheader36.i
  %.ptr30.i = getelementptr inbounds nuw i8, ptr %i.c, i64 139776 ; 7 uses
  br label %.preheader35.i

.preheader34.i:                                   ; preds = %.preheader35.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 131072 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 131088
  store <8 x i16> <i16 4096, i16 4097, i16 4098, i16 4099, i16 4100, i16 4101, i16 4102, i16 4103>, ptr %i.t, align 4, !tbaa !34
  store <8 x i16> <i16 4104, i16 4105, i16 4106, i16 4107, i16 4108, i16 4109, i16 4110, i16 4111>, ptr %i.u, align 4, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 131104
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 131120
  store <8 x i16> <i16 4112, i16 4113, i16 4114, i16 4115, i16 4116, i16 4117, i16 4118, i16 4119>, ptr %i.v, align 4, !tbaa !34
  store <8 x i16> <i16 4120, i16 4121, i16 4122, i16 4123, i16 4124, i16 4125, i16 4126, i16 4127>, ptr %i.w, align 4, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 131136
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 131152
  store <8 x i16> <i16 4128, i16 4129, i16 4130, i16 4131, i16 4132, i16 4133, i16 4134, i16 4135>, ptr %i.x, align 4, !tbaa !34
  store <8 x i16> <i16 4136, i16 4137, i16 4138, i16 4139, i16 4140, i16 4141, i16 4142, i16 4143>, ptr %i.y, align 4, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 131168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 131184
  store <8 x i16> <i16 4144, i16 4145, i16 4146, i16 4147, i16 4148, i16 4149, i16 4150, i16 4151>, ptr %i.z, align 4, !tbaa !34
  store <8 x i16> <i16 4152, i16 4153, i16 4154, i16 4155, i16 4156, i16 4157, i16 4158, i16 4159>, ptr %i.aa, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 131200
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 131216
  store <8 x i16> <i16 4160, i16 4161, i16 4162, i16 4163, i16 4164, i16 4165, i16 4166, i16 4167>, ptr %i.ab, align 4, !tbaa !34
  store <8 x i16> <i16 4168, i16 4169, i16 4170, i16 4171, i16 4172, i16 4173, i16 4174, i16 4175>, ptr %i.ac, align 4, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 131232
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 131248
  store <8 x i16> <i16 4176, i16 4177, i16 4178, i16 4179, i16 4180, i16 4181, i16 4182, i16 4183>, ptr %i.ad, align 4, !tbaa !34
  store <8 x i16> <i16 4184, i16 4185, i16 4186, i16 4187, i16 4188, i16 4189, i16 4190, i16 4191>, ptr %i.ae, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 131264
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 131280
  store <8 x i16> <i16 4192, i16 4193, i16 4194, i16 4195, i16 4196, i16 4197, i16 4198, i16 4199>, ptr %i.af, align 4, !tbaa !34
  store <8 x i16> <i16 4200, i16 4201, i16 4202, i16 4203, i16 4204, i16 4205, i16 4206, i16 4207>, ptr %i.ag, align 4, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 131296
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 131312
  store <8 x i16> <i16 4208, i16 4209, i16 4210, i16 4211, i16 4212, i16 4213, i16 4214, i16 4215>, ptr %i.ah, align 4, !tbaa !34
  store <8 x i16> <i16 4216, i16 4217, i16 4218, i16 4219, i16 4220, i16 4221, i16 4222, i16 4223>, ptr %i.ai, align 4, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 131328
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 131344
  store <8 x i16> <i16 4224, i16 4225, i16 4226, i16 4227, i16 4228, i16 4229, i16 4230, i16 4231>, ptr %i.aj, align 4, !tbaa !34
  store <8 x i16> <i16 4232, i16 4233, i16 4234, i16 4235, i16 4236, i16 4237, i16 4238, i16 4239>, ptr %i.ak, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 131360
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 131376
  store <8 x i16> <i16 4240, i16 4241, i16 4242, i16 4243, i16 4244, i16 4245, i16 4246, i16 4247>, ptr %i.al, align 4, !tbaa !34
  store <8 x i16> <i16 4248, i16 4249, i16 4250, i16 4251, i16 4252, i16 4253, i16 4254, i16 4255>, ptr %i.am, align 4, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 131392
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 131408
  store <8 x i16> <i16 4256, i16 4257, i16 4258, i16 4259, i16 4260, i16 4261, i16 4262, i16 4263>, ptr %i.an, align 4, !tbaa !34
  store <8 x i16> <i16 4264, i16 4265, i16 4266, i16 4267, i16 4268, i16 4269, i16 4270, i16 4271>, ptr %i.ao, align 4, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 131424
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 131440
  store <8 x i16> <i16 4272, i16 4273, i16 4274, i16 4275, i16 4276, i16 4277, i16 4278, i16 4279>, ptr %i.ap, align 4, !tbaa !34
  store <8 x i16> <i16 4280, i16 4281, i16 4282, i16 4283, i16 4284, i16 4285, i16 4286, i16 4287>, ptr %i.aq, align 4, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 131456
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 131472
  store <8 x i16> <i16 4288, i16 4289, i16 4290, i16 4291, i16 4292, i16 4293, i16 4294, i16 4295>, ptr %i.ar, align 4, !tbaa !34
  store <8 x i16> <i16 4296, i16 4297, i16 4298, i16 4299, i16 4300, i16 4301, i16 4302, i16 4303>, ptr %i.as, align 4, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 131488
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 131504
  store <8 x i16> <i16 4304, i16 4305, i16 4306, i16 4307, i16 4308, i16 4309, i16 4310, i16 4311>, ptr %i.at, align 4, !tbaa !34
  store <8 x i16> <i16 4312, i16 4313, i16 4314, i16 4315, i16 4316, i16 4317, i16 4318, i16 4319>, ptr %i.au, align 4, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 131520
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 131536
  store <8 x i16> <i16 4320, i16 4321, i16 4322, i16 4323, i16 4324, i16 4325, i16 4326, i16 4327>, ptr %i.av, align 4, !tbaa !34
  store <8 x i16> <i16 4328, i16 4329, i16 4330, i16 4331, i16 4332, i16 4333, i16 4334, i16 4335>, ptr %i.aw, align 4, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 131552
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 131568
  store <8 x i16> <i16 4336, i16 4337, i16 4338, i16 4339, i16 4340, i16 4341, i16 4342, i16 4343>, ptr %i.ax, align 4, !tbaa !34
  store <8 x i16> <i16 4344, i16 4345, i16 4346, i16 4347, i16 4348, i16 4349, i16 4350, i16 4351>, ptr %i.ay, align 4, !tbaa !34
  br label %vector.body111

.preheader35.i:                                   ; preds = %.preheader35.i, %.preheader35.i.preheader
  %indvars.iv47.i = phi i64 [ 0, %.preheader35.i.preheader ], [ %indvars.iv.next48.i.3, %.preheader35.i ] ; 5 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %indvars.iv47.i ; 2 uses
  store i64 0, ptr %i.az, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %indvars.iv47.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.bb, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %indvars.iv47.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 0, ptr %i.bd, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i.2, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %indvars.iv47.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i64 0, ptr %i.bf, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i.3, align 8, !tbaa !31
  %indvars.iv.next48.i.3 = add nuw nsw i64 %indvars.iv47.i, 4 ; 2 uses
  %exitcond50.not.i.3 = icmp eq i64 %indvars.iv.next48.i.3, 1024
  br i1 %exitcond50.not.i.3, label %.preheader34.i, label %.preheader35.i, !llvm.loop !35

vector.body111:                                   ; preds = %vector.body111, %.preheader34.i
  %index112 = phi i64 [ 0, %.preheader34.i ], [ %index.next115.1, %vector.body111 ] ; 3 uses
  %vec.ind113 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %.preheader34.i ], [ %vec.ind.next116.1, %vector.body111 ] ; 5 uses
  %step.add114 = add <8 x i16> %vec.ind113, splat (i16 8)
  %i.bg = and <8 x i16> %vec.ind113, splat (i16 255)
  %i.bh = and <8 x i16> %step.add114, splat (i16 255)
  %i.bi = or disjoint <8 x i16> %i.bg, splat (i16 4096)
  %i.bj = or disjoint <8 x i16> %i.bh, splat (i16 4096)
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <8 x i16> %i.bi, ptr %i.bk, align 2, !tbaa !34
  store <8 x i16> %i.bj, ptr %i.bl, align 2, !tbaa !34
  %vec.ind.next116 = add <8 x i16> %vec.ind113, splat (i16 16)
  %step.add114.1 = add <8 x i16> %vec.ind113, splat (i16 24)
  %i.bm = and <8 x i16> %vec.ind.next116, splat (i16 255)
  %i.bn = and <8 x i16> %step.add114.1, splat (i16 255)
  %i.bo = or disjoint <8 x i16> %i.bm, splat (i16 4096)
  %i.bp = or disjoint <8 x i16> %i.bn, splat (i16 4096)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index112 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store <8 x i16> %i.bo, ptr %i.br, align 2, !tbaa !34
  store <8 x i16> %i.bp, ptr %i.bs, align 2, !tbaa !34
  %index.next115.1 = add nuw nsw i64 %index112, 32 ; 2 uses
  %vec.ind.next116.1 = add <8 x i16> %vec.ind113, splat (i16 32)
  %i.bt = icmp eq i64 %index.next115.1, 65536
  br i1 %i.bt, label %middle.block117, label %vector.body111, !llvm.loop !36

middle.block117:                                  ; preds = %vector.body111
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 156168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bu, i8 0, i64 18, i1 false)
  %i.bv = tail call noalias noundef nonnull dereferenceable(156192) ptr @_Znwm(i64 noundef 156192) #21 ; 44 uses
  %.ptr25.i49 = getelementptr inbounds nuw i8, ptr %i.bv, i64 131584 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 156162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24578) %.ptr25.i49, i8 0, i64 24578, i1 false)
  store i16 512, ptr %i.bw, align 2, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 156164
  store i16 0, ptr %i.bx, align 4, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 156166
  store i8 0, ptr %i.by, align 2, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %middle.block117
  %indvars.iv.i51 = phi i64 [ 0, %middle.block117 ], [ %indvars.iv.next.i53.1, %bb.c ] ; 5 uses
  %i.bz = shl nuw nsw i64 %indvars.iv.i51, 16
  %i.ca = add nuw nsw i64 %i.bz, 268435512
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i49, i64 %indvars.iv.i51 ; 2 uses
  store i64 %indvars.iv.i51, ptr %i.cb, align 8, !tbaa !10
  %.sroa.433.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
end_hunk_0
begin_hunk_1_@_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 131152
  store <8 x i16> <i16 4128, i16 4129, i16 4130, i16 4131, i16 4132, i16 4133, i16 4134, i16 4135>, ptr %i.cq, align 4, !tbaa !34
  store <8 x i16> <i16 4136, i16 4137, i16 4138, i16 4139, i16 4140, i16 4141, i16 4142, i16 4143>, ptr %i.cr, align 4, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 131168
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 131184
  store <8 x i16> <i16 4144, i16 4145, i16 4146, i16 4147, i16 4148, i16 4149, i16 4150, i16 4151>, ptr %i.cs, align 4, !tbaa !34
  store <8 x i16> <i16 4152, i16 4153, i16 4154, i16 4155, i16 4156, i16 4157, i16 4158, i16 4159>, ptr %i.ct, align 4, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 131200
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bv, i64 131216
  store <8 x i16> <i16 4160, i16 4161, i16 4162, i16 4163, i16 4164, i16 4165, i16 4166, i16 4167>, ptr %i.cu, align 4, !tbaa !34
  store <8 x i16> <i16 4168, i16 4169, i16 4170, i16 4171, i16 4172, i16 4173, i16 4174, i16 4175>, ptr %i.cv, align 4, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 131232
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bv, i64 131248
  store <8 x i16> <i16 4176, i16 4177, i16 4178, i16 4179, i16 4180, i16 4181, i16 4182, i16 4183>, ptr %i.cw, align 4, !tbaa !34
  store <8 x i16> <i16 4184, i16 4185, i16 4186, i16 4187, i16 4188, i16 4189, i16 4190, i16 4191>, ptr %i.cx, align 4, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bv, i64 131264
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 131280
  store <8 x i16> <i16 4192, i16 4193, i16 4194, i16 4195, i16 4196, i16 4197, i16 4198, i16 4199>, ptr %i.cy, align 4, !tbaa !34
  store <8 x i16> <i16 4200, i16 4201, i16 4202, i16 4203, i16 4204, i16 4205, i16 4206, i16 4207>, ptr %i.cz, align 4, !tbaa !34
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 131296
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 131312
  store <8 x i16> <i16 4208, i16 4209, i16 4210, i16 4211, i16 4212, i16 4213, i16 4214, i16 4215>, ptr %i.da, align 4, !tbaa !34
  store <8 x i16> <i16 4216, i16 4217, i16 4218, i16 4219, i16 4220, i16 4221, i16 4222, i16 4223>, ptr %i.db, align 4, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 131328
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 131344
  store <8 x i16> <i16 4224, i16 4225, i16 4226, i16 4227, i16 4228, i16 4229, i16 4230, i16 4231>, ptr %i.dc, align 4, !tbaa !34
  store <8 x i16> <i16 4232, i16 4233, i16 4234, i16 4235, i16 4236, i16 4237, i16 4238, i16 4239>, ptr %i.dd, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 131360
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 131376
  store <8 x i16> <i16 4240, i16 4241, i16 4242, i16 4243, i16 4244, i16 4245, i16 4246, i16 4247>, ptr %i.de, align 4, !tbaa !34
  store <8 x i16> <i16 4248, i16 4249, i16 4250, i16 4251, i16 4252, i16 4253, i16 4254, i16 4255>, ptr %i.df, align 4, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 131392
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 131408
  store <8 x i16> <i16 4256, i16 4257, i16 4258, i16 4259, i16 4260, i16 4261, i16 4262, i16 4263>, ptr %i.dg, align 4, !tbaa !34
  store <8 x i16> <i16 4264, i16 4265, i16 4266, i16 4267, i16 4268, i16 4269, i16 4270, i16 4271>, ptr %i.dh, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 131424
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 131440
  store <8 x i16> <i16 4272, i16 4273, i16 4274, i16 4275, i16 4276, i16 4277, i16 4278, i16 4279>, ptr %i.di, align 4, !tbaa !34
  store <8 x i16> <i16 4280, i16 4281, i16 4282, i16 4283, i16 4284, i16 4285, i16 4286, i16 4287>, ptr %i.dj, align 4, !tbaa !34
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 131456
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 131472
  store <8 x i16> <i16 4288, i16 4289, i16 4290, i16 4291, i16 4292, i16 4293, i16 4294, i16 4295>, ptr %i.dk, align 4, !tbaa !34
  store <8 x i16> <i16 4296, i16 4297, i16 4298, i16 4299, i16 4300, i16 4301, i16 4302, i16 4303>, ptr %i.dl, align 4, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 131488
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bv, i64 131504
  store <8 x i16> <i16 4304, i16 4305, i16 4306, i16 4307, i16 4308, i16 4309, i16 4310, i16 4311>, ptr %i.dm, align 4, !tbaa !34
  store <8 x i16> <i16 4312, i16 4313, i16 4314, i16 4315, i16 4316, i16 4317, i16 4318, i16 4319>, ptr %i.dn, align 4, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 131520
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 131536
  store <8 x i16> <i16 4320, i16 4321, i16 4322, i16 4323, i16 4324, i16 4325, i16 4326, i16 4327>, ptr %i.do, align 4, !tbaa !34
  store <8 x i16> <i16 4328, i16 4329, i16 4330, i16 4331, i16 4332, i16 4333, i16 4334, i16 4335>, ptr %i.dp, align 4, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bv, i64 131552
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bv, i64 131568
  store <8 x i16> <i16 4336, i16 4337, i16 4338, i16 4339, i16 4340, i16 4341, i16 4342, i16 4343>, ptr %i.dq, align 4, !tbaa !34
  store <8 x i16> <i16 4344, i16 4345, i16 4346, i16 4347, i16 4348, i16 4349, i16 4350, i16 4351>, ptr %i.dr, align 4, !tbaa !34
  br label %vector.body127

.preheader35.i60:                                 ; preds = %.preheader35.i60, %.preheader35.i60.preheader
  %indvars.iv47.i61 = phi i64 [ 0, %.preheader35.i60.preheader ], [ %indvars.iv.next48.i63.3, %.preheader35.i60 ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i50, i64 %indvars.iv47.i61 ; 2 uses
  store i64 0, ptr %i.ds, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i62, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i50, i64 %indvars.iv47.i61 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %i.du, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i62.1 = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i62.1, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i50, i64 %indvars.iv47.i61 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store i64 0, ptr %i.dw, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i62.2 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i62.2, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i50, i64 %indvars.iv47.i61 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store i64 0, ptr %i.dy, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx.i62.3 = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  store i64 4060020736, ptr %.sroa.5.0..sroa_idx.i62.3, align 8, !tbaa !31
  %indvars.iv.next48.i63.3 = add nuw nsw i64 %indvars.iv47.i61, 4 ; 2 uses
  %exitcond50.not.i64.3 = icmp eq i64 %indvars.iv.next48.i63.3, 1024
  br i1 %exitcond50.not.i64.3, label %vector.body119, label %.preheader35.i60, !llvm.loop !35

vector.body127:                                   ; preds = %vector.body127, %vector.body119
  %index128 = phi i64 [ 0, %vector.body119 ], [ %index.next131.1, %vector.body127 ] ; 3 uses
  %vec.ind129 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.body119 ], [ %vec.ind.next132.1, %vector.body127 ] ; 5 uses
  %step.add130 = add <8 x i16> %vec.ind129, splat (i16 8)
  %i.dz = and <8 x i16> %vec.ind129, splat (i16 255)
  %i.ea = and <8 x i16> %step.add130, splat (i16 255)
  %i.eb = or disjoint <8 x i16> %i.dz, splat (i16 4096)
  %i.ec = or disjoint <8 x i16> %i.ea, splat (i16 4096)
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index128 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <8 x i16> %i.eb, ptr %i.ed, align 2, !tbaa !34
  store <8 x i16> %i.ec, ptr %i.ee, align 2, !tbaa !34
  %vec.ind.next132 = add <8 x i16> %vec.ind129, splat (i16 16)
  %step.add130.1 = add <8 x i16> %vec.ind129, splat (i16 24)
  %i.ef = and <8 x i16> %vec.ind.next132, splat (i16 255)
  %i.eg = and <8 x i16> %step.add130.1, splat (i16 255)
  %i.eh = or disjoint <8 x i16> %i.ef, splat (i16 4096)
  %i.ei = or disjoint <8 x i16> %i.eg, splat (i16 4096)
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index128 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store <8 x i16> %i.eh, ptr %i.ek, align 2, !tbaa !34
  store <8 x i16> %i.ei, ptr %i.el, align 2, !tbaa !34
  %index.next131.1 = add nuw nsw i64 %index128, 32 ; 2 uses
  %vec.ind.next132.1 = add <8 x i16> %vec.ind129, splat (i16 32)
  %i.em = icmp eq i64 %index.next131.1, 65536
  br i1 %i.em, label %middle.block133, label %vector.body127, !llvm.loop !39

middle.block133:                                  ; preds = %vector.body127
  %i.en = zext i1 %3 to i8                        ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bv, i64 156168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.eo, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 %i.en, ptr %i.f, align 2, !tbaa !30
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %middle.block133
  store i16 0, ptr %i.e, align 4, !tbaa !29
  br label %bb.h

bb.e:                                             ; preds = %middle.block133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40 ; 2 uses
  %i.er = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %.not86 = icmp eq ptr %i.eq, %i.er
  br i1 %.not86, label %.lr.ph105.preheader, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.e
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 3
  br label %.lr.ph84

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %.outer
  %i.ew = phi i64 [ %i.fq, %.outer ], [ 256, %.lr.ph105.preheader ]
  %.041.ph109 = phi i32 [ %i.fn, %.outer ], [ 32768, %.lr.ph105.preheader ]
  %storemerge88108 = phi i16 [ %i.fp, %.outer ], [ 256, %.lr.ph105.preheader ]
  br label %bb.g

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %._crit_edge
  %.04482 = phi i64 [ %i.fj, %._crit_edge ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.04482
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !45 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04482
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !31 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa
  %.not87 = icmp eq i64 %i.fa, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph84, %.lr.ph
  %.04381 = phi ptr [ %i.fc, %.lr.ph ], [ %i.ey, %.lr.ph84 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.04381, i64 1 ; 2 uses
  %i.fd = load i8, ptr %.04381, align 1, !tbaa !10
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fe ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !34
  %i.fh = add i16 %i.fg, 1
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !34
  %i.fi = icmp ult ptr %i.fc, %i.fb
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph84
  %i.fj = add nuw i64 %.04482, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %i.ev
  br i1 %exitcond.not, label %.lr.ph105.preheader, label %.lr.ph84, !llvm.loop !48

.lr.ph105.preheader:                              ; preds = %._crit_edge, %bb.e
  br label %.lr.ph105

bb.f:                                             ; preds = %bb.g
  %.not = icmp eq i64 %i.fk, 0
  br i1 %.not, label %.outer._crit_edge, label %bb.g, !llvm.loop !49

bb.g:                                             ; preds = %.lr.ph105, %bb.f
  %indvars.iv104 = phi i64 [ %i.ew, %.lr.ph105 ], [ %i.fk, %bb.f ]
  %i.fk = add nsw i64 %indvars.iv104, -1          ; 5 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !34
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %i.fo = icmp samesign ult i32 %.041.ph109, %i.fn
  br i1 %i.fo, label %bb.f, label %.outer, !llvm.loop !49

.outer:                                           ; preds = %bb.g
  %i.fp = trunc i64 %i.fk to i16                  ; 2 uses
  %i.fq = and i64 %i.fk, 4294967295               ; 2 uses
  %.not103 = icmp eq i64 %i.fq, 0
  br i1 %.not103, label %.outer._crit_edge, label %.lr.ph105, !llvm.loop !49

.outer._crit_edge:                                ; preds = %.outer, %bb.f
  %storemerge88.lcssa = phi i16 [ %storemerge88108, %bb.f ], [ %i.fp, %.outer ]
  store i16 %storemerge88.lcssa, ptr %i.e, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.h

bb.h:                                             ; preds = %.outer._crit_edge, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 132096
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ap, %bb.h
  %storemerge = phi i64 [ 8, %bb.h ], [ %i.nc, %bb.ap ] ; 6 uses
  %.045 = phi i32 [ -32768, %bb.h ], [ %.1, %bb.ap ] ; 2 uses
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(394240) %0, i8 0, i64 394240, i1 false)
  %i.fw = load ptr, ptr %i.fr, align 8, !tbaa !40 ; 2 uses
  %i.fx = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %.not96.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not96.i, label %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.fy = icmp samesign ult i64 %storemerge, 128  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.fz = phi ptr [ %i.fw, %.lr.ph.i ], [ %i.mt, %.loopexit.i ] ; 2 uses
  %i.ga = phi ptr [ %i.fx, %.lr.ph.i ], [ %i.mu, %.loopexit.i ] ; 3 uses
  %.095.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 3 uses
  %.06694.i = phi i64 [ 0, %.lr.ph.i ], [ %i.mv, %.loopexit.i ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.06694.i
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !45 ; 5 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06694.i
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !31 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ge ; 3 uses
  br i1 %i.fy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gg = mul i64 %.06694.i, 2971215073
  %i.gh = add i64 %i.gg, 2971215073
  %i.gi = mul i64 %i.gh, %storemerge              ; 2 uses
  %i.gj = lshr i64 %i.gi, 15
  %i.gk = xor i64 %i.gj, %i.gi
  %i.gl = and i64 %i.gk, 127
  %i.gm = icmp samesign uge i64 %i.gl, %storemerge
  %.not.i = icmp eq i64 %i.ge, 0
  %or.cond.i = select i1 %i.gm, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.loopexit.i, label %bb.m

bb.l:                                             ; preds = %bb.j
  %.not.old.i = icmp eq i64 %i.ge, 0
  br i1 %.not.old.i, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.gn = ptrtoint ptr %i.gf to i64
  store i64 0, ptr %5, align 8, !tbaa !10
  %i.go = and i64 %i.ge, 4294967288
  %.not.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i, label %bb.n, label %_ZN7libfsst6SymbolC2EPKhS2_.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.gp = and i64 %i.ge, 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(16) %5, ptr align 1 %i.gc, i64 %i.gp, i1 false)
  %i.gq = mul i64 %i.ge, 268435448
  %i.gr = add i64 %i.gq, 33554496
  %i.gs = and i64 %i.gr, 4294967288
  br label %_ZN7libfsst6SymbolC2EPKhS2_.exit.i.i

_ZN7libfsst6SymbolC2EPKhS2_.exit.i.i:             ; preds = %bb.n, %bb.m
  %.0..0..in.i.i = phi ptr [ %5, %bb.n ], [ %i.gc, %bb.m ]
  %.0.i.i.i.i = phi i64 [ %i.gs, %bb.n ], [ 2181038080, %bb.m ] ; 2 uses
  %.0..0..i.i = load i64, ptr %.0..0..in.i.i, align 1 ; 4 uses
  %i.gt = and i64 %.0..0..i.i, 16777215
  %i.gu = mul nuw nsw i64 %i.gt, 2971215073       ; 2 uses
  %i.gv = lshr i64 %i.gu, 15
  %i.gw = xor i64 %i.gv, %i.gu
  %i.gx = and i64 %i.gw, 1023
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !7  ; 3 uses
  %.not.i3.i.i = icmp ugt i64 %i.ha, %.0.i.i.i.i
  br i1 %.not.i3.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN7libfsst6SymbolC2EPKhS2_.exit.i.i
  %i.hb = load i64, ptr %i.gy, align 8, !tbaa !10
  %i.hc = and i64 %i.ha, 255
  %i.hd = lshr i64 -1, %i.hc
  %i.he = and i64 %i.hd, %.0..0..i.i
  %i.hf = icmp eq i64 %i.hb, %i.he
  br i1 %i.hf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hg = lshr i64 %i.ha, 16
  %i.hh = trunc nuw i64 %i.hg to i16
  %i.hi = and i16 %i.hh, 511
  br label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i

bb.q:                                             ; preds = %bb.o, %_ZN7libfsst6SymbolC2EPKhS2_.exit.i.i
  %.not13.i.i.i = icmp samesign ult i64 %.0.i.i.i.i, 536870912
  br i1 %.not13.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hj = and i64 %.0..0..i.i, 65535
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !34
  %i.hm = and i16 %i.hl, 511                      ; 2 uses
  %i.hn = icmp samesign ult i16 %i.hm, 256
  br i1 %i.hn, label %bb.s, label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ho = and i64 %.0..0..i.i, 255
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !34
  %i.hr = and i16 %i.hq, 511
  br label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i

_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.1.i.i.i = phi i16 [ %i.hi, %bb.p ], [ %i.hr, %bb.s ], [ %i.hm, %bb.r ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.hs = zext nneg i16 %.1.i.i.i to i64
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !7
  %i.hw = lshr i64 %i.hv, 28                      ; 2 uses
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = and i64 %i.hw, 4294967295
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hy
  %i.ia = icmp samesign ult i16 %.1.i.i.i, 256
  %.neg.i = select i1 %i.ia, i32 -2, i32 -1
  %i.ib = add i32 %.neg.i, %.095.i
  %i.ic = add i32 %i.ib, %i.hx
  %i.id = getelementptr inbounds i8, ptr %i.gf, i64 -7
  br label %_ZN7libfsst8Counters9count2IncEjj.exit91.i

_ZN7libfsst8Counters9count2IncEjj.exit91.i:       ; preds = %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i
  %.071.i = phi ptr [ %i.hz, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i ], [ %i.lk, %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge ] ; 9 uses
  %.070.i = phi ptr [ %i.gc, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i ], [ %.071.i, %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge ]
  %.067.i = phi i16 [ %.1.i.i.i, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i ], [ %.169.i, %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge ]
  %.1.i = phi i32 [ %i.ic, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit.i ], [ %i.lo, %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge ] ; 2 uses
  %i.ie = zext nneg i16 %.067.i to i64            ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !10  ; 2 uses
  %i.ih = add i8 %i.ig, 1
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.ig, 0
  br i1 %.not.i.i, label %bb.t, label %_ZN7libfsst8Counters9count1IncEj.exit.i

bb.t:                                             ; preds = %_ZN7libfsst8Counters9count2IncEjj.exit91.i
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !10
  %i.ik = add i8 %i.ij, 1
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !10
  br label %_ZN7libfsst8Counters9count1IncEj.exit.i

_ZN7libfsst8Counters9count1IncEj.exit.i:          ; preds = %bb.t, %_ZN7libfsst8Counters9count2IncEjj.exit91.i
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %i.ie
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !7
  %i.io = and i64 %i.in, 1152921504338411520
  %.not76.i = icmp eq i64 %i.io, 268435456
  br i1 %.not76.i, label %_ZN7libfsst8Counters9count1IncEj.exit79.i, label %bb.u

bb.u:                                             ; preds = %_ZN7libfsst8Counters9count1IncEj.exit.i
  %i.ip = load i8, ptr %.070.i, align 1, !tbaa !10
  %i.iq = zext i8 %i.ip to i64                    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.iq ; 2 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !10  ; 2 uses
  %i.it = add i8 %i.is, 1
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !10
  %.not.i78.i = icmp eq i8 %i.is, 0
  br i1 %.not.i78.i, label %bb.v, label %_ZN7libfsst8Counters9count1IncEj.exit79.i

bb.v:                                             ; preds = %bb.u
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !10
  %i.iw = add i8 %i.iv, 1
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !10
  br label %_ZN7libfsst8Counters9count1IncEj.exit79.i

_ZN7libfsst8Counters9count1IncEj.exit79.i:        ; preds = %bb.v, %bb.u, %_ZN7libfsst8Counters9count1IncEj.exit.i
  %i.ix = icmp eq ptr %.071.i, %i.gf
  br i1 %i.ix, label %.loopexit.loopexit.i, label %bb.w

bb.w:                                             ; preds = %_ZN7libfsst8Counters9count1IncEj.exit79.i
  %i.iy = icmp ult ptr %.071.i, %i.id
  br i1 %i.iy, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %.0.copyload.i.i = load i64, ptr %.071.i, align 1 ; 3 uses
  %i.iz = and i64 %.0.copyload.i.i, 16777215
  %i.ja = mul nuw nsw i64 %i.iz, 2971215073       ; 2 uses
  %i.jb = lshr i64 %i.ja, 15
  %i.jc = xor i64 %i.jb, %i.ja
  %i.jd = and i64 %i.jc, 1023
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %i.jd ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.je, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i74, align 8, !tbaa !31 ; 4 uses
  %i.jf = and i64 %.sroa.4.0.copyload.i, 255
  %i.jg = lshr i64 -1, %i.jf
  %i.jh = and i64 %i.jg, %.0.copyload.i.i         ; 2 uses
  %i.ji = icmp ult i64 %.sroa.4.0.copyload.i, 4060020736
  %i.jj = icmp eq i64 %.sroa.0.0.copyload.i, %i.jh
  %i.jk = and i1 %i.ji, %i.jj
  br i1 %i.jk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.jl = lshr i64 %.sroa.4.0.copyload.i, 16
  %i.jm = trunc nuw i64 %i.jl to i16
  %i.jn = and i16 %i.jm, 511
  %i.jo = lshr i64 %.sroa.4.0.copyload.i, 28
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.jp = and i64 %.0.copyload.i.i, 65535
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !34
  %i.js = and i16 %i.jr, 511                      ; 2 uses
  %i.jt = icmp samesign ugt i16 %i.js, 255
  br i1 %i.jt, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ju = and i64 %i.jh, 255
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !34
  %i.jx = and i16 %i.jw, 511
  br label %bb.ai

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.jy = ptrtoint ptr %.071.i to i64
  %i.jz = sub i64 %i.gn, %i.jy                    ; 3 uses
  store i64 0, ptr %4, align 8, !tbaa !10
  %i.ka = and i64 %i.jz, 4294967288
  %.not.i.i80.i = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i80.i, label %bb.ac, label %_ZN7libfsst6SymbolC2EPKhS2_.exit.i81.i

bb.ac:                                            ; preds = %bb.ab
  %i.kb = and i64 %i.jz, 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(16) %4, ptr align 1 %.071.i, i64 %i.kb, i1 false)
  %i.kc = mul i64 %i.jz, 268435448
  %i.kd = add i64 %i.kc, 33554496
  %i.ke = and i64 %i.kd, 4294967288
  br label %_ZN7libfsst6SymbolC2EPKhS2_.exit.i81.i

_ZN7libfsst6SymbolC2EPKhS2_.exit.i81.i:           ; preds = %bb.ac, %bb.ab
  %.0..0..in.i82.i = phi ptr [ %4, %bb.ac ], [ %.071.i, %bb.ab ]
  %.0.i.i.i83.i = phi i64 [ %i.ke, %bb.ac ], [ 2181038080, %bb.ab ] ; 2 uses
  %.0..0..i84.i = load i64, ptr %.0..0..in.i82.i, align 1 ; 4 uses
  %i.kf = and i64 %.0..0..i84.i, 16777215
  %i.kg = mul nuw nsw i64 %i.kf, 2971215073       ; 2 uses
  %i.kh = lshr i64 %i.kg, 15
  %i.ki = xor i64 %i.kh, %i.kg
  %i.kj = and i64 %i.ki, 1023
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %.ptr30.i, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !7  ; 3 uses
  %.not.i3.i85.i = icmp ugt i64 %i.km, %.0.i.i.i83.i
  br i1 %.not.i3.i85.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %_ZN7libfsst6SymbolC2EPKhS2_.exit.i81.i
  %i.kn = load i64, ptr %i.kk, align 8, !tbaa !10
  %i.ko = and i64 %i.km, 255
  %i.kp = lshr i64 -1, %i.ko
  %i.kq = and i64 %i.kp, %.0..0..i84.i
  %i.kr = icmp eq i64 %i.kn, %i.kq
  br i1 %i.kr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ks = lshr i64 %i.km, 16
  %i.kt = trunc nuw i64 %i.ks to i16
  %i.ku = and i16 %i.kt, 511
  br label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i

bb.af:                                            ; preds = %bb.ad, %_ZN7libfsst6SymbolC2EPKhS2_.exit.i81.i
  %.not13.i.i86.i = icmp samesign ult i64 %.0.i.i.i83.i, 536870912
  br i1 %.not13.i.i86.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kv = and i64 %.0..0..i84.i, 65535
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !34
  %i.ky = and i16 %i.kx, 511                      ; 2 uses
  %i.kz = icmp samesign ult i16 %i.ky, 256
  br i1 %i.kz, label %bb.ah, label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.la = and i64 %.0..0..i84.i, 255
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !34
  %i.ld = and i16 %i.lc, 511
  br label %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i

_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %.1.i.i87.i = phi i16 [ %i.ku, %bb.ae ], [ %i.ld, %bb.ah ], [ %i.ky, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.le = zext nneg i16 %.1.i.i87.i to i64
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %.ptr25.i, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !7
  %i.li = lshr i64 %i.lh, 28
  %i.lj = and i64 %i.li, 4294967295
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i, %bb.aa, %bb.z, %bb.y
  %.sink.i = phi i64 [ %i.jo, %bb.y ], [ 1, %bb.aa ], [ %i.lj, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i ], [ 2, %bb.z ] ; 3 uses
  %.169.i = phi i16 [ %i.jn, %bb.y ], [ %i.jx, %bb.aa ], [ %.1.i.i87.i, %_ZNK7libfsst11SymbolTable17findLongestSymbolEPKhS2_.exit88.i ], [ %i.js, %bb.z ] ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.071.i, i64 %.sink.i
  %i.ll = trunc nuw i64 %.sink.i to i32
  %i.lm = icmp samesign ult i16 %.169.i, 256
  %.neg77.i = select i1 %i.lm, i32 -2, i32 -1
  %i.ln = add i32 %.1.i, %i.ll
  %i.lo = add i32 %i.ln, %.neg77.i
  br i1 %i.fy, label %bb.aj, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.aj:                                            ; preds = %bb.ai
  %i.lp = getelementptr inbounds nuw [512 x i8], ptr %i.ft, i64 %i.ie ; 2 uses
  %i.lq = zext nneg i16 %.169.i to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lq ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !10  ; 2 uses
  %i.lt = add i8 %i.ls, 1
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !10
  %.not.i89.i = icmp eq i8 %i.ls, 0
  br i1 %.not.i89.i, label %bb.ak, label %_ZN7libfsst8Counters9count2IncEjj.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.lu = shl nuw nsw i16 %.169.i, 2
  %i.lv = and i16 %i.lu, 4
  %i.lw = shl nuw nsw i16 1, %i.lv
  %i.lx = getelementptr inbounds nuw [256 x i8], ptr %i.fu, i64 %i.ie
  %i.ly = lshr i16 %.169.i, 1
  %i.lz = zext nneg i16 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lz ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !10
  %i.mc = trunc nuw nsw i16 %i.lw to i8
  %i.md = add i8 %i.mb, %i.mc
  store i8 %i.md, ptr %i.ma, align 1, !tbaa !10
  br label %_ZN7libfsst8Counters9count2IncEjj.exit.i

_ZN7libfsst8Counters9count2IncEjj.exit.i:         ; preds = %bb.ak, %bb.aj
  %i.me = icmp samesign ugt i64 %.sink.i, 1
  br i1 %i.me, label %bb.al, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.al:                                            ; preds = %_ZN7libfsst8Counters9count2IncEjj.exit.i
  %i.mf = load i8, ptr %.071.i, align 1, !tbaa !10 ; 3 uses
  %i.mg = zext i8 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.mg ; 2 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !10  ; 2 uses
  %i.mj = add i8 %i.mi, 1
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !10
  %.not.i90.i = icmp eq i8 %i.mi, 0
  br i1 %.not.i90.i, label %bb.am, label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

bb.am:                                            ; preds = %bb.al
  %i.mk = shl i8 %i.mf, 2
  %i.ml = and i8 %i.mk, 4
  %i.mm = shl nuw nsw i8 1, %i.ml
  %i.mn = getelementptr inbounds nuw [256 x i8], ptr %i.fu, i64 %i.ie
  %i.mo = lshr i8 %i.mf, 1
  %i.mp = zext nneg i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mp ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !10
  %i.ms = add i8 %i.mr, %i.mm
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !10
  br label %_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge

_ZN7libfsst8Counters9count2IncEjj.exit91.i.backedge: ; preds = %bb.am, %bb.al, %_ZN7libfsst8Counters9count2IncEjj.exit.i, %bb.ai
  br label %_ZN7libfsst8Counters9count2IncEjj.exit91.i, !llvm.loop !50

.loopexit.loopexit.i:                             ; preds = %_ZN7libfsst8Counters9count1IncEj.exit79.i
  %.pre97.i = load ptr, ptr %1, align 8, !tbaa !44
  %.pre = load ptr, ptr %i.fr, align 8, !tbaa !40
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.l, %bb.k
  %i.mt = phi ptr [ %i.fz, %bb.k ], [ %i.fz, %bb.l ], [ %.pre, %.loopexit.loopexit.i ] ; 2 uses
  %i.mu = phi ptr [ %i.ga, %bb.k ], [ %i.ga, %bb.l ], [ %.pre97.i, %.loopexit.loopexit.i ] ; 2 uses
  %.3.i = phi i32 [ %.095.i, %bb.k ], [ %.095.i, %bb.l ], [ %.1.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.mv = add nuw i64 %.06694.i, 1                ; 2 uses
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = ashr exact i64 %i.my, 3
  %i.na = icmp ult i64 %i.mv, %i.mz
  br i1 %i.na, label %bb.j, label %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit", !llvm.loop !51

"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit": ; preds = %.loopexit.i, %bb.i
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %.not47 = icmp slt i32 %.0.lcssa.i, %.045
  br i1 %.not47, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %6, ptr noundef nonnull align 1 dereferenceable(394240) %0, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.fv, ptr noundef nonnull align 1 dereferenceable(512) %i.fs, i64 512, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(156186) %i.bv, ptr noundef nonnull align 8 dereferenceable(156186) %i.c, i64 156186, i1 false), !tbaa.struct !52
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit"
  %.1 = phi i32 [ %.0.lcssa.i, %bb.an ], [ %.045, %"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_1clEPNS_11SymbolTableES1_.exit" ]
  %i.nb = icmp samesign ugt i64 %storemerge, 127
  br i1 %i.nb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nonnull %i.a, ptr noundef %i.c, ptr noundef nonnull align 1 dereferenceable(394240) %0)
  %i.nc = add nuw nsw i64 %storemerge, 30
  br label %bb.i, !llvm.loop !54

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(394240) %0, ptr noundef nonnull align 16 dereferenceable(512) %6, i64 512, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.fs, ptr noundef nonnull align 16 dereferenceable(512) %i.fv, i64 512, i1 false)
  call fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nonnull %i.a, ptr noundef %i.bv, ptr noundef nonnull align 1 dereferenceable(394240) %0)
  tail call void @_ZN7libfsst11SymbolTable8finalizeEh(ptr noundef nonnull align 8 dereferenceable(156186) %i.bv, i8 noundef zeroext %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret ptr %i.bv
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_"(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(394240) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156160 ; 8 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !64
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156164
  %i.i = load i16, ptr %i.h, align 4, !tbaa !29
  %i.j = zext i16 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.j, %bb.b ], [ 256, %bb.a ]  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 -1, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 -1, ptr %i.n, align 1, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 131584 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156164 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 132096
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread
  %i.s = phi i64 [ 0, %bb.c ], [ %i.cy, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread ]
  %storemerge46 = phi i32 [ 0, %bb.c ], [ %i.cx, %_ZN7libfsst8Counters13count1GetNextERj.exit.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %.0.copyload.i.i = load i64, ptr %i.t, align 1  ; 3 uses
  %.not.i = icmp eq i64 %.0.copyload.i.i, 0
  %i.u = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.copyload.i.i, i1 true)
  %i.v = lshr i64 %i.u, 3
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = select i1 %.not.i, i32 7, i32 %i.w       ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %.0.copyload.i.i, %i.z
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %i.ac = add i32 %i.x, %storemerge46             ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 512
  %i.ae = icmp ne i64 %i.ab, 0
  %or.cond.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond.i, label %_ZN7libfsst8Counters13count1GetNextERj.exit, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread

_ZN7libfsst8Counters13count1GetNextERj.exit:      ; preds = %bb.d
  %i.af = zext nneg i32 %i.ac to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10  ; 2 uses
  %.not19.i = icmp ne i8 %i.ah, 0
  %i.ai = sext i1 %.not19.i to i64
  %spec.select.i = add nsw i64 %i.ab, %i.ai
  %i.aj = shl nuw nsw i64 %spec.select.i, 8
  %i.ak = zext i8 %i.ah to i64
  %i.al = or disjoint i64 %i.aj, %i.ak            ; 2 uses
  %.not45 = icmp eq i64 %i.al, 0
  br i1 %.not45, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN7libfsst8Counters13count1GetNextERj.exit
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.sroa.016.0.copyload = load i64, ptr %i.am, align 8, !tbaa !10 ; 3 uses
  %.sroa.016.sroa.0.0.extract.trunc = trunc i64 %.sroa.016.0.copyload to i8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %i.an = lshr i64 %.sroa.7.0.copyload, 28        ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 1
  %i.aq = select i1 %i.ap, i64 3, i64 0
  %i.ar = shl nuw nsw i64 %i.al, %i.aq
  %.val52.val = load i64, ptr %.0.val, align 8, !tbaa !31
  invoke fastcc void @"_ZZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_ENKUlRSt13unordered_setINS_7QSymbolESt4hashISD_ESt8equal_toISD_ESaISD_EENS_6SymbolEmE_clESK_SL_m"(i64 %.val52.val, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 %.sroa.016.0.copyload, i64 %.sroa.7.0.copyload, i64 noundef %i.ar)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = load i64, ptr %.0.val, align 8, !tbaa !31
  %i.at = icmp ugt i64 %i.as, 127
  %i.au = icmp eq i32 %i.ao, 8
  %or.cond = or i1 %i.au, %i.at
  br i1 %or.cond, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sext i8 %.sroa.016.sroa.0.0.extract.trunc to i32
  %i.aw = load i16, ptr %i.p, align 4, !tbaa !29
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZN7libfsst8Counters13count1GetNextERj.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.az = getelementptr inbounds nuw [256 x i8], ptr %i.q, i64 %i.af
  %i.ba = getelementptr inbounds nuw [512 x i8], ptr %i.r, i64 %i.af
  %i.bb = shl nuw nsw i64 %i.an, 3
  %i.bc = and i64 %i.bb, 4294967288
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZNSt14priority_queueIN7libfsst7QSymbolESt6vectorIS1_SaIS1_EEZZNS0_16buildSymbolTableERNS0_8CountersES2_IPKhSaIS8_EEPKmbENK3$_2clEPNS0_11SymbolTableES6_EUlRKS1_SH_E_ED2Ev.exit94"

bb.i:                                             ; preds = %.preheader, %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread
  %storemerge4645 = phi i32 [ 0, %.preheader ], [ %i.cr, %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread ] ; 4 uses
  %i.be = lshr i32 %storemerge4645, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf
  %.0.copyload.i.i58 = load i64, ptr %i.bg, align 1
  %i.bh = shl i32 %storemerge4645, 2
  %i.bi = and i32 %i.bh, 4
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %.0.copyload.i.i58, %i.bj      ; 3 uses
  %.not.i59 = icmp eq i64 %i.bk, 0
  br i1 %.not.i59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bk, i1 true)
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bo = and i32 %storemerge4645, 1
  %i.bp = xor i32 %i.bo, 15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = phi i32 [ %i.bn, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %i.br = shl nuw nsw i32 %i.bq, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = lshr i64 %i.bk, %i.bs
  %i.bu = and i64 %i.bt, 15                       ; 2 uses
  %i.bv = add i32 %i.bq, %storemerge4645          ; 3 uses
  %i.bw = icmp ult i32 %i.bv, 512
  %i.bx = icmp ne i64 %i.bu, 0
  %or.cond.i60 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i60, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread

_ZN7libfsst8Counters13count2GetNextEjRj.exit:     ; preds = %bb.l
  %i.by = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10  ; 2 uses
  %.not24.i = icmp ne i8 %i.ca, 0
  %i.cb = sext i1 %.not24.i to i64
  %spec.select.i62 = add nsw i64 %i.bu, %i.cb
  %i.cc = shl nuw nsw i64 %spec.select.i62, 8
  %i.cd = zext i8 %i.ca to i64
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  %.not47 = icmp eq i64 %i.ce, 0
  br i1 %.not47, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN7libfsst8Counters13count2GetNextEjRj.exit
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.by ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.cf, align 8, !tbaa !10 ; 2 uses
  %.sroa.012.sroa.0.0.extract.trunc = trunc i64 %.sroa.012.0.copyload to i8
  %i.cg = sext i8 %.sroa.012.sroa.0.0.extract.trunc to i32
  %i.ch = load i16, ptr %i.p, align 4, !tbaa !29
  %i.ci = zext i16 %i.ch to i32
  %.not48 = icmp eq i32 %i.cg, %i.ci
  br i1 %.not48, label %_ZN7libfsst8Counters13count2GetNextEjRj.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = shl i64 %.sroa.012.0.copyload, %i.bc
  %i.ck = or i64 %i.cj, %.sroa.016.0.copyload
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.613.0.copyload = load i64, ptr %.sroa.613.0..sroa_idx, align 8, !tbaa !31
  %i.cl = lshr i64 %.sroa.613.0.copyload, 28
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.cm, %i.ao
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cn, i32 8)
  %reass.sub.i = mul nuw nsw i32 %spec.store.select.i, 268435448
end_hunk_1
