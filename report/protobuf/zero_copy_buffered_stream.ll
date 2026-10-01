Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/zero_copy_buffered_stream?download=true
inline.NumInlined: 135
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.absl::lts_20250512::Status" = type { i64 }
%"class.absl::lts_20250512::StatusOr" = type { %"class.absl::lts_20250512::internal_statusor::StatusOrData" }
%"class.absl::lts_20250512::internal_statusor::StatusOrData" = type { %union.anon, %union.anon.0 }
%union.anon = type { %"class.absl::lts_20250512::Status" }
%union.anon.0 = type { %"class.google::protobuf::json_internal::BufferingGuard" }
%"class.google::protobuf::json_internal::BufferingGuard" = type { ptr }

$_ZN6google8protobuf13json_internal14BufferingGuardD2Ev = comdat any

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_ = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream7AdvanceEm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not22 = icmp eq i64 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !19
  %.sroa.010.0.copyload.i.i.pre = load i64, ptr %i.b, align 8, !tbaa !20
  %.pre33 = load i8, ptr %i.c, align 8, !tbaa !21, !range !22
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11
  %i.g = phi i8 [ %.pre33, %.lr.ph ], [ %i.t, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11 ] ; 2 uses
  %.sroa.010.0.copyload.i.i235 = phi i64 [ %.sroa.010.0.copyload.i.i.pre, %.lr.ph ], [ %.sroa.010.0.copyload.i.i2, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11 ] ; 2 uses
  %i.h = phi i64 [ %.pre, %.lr.ph ], [ %i.af, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11 ] ; 3 uses
  %storemerge23 = phi i64 [ %2, %.lr.ph ], [ %i.ag, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11 ] ; 2 uses
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !23
  %i.k = sub i64 %i.h, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.010.0.copyload.i.i235, %bb.b ] ; 3 uses
  %.0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.q = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.q, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit: ; preds = %bb.d
  %i.r = icmp eq i64 %.sroa.010.0.i.i, %.0.i.i
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  %i.s = tail call noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.s, label %..critedge_crit_edge, label %bb.g

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !19
  %.sroa.010.0.copyload.i.i2.pre = load i64, ptr %i.b, align 8, !tbaa !20
  %.pre37 = load i8, ptr %i.c, align 8, !tbaa !21, !range !22
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 14, ptr nonnull @.str)
  br label %bb.k

