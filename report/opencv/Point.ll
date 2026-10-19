Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/Point?download=true
inline.NumInlined: 336
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%"struct.logos::MatchPoint" = type { float, i32 }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_RT0_ = comdat any

$_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_default_appendEm = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN5logos5PointC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5logos5PointC2Ev
@_ZN5logos5PointC1Effffi = hidden unnamed_addr alias void (ptr, float, float, float, float, i32), ptr @_ZN5logos5PointC2Effffi

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5logos5PointC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 41), (44, 48)) %0) unnamed_addr #0 align 2 {
bb.a:
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.b, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5logos5PointC2Effffi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 41), (44, 48)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  store float %1, ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %3, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %4, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.d, i8 0, i64 25, i1 false)
  store i32 %5, ptr %i.e, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5logos5Point17nearestNeighboursERKSt6vectorIPS0_SaIS2_EEii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN5logos5Point22nearestNeighboursNaiveERKSt6vectorIPS0_SaIS2_EEii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5logos5Point22nearestNeighboursNaiveERKSt6vectorIPS0_SaIS2_EEii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit: ; preds = %bb.c
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #15 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %i.i ; 2 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %.pre111 = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.l = icmp eq ptr %.pre, %.pre111
  br i1 %i.l, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit
  %.not.i.i = icmp eq ptr %.sroa.047.1, %.sroa.13.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = ptrtoint ptr %.sroa.13.1 to i64
  %i.o = ptrtoint ptr %.sroa.047.1 to i64         ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_(ptr %.sroa.047.1, ptr %.sroa.13.1, i64 noundef %i.t, ptr nonnull @_ZN5logosL3cMPERKNS_10MatchPointES2_)
          to label %.noexc24 unwind label %bb.ac

.noexc24:                                         ; preds = %bb.d
  %i.u = icmp sgt i64 %i.p, 128
  %scevgep.i = getelementptr i8, ptr %.sroa.047.1, i64 8 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i, label %bb.k

.lr.ph.i.i:                                       ; preds = %.noexc24
  %.pre115 = load float, ptr %.sroa.047.1, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.v = phi float [ %.pre115, %.lr.ph.i.i ], [ %i.ak, %bb.j ]
  %.sroa.0.021.i.idx.i = phi i64 [ 8, %.lr.ph.i.i ], [ %.sroa.0.021.i.add.i, %bb.j ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.sroa.047.1, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.j ] ; 3 uses
  %.sroa.0.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 %.sroa.0.021.i.idx.i ; 6 uses
  %i.w = load float, ptr %.sroa.0.021.i.ptr.i, align 4 ; 4 uses
  %i.x = fcmp olt float %i.w, %i.v
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %.sroa.0.021.i.ptr.i, align 4 ; 2 uses
  %i.z = icmp samesign ugt i64 %.sroa.0.021.i.idx.i, 8
  br i1 %i.z, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.047.1, i64 %.sroa.0.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %i.ab = load i64, ptr %.sroa.047.1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.h, %bb.g
  store i64 %i.y, ptr %.sroa.047.1, align 4
  %i.ac = trunc i64 %i.y to i32
  %i.ad = bitcast i32 %i.ac to float
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %.sroa.0.021.i.ptr.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.ptr.i, i64 4
  %i.ae = load i32, ptr %.sroa.0.021.i.ptr.i.sroa_idx, align 4
  %i.af = load float, ptr %.pn20.i.i, align 4, !tbaa !29
  %i.ag = fcmp ogt float %i.af, %i.w
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.i ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.i ]
  %i.ah = load i64, ptr %.sroa.0.09.i.i.i, align 4
  store i64 %i.ah, ptr %.sroa.04.08.i.i.i, align 4
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8 ; 2 uses
  %i.ai = load float, ptr %.sroa.0.0.i.i.i, align 4, !tbaa !29
  %i.aj = fcmp ogt float %i.ai, %i.w
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.i ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store float %i.w, ptr %.sroa.04.0.lcssa.i.i.i, align 4
  %.sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store i32 %i.ae, ptr %.sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  %.pre114 = load float, ptr %.sroa.047.1, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  %i.ak = phi float [ %.pre114, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i.i ], [ %i.ad, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ]
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 8 ; 2 uses
  %.not.i.i33 = icmp eq i64 %.sroa.0.021.i.add.i, 128
  br i1 %.not.i.i33, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i, label %bb.e, !llvm.loop !36

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.047.1, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.al, %.sroa.13.1
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.at, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i ], [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i ] ; 6 uses
  %i.am = load <2 x i32>, ptr %.sroa.0.08.i.i, align 4
  %i.an = load float, ptr %.sroa.0.08.i.i, align 4 ; 2 uses
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.ao = load float, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !29
  %i.ap = fcmp ogt float %i.ao, %i.an
  br i1 %i.ap, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 4 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  %i.aq = load i64, ptr %.sroa.0.09.i.i15.i, align 4
  store i64 %i.aq, ptr %.sroa.04.08.i.i16.i, align 4
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -8 ; 2 uses
  %i.ar = load float, ptr %.sroa.0.0.i.i17.i, align 4, !tbaa !29
  %i.as = fcmp ogt float %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  store <2 x i32> %i.am, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.at, %.sroa.13.1
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !37

