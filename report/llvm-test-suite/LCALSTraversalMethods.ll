inline.NumInlined: 78
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$__clang_call_terminate = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [47 x i8] c"\09 HybridIndexSet dtor: case not implemented!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\09 HybridIndexSet copySegments: case not implemented!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN14HybridIndexSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14HybridIndexSetD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14HybridIndexSetD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #10
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EED2Ev.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !13
  switch i32 %i.n, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %.not13 = icmp eq ptr %i.p, null
  br i1 %.not13, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.sink.split: ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #10
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.sink.split, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #11
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14HybridIndexSet12copySegmentsERKS_(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  switch i32 %i.m, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  tail call void @_ZN14HybridIndexSet11addIndexSetERK13RangeIndexSet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.o)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  tail call void @_ZN14HybridIndexSet11addIndexSetERK19RangeStrideIndexSet(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.q)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 54) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14HybridIndexSet11addIndexSetERK13RangeIndexSet(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !20     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22   ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.e, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !24
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.a, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !25
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.g, align 8, !tbaa !8
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !12   ; 5 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775792
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 576460752303423487)
  %i.v = select i1 %i.t, i64 576460752303423487, i64 %i.u ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !24
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.a, ptr %.sroa.58.0..sroa_idx9, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !26, !alias.scope !27
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.h
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #10
  %.pre.pre = load i32, ptr %i.e, align 4, !tbaa !22
  %.pre11.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre11 = phi i32 [ %.pre11.pre, %bb.e ], [ %i.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ %i.d, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.x, ptr %i.f, align 8, !tbaa !12
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !23
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ad = phi i32 [ %i.b, %bb.b ], [ %.pre11, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ae = phi i32 [ %i.d, %bb.b ], [ %.pre, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.af = sub i32 %i.ae, %i.ad
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  %i.ah = add nsw i32 %i.af, %i.ag
  store i32 %i.ah, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14HybridIndexSet11addIndexSetERK19RangeStrideIndexSet(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #13 ; 6 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !37     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.g, align 4, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %i.f, ptr %i.h, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.k, align 8, !tbaa !24
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.a, ptr %.sroa.510.0..sroa_idx, align 8, !tbaa !25
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.j, align 8, !tbaa !8
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !12   ; 5 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775792
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487)
  %i.y = select i1 %i.w, i64 576460752303423487, i64 %i.x ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #13 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !24
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.a, ptr %.sroa.510.0..sroa_idx11, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !26, !alias.scope !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #10
  %.pre.pre = load i32, ptr %i.g, align 4, !tbaa !39
  %.pre13.pre = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre14.pre = load i32, ptr %i.h, align 4, !tbaa !40
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre14 = phi i32 [ %.pre14.pre, %bb.e ], [ %i.f, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre13 = phi i32 [ %.pre13.pre, %bb.e ], [ %i.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ %i.d, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !12
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.af, ptr %i.l, align 8, !tbaa !23
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ag = phi i32 [ %i.f, %bb.b ], [ %.pre14, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ah = phi i32 [ %i.b, %bb.b ], [ %.pre13, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ai = phi i32 [ %i.d, %bb.b ], [ %.pre, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.aj = sub nsw i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.ag
  %i.al = load i32, ptr %0, align 8, !tbaa !32
  %i.am = add nsw i32 %i.al, %i.ak
  store i32 %i.am, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14HybridIndexSet15addRangeIndicesEii(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #13 ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !24
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.a, ptr %.sroa.57.0..sroa_idx, align 8, !tbaa !25
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.d, align 8, !tbaa !8
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !12   ; 5 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 576460752303423487)
  %i.s = select i1 %i.q, i64 576460752303423487, i64 %i.r ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #13 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !24
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.a, ptr %.sroa.57.0..sroa_idx8, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !26, !alias.scope !45
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #10
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !22
  %.pre10.pre = load i32, ptr %i.a, align 4, !tbaa !20
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre10 = phi i32 [ %.pre10.pre, %bb.e ], [ %1, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ %2, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.u, ptr %i.c, align 8, !tbaa !12
  store ptr %i.y, ptr %i.d, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.z, ptr %i.f, align 8, !tbaa !23
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.aa = phi i32 [ %1, %bb.b ], [ %.pre10, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ab = phi i32 [ %2, %bb.b ], [ %.pre, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ac = sub i32 %i.ab, %i.aa
  %i.ad = load i32, ptr %0, align 8, !tbaa !32
  %i.ae = add nsw i32 %i.ac, %i.ad
  store i32 %i.ae, ptr %0, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14HybridIndexSet21addRangeStrideIndicesEiii(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #13 ; 6 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %3, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.f, align 8, !tbaa !24
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.a, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !25
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.e, align 8, !tbaa !8
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 576460752303423487)
  %i.t = select i1 %i.r, i64 576460752303423487, i64 %i.s ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #13 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n ; 2 uses
  store i32 1, ptr %i.w, align 8, !tbaa !24
  %.sroa.59.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.a, ptr %.sroa.59.0..sroa_idx10, align 8, !tbaa !25
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !26, !alias.scope !49
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #10
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !39
  %.pre12.pre = load i32, ptr %i.a, align 4, !tbaa !37
  %.pre13.pre = load i32, ptr %i.c, align 4, !tbaa !40
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre13 = phi i32 [ %.pre13.pre, %bb.e ], [ %3, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre12 = phi i32 [ %.pre12.pre, %bb.e ], [ %1, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  %.pre = phi i32 [ %.pre.pre, %bb.e ], [ %2, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.v, ptr %i.d, align 8, !tbaa !12
  store ptr %i.z, ptr %i.e, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !23
  br label %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ab = phi i32 [ %3, %bb.b ], [ %.pre13, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ac = phi i32 [ %1, %bb.b ], [ %.pre12, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ad = phi i32 [ %2, %bb.b ], [ %.pre, %_ZNSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ae = sub nsw i32 %i.ad, %i.ac
  %i.af = sdiv i32 %i.ae, %i.ab
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  %i.ah = add nsw i32 %i.ag, %i.af
  store i32 %i.ah, ptr %0, align 8, !tbaa !32
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIN14HybridIndexSet7SegmentESaIS1_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSN14HybridIndexSet7SegmentE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN14HybridIndexSet7SegmentE", !15, i64 0, !11, i64 8}
!15 = !{!"_ZTSN14HybridIndexSet11SegmentTypeE", !6, i64 0}
!16 = !{!14, !11, i64 8}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21, !5, i64 0}
!21 = !{!"_ZTS13RangeIndexSet", !5, i64 0, !5, i64 4}
!22 = !{!21, !5, i64 4}
!23 = !{!9, !10, i64 16}
!24 = !{!15, !15, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{i64 0, i64 4, !24, i64 8, i64 8, !25}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!31 = distinct !{!31, !18}
!32 = !{!33, !5, i64 0}
!33 = !{!"_ZTS14HybridIndexSet", !5, i64 0, !34, i64 8}
!34 = !{!"_ZTSSt6vectorIN14HybridIndexSet7SegmentESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN14HybridIndexSet7SegmentESaIS1_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN14HybridIndexSet7SegmentESaIS1_EE12_Vector_implE", !9, i64 0}
!37 = !{!38, !5, i64 0}
!38 = !{!"_ZTS19RangeStrideIndexSet", !5, i64 0, !5, i64 4, !5, i64 8}
!39 = !{!38, !5, i64 4}
!40 = !{!38, !5, i64 8}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!45 = !{!46, !48}
!46 = distinct !{!46, !47, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!47 = distinct !{!47, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_"}
!48 = distinct !{!48, !47, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_"}
!52 = distinct !{!52, !51, !"_ZSt19__relocate_object_aIN14HybridIndexSet7SegmentES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
end_hunk_0
