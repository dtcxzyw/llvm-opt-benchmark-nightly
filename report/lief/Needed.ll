inline.NumInlined: 257
inline.NumDeleted: 194
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::locale::id" = type { i64 }
%"class.std::unique_ptr.38" = type { %"struct.std::__uniq_ptr_data.39" }
%"struct.std::__uniq_ptr_data.39" = type { %"class.std::__uniq_ptr_impl.40" }
%"class.std::__uniq_ptr_impl.40" = type { %"class.std::tuple.41" }
%"class.std::tuple.41" = type { %"struct.std::_Tuple_impl.42" }
%"struct.std::_Tuple_impl.42" = type { %"struct.std::_Head_base.45" }
%"struct.std::_Head_base.45" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v12::formatter" = type { %"struct.fmt::v12::range_formatter" }
%"struct.fmt::v12::range_formatter" = type <{ [8 x i8], %"class.fmt::v12::basic_string_view", %"class.fmt::v12::basic_string_view", %"class.fmt::v12::basic_string_view", i8, [7 x i8] }>
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::context" = type { %"class.fmt::v12::basic_appender", %"class.fmt::v12::basic_format_args", %"class.fmt::v12::locale_ref" }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon.439 }
%union.anon.439 = type { ptr }
%"class.fmt::v12::locale_ref" = type { ptr }
%"class.fmt::v12::basic_memory_buffer.442" = type <{ %"class.fmt::v12::detail::buffer", [500 x i8], [4 x i8] }>
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }

$_ZN3fmt3v1212format_facetISt6localeE2idE = comdat any

$_ZN3fmt3v129to_stringISt6vectorIN4LIEF3ELF6Needed4NEEDESaIS6_EETnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asISA_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_ = comdat any

$_ZN4LIEF3ELF6NeededD2Ev = comdat any

$_ZN4LIEF3ELF6NeededD0Ev = comdat any

$_ZN3fmt3v1211assert_failEPKciS2_ = comdat any

$_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm = comdat any

$_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_ = comdat any

$_ZNK3fmt3v1215range_formatterIN4LIEF3ELF6Needed4NEEDEcvE6formatIRKSt6vectorIS5_SaIS5_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_ = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@.str = private unnamed_addr constant [23 x i8] c"INDIRECT_EXTERN_ACCESS\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Needed: \00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN4LIEF3ELF6NeededE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4LIEF3ELF6NeededE, ptr @_ZNK4LIEF3ELF6Needed4dumpERSo, ptr @_ZN4LIEF3ELF6NeededD2Ev, ptr @_ZN4LIEF3ELF6NeededD0Ev] }, align 8
@_ZTIN4LIEF3ELF6NeededE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF3ELF6NeededE, ptr @_ZTIN4LIEF3ELF15NoteGnuProperty8PropertyE }, align 8
@_ZTSN4LIEF3ELF6NeededE = constant [19 x i8] c"N4LIEF3ELF6NeededE\00", align 1
@_ZTIN4LIEF3ELF15NoteGnuProperty8PropertyE = external constant ptr
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/lief/LIEF/build/_deps/lief_spdlog_project-src/include/spdlog/fmt/bundled/format.h\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"%s:%d: assertion failed: %s\00", align 1
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE = linkonce_odr hidden constant [2 x i8] c", ", comdat, align 1
@_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE = linkonce_odr hidden constant [1 x i8] c"[", comdat, align 1
@_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE = linkonce_odr hidden constant [1 x i8] c"]", comdat, align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF6Needed6createERNS_12BinaryStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.38") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.d = load ptr, ptr %1, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.c, i64 noundef 4, i64 noundef 0) #18, !inline_history !16
  %i.h = and i64 %i.g, 4294967296
  %.not.i.i = icmp eq i64 %i.h, 0
  store i64 %i.c, ptr %i.b, align 8, !tbaa !8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit16

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !17, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #18
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.l = phi i64 [ %i.c, %bb.b ], [ %.pre.i, %bb.c ]
  %i.m = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.n = add i64 %i.l, 4
  store i64 %i.n, ptr %i.b, align 8, !tbaa !8
  %.not4149 = icmp eq i32 %i.m, 0
  br i1 %.not4149, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit16, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit
  %.045 = phi i32 [ %3, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ], [ %i.m, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 4 uses
  %.sroa.022.044 = phi ptr [ %.sroa.022.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 10 uses
  %.sroa.10.043 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 7 uses
  %.sroa.17.042 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ] ; 3 uses
  %2 = sub i32 0, %.045
  %i.o = and i32 %.045, %2                        ; 3 uses
  %3 = xor i32 %i.o, %.045
  %cond = icmp eq i32 %i.o, 1
  %.not.i.i6 = icmp eq ptr %.sroa.10.043, %.sroa.17.042 ; 2 uses
  br i1 %cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.lr.ph
  br i1 %.not.i.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %.sroa.10.043, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.10.043, i64 4
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %.sroa.10.043 to i64
  %i.r = ptrtoint ptr %.sroa.022.044 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
  unreachable

_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.u = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 2305843009213693951)
  %i.y = select i1 %i.w, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #20 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i32 1, ptr %i.ab, align 4, !tbaa !20
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %.sroa.022.044, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.022.044, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.044, i64 noundef %i.s) #21
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %.lr.ph
  br i1 %.not.i.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.10.043, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.10.043, i64 4
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = ptrtoint ptr %.sroa.10.043 to i64
  %i.ah = ptrtoint ptr %.sroa.022.044 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 6 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775804
  br i1 %i.aj, label %bb.m, label %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i8

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #19
  unreachable