.critedge:                                        ; preds = %..critedge_crit_edge, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  %i.t = phi i8 [ %.pre37, %..critedge_crit_edge ], [ %i.g, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit ] ; 2 uses
  %.sroa.010.0.copyload.i.i2 = phi i64 [ %.sroa.010.0.copyload.i.i2.pre, %..critedge_crit_edge ], [ %.sroa.010.0.copyload.i.i235, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit ] ; 2 uses
  %i.u = phi i64 [ %.pre34, %..critedge_crit_edge ], [ %i.h, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit ] ; 3 uses
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.w = load i64, ptr %i.d, align 8, !tbaa !23
  %i.x = sub i64 %i.u, %i.w
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %.sroa.010.0.i.i5 = phi i64 [ %i.ac, %bb.h ], [ %.sroa.010.0.copyload.i.i2, %.critedge ] ; 3 uses
  %.0.i.i7 = phi i64 [ %i.x, %bb.h ], [ %i.u, %.critedge ] ; 3 uses
  %i.ad = icmp ugt i64 %.0.i.i7, %.sroa.010.0.i.i5
  br i1 %i.ad, label %bb.j, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i7, i64 noundef %.sroa.010.0.i.i5) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11: ; preds = %bb.i
  %i.ae = sub nuw i64 %.sroa.010.0.i.i5, %.0.i.i7
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %storemerge23) ; 2 uses
  %i.af = add i64 %.sroa.speculated, %i.u         ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !19
  %i.ag = sub i64 %storemerge23, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit11, %bb.a
  store i64 1, ptr %0, align 8, !tbaa !28, !alias.scope !40
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !41, !range !22, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !21, !range !22, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.010.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !20 ; 3 uses
  %i.o = icmp ugt i64 %i.m, %.sroa.010.0.copyload.i
  br i1 %i.o, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.m, i64 noundef %.sroa.010.0.copyload.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit: ; preds = %bb.d
  %i.p = sub nuw i64 %.sroa.010.0.copyload.i, %i.m ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = icmp sgt i64 %i.p, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !42
  %.pn13.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !25
  %.pre.i.i.i.i.i.i.a = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.u = phi ptr [ %.pre.i.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.i ], [ %2, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %1 = phi ptr [ %.pre.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i.i = phi ptr [ %.pn13.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %1, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !32
  store i8 %i.v, ptr %1, align 1, !tbaa !32
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !25
  %.pre8.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !31
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !24   ; 4 uses
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i)
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #14 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab ; 2 uses
  %i.aj = load i8, ptr %.056.i.i.i.i.i.i, align 1, !tbaa !32
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !32
  %i.ak = icmp sgt i64 %i.ab, 0
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ao) #15
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !24
  store ptr %i.al, ptr %i.s, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 2 uses
  store ptr %i.ap, ptr %i.t, align 8, !tbaa !31
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i, %bb.g
  %2 = phi ptr [ %.pre8.i.i.i.i.i.i, %bb.g ], [ %i.ap, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.aq = phi ptr [ %i.x, %bb.g ], [ %i.al, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i, i64 1
  %i.as = add nsw i64 %.07.i.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.07.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.f, label %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit, !llvm.loop !0

_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i.i, %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream9RawBufferEmm.exit
  store i8 1, ptr %i.i, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_.exit, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.au = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.c, align 8, !tbaa !41
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !21, !range !22, !noundef !29
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = call ptr @_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr nonnull %i.bg) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.1 = phi i1 [ %i.ay, %bb.q ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13BufferAtLeastEm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::json_internal::BufferingGuard", align 8 ; 7 uses
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  br label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48

_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48: ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %1, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48.backedge ] ; 14 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19   ; 8 uses
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !20 ; 4 uses
  %i.k = load i8, ptr %i.c, align 8, !tbaa !21, !range !22, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1                  ; 3 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48
  %i.m = load i64, ptr %i.d, align 8, !tbaa !23
  %i.n = sub i64 %i.j, %i.m
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48
  %.sroa.010.0.i.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.010.0.copyload.i.i, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48 ] ; 3 uses
  %.0.i.i = phi i64 [ %i.n, %bb.b ], [ %i.j, %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit48 ] ; 3 uses
  %i.t = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = sub nuw i64 %.sroa.010.0.i.i, %.0.i.i
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.d, align 8, !tbaa !23
  %i.x = sub i64 %i.j, %i.w
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.010.0.i.i19 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.010.0.copyload.i.i, %bb.f ] ; 3 uses
  %.0.i.i21 = phi i64 [ %i.x, %bb.g ], [ %i.j, %bb.f ] ; 3 uses
  %i.ad = icmp ugt i64 %.0.i.i21, %.sroa.010.0.i.i19
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i21, i64 noundef %.sroa.010.0.i.i19) #13
          to label %.noexc25 unwind label %bb.t

.noexc25:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %.sroa.010.0.i.i19, %.0.i.i21
  br i1 %i.ae, label %_ZN6google8protobuf13json_internal14BufferingGuardD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !30
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.l, label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

bb.l:                                             ; preds = %bb.k
  store i64 %i.j, ptr %i.d, align 8, !tbaa !23
  br label %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit

_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit: ; preds = %bb.l, %bb.k
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf13json_internal14BufferingGuardC2EPNS1_22ZeroCopyBufferedStreamE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !30
  %i.al = icmp sgt i32 %i.aj, 1
  br i1 %i.al, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !21, !range !22, !noundef !29
  %i.ao = trunc nuw i8 %i.an to i1
  %.not4.i.i.i = xor i1 %i.ao, true
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !range !22
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i = select i1 %.not4.i.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !24 ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !36
  %.neg79 = add i64 %i.az, %i.aw
  %i.bc = add i64 %i.bb, %i.ax
  %i.bd = sub i64 %.neg79, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19
  %storemerge.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.bd)
  store i64 %storemerge.i.i.i, ptr %i.be, align 8, !tbaa !19
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i.i.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal14BufferingGuardD2Ev:bb.a
  br i1 %.not, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !30
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !21, !range !22, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  %.not4.i = xor i1 %i.h, true
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !22
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not4.i, i1 true, i1 %i.k
  br i1 %or.cond.i, label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !24   ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %.neg2 = add i64 %i.s, %i.p
  %i.v = add i64 %i.u, %i.q
  %i.w = sub i64 %.neg2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %i.y, i64 %i.w)
  store i64 %storemerge.i, ptr %i.x, align 8, !tbaa !19
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.o, ptr %i.m, align 8, !tbaa !25
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit.i

_ZNSt6vectorIcSaIcEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i.i, %bb.d
  store i8 0, ptr %i.f, align 8, !tbaa !21
  br label %_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit

_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv.exit: ; preds = %bb.b, %bb.c, %_ZNSt6vectorIcSaIcEE5clearEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream16BufferAtLeastOneEv(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !20
  %i.h = load i8, ptr %i.c, align 8, !tbaa !21, !range !22, !noundef !29
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !23
  %i.k = sub i64 %i.g, %i.j
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i.i = phi i64 [ %i.p, %bb.c ], [ %.sroa.010.0.copyload.i.i, %bb.b ] ; 3 uses
  %.0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.q = icmp ugt i64 %.0.i.i, %.sroa.010.0.i.i
  br i1 %i.q, label %bb.e, label %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %.0.i.i, i64 noundef %.sroa.010.0.i.i) #13
  unreachable

_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit: ; preds = %bb.d
  %i.r = icmp eq i64 %.sroa.010.0.i.i, %.0.i.i
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  %i.s = tail call noundef zeroext i1 @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream9ReadChunkEv(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.s, label %bb.b, label %bb.g, !llvm.loop !49

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 14, ptr nonnull @.str)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6google8protobuf13json_internal22ZeroCopyBufferedStream6UnreadEv.exit
  store i64 1, ptr %0, align 8, !tbaa !28, !alias.scope !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6google8protobuf13json_internal22ZeroCopyBufferedStream13DownRefBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !30
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !21, !range !22, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  %.not4 = xor i1 %i.g, true
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !range !22
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %.not4, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %.neg8 = add i64 %i.r, %i.o
  %i.u = add i64 %i.t, %i.p
  %i.v = sub i64 %.neg8, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 %i.v)
  store i64 %storemerge, ptr %i.w, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.n, ptr %i.l, align 8, !tbaa !25
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  store i8 0, ptr %i.e, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIcSaIcEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN4absl12lts_202505126c_copyISt17basic_string_viewIcSt11char_traitsIcEESt20back_insert_iteratorISt6vectorIcSaIcEEEEET0_RKT_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %.pre.i.i.i.i.i.a = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.g = phi ptr [ %.pre.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i ], [ %3, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %2 = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i = phi i64 [ %i.a, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %2, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !32
  store i8 %i.h, ptr %2, align 1, !tbaa !32
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !25
  %.pre8.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775807
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.p = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.n
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 9223372036854775807)
  %i.s = select i1 %i.q, i64 9223372036854775807, i64 %i.r ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #14 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  %i.v = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !32
  store i8 %i.v, ptr %i.u, align 1, !tbaa !32
  %i.w = icmp sgt i64 %i.n, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.aa) #15
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.t, ptr %1, align 8, !tbaa !24
  store ptr %i.x, ptr %i.e, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !31
  br label %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.c
  %3 = phi ptr [ %.pre8.i.i.i.i.i, %bb.c ], [ %i.ab, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.ac = phi ptr [ %i.j, %bb.c ], [ %i.x, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.ae = add nsw i64 %.07.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.af, label %bb.b, label %_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit, !llvm.loop !0

_ZSt4copyIPKcSt20back_insert_iteratorISt6vectorIcSaIcEEEET0_T_S8_S7_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIcSaIcEEEaSERKc.exit.i.i.i.i.i, %bb.a
  ret ptr %1
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !26}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !8, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0, !11, i64 8}
!13 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIcSaIcEE", !15, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTSN6google8protobuf13json_internal22ZeroCopyBufferedStreamE", !9, i64 0, !12, i64 8, !16, i64 24, !17, i64 48, !10, i64 56, !10, i64 64, !17, i64 72, !6, i64 76}
!19 = !{!18, !10, i64 56}
!20 = !{!10, !10, i64 0}
!21 = !{!18, !17, i64 48}
!22 = !{i8 0, i8 2}
!23 = !{!18, !10, i64 64}
!24 = !{!13, !11, i64 0}
!25 = !{!13, !11, i64 8}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"_ZTSN4absl12lts_202505126StatusE", !10, i64 0}
!28 = !{!27, !10, i64 0}
!29 = !{}
!30 = !{!18, !6, i64 76}
!31 = !{!13, !11, i64 16}
!32 = !{!5, !5, i64 0}
!33 = !{!"p1 _ZTSN6google8protobuf13json_internal22ZeroCopyBufferedStreamE", !8, i64 0}
!34 = !{!"_ZTSN6google8protobuf13json_internal14BufferingGuardE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!12, !10, i64 0}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !"_ZN4absl12lts_202505128OkStatusEv"}
!39 = distinct !{!39, !38, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!40 = !{!39}
!41 = !{!18, !17, i64 72}
!42 = !{!11, !11, i64 0}
!43 = !{!18, !9, i64 0}
!44 = !{!"vtable pointer", !4, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!8, !8, i64 0}
!47 = distinct !{!47, !26}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !"_ZN4absl12lts_202505128OkStatusEv"}
!51 = distinct !{!51, !50, !"_ZN4absl12lts_202505128OkStatusEv: argument 0"}
!52 = !{!51}
!53 = !{!12, !11, i64 8}
end_hunk_1
