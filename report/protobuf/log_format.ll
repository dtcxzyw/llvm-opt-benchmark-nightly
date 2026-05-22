inline.NumInlined: 161
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.absl::lts_20250512::Duration" = type { %"class.absl::lts_20250512::Duration::HiRep", i32 }
%"class.absl::lts_20250512::Duration::HiRep" = type { i32, i32 }
%"class.absl::lts_20250512::str_format_internal::FormatSpecTemplate.0" = type { %"class.absl::lts_20250512::UntypedFormatSpec" }
%"class.absl::lts_20250512::UntypedFormatSpec" = type { %"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl" }
%"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl" = type { ptr, i64 }
%"struct.absl::lts_20250512::TimeZone::CivilInfo" = type { %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", %"class.absl::lts_20250512::Duration", i32, i8, ptr }
%"class.absl::lts_20250512::time_internal::cctz::detail::civil_time" = type { %"struct.absl::lts_20250512::time_internal::cctz::detail::fields" }
%"struct.absl::lts_20250512::time_internal::cctz::detail::fields" = type <{ i64, i8, i8, i8, i8, i8, [3 x i8] }>

$_ZN4absl12lts_202505128SNPrintFIJciiiEEEiPcmRKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKS5_ = comdat any

@.str = private unnamed_addr constant [47 x i8] c"%c%02d%02d %02d:%02d:%02d.%06d %7d %s:%d] %s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"RAW: \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%c0000 00:00:%02d.%06d %7d \00", align 1
@switch.table._ZN4absl12lts_2025051212log_internal15FormatLogPrefixENS0_11LogSeverityENS0_4TimeEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatERNS0_4SpanIcEE.1 = private unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 8

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal16FormatLogMessageB5cxx11ENS0_11LogSeverityENS0_13time_internal4cctz6detail10civil_timeINS3_10second_tagEEENS0_8DurationEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatESD_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 noundef %6, ptr noundef byval(%"class.std::basic_string_view") align 8 %7, i32 noundef %8, i32 noundef %9, ptr noundef byval(%"class.std::basic_string_view") align 8 %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca [12 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 27 uses
  %12 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 5 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %switch.lookup, label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2025051212log_internal15FormatLogPrefixENS0_11LogSeverityENS0_4TimeEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatERNS0_4SpanIcEE.1, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit

_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %bb.a ]
  %i.c = icmp ult i64 %4, 8796093022208
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit
  %i.d = mul nuw nsw i64 %4, 1000000
  %i.e = udiv i32 %5, 4000
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.d, %i.f
  br label %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 %4, ptr %12, align 8
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %5, ptr %.sroa.212.0..sroa_idx.i.i, align 8
  %i.h = call noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %4, i32 %5, i64 0, i32 4000, ptr noundef nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit

_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit: ; preds = %bb.b, %bb.c
  %.0.i8 = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = shl i64 %3, 24
  %i.j = ashr i64 %i.i, 56
  %i.k = shl i64 %3, 32
  %i.l = ashr i64 %i.k, 56
  %i.m = shl i64 %3, 40
  %i.n = ashr i64 %i.m, 56
  %i.o = shl i64 %3, 48
  %i.p = ashr i64 %i.o, 56
  %sext = shl i64 %3, 56
  %i.q = ashr exact i64 %sext, 56
  %i.r = icmp eq i32 %9, 1
  %i.s = select i1 %i.r, ptr @.str.1, ptr @.str.2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5, !noalias !7
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.0.i, align 1, !noalias !7
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.t = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.t, ptr %11, align 8, !tbaa !10, !noalias !7
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.u, align 8, !tbaa !11, !noalias !7
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.0.insert.ext.i.i.i16.i = and i64 %i.q, 4294967295
  %i.w = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i16.i to ptr
  store ptr %i.w, ptr %i.v, align 8, !tbaa !10, !noalias !7
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.x, align 8, !tbaa !11, !noalias !7
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.sroa.0.0.insert.ext.i.i.i18.i = and i64 %i.p, 4294967295
  %i.z = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i18.i to ptr
  store ptr %i.z, ptr %i.y, align 8, !tbaa !10, !noalias !7
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aa, align 8, !tbaa !11, !noalias !7
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.0.0.insert.ext.i.i.i20.i = and i64 %i.n, 4294967295
  %i.ac = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i20.i to ptr
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !10, !noalias !7
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ad, align 8, !tbaa !11, !noalias !7
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %.sroa.0.0.insert.ext.i.i.i22.i = and i64 %i.l, 4294967295
  %i.af = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i22.i to ptr
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !10, !noalias !7
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 72
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ag, align 8, !tbaa !11, !noalias !7
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 80
  %.sroa.0.0.insert.ext.i.i.i24.i = and i64 %i.j, 4294967295
  %i.ai = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i24.i to ptr
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !10, !noalias !7
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 88
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aj, align 8, !tbaa !11, !noalias !7
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.al = inttoptr i64 %.0.i8 to ptr
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !10, !noalias !7
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.am, align 8, !tbaa !11, !noalias !7
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 112
  %.sroa.0.0.insert.ext.i.i.i27.i = zext i32 %6 to i64
  %i.ao = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i27.i to ptr
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !10, !noalias !7
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ap, align 8, !tbaa !11, !noalias !7
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %7, ptr %i.aq, align 8, !tbaa !10, !noalias !7
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 136
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ar, align 8, !tbaa !11, !noalias !7
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 144
  %.sroa.0.0.insert.ext.i.i.i29.i = zext i32 %8 to i64
  %i.at = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i29.i to ptr
  store ptr %i.at, ptr %i.as, align 8, !tbaa !10, !noalias !7
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 152
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.au, align 8, !tbaa !11, !noalias !7
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 160
  store ptr %i.s, ptr %i.av, align 8, !tbaa !10, !noalias !7
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 168
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.aw, align 8, !tbaa !11, !noalias !7
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 176
  store ptr %10, ptr %i.ax, align 8, !tbaa !10, !noalias !7
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 184
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ay, align 8, !tbaa !11, !noalias !7
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str, i64 46, ptr nonnull %11, i64 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5, !noalias !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2025051212log_internal15FormatLogPrefixENS0_11LogSeverityENS0_4TimeEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatERNS0_4SpanIcEE(i32 noundef %0, i64 %1, i32 %2, i32 noundef %3, i64 %4, ptr readonly captures(none) %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::str_format_internal::FormatSpecTemplate.0", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.absl::lts_20250512::TimeZone::CivilInfo", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp ult i64 %i.e, 34
  br i1 %i.f, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  %.pre23.a = load ptr, ptr %8, align 8, !tbaa !19
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN4absl12lts_2025051212log_internal8TimeZoneEv() ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.f, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.i = tail call { i64, i64 } @_ZN4absl12lts_202505129ToTimevalENS0_4TimeE(i64 %1, i32 %2) #6 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = load ptr, ptr %8, align 8, !tbaa !19
  %i.m = load i64, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store ptr @.str.8, ptr %10, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 27, ptr %i.n, align 8, !tbaa !22
  %i.o = icmp ult i32 %0, 4
  br i1 %i.o, label %switch.lookup, label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i

switch.lookup:                                    ; preds = %bb.d
  %i.p = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2025051212log_internal15FormatLogPrefixENS0_11LogSeverityENS0_4TimeEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatERNS0_4SpanIcEE.1, i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i

_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i: ; preds = %bb.d, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.q = trunc i64 %i.j to i32
  store i32 %i.q, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.r = trunc i64 %i.k to i32
  store i32 %i.r, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  %i.s = call noundef i32 @_ZN4absl12lts_202505128SNPrintFIJciiiEEEiPcmRKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKS5_(ptr noundef %i.l, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  %i.t = icmp sgt i32 %i.s, -1
  %.pre = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %.pre24 = load ptr, ptr %8, align 8, !tbaa !19  ; 2 uses
  br i1 %i.t, label %bb.e, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i
  %i.u = zext nneg i32 %i.s to i64                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre24, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %8, align 8, !tbaa !19
  %i.w = sub i64 %.pre, %i.u
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %8, align 8, !tbaa !19     ; 16 uses
  %i.y = icmp ult i32 %0, 4
  br i1 %i.y, label %switch.lookup28, label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit43.i

switch.lookup28:                                  ; preds = %bb.f
  %i.z = zext nneg i32 %0 to i64
  %switch.gep29 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl12lts_2025051212log_internal15FormatLogPrefixENS0_11LogSeverityENS0_4TimeEiSt17basic_string_viewIcSt11char_traitsIcEEiNS1_12PrefixFormatERNS0_4SpanIcEE.1, i64 %i.z
  %switch.load30 = load ptr, ptr %switch.gep29, align 8
  br label %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit43.i

_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit43.i: ; preds = %bb.f, %switch.lookup28
  %.0.i42.i = phi ptr [ %switch.load30, %switch.lookup28 ], [ @.str.7, %bb.f ]
  %i.aa = load i8, ptr %.0.i42.i, align 1, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @_ZNK4absl12lts_202505128TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::TimeZone::CivilInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 %1, i32 %2)
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !23
  %i.ae = sext i8 %i.ad to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.ae, ptr noundef nonnull %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26
  %i.ai = sext i8 %i.ah to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.ai, ptr noundef nonnull %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  store i8 32, ptr %i.aj, align 1, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 10
  %i.am = load i8, ptr %i.al, align 2, !tbaa !27
  %i.an = sext i8 %i.am to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.an, ptr noundef nonnull %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 58, ptr %i.ao, align 1, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.as = sext i8 %i.ar to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.as, ptr noundef nonnull %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 58, ptr %i.at, align 1, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !29
  %i.ax = sext i8 %i.aw to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.ax, ptr noundef nonnull %i.au)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  store i8 46, ptr %i.ay, align 1, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.02.0.copyload.i = load i64, ptr %i.ba, align 8 ; 4 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.23.0.copyload.i = load i32, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !3 ; 3 uses
  %i.bb = icmp ult i64 %.sroa.02.0.copyload.i, 8796093022208
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit43.i
  %i.bc = mul nuw nsw i64 %.sroa.02.0.copyload.i, 1000000
  %i.bd = udiv i32 %.sroa.23.0.copyload.i, 4000
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.bc, %i.be
  br label %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.02.0.copyload.i, ptr %9, align 8
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.23.0.copyload.i, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8
  %i.bg = call noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %.sroa.02.0.copyload.i, i32 %.sroa.23.0.copyload.i, i64 0, i32 4000, ptr noundef nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit.i

_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit.i: ; preds = %bb.h, %bb.g
  %.0.i44.i = phi i64 [ %i.bf, %bb.g ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bh = sdiv i64 %.0.i44.i, 10000
  %i.bi = trunc i64 %i.bh to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.bi, ptr noundef nonnull %i.az)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  %i.bk = sdiv i64 %.0.i44.i, 100
  %i.bl = srem i64 %i.bk, 100
  %i.bm = trunc nsw i64 %i.bl to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.bm, ptr noundef nonnull %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  %i.bo = srem i64 %.0.i44.i, 100
  %i.bp = trunc nsw i64 %i.bo to i32
  call void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.bp, ptr noundef nonnull %i.bn)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 21
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 22 ; 7 uses
  store i8 32, ptr %i.bq, align 1, !tbaa !10
  %or.cond.i.i = icmp ult i32 %3, 10
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.i