_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i8: ; preds = %bb.l
  %i.ak = ashr exact i64 %i.ai, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i9 = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i9, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 2305843009213693951)
  %i.ao = select i1 %i.am, i64 2305843009213693951, i64 %i.an ; 3 uses
  %.not.i.i.i.i10 = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i10)
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #20 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !20
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.n, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11

bb.n:                                             ; preds = %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %.sroa.022.044, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11: ; preds = %bb.n, %_ZNKSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.not.i17.i.i.i12 = icmp eq ptr %.sroa.022.044, null
  br i1 %.not.i17.i.i.i12, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.044, i64 noundef %i.ai) #21
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13: ; preds = %bb.o, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i11
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13, %bb.k, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.17.1 = phi ptr [ %.sroa.17.042, %bb.e ], [ %i.ae, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.au, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %.sroa.17.042, %bb.k ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.p, %bb.e ], [ %i.ad, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.at, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %i.af, %bb.k ] ; 2 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.044, %bb.e ], [ %i.aa, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.aq, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i13 ], [ %.sroa.022.044, %bb.k ] ; 2 uses
  %.not = icmp eq i32 %i.o, %.045
  br i1 %.not, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit16, label %.lr.ph, !llvm.loop !22

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit16: ; preds = %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %.sroa.17.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.17.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.10.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.10.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.022.0.lcssa = phi ptr [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit ], [ null, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread ], [ %.sroa.022.1, %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EE9push_backEOS3_.exit ]
  %i.av = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 8, ptr %i.aw, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4LIEF3ELF6NeededE, i64 16), ptr %i.av, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sroa.022.0.lcssa, ptr %i.ax, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %.sroa.10.0.lcssa, ptr %i.ay, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %.sroa.17.0.lcssa, ptr %i.az, align 8, !tbaa !31
  store ptr %i.av, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN4LIEF3ELF9to_stringENS0_6Needed4NEEDE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %switch.selectcmp1 = icmp eq i32 %0, 1
  %switch.select2 = select i1 %switch.selectcmp1, ptr @.str, ptr @.str.1
  ret ptr %switch.select2
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF3ELF6Needed4dumpERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 8) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN3fmt3v129to_stringISt6vectorIN4LIEF3ELF6Needed4NEEDESaIS6_EETnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asISA_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = load ptr, ptr %2, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.c, i64 noundef %i.e) #18 ; 0 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v129to_stringISt6vectorIN4LIEF3ELF6Needed4NEEDESaIS6_EETnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asISA_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.fmt::v12::formatter", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.442", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !42
  store i64 500, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.l, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %4, ptr %3, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = call ptr @_ZNK3fmt3v1215range_formatterIN4LIEF3ELF6Needed4NEEDEcvE6formatIRKSt6vectorIS5_SaIS5_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.o = load ptr, ptr %4, align 8, !tbaa !42     ; 3 uses
  %i.p = load i64, ptr %i.d, align 8, !tbaa !50   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !51
  %i.r = icmp eq ptr %i.o, null
  %i.s = icmp ne i64 %i.p, 0
  %or.cond.i = and i1 %i.r, %i.s
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.107) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.p, ptr %i.a, align 8, !tbaa !52
  %i.t = icmp ugt i64 %i.p, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !34
  %i.v = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.v, ptr %i.q, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.o, align 1, !tbaa !39
  store i8 %i.x, ptr %i.w, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.y = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !38
  %i.aa = load ptr, ptr %0, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ac = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  call void @free(ptr noundef %i.ac) #18
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF6NeededD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4LIEF3ELF6NeededE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF3ELF6Needed4NEEDESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF6NeededD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4LIEF3ELF6NeededE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF3ELF6NeededD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21, !inline_history !53
  br label %_ZN4LIEF3ELF6NeededD2Ev.exit

end_hunk_0
