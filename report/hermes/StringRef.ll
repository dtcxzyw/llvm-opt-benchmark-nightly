Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StringRef?download=true
inline.NumInlined: 344
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.llvh::APInt" = type <{ %union.anon.0, i32, [4 x i8] }>
%union.anon.0 = type { i64 }
%"class.llvh::detail::IEEEFloat" = type <{ ptr, %"union.llvh::detail::IEEEFloat::Significand", i16, i8, [5 x i8] }>
%"union.llvh::detail::IEEEFloat::Significand" = type { i64 }
%"class.llvh::APFloat" = type { [8 x i8], %"union.llvh::APFloat::Storage" }
%"union.llvh::APFloat::Storage" = type { %"class.llvh::detail::DoubleAPFloat", [8 x i8] }
%"class.llvh::detail::DoubleAPFloat" = type { ptr, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.2" }
%"struct.std::_Head_base.2" = type { ptr }

$_ZN4llvh19ComputeEditDistanceIcEEjNS_8ArrayRefIT_EES3_bj = comdat any

$_ZN4llvh6detail13DoubleAPFloatD2Ev = comdat any

$_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_ = comdat any

$_ZN4llvh7hashing6detail10hash_shortEPKcmm = comdat any

$_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@_ZN4llvh9StringRef4nposE = hidden local_unnamed_addr constant i64 -1, align 8
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZNK4llvh9StringRef13compare_lowerES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 2 uses
  %.not25.i = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not25.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit.thread, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add nuw i64 %.01324.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.d, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit.thread, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01324.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01324.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 3 uses
  %i.g = add i8 %i.f, -65
  %or.cond.i.i = icmp ult i8 %i.g, 26
  %i.h = or disjoint i8 %i.f, 32
  %.0.i.i = select i1 %or.cond.i.i, i8 %i.h, i8 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15    ; 3 uses
  %i.k = add i8 %i.j, -65
  %or.cond.i18.i = icmp ult i8 %i.k, 26
  %i.l = or disjoint i8 %i.j, 32
  %.0.i19.i = select i1 %or.cond.i18.i, i8 %i.l, i8 %i.j ; 2 uses
  %.not.i = icmp eq i8 %.0.i.i, %.0.i19.i
  br i1 %.not.i, label %bb.b, label %_ZL17ascii_strncasecmpPKcS0_m.exit

_ZL17ascii_strncasecmpPKcS0_m.exit:               ; preds = %.lr.ph.i
  %i.m = icmp ult i8 %.0.i.i, %.0.i19.i
  %i.n = select i1 %i.m, i32 -1, i32 1
  br label %bb.d

_ZL17ascii_strncasecmpPKcS0_m.exit.thread:        ; preds = %bb.b, %bb.a
  %i.o = icmp eq i64 %i.c, %2
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL17ascii_strncasecmpPKcS0_m.exit.thread
  %i.p = icmp ult i64 %i.c, %2
  %i.q = select i1 %i.p, i32 -1, i32 1
  br label %bb.d

bb.d:                                             ; preds = %_ZL17ascii_strncasecmpPKcS0_m.exit, %_ZL17ascii_strncasecmpPKcS0_m.exit.thread, %bb.c
  %.1 = phi i32 [ %i.n, %_ZL17ascii_strncasecmpPKcS0_m.exit ], [ %i.q, %bb.c ], [ 0, %_ZL17ascii_strncasecmpPKcS0_m.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh9StringRef16startswith_lowerES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %_ZL17ascii_strncasecmpPKcS0_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %.not25.i = icmp eq i64 %2, 0
  br i1 %.not25.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.01324.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01324.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15    ; 3 uses
  %i.f = add i8 %i.e, -65
  %or.cond.i.i = icmp ult i8 %i.f, 26
  %i.g = or disjoint i8 %i.e, 32
  %.0.i.i = select i1 %or.cond.i.i, i8 %i.g, i8 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15    ; 3 uses
  %i.j = add i8 %i.i, -65
  %or.cond.i18.i = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.i, 32
  %.0.i19.i = select i1 %or.cond.i18.i, i8 %i.k, i8 %i.i
  %.not.i = icmp eq i8 %.0.i.i, %.0.i19.i         ; 2 uses
  %i.l = add nuw i64 %.01324.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.l, %2
  %or.cond.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit, !llvm.loop !13

_ZL17ascii_strncasecmpPKcS0_m.exit:               ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not.i, %.lr.ph.i ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh9StringRef14endswith_lowerES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %_ZL17ascii_strncasecmpPKcS0_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = sub i64 0, %2
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %.not25.i = icmp eq i64 %2, 0
  br i1 %.not25.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.01324.i = phi i64 [ %i.o, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.01324.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i.i = select i1 %or.cond.i.i, i8 %i.j, i8 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i18.i = icmp ult i8 %i.m, 26
  %i.n = or disjoint i8 %i.l, 32
  %.0.i19.i = select i1 %or.cond.i18.i, i8 %i.n, i8 %i.l
  %.not.i = icmp eq i8 %.0.i.i, %.0.i19.i         ; 2 uses
  %i.o = add nuw i64 %.01324.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.o, %2
  %or.cond.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZL17ascii_strncasecmpPKcS0_m.exit, !llvm.loop !13

_ZL17ascii_strncasecmpPKcS0_m.exit:               ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not.i, %.lr.ph.i ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef10find_lowerEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i8 %1, -65
  %or.cond.i = icmp ult i8 %i.a, 26
  %i.b = or disjoint i8 %1, 32
  %.0.i8 = select i1 %or.cond.i, i8 %i.b, i8 %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %.sroa.speculated36 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %2) ; 2 uses
  %i.e = sub i64 %i.d, %.sroa.speculated36        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.speculated36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.pn45 = phi i64 [ %i.o, %bb.c ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.sroa.012.044 = phi ptr [ %i.n, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.i = load i8, ptr %.sroa.012.044, align 1, !tbaa !15 ; 3 uses
  %i.j = add i8 %i.i, -65
  %or.cond.i.i.i = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.i, 32
  %.0.i.i.i = select i1 %or.cond.i.i.i, i8 %i.k, i8 %i.i
  %i.l = icmp eq i8 %.0.i.i.i, %.0.i8
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = sub i64 %i.d, %.pn45
end_hunk_0
begin_hunk_1_@_ZNK4llvh9StringRef10find_lowerES0_m:bb.a
  %i.c = sub i64 %i.b, %.sroa.speculated25        ; 2 uses
  %.not42 = icmp ult i64 %i.c, %2
  br i1 %.not42, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not25.i.i = icmp eq i64 %2, 0
  br i1 %.not25.i.i, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i.preheader.preheader

.lr.ph.i.i.preheader.preheader:                   ; preds = %.lr.ph
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated25
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit
  %.0545 = phi i64 [ %i.q, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %3, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %.sroa.0.044 = phi ptr [ %i.o, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %i.e, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %.sroa.6.043 = phi i64 [ %i.p, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %i.c, %.lr.ph.i.i.preheader.preheader ]
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %.01324.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %2
  br i1 %exitcond.not.i.i, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.b
  %.01324.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 %.01324.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i.i.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i.i.i = select i1 %or.cond.i.i.i, i8 %i.j, i8 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i18.i.i = icmp ult i8 %i.m, 26
  %i.n = or disjoint i8 %i.l, 32
  %.0.i19.i.i = select i1 %or.cond.i18.i.i, i8 %i.n, i8 %i.l
  %.not.i.i = icmp eq i8 %.0.i.i.i, %.0.i19.i.i
  br i1 %.not.i.i, label %bb.b, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit

_ZNK4llvh9StringRef16startswith_lowerES0_.exit:   ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 1
  %i.p = add i64 %.sroa.6.043, -1                 ; 2 uses
  %i.q = add i64 %.0545, 1
  %.not = icmp ult i64 %i.p, %2
  br i1 %.not, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i.preheader, !llvm.loop !36

_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread: ; preds = %_ZNK4llvh9StringRef16startswith_lowerES0_.exit, %bb.b, %bb.a, %.lr.ph
  %.0 = phi i64 [ %3, %.lr.ph ], [ %.0545, %bb.b ], [ -1, %bb.a ], [ -1, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef11rfind_lowerEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = add i8 %1, -65
  %or.cond.i7 = icmp ult i8 %i.d, 26
  %i.e = or disjoint i8 %1, 32
  %.0.i8 = select i1 %or.cond.i7, i8 %i.e, i8 %1
  %.not10 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011 = phi i64 [ %i.f, %bb.b ], [ %.sroa.speculated, %bb.a ]
  %i.f = add i64 %.011, -1                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = icmp eq i8 %.0.i, %.0.i8
  br i1 %i.k, label %._crit_edge12, label %bb.b, !llvm.loop !37

._crit_edge12:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b, %._crit_edge12, %bb.a
  %.06 = phi i64 [ %i.f, %._crit_edge12 ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i64 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef5rfindES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr33 = freeze i64 %2                          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = icmp ugt i64 %.fr33, %i.b
  br i1 %i.c, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %i.b, %.fr33           ; 2 uses
  %i.d = add i64 %reass.sub, 1                    ; 2 uses
  %.not27 = icmp eq i64 %i.d, 0
  br i1 %.not27, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = icmp eq i64 %.fr33, 0
  br i1 %i.f, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge
  %.01028 = phi i64 [ %i.g, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge ], [ %i.d, %.lr.ph ]
  %i.g = add i64 %.01028, -1                      ; 4 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.g) ; 2 uses
  %i.h = sub i64 %i.b, %.sroa.speculated20
  %.not26 = icmp ugt i64 %.fr33, %i.h
  br i1 %.not26, label %_ZNK4llvh9StringRef6equalsES0_.exit.backedge, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i: ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated20
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %1, i64 %.fr33)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit.backedge

_ZNK4llvh9StringRef6equalsES0_.exit.backedge:     ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i, %.lr.ph.split
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph.split, !llvm.loop !38

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge, %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %reass.sub, %.lr.ph ], [ -1, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge ], [ %i.g, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef11rfind_lowerES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr = freeze i64 %2                            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = icmp ugt i64 %.fr, %i.b
  br i1 %i.c, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %i.b, %.fr             ; 2 uses
  %i.d = add i64 %reass.sub, 1                    ; 2 uses
  %.not27 = icmp eq i64 %i.d, 0
  br i1 %.not27, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %.not25.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not25.i.i.i, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef12equals_lowerES0_.exit
  %.01028 = phi i64 [ %i.f, %_ZNK4llvh9StringRef12equals_lowerES0_.exit ], [ %i.d, %.lr.ph ]
  %i.f = add i64 %.01028, -1                      ; 4 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.f) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated20
  %i.h = sub i64 %i.b, %.sroa.speculated20
  %.not25 = icmp ugt i64 %.fr, %i.h
  br i1 %.not25, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = add nuw i64 %.01324.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.i, %.fr
  br i1 %exitcond.not.i.i.i, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !13

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %bb.c
  %.01324.i.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.01324.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15    ; 3 uses
  %i.l = add i8 %i.k, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.l, 26
  %i.m = or disjoint i8 %i.k, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.m, i8 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15    ; 3 uses
  %i.p = add i8 %i.o, -65
  %or.cond.i18.i.i.i = icmp ult i8 %i.p, 26
  %i.q = or disjoint i8 %i.o, 32
  %.0.i19.i.i.i = select i1 %or.cond.i18.i.i.i, i8 %i.q, i8 %i.o
  %.not.i.i.i = icmp eq i8 %.0.i.i.i.i, %.0.i19.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit

_ZNK4llvh9StringRef12equals_lowerES0_.exit:       ; preds = %.lr.ph.i.i.i, %.lr.ph.split
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %.lr.ph.split, !llvm.loop !39

_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread: ; preds = %_ZNK4llvh9StringRef12equals_lowerES0_.exit, %bb.c, %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ %i.f, %bb.c ], [ -1, %bb.b ], [ %reass.sub, %.lr.ph ], [ -1, %_ZNK4llvh9StringRef12equals_lowerES0_.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01117.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.h = load i64, ptr %5, align 8, !tbaa !12
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %5, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %.not1318.not = icmp ugt i64 %i.k, %3
  br i1 %.not1318.not, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %._crit_edge
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !12
  %i.t = or i64 %i.q, %i.s
  store i64 %i.t, ptr %6, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = lshr i64 %i.x, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ab = load i64, ptr %7, align 8, !tbaa !12
  %i.ac = or i64 %i.z, %i.ab
  store i64 %i.ac, ptr %7, align 8, !tbaa !12
  %i.ad = add nuw i64 %.01117, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !40

bb.b:                                             ; preds = %.lr.ph21, %bb.c
  %.01019 = phi i64 [ %3, %.lr.ph21 ], [ %i.am, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.01019
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = load i64, ptr %8, align 8, !tbaa !12
  %i.aj = and i64 %i.ag, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.ai
  %.not15 = icmp eq i64 %i.al, 0
  br i1 %.not15, label %bb.c, label %._crit_edge22

bb.c:                                             ; preds = %bb.b
  %i.am = add i64 %.01019, 1                      ; 2 uses
  %.not13 = icmp eq i64 %i.am, %i.k
  br i1 %.not13, label %._crit_edge22, label %bb.b, !llvm.loop !41

._crit_edge22:                                    ; preds = %bb.c, %bb.b, %._crit_edge
  %spec.select = phi i64 [ -1, %._crit_edge ], [ %.01019, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not13.not = icmp ugt i64 %i.b, %2
  br i1 %.not13.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0814 = phi i64 [ %2, %.lr.ph ], [ %i.f, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0814
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not10 = icmp eq i8 %i.e, %1
  br i1 %.not10, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.0814, 1                        ; 2 uses
  %.not = icmp eq i64 %i.f, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %i.g = phi i64 [ -1, %bb.a ], [ -1, %bb.c ], [ %.0814, %bb.b ]
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01117.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.h = load i64, ptr %5, align 8, !tbaa !12
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %5, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %.not1318.not = icmp ugt i64 %i.k, %3
  br i1 %.not1318.not, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %._crit_edge
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !12
  %i.t = or i64 %i.q, %i.s
  store i64 %i.t, ptr %6, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = lshr i64 %i.x, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ab = load i64, ptr %7, align 8, !tbaa !12
  %i.ac = or i64 %i.z, %i.ab
  store i64 %i.ac, ptr %7, align 8, !tbaa !12
  %i.ad = add nuw i64 %.01117, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !43

bb.b:                                             ; preds = %.lr.ph21, %bb.c
  %.01019 = phi i64 [ %3, %.lr.ph21 ], [ %i.am, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.01019
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = load i64, ptr %8, align 8, !tbaa !12
  %i.aj = and i64 %i.ag, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.ai
  %.not15 = icmp eq i64 %i.al, 0
  br i1 %.not15, label %._crit_edge22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = add i64 %.01019, 1                      ; 2 uses
  %.not13 = icmp eq i64 %i.am, %i.k
  br i1 %.not13, label %._crit_edge22, label %bb.b, !llvm.loop !44

._crit_edge22:                                    ; preds = %bb.c, %bb.b, %._crit_edge
  %spec.select = phi i64 [ -1, %._crit_edge ], [ %.01019, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef12find_last_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01117.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.h = load i64, ptr %5, align 8, !tbaa !12
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %5, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %3) ; 2 uses
  %.not1318 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not1318, label %._crit_edge22, label %.lr.ph20.preheader

.lr.ph20.preheader:                               ; preds = %._crit_edge
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  br label %.lr.ph20

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01117 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !12
  %i.t = or i64 %i.q, %i.s
  store i64 %i.t, ptr %6, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.01117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = lshr i64 %i.x, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ab = load i64, ptr %7, align 8, !tbaa !12
  %i.ac = or i64 %i.z, %i.ab
  store i64 %i.ac, ptr %7, align 8, !tbaa !12
  %i.ad = add nuw i64 %.01117, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !45

bb.b:                                             ; preds = %.lr.ph20
  %.not13 = icmp eq i64 %.010, 0
  br i1 %.not13, label %._crit_edge22, label %.lr.ph20, !llvm.loop !46

.lr.ph20:                                         ; preds = %.lr.ph20.preheader, %bb.b
  %.010.in19 = phi i64 [ %.010, %bb.b ], [ %.sroa.speculated, %.lr.ph20.preheader ]
  %.010 = add i64 %.010.in19, -1                  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.010
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = load i64, ptr %8, align 8, !tbaa !12
  %i.aj = and i64 %i.ag, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.ai
  %.not15 = icmp eq i64 %i.al, 0
  br i1 %.not15, label %bb.b, label %._crit_edge21, !llvm.loop !46

._crit_edge21:                                    ; preds = %.lr.ph20
  br label %._crit_edge22, !llvm.loop !46

._crit_edge22:                                    ; preds = %bb.b, %._crit_edge21, %._crit_edge
  %.010.lcssa = phi i64 [ %.010, %._crit_edge21 ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.010.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %.not13 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %.08, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.08.in14 = phi i64 [ %.08, %bb.b ], [ %.sroa.speculated, %bb.a ]
  %.08 = add i64 %.08.in14, -1                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.08
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not10 = icmp eq i8 %i.e, %1
  br i1 %.not10, label %bb.b, label %._crit_edge15, !llvm.loop !47

._crit_edge15:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.b, %._crit_edge15, %bb.a
  %.08.lcssa = phi i64 [ -1, %bb.a ], [ %.08, %._crit_edge15 ], [ -1, %bb.b ]
  ret i64 %.08.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef16find_last_not_ofES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::bitset", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %.not17 = icmp eq i64 %2, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01218.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01218.epil.init
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = and i64 %i.d, 63
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i64 %i.d, 6
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g ; 2 uses
  %i.h = load i64, ptr %5, align 8, !tbaa !12
  %i.i = or i64 %i.f, %i.h
  store i64 %i.i, ptr %5, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %3) ; 2 uses
  %.not1419 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not1419, label %._crit_edge23, label %.lr.ph21.preheader

.lr.ph21.preheader:                               ; preds = %._crit_edge
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  br label %.lr.ph21

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01218 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.01218
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = and i64 %i.o, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = lshr i64 %i.o, 6
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r ; 2 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !12
  %i.t = or i64 %i.q, %i.s
  store i64 %i.t, ptr %6, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.01218
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = and i64 %i.x, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = lshr i64 %i.x, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aa ; 2 uses
  %i.ab = load i64, ptr %7, align 8, !tbaa !12
  %i.ac = or i64 %i.z, %i.ab
  store i64 %i.ac, ptr %7, align 8, !tbaa !12
  %i.ad = add nuw i64 %.01218, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !48

bb.b:                                             ; preds = %.lr.ph21
  %.not14 = icmp eq i64 %.011, 0
  br i1 %.not14, label %._crit_edge23, label %.lr.ph21, !llvm.loop !49

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %bb.b
  %.011.in20 = phi i64 [ %.011, %bb.b ], [ %.sroa.speculated, %.lr.ph21.preheader ]
  %.011 = add i64 %.011.in20, -1                  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 6
  %8 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = load i64, ptr %8, align 8, !tbaa !12
  %i.aj = and i64 %i.ag, 63
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = and i64 %i.ak, %i.ai
  %.not16 = icmp eq i64 %i.al, 0
  br i1 %.not16, label %._crit_edge22, label %bb.b, !llvm.loop !49

._crit_edge22:                                    ; preds = %.lr.ph21
  br label %._crit_edge23, !llvm.loop !49

._crit_edge23:                                    ; preds = %bb.b, %._crit_edge22, %._crit_edge
  %.011.lcssa = phi i64 [ %.011, %._crit_edge22 ], [ -1, %._crit_edge ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.011.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree readonly captures(none) %2, i64 %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvh::StringRef", align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !50
  %.not54 = icmp eq i32 %4, 0
  br i1 %.not54, label %..thread_crit_edge, label %.lr.ph

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %4, -1                       ; 2 uses
  %.promoted = load ptr, ptr %6, align 8          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted56 = load i64, ptr %i.b, align 8      ; 2 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.g = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.h = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i)
  %i.l = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i.us = icmp ult i32 %i.l, %i.m
  br i1 %.not.i.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.c, !prof !55

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre.i.us, %bb.c ], [ %i.l, %bb.b ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !56
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  store ptr %i.h, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx27.us = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx27.us, align 1
  %i.r = load i32, ptr %i.c, align 8, !tbaa !52
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !52
  %i.t = add i64 %i.i, %3
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = sub i64 %i.f, %i.u                       ; 3 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !51
  store i64 %i.w, ptr %i.b, align 8, !tbaa !12
  %i.x = add nsw i32 %i.g, -1
  %.not.us = icmp eq i32 %i.g, 0
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %.promoted56, %.lr.ph ] ; 4 uses
  %i.z = phi i32 [ %i.ap, %bb.f ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.aa = phi ptr [ %i.an, %bb.f ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.ab = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %2, i64 %3, i64 noundef 0) ; 3 uses
  switch i64 %i.ab, label %bb.d [
    i64 -1, label %.thread
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.split
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab)
  %i.ad = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.e
  %i.af = phi i32 [ %.pre.i, %bb.e ], [ %i.ad, %bb.d ]
  %i.ag = load ptr, ptr %1, align 8, !tbaa !56
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %i.aa, ptr %i.ai, align 1
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx27, align 1
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !52
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.al = add i64 %i.ab, %3
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = sub i64 %i.y, %i.am                     ; 3 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !12
  %i.ap = add nsw i32 %i.z, -1
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %bb.f, %.lr.ph.split, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, %.lr.ph.split.us, %..thread_crit_edge
  %i.aq = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.f, %.lr.ph.split.us ], [ %i.ao, %bb.f ], [ %i.y, %.lr.ph.split ]
  %i.ar = icmp ne i64 %i.aq, 0
  %or.cond45.not = select i1 %5, i1 true, i1 %i.ar
  br i1 %or.cond45.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !54
  %.not.i24 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i24, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 16) #18
  %.pre.i25 = load i32, ptr %i.as, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26: ; preds = %bb.g, %bb.h
  %i.ax = phi i32 [ %.pre.i25, %bb.h ], [ %i.at, %bb.g ]
  %i.ay = load ptr, ptr %1, align 8, !tbaa !56
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !52
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %.thread, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EEcib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.030.0.copyload = load ptr, ptr %0, align 8, !tbaa !51 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !12 ; 3 uses
  %.not109 = icmp eq i32 %3, 0
  br i1 %.not109, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1                       ; 2 uses
  %i.b = sext i8 %2 to i32                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us
  %i.f = phi i32 [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.030.0111.us = phi ptr [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.030.0.copyload, %.lr.ph ] ; 7 uses
  %.sroa.8.0110.us = phi i64 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us ], [ %.sroa.8.0.copyload, %.lr.ph ] ; 6 uses
  %.not101.us = icmp eq i64 %.sroa.8.0110.us, 0
  br i1 %.not101.us, label %.thread.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = tail call noundef ptr @memchr(ptr noundef %.sroa.030.0111.us, i32 noundef %i.b, i64 noundef %.sroa.8.0110.us) #17 ; 3 uses
  %.not.i.us = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %.sroa.030.0111.us to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  %or.cond98.us = select i1 %.not.i.us, i1 true, i1 %i.k
  br i1 %or.cond98.us, label %.thread.thread137, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not102.us = icmp eq ptr %i.g, %.sroa.030.0111.us
  %i.l = tail call i64 @llvm.umin.i64(i64 %.sroa.8.0110.us, i64 %i.j)
  %.sroa.speculated44.us = select i1 %.not102.us, i64 0, i64 %i.l
  %i.m = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !54
  %.not.i22.us = icmp ult i32 %i.m, %i.n
  br i1 %.not.i22.us, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us, label %bb.d, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #18
  %.pre.i.us = load i32, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.us: ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre.i.us, %bb.d ], [ %i.m, %bb.c ]
end_hunk_1