bb.k:                                             ; preds = %.noexc24
  %.not19.i20.i = icmp eq ptr %scevgep.i, %.sroa.13.1
  br i1 %.not19.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.k
  %.pre113 = load float, ptr %.sroa.047.1, align 4, !tbaa !29
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %bb.q
  %i.au = phi float [ %i.bq, %bb.q ], [ %.pre113, %.lr.ph.i21.i.preheader ]
  %.sroa.0.021.i22.i = phi ptr [ %.sroa.0.0.i26.i, %bb.q ], [ %scevgep.i, %.lr.ph.i21.i.preheader ] ; 8 uses
  %.pn20.i23.i = phi ptr [ %.sroa.0.021.i22.i, %bb.q ], [ %.sroa.047.1, %.lr.ph.i21.i.preheader ] ; 4 uses
  %i.av = load float, ptr %.sroa.0.021.i22.i, align 4 ; 4 uses
  %i.aw = fcmp olt float %i.av, %i.au
  br i1 %i.aw, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph.i21.i
  %i.ax = load i64, ptr %.sroa.0.021.i22.i, align 4 ; 2 uses
  %i.ay = ptrtoint ptr %.sroa.0.021.i22.i to i64
  %i.az = sub i64 %i.ay, %i.o                     ; 3 uses
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 1
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !48

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn20.i23.i, i64 16
  %i.bd = sub nsw i64 0, %i.ba
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.be, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.047.1, i64 %i.az, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

bb.n:                                             ; preds = %bb.l
  %i.bf = icmp eq i64 %i.az, 8
  br i1 %i.bf, label %bb.o, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn20.i23.i, i64 8
  %i.bh = load i64, ptr %.sroa.047.1, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i: ; preds = %bb.o, %bb.n, %bb.m
  store i64 %i.ax, ptr %.sroa.047.1, align 4
  %i.bi = trunc i64 %i.ax to i32
  %i.bj = bitcast i32 %i.bi to float
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.i21.i
  %.sroa.0.021.i22.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i22.i, i64 4
  %i.bk = load i32, ptr %.sroa.0.021.i22.i.sroa_idx, align 4
  %i.bl = load float, ptr %.pn20.i23.i, align 4, !tbaa !29
  %i.bm = fcmp ogt float %i.bl, %i.av
  br i1 %i.bm, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.p, %.lr.ph.i.i28.i
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.pn20.i23.i, %bb.p ] ; 4 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %.sroa.0.021.i22.i, %bb.p ]
  %i.bn = load i64, ptr %.sroa.0.09.i.i29.i, align 4
  store i64 %i.bn, ptr %.sroa.04.08.i.i30.i, align 4
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.bo = load float, ptr %.sroa.0.0.i.i31.i, align 4, !tbaa !29
  %i.bp = fcmp ogt float %i.bo, %i.av
  br i1 %i.bp, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, !llvm.loop !35

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.p
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %.sroa.0.021.i22.i, %bb.p ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ] ; 2 uses
  store float %i.av, ptr %.sroa.04.0.lcssa.i.i25.i, align 4
  %.sroa.04.0.lcssa.i.i25.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i25.i, i64 4
  store i32 %i.bk, ptr %.sroa.04.0.lcssa.i.i25.i.sroa_idx, align 4
  %.pre112 = load float, ptr %.sroa.047.1, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i
  %i.bq = phi float [ %.pre112, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i24.i ], [ %i.bj, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i32.i ]
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i22.i, i64 8 ; 2 uses
  %.not.i27.i = icmp eq ptr %.sroa.0.0.i26.i, %.sroa.13.1
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !36