.thread.i.i:                                      ; preds = %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  store i8 32, ptr %i.br, align 1, !tbaa !10
  br label %.thread29.i.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051219ToInt64MicrosecondsENS0_8DurationE.exit.i
  %i.bt = add i32 %3, 9
  %or.cond3.i.i = icmp ult i32 %i.bt, 109
  br i1 %or.cond3.i.i, label %.thread29.i.i, label %bb.j

.thread29.i.i:                                    ; preds = %bb.i, %.thread.i.i
  %.4.i = phi ptr [ %i.bs, %.thread.i.i ], [ %i.br, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  store i8 32, ptr %.4.i, align 1, !tbaa !10
  br label %.thread31.i.i

bb.j:                                             ; preds = %bb.i
  %i.bv = add i32 %3, 99
  %or.cond5.i.i = icmp ult i32 %i.bv, 1099
  br i1 %or.cond5.i.i, label %.thread31.i.i, label %bb.k

.thread31.i.i:                                    ; preds = %bb.j, %.thread29.i.i
  %.3.i = phi ptr [ %i.bu, %.thread29.i.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 32, ptr %.3.i, align 1, !tbaa !10
  br label %.thread33.i.i

bb.k:                                             ; preds = %bb.j
  %i.bx = add i32 %3, 999
  %or.cond7.i.i = icmp ult i32 %i.bx, 10999
  br i1 %or.cond7.i.i, label %.thread33.i.i, label %bb.l

.thread33.i.i:                                    ; preds = %bb.k, %.thread31.i.i
  %.267.i = phi ptr [ %i.bw, %.thread31.i.i ], [ %i.br, %bb.k ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.267.i, i64 1
  store i8 32, ptr %.267.i, align 1, !tbaa !10
  br label %.thread35.i.i

bb.l:                                             ; preds = %bb.k
  %i.bz = add i32 %3, 9999
  %or.cond9.i.i = icmp ult i32 %i.bz, 109999
  br i1 %or.cond9.i.i, label %.thread35.i.i, label %bb.m

.thread35.i.i:                                    ; preds = %bb.l, %.thread33.i.i
  %.1.i = phi ptr [ %i.by, %.thread33.i.i ], [ %i.br, %bb.l ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 32, ptr %.1.i, align 1, !tbaa !10
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i32 %3, 99999
  %or.cond11.i.i = icmp ult i32 %i.cb, 1099999
  br i1 %or.cond11.i.i, label %bb.n, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i

bb.n:                                             ; preds = %bb.m, %.thread35.i.i
  %.0.i = phi ptr [ %i.ca, %.thread35.i.i ], [ %i.br, %bb.m ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 32, ptr %.0.i, align 1, !tbaa !10
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i: ; preds = %bb.n, %bb.m
  %.5.i = phi ptr [ %i.cc, %bb.n ], [ %i.br, %bb.m ]
  %i.cd = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %3, ptr noundef nonnull %.5.i) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 32, ptr %i.cd, align 1, !tbaa !10
  %i.cf = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci ; 2 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !19
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !14
  %i.cl = sub i64 %i.ck, %i.ci                    ; 2 uses
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit

.sink.split.i:                                    ; preds = %bb.b, %bb.e
  %.pre23 = phi ptr [ %i.v, %bb.e ], [ %.pre23.a, %bb.b ]
  %.sink.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.2.ph.i = phi i64 [ %i.u, %bb.e ], [ 0, %bb.b ]
  store i64 %.sink.i, ptr %i.d, align 8, !tbaa !14
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit: ; preds = %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i, %.sink.split.i
  %12 = phi ptr [ %.pre24, %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i ], [ %i.cj, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i ], [ %.pre23, %.sink.split.i ]
  %13 = phi i64 [ %.pre, %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i ], [ %i.cl, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i ], [ %.sink.i, %.sink.split.i ]
  %.2.i = phi i64 [ 0, %_ZN4absl12lts_2025051215LogSeverityNameENS0_11LogSeverityE.exit.i ], [ %i.ci, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PutLeadingWhitespaceIiEENSt9enable_ifIXsr3std9is_signedIT_EE5valueEvE4typeES5_RPc.exit.i ], [ %.2.ph.i, %.sink.split.i ]
  %spec.select.i = call i64 @llvm.umin.i64(i64 %4, i64 %13) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %5, i64 %spec.select.i, i1 false)
  %i.cm = load ptr, ptr %8, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %spec.select.i ; 4 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !19
  %i.co = load i64, ptr %i.d, align 8, !tbaa !14
  %i.cp = sub i64 %i.co, %spec.select.i           ; 2 uses
  store i64 %i.cp, ptr %i.d, align 8, !tbaa !14
  %i.cq = add i64 %spec.select.i, %.2.i
  %i.cr = icmp ult i64 %i.cp, 14
  br i1 %i.cr, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit, label %bb.o, !prof !18

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 58, ptr %i.cn, align 1, !tbaa !10
  %i.ct = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %6, ptr noundef nonnull %i.cs) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 93, ptr %i.ct, align 1, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i8 32, ptr %i.cu, align 1, !tbaa !10
  %i.cw = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz ; 2 uses
  store ptr %i.da, ptr %8, align 8, !tbaa !19
  %i.db = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dc = sub i64 %i.db, %i.cz
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit, %bb.o
  %i.dd = phi ptr [ %i.da, %bb.o ], [ %i.cn, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit ]
  %storemerge.i = phi i64 [ %i.dc, %bb.o ], [ 0, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit ] ; 2 uses
  %.0.i21 = phi i64 [ %i.cz, %bb.o ], [ 0, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119FormatBoundedFieldsENS0_11LogSeverityENS0_4TimeEiRNS0_4SpanIcEE.exit ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !14
  %i.de = add i64 %i.cq, %.0.i21                  ; 2 uses
  %i.df = icmp eq i32 %7, 1
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit
  %spec.select.i22 = call i64 @llvm.umin.i64(i64 %storemerge.i, i64 5) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr nonnull align 1 @.str.1, i64 %spec.select.i22, i1 false)
  %i.dg = load ptr, ptr %8, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %spec.select.i22
  store ptr %i.dh, ptr %8, align 8, !tbaa !19
  %i.di = load i64, ptr %i.d, align 8, !tbaa !14
  %i.dj = sub i64 %i.di, %spec.select.i22
  store i64 %i.dj, ptr %i.d, align 8, !tbaa !14
  %i.dk = add i64 %i.de, %spec.select.i22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit
  %.0 = phi i64 [ %i.dk, %bb.p ], [ %i.de, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116FormatLineNumberEiRNS0_4SpanIcEE.exit ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64, i32, i64, i32, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051212log_internal8TimeZoneEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @_ZN4absl12lts_202505129ToTimevalENS0_4TimeE(i64, i32) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_202505128SNPrintFIJciiiEEEiPcmRKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKS5_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca [4 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 11 uses
  %.sroa.01.0.copyload = load ptr, ptr %2, align 8, !tbaa !30
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %3, align 1
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.0.0.copyload.i.i.i to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i to ptr
  store ptr %i.a, ptr %7, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.0.0.copyload.i.i.i8 = load i32, ptr %4, align 4
  %.sroa.0.0.insert.ext.i.i.i9 = zext i32 %.sroa.0.0.copyload.i.i.i8 to i64
  %i.d = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i9 to ptr
  store ptr %i.d, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.0.0.copyload.i.i.i10 = load i32, ptr %5, align 4
  %.sroa.0.0.insert.ext.i.i.i11 = zext i32 %.sroa.0.0.copyload.i.i.i10 to i64
  %i.g = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i11 to ptr
  store ptr %i.g, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.0.0.copyload.i.i.i12 = load i32, ptr %6, align 4
  %.sroa.0.0.insert.ext.i.i.i13 = zext i32 %.sroa.0.0.copyload.i.i.i12 to i64
  %i.j = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i13 to ptr
  store ptr %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !11
  %i.l = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal8SnprintFEPcmNS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %0, i64 noundef %1, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr nonnull %7, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i32 %i.l
}

declare void @_ZNK4absl12lts_202505128TimeZone2AtENS0_4TimeE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::TimeZone::CivilInfo") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64, i32) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216numbers_internal12PutTwoDigitsEjPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4absl12lts_2025051219str_format_internal8SnprintFEPcmNS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef, i64 noundef, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4absl12lts_202505129StrFormatIJciiiiiliSt17basic_string_viewIcSt11char_traitsIcEEiPKcS5_EEENSt7__cxx1112basic_stringIcS4_SaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSE_: argument 0"}
!9 = distinct !{!9, !"_ZN4absl12lts_202505129StrFormatIJciiiiiliSt17basic_string_viewIcSt11char_traitsIcEEiPKcS5_EEENSt7__cxx1112basic_stringIcS4_SaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSE_"}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSN4absl12lts_2025051219str_format_internal13FormatArgImplE", !5, i64 0, !13, i64 8}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !17, i64 8}
!15 = !{!"_ZTSN4absl12lts_202505124SpanIcEE", !16, i64 0, !17, i64 8}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!15, !16, i64 0}
!20 = !{!21, !13, i64 0}
!21 = !{!"_ZTSN4absl12lts_2025051219str_format_internal21UntypedFormatSpecImplE", !13, i64 0, !17, i64 8}
!22 = !{!21, !17, i64 8}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz6detail10civil_timeINS1_10second_tagEEE", !25, i64 0}
!25 = !{!"_ZTSN4absl12lts_2025051213time_internal4cctz6detail6fieldsE", !17, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
!26 = !{!24, !5, i64 9}
!27 = !{!24, !5, i64 10}
!28 = !{!24, !5, i64 11}
!29 = !{!24, !5, i64 12}
!30 = !{!13, !13, i64 0}
!31 = !{!17, !17, i64 0}
end_hunk_0
