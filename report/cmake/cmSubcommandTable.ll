Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSubcommandTable?download=true
inline.NumInlined: 256
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::pair.17" = type { %"class.std::basic_string_view", ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::pair" = type { %"class.std::basic_string_view", ptr }

@.str = private unnamed_addr constant [32 x i8] c"does not recognize sub-command \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

@_ZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatusEEE = dso_local unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN17cmSubcommandTableC2ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatusEEE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmSubcommandTableC2ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatusEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx9 = mul i64 %2, 24                         ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 384307168202282325
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

.loopexit.thread:                                 ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i
  %i.b = getelementptr inbounds nuw i8, ptr null, i64 %.idx9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !26
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEEZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EvT_SW_T0_.exit"

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKS_INSt7__cxx1112basic_stringIcS3_SaIcEEESaIS8_EER17cmExecutionStatusEESaISH_EE17_S_check_init_lenEmRKSI_.exit.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx9) #15
          to label %.noexc4.i unwind label %bb.c  ; 10 uses

.noexc4.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  store ptr %i.e, ptr %0, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !25
  %i.h = add i64 %.idx9, -24                      ; 2 uses
  %i.i = udiv i64 %i.h, 24                        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.h, 24
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.noexc4.i.new

.noexc4.i.new:                                    ; preds = %.noexc4.i
  %unroll_iter = and i64 %i.j, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4.i.new
  %.015.i.i.i.i.i.i.idx = phi i64 [ 0, %.noexc4.i.new ], [ %.015.i.i.i.i.i.i.add.1, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %1, %.noexc4.i.new ], [ %i.s, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.noexc4.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.i.i.i.i.i.idx ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.i.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.ptr, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  store ptr %i.n, ptr %i.l, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 24
  %.015.i.i.i.i.i.i.add = add nuw nsw i64 %.015.i.i.i.i.i.i.idx, 24 ; 2 uses
  %.015.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.i.i.i.i.i.add ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.i.i.i.ptr.1, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 16, i1 false), !tbaa.struct !16
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.ptr.1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  store ptr %i.r, ptr %i.p, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 48 ; 2 uses
  %.015.i.i.i.i.i.i.add.1 = add nuw nsw i64 %.015.i.i.i.i.i.i.idx, 48 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i5.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #16
  br label %.body

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = and i64 %i.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %bb.e

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %.unr-lcssa, %.noexc4.i
  %.015.i.i.i.i.i.i.idx.epil.init = phi i64 [ 0, %.noexc4.i ], [ %.015.i.i.i.i.i.i.add.1, %.unr-lcssa ] ; 3 uses
  %.01214.i.i.i.i.i.i.epil.init = phi ptr [ %1, %.noexc4.i ], [ %i.s, %.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %.015.i.i.i.i.i.i.ptr.epil = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.i.i.i.i.i.idx.epil.init ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.015.i.i.i.i.i.i.ptr.epil, ptr noundef nonnull align 8 dereferenceable(24) %.01214.i.i.i.i.i.i.epil.init, i64 16, i1 false), !tbaa.struct !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.ptr.epil, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.epil.init, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !19
  %.015.i.i.i.i.i.i.add.epil = add nuw nsw i64 %.015.i.i.i.i.i.i.idx.epil.init, 24
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.015.i.i.i.i.i.i.idx.lcssa = phi i64 [ %.015.i.i.i.i.i.i.add, %.unr-lcssa ], [ %.015.i.i.i.i.i.i.idx.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.015.i.i.i.i.i.i.add.lcssa = phi i64 [ %.015.i.i.i.i.i.i.add.1, %.unr-lcssa ], [ %.015.i.i.i.i.i.i.add.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.ptr.lcssa = getelementptr inbounds nuw i8, ptr %i.e, i64 %.015.i.i.i.i.i.i.add.lcssa ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ptr.lcssa, ptr %i.ae, align 8, !tbaa !26
  %i.af = udiv exact i64 %.015.i.i.i.i.i.i.add.lcssa, 24
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = xor i64 %i.ah, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_T1_"(ptr nonnull %i.e, ptr nonnull %.ptr.lcssa, i64 noundef %i.ai)
  %i.aj = icmp samesign ugt i64 %.015.i.i.i.i.i.i.idx.lcssa, 360
  br i1 %i.aj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_"(ptr nonnull %i.e, ptr nonnull %i.ak)
  %.not6.i.i.i.i = icmp eq i64 %.015.i.i.i.i.i.i.add.lcssa, 384
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEEZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EvT_SW_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.av, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.ak, %bb.f ] ; 4 uses
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %i.al = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.5.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.08.0.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.h ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.i.i.i, i64 -24 ; 3 uses
  %.val3.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i.i.i.i, i64 %.sroa.04.0.copyload.i.i.i.i.i) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.sroa.08.0.i.i.i.i.i, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ao = tail call i32 @memcmp(ptr noundef readonly %.sroa.5.0.copyload.i.i.i.i.i, ptr noundef readonly %.val4.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #17 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i.i.i.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.g
  %i.aq = sub i64 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i.i.i.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.h, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit.i.i.i.i"

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16
  %i.at = getelementptr inbounds i8, ptr %.sroa.08.0.i.i.i.i.i, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  store ptr %i.au, ptr %i.as, align 8, !tbaa !19
  br label %bb.g, !llvm.loop !0

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listISt4pairIN2cm18static_string_viewEPFbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusEEEE3$_0EclIS4_ISt17basic_string_viewIcSB_ESL_ENS_17__normal_iteratorIPST_S7_IST_SaIST_EEEEEEbRT_T0_.exit.i.i.i.i.i"
  store i64 %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.08.0.i.i.i.i.i, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i.i.i, i64 8
  store <2 x ptr> %i.al, ptr %.sroa.5.0..sroa_idx6.i.i.i.i.i, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %.ptr.lcssa
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEEZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EvT_SW_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !23

bb.i:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_"(ptr nonnull %i.e, ptr nonnull %.ptr.lcssa)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEEZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EvT_SW_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEEZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EvT_SW_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_T0_.exit.i.i.i.i", %.loopexit.thread, %bb.i, %bb.f
  ret void

.body:                                            ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS2_SaIcEEESaIS8_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [2 x %"struct.std::pair.17"], align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEES6_ZNK17cmSubcommandTableclES6_SF_SH_E3$_0ET_SS_SS_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %bb.a
  %i.h = udiv exact i64 %i.f, 24
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i" ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i" ], [ %i.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.i = lshr i64 %.07.i.i, 1                     ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.02.06.i.i, i64 %i.i ; 3 uses
  %.val.i.i.i = load i64, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val.i.i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val2.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.m = tail call i32 @memcmp(ptr noundef readonly %.val2.i.i.i, ptr noundef readonly %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #17 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.o = sub i64 %.val.i.i.i, %1
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = xor i64 %i.i, -1
  %i.s = add nsw i64 %.07.i.i, %i.r
  %.sroa.02.1.i.i = select i1 %i.p, ptr %i.q, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.p, i64 %i.s, i64 %i.i    ; 2 uses
  %i.t = icmp sgt i64 %.1.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEES6_ZNK17cmSubcommandTableclES6_SF_SH_E3$_0ET_SS_SS_RKT0_T1_.exit", !llvm.loop !31

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEES6_ZNK17cmSubcommandTableclES6_SF_SH_E3$_0ET_SS_SS_RKT0_T1_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i", %bb.a
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.sroa.02.1.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK17cmSubcommandTableclESt17basic_string_viewIcSt11char_traitsIcEERKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusE3$_0EclINS_17__normal_iteratorIPKSt4pairIS6_PFbSF_SH_EES7_ISP_SaISP_EEEEKS6_EEbT_RT0_.exit.i.i" ] ; 4 uses
  %.not = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEES6_ZNK17cmSubcommandTableclES6_SF_SH_E3$_0ET_SS_SS_RKT0_T1_.exit"
  %.sroa.01.0.copyload = load i64, ptr %.sroa.02.0.lcssa.i.i, align 8, !tbaa !13
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !15
  %i.u = icmp eq i64 %.sroa.01.0.copyload, %1
  br i1 %i.u, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload, ptr %2, i64 %1)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(80) %4)
  br label %bb.e

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b, %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEES6_ZNK17cmSubcommandTableclES6_SF_SH_E3$_0ET_SS_SS_RKT0_T1_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !39
  store i64 31, ptr %5, align 8, !tbaa !13, !alias.scope !40, !noalias !39
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !15, !alias.scope !40, !noalias !39
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !43, !alias.scope !40, !noalias !39
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %1, ptr %i.ab, align 8, !tbaa !13, !alias.scope !44, !noalias !39
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %2, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !15, !alias.scope !44, !noalias !39
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ac, align 8, !tbaa !43, !alias.scope !44, !noalias !39
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %5, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !39
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.critedge
  %i.ae = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.d
  %i.an = load i64, ptr %i.al, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  %.0 = phi i1 [ %i.z, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %10 = alloca %"struct.std::pair", align 8       ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEEvT_SZ_SZ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph53

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPFbRKSt6vectorINSt7__cxx1112basic_stringIcS5_SaIcEEESaISB_EER17cmExecutionStatusEES7_ISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZN17cmSubcommandTableC1ESt16initializer_listIS2_IN2cm18static_string_viewESJ_EEE3$_0EEET_SZ_SZ_T0_.exit"
  %i.k = icmp eq i64 %i.y, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph53, !llvm.loop !49

end_hunk_0