bb.r:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit
  %.02098 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.043.097 = phi ptr [ %.pre, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.21.096 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.21.1, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %.sroa.13.095 = phi ptr [ %4, %.lr.ph ], [ %.sroa.13.1, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.047.094 = phi ptr [ %4, %.lr.ph ], [ %.sroa.047.1, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %i.br = icmp eq i32 %.02098, %2
  br i1 %i.br, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load float, ptr %0, align 8, !tbaa !21
  %i.bt = load float, ptr %i.m, align 4, !tbaa !22
  %i.bu = load ptr, ptr %.sroa.043.097, align 8, !tbaa !32 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !22
  %i.by = fsub float %i.bs, %i.bv                 ; 2 uses
  %i.bz = fsub float %i.bt, %i.bx                 ; 2 uses
  %i.ca = fmul float %i.bz, %i.bz
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.ca) ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.095, %.sroa.21.096
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store float %i.cb, ptr %.sroa.13.095, align 4
  %.sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.13.095, i64 4
  store i32 %.02098, ptr %.sroa_idx36, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.13.095, i64 8
  br label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit

bb.u:                                             ; preds = %bb.s
  %i.cd = ptrtoint ptr %.sroa.21.096 to i64
  %i.ce = ptrtoint ptr %.sroa.047.094 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 4 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.v, label %_ZNKSt6vectorIN5logos10MatchPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN5logos10MatchPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #15
          to label %.noexc27 unwind label %.loopexit ; 5 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIN5logos10MatchPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store float %i.cb, ptr %i.co, align 4
  %.sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %.02098, ptr %.sroa_idx38, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.047.094, %.sroa.21.096
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc27, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.cn, %.noexc27 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %.sroa.047.094, %.noexc27 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.cp = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !50
  store i64 %i.cp, ptr %.012.i.i.i.i.i, align 4, !alias.scope !49
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %.sroa.21.096
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorIN5logos10MatchPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cn, %.noexc27 ], [ %i.cr, %.lr.ph.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %.sroa.047.094, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.094, i64 noundef %i.cf) #16
  br label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5logos10MatchPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.t, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.r
  %.sroa.047.1 = phi ptr [ %.sroa.047.094, %bb.r ], [ %i.cn, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.047.094, %bb.t ] ; 25 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.095, %bb.r ], [ %i.cs, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.cc, %bb.t ] ; 8 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.096, %bb.r ], [ %i.ct, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.21.096, %bb.t ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.043.097, i64 8 ; 2 uses
  %i.cv = add nuw nsw i32 %.02098, 1
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !27
  %.not80 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not80, label %._crit_edge, label %bb.r, !llvm.loop !42

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5logos10MatchPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit: ; preds = %bb.q, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i, %bb.c, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit, %._crit_edge, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i
  %.sroa.21.0.lcssa141 = phi ptr [ %.sroa.21.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i ], [ null, %bb.c ], [ %.sroa.21.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i ], [ %.sroa.21.1, %._crit_edge ], [ %.sroa.21.1, %bb.k ], [ %i.k, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit ], [ %.sroa.21.1, %bb.q ] ; 2 uses
  %.sroa.047.0.lcssa139 = phi ptr [ %.sroa.047.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i11.i ], [ null, %bb.c ], [ %.sroa.047.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_.exit.i ], [ %.sroa.047.1, %._crit_edge ], [ %.sroa.047.1, %bb.k ], [ %4, %_ZNSt6vectorIN5logos10MatchPointESaIS1_EE7reserveEm.exit ], [ %.sroa.047.1, %bb.q ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cy = sext i32 %3 to i64                      ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 2 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 3                 ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.cy
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit
  %i.dh = sub nuw nsw i64 %i.cy, %i.df
  invoke void @_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef %i.dh)
          to label %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit unwind label %bb.ac

bb.y:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5logos10MatchPointESt6vectorIS3_SaIS3_EEEEPFbRKS3_SA_EEvT_SD_T0_.exit
  %i.di = icmp ugt i64 %i.df, %i.cy
  br i1 %i.di, label %bb.z, label %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.da, %i.dj
  br i1 %.not.i.i28, label %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5logos5PointES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5logos5PointES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.z
  store ptr %i.dj, ptr %i.cz, align 8, !tbaa !25
  br label %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPPN5logos5PointES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.z, %bb.y, %bb.x
  %i.dk = icmp sgt i32 %3, 0
  br i1 %i.dk, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit
  %i.dl = load ptr, ptr %1, align 8, !tbaa !26    ; 5 uses
  %i.dm = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 5 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.dn = icmp ult i32 %3, 4
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ad

._crit_edge104.loopexit.unr-lcssa:                ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge104, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge104.loopexit.unr-lcssa, %.lr.ph103
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next.3, %._crit_edge104.loopexit.unr-lcssa ]
  %.sroa.034.0101.epil.init = phi ptr [ %.sroa.047.0.lcssa139, %.lr.ph103 ], [ %i.fa, %._crit_edge104.loopexit.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.aa ] ; 2 uses
  %.sroa.034.0101.epil = phi ptr [ %.sroa.034.0101.epil.init, %.epil.preheader ], [ %i.du, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.034.0101.epil, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.epil
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.034.0101.epil, i64 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge104, label %bb.aa, !llvm.loop !43

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit.unr-lcssa, %bb.aa, %_ZNSt6vectorIPN5logos5PointESaIS2_EE6resizeEm.exit
  store i8 1, ptr %i.a, align 8, !tbaa !45
  %.not.i.i.i30 = icmp eq ptr %.sroa.047.0.lcssa139, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge104
  %i.dv = ptrtoint ptr %.sroa.21.0.lcssa141 to i64
  %i.dw = ptrtoint ptr %.sroa.047.0.lcssa139 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.0.lcssa139, i64 noundef %i.dx) #16
  br label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit

