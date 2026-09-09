Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/host_port?download=true
inline.NumInlined: 141
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.std::basic_string_view" = type { i64, ptr }

@.str = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core12JoinHostPortB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %5 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !tbaa !8
  %.not = icmp eq i8 %i.c, 91
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.d, 0
  br i1 %.not13.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader, !llvm.loop !16

.preheader.preheader:                             ; preds = %bb.b, %.preheader
  %.1.i12 = phi i64 [ %i.d, %.preheader ], [ %1, %bb.b ]
  %i.d = add i64 %.1.i12, -1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit, label %.preheader, !llvm.loop !16

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit: ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !22
  store ptr %6, ptr %5, align 8, !tbaa !8, !noalias !22
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !24, !noalias !22
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %3 to i64
  %i.j = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.j, ptr %i.i, align 8, !tbaa !8, !noalias !22
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !24, !noalias !22
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str, i64 7, ptr nonnull %5, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !22
  br label %bb.c

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread: ; preds = %.preheader, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !25
  store ptr %6, ptr %4, align 8, !tbaa !8, !noalias !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.l, align 8, !tbaa !24, !noalias !25
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i.i6 = zext i32 %3 to i64
  %i.n = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i6 to ptr
  store ptr %i.n, ptr %i.m, align 8, !tbaa !8, !noalias !25
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.o, align 8, !tbaa !24, !noalias !25
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.1, i64 5, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !25
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9grpc_core13SplitHostPortESt17basic_string_viewIcSt11char_traitsIcEEPS3_S4_(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call fastcc noundef zeroext i1 @_ZN9grpc_core12_GLOBAL__N_115DoSplitHostPortESt17basic_string_viewIcSt11char_traitsIcEEPS4_S5_Pb(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN9grpc_core12_GLOBAL__N_115DoSplitHostPortESt17basic_string_viewIcSt11char_traitsIcEEPS4_S5_Pb(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %4, align 1, !tbaa !11
  %cond = icmp eq i64 %0, 0
  br i1 %cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !8
  %i.b = icmp eq i8 %i.a, 91
  br i1 %i.b, label %bb.c, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i41

bb.c:                                             ; preds = %bb.b
  %.not86 = icmp eq i64 %0, 1
  br i1 %.not86, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.c
  %i.c = add i64 %0, -1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.e = tail call ptr @memchr(ptr noundef nonnull %i.d, i32 noundef 93, i64 noundef %i.c) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %i.j = icmp eq i64 %i.h, %i.c
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = icmp eq i8 %i.m, 58
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = add i64 %i.h, 2                          ; 4 uses
  %i.p = icmp ugt i64 %i.o, %0
  br i1 %i.p, label %bb.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.o, i64 noundef %0) #10
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.g
  %i.q = add i64 %0, -2
  %i.r = sub i64 %i.q, %i.h
  %i.s = sub nuw i64 %0, %i.o
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  store i64 %.sroa.speculated.i, ptr %3, align 8, !tbaa !13
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !15
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.u = add i64 %i.h, -1
  %.sroa.speculated.i32 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.u) ; 3 uses
  store i64 %.sroa.speculated.i32, ptr %2, align 8, !tbaa !13
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !15
  %.not87 = icmp eq i64 %.sroa.speculated.i32, 0
  br i1 %.not87, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37:     ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.v = tail call ptr @memchr(ptr noundef nonnull %i.d, i32 noundef 58, i64 noundef %.sroa.speculated.i32) #9 ; 2 uses
  %.not.i38 = icmp eq ptr %i.v, null
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp eq i64 %i.y, -1
  %or.cond = or i1 %.not.i38, %i.z
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, label %.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i41:     ; preds = %bb.b
  %i.aa = tail call ptr @memchr(ptr noundef nonnull %1, i32 noundef 58, i64 noundef %0) #9 ; 2 uses
  %.not.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i42, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i41
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 5 uses
  %.not = icmp eq i64 %i.ad, -1
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43
  %i.ae = add nuw i64 %i.ad, 1                    ; 6 uses
  %i.af = icmp ult i64 %i.ae, %0
  br i1 %i.af, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i45, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit47.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i45:     ; preds = %bb.i
  %i.ag = sub nuw i64 %0, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ai = tail call ptr @memchr(ptr noundef nonnull %i.ah, i32 noundef 58, i64 noundef %i.ag) #9 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ai, null
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ac
  %i.al = icmp eq i64 %i.ak, -1
  %or.cond85 = or i1 %.not.i46, %i.al
  br i1 %or.cond85, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit47.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit47.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i45, %bb.i
  %.sroa.speculated.i48 = tail call i64 @llvm.umin.i64(i64 %0, i64 %i.ad)
  store i64 %.sroa.speculated.i48, ptr %2, align 8, !tbaa !13
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !15
  %.not89 = icmp ult i64 %i.ad, %0
  br i1 %.not89, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit54, label %bb.j

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit47.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.ae, i64 noundef %0) #10
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit54: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit47.thread
  %i.am = xor i64 %i.ad, -1
  %i.an = add i64 %0, %i.am
  %i.ao = sub nuw i64 %0, %i.ae
  %.sroa.speculated.i51 = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  store i64 %.sroa.speculated.i51, ptr %3, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread: ; preds = %bb.a, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i45, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i41, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43
  store i64 %0, ptr %2, align 8, !tbaa !13
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.c, %bb.f, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit54
  %.1 = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit43.thread ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i37 ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit54 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit39.thread ], [ false, %bb.f ], [ false, %bb.c ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN9grpc_core13SplitHostPortESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEES8_(i64 %0, ptr %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call fastcc noundef zeroext i1 @_ZN9grpc_core12_GLOBAL__N_115DoSplitHostPortESt17basic_string_viewIcSt11char_traitsIcEEPS4_S5_Pb(i64 %0, ptr %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.c) ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !13 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !27
  %i.f = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.g = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.g, %i.f
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !tbaa !13
  %i.h = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !29
  %i.j = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.j, ptr %i.e, align 8, !tbaa !8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !8
  store i8 %i.l, ptr %i.k, align 1, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = load ptr, ptr %6, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %6, align 8, !tbaa !29     ; 6 uses
  %i.u = icmp eq ptr %i.t, %i.e                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.u, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.u, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = load i64, ptr %i.n, align 8, !tbaa !30   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %6, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  switch i64 %i.v, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr %i.t, align 1, !tbaa !8
  store i8 %i.x, ptr %i.q, align 1, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.y = load i64, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !30
  %i.aa = load ptr, ptr %2, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_0
