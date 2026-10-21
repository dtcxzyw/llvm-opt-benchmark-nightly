Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/handshaker_registry?download=true
inline.NumInlined: 167
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.grpc_core::HandshakerRegistry" = type { [2 x %"class.std::vector"] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<grpc_core::HandshakerFactory>, std::allocator<std::unique_ptr<grpc_core::HandshakerFactory>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<grpc_core::HandshakerFactory>, std::allocator<std::unique_ptr<grpc_core::HandshakerFactory>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<grpc_core::HandshakerFactory>, std::allocator<std::unique_ptr<grpc_core::HandshakerFactory>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<grpc_core::HandshakerFactory>, std::allocator<std::unique_ptr<grpc_core::HandshakerFactory>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core18HandshakerRegistry7Builder25RegisterHandshakerFactoryENS_14HandshakerTypeESt10unique_ptrINS_17HandshakerFactoryESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.08.013 = phi ptr [ %i.r, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.l = load ptr, ptr %.sroa.08.013, align 8, !tbaa !12 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.q = icmp slt i32 %i.k, %i.p
  %.pre16.pre = load ptr, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  br i1 %i.q, label %._crit_edge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %.pre16.pre
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.b
  %.sroa.011.0.ph = phi ptr [ %i.e, %bb.b ], [ %.sroa.08.013, %.lr.ph ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi ptr [ %i.e, %bb.a ], [ %.pre16.pre, %._crit_edge.loopexit ] ; 8 uses
  %i.t = phi ptr [ %i.c, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.011.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.011.0.ph, %._crit_edge.loopexit ] ; 2 uses
  %i.u = ptrtoint ptr %.sroa.011.0 to i64         ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.s, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.z = icmp eq ptr %.sroa.011.0, %i.s
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %2, align 8, !tbaa !12
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !12
  store ptr null, ptr %2, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !18
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !12
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !12
  store ptr null, ptr %i.ad, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.af, ptr %i.d, align 8, !tbaa !18
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.ag, %i.u
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.e ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.s, %bb.e ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.e ]
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !12
  store ptr null, ptr %i.ak, align 8, !tbaa !12
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !12 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #9, !inline_history !21
  br label %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !22

_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.at = load ptr, ptr %2, align 8, !tbaa !12
  store ptr null, ptr %2, align 8, !tbaa !12
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 3 uses
  store ptr %i.at, ptr %i.ac, align 8, !tbaa !12
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_.exit, label %_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #9, !inline_history !23
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.t, i64 %i.w
  tail call void @_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_.exit: ; preds = %bb.d, %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %_ZNKSt14default_deleteIN9grpc_core17HandshakerFactoryEEclEPS1_.exit.i.i.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core18HandshakerRegistry7Builder5BuildEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::HandshakerRegistry") align 8 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EEaSEOS7_.exit.1:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !10
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = load <2 x ptr>, ptr %.phi.trans.insert7, align 8, !tbaa !10
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %i.g = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %i.h = insertelement <4 x ptr> %i.g, ptr %.pre, i64 1
  %i.i = shufflevector <2 x ptr> %i.f, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.j = shufflevector <4 x ptr> %i.h, <4 x ptr> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.j, ptr %i.a, align 8, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core18HandshakerRegistry14AddHandshakersENS_14HandshakerTypeERKNS_11ChannelArgsEP16grpc_pollset_setPNS_16HandshakeManagerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not10 = icmp eq ptr %i.c, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.011 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !12 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #11 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !12
  store i64 %i.r, ptr %i.q, align 8, !tbaa !12
  store ptr null, ptr %2, align 8, !tbaa !12
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9grpc_core17HandshakerFactoryESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
end_hunk_0