bb.ac:                                            ; preds = %bb.x, %bb.d
  %.sroa.21.0.lcssa142 = phi ptr [ %.sroa.21.0.lcssa141, %bb.x ], [ %.sroa.21.1, %bb.d ]
  %.sroa.047.0.lcssa140 = phi ptr [ %.sroa.047.0.lcssa139, %bb.x ], [ %.sroa.047.1, %bb.d ]
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ad, %.lr.ph103.new
  %indvars.iv = phi i64 [ 0, %.lr.ph103.new ], [ %indvars.iv.next.3, %bb.ad ] ; 5 uses
  %.sroa.034.0101 = phi ptr [ %.sroa.047.0.lcssa139, %.lr.ph103.new ], [ %i.fa, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph103.new ], [ %niter.next.3, %bb.ad ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.034.0101, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !32
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.034.0101, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !51
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.034.0101, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !51
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !32
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !32
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.034.0101, i64 28
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !51
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !32
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !32
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.034.0101, i64 32 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge104.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !44

_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit: ; preds = %bb.ab, %._crit_edge104, %bb.a
  ret void

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac
  %.sroa.047.090 = phi ptr [ %.sroa.047.0.lcssa140, %bb.ac ], [ %.sroa.047.094, %.loopexit ], [ %.sroa.047.094, %.loopexit.split-lp ] ; 3 uses
  %.sroa.21.084 = phi ptr [ %.sroa.21.0.lcssa142, %bb.ac ], [ %.sroa.21.096, %.loopexit ], [ %.sroa.21.096, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.ac ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i31 = icmp eq ptr %.sroa.047.090, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit32, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = ptrtoint ptr %.sroa.21.084 to i64
  %i.fc = ptrtoint ptr %.sroa.047.090 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.090, i64 noundef %i.fd) #16
  br label %_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit32

_ZNSt6vectorIN5logos10MatchPointESaIS1_EED2Ev.exit32: ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN5logos5Point10squareDistEffff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = fsub float %1, %3                        ; 2 uses
  %i.b = fsub float %2, %4                        ; 2 uses
  %i.c = fmul float %i.b, %i.b
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN5logosL3cMPERKNS_10MatchPointES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !29
  %i.b = load float, ptr %1, align 4, !tbaa !29
  %i.c = fcmp olt float %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5logos5Point10matchLabelEiRSt6vectorIPS0_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit
  %.sroa.03.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.03.08, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %bb.c, label %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %i.e, align 8, !tbaa !25
  br label %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %2, align 8, !tbaa !26     ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIPN5logos5PointESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

_ZNKSt6vectorIPN5logos5PointESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #15 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %.sroa.03.08, align 8, !tbaa !32
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !32
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorIPN5logos5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN5logos5PointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN5logos5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5logos5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN5logos5PointESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN5logos5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.af) #16
  br label %_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN5logos5PointESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !26
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5logos5PointESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN5logos5PointESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !27
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !53
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5logos5Point10printPointEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 8, !tbaa !21
  %i.b = fpext float %i.a to double
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.b) ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !22
  %i.g = fpext float %i.f to double
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %i.g) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !23
  %i.l = fpext float %i.k to double
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !24
  %i.q = fpext float %i.p to double
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.q) ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %i.u) ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !78
  %.not.i1.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !79
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10), !inline_history !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.af, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef signext %.0.i.i.i)
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5logos5Point7printNNEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
