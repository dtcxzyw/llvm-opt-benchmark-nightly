Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/proxy_mapper_registry?download=true
inline.NumInlined: 200
inline.NumDeleted: 131
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.grpc_core::ProxyMapperRegistry" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<grpc_core::ProxyMapperInterface>, std::allocator<std::unique_ptr<grpc_core::ProxyMapperInterface>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<grpc_core::ProxyMapperInterface>, std::allocator<std::unique_ptr<grpc_core::ProxyMapperInterface>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<grpc_core::ProxyMapperInterface>, std::allocator<std::unique_ptr<grpc_core::ProxyMapperInterface>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<grpc_core::ProxyMapperInterface>, std::allocator<std::unique_ptr<grpc_core::ProxyMapperInterface>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.grpc_core::ChannelArgs" = type { %"class.grpc_core::AVL" }
%"class.grpc_core::AVL" = type { %"class.grpc_core::RefCountedPtr" }
%"class.grpc_core::RefCountedPtr" = type { ptr }
%"class.std::optional.8" = type { %"struct.std::_Optional_base.9" }
%"struct.std::_Optional_base.9" = type { %"struct.std::_Optional_payload.11" }
%"struct.std::_Optional_payload.11" = type { %"struct.std::_Optional_payload_base.base.13", [3 x i8] }
%"struct.std::_Optional_payload_base.base.13" = type <{ %"union.std::_Optional_payload_base<grpc_resolved_address>::_Storage", i8 }>
%"union.std::_Optional_payload_base<grpc_resolved_address>::_Storage" = type { %struct.grpc_resolved_address }
%struct.grpc_resolved_address = type { [128 x i8], i32 }

$_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core19ProxyMapperRegistry7Builder8RegisterEbSt10unique_ptrINS_20ProxyMapperInterfaceESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.a, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %2, align 8, !tbaa !15
  store i64 %i.h, ptr %i.d, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  store i64 %i.k, ptr %i.d, align 8, !tbaa !15
  store ptr null, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.c, align 8, !tbaa !12
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.m, %i.b
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.d, %bb.e ]
  %.078.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i ], [ %i.j, %bb.e ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !15
  store ptr null, ptr %i.q, align 8, !tbaa !15
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !15   ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #12, !inline_history !22
  br label %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.x = add nsw i64 %.010.i.i.i.i.i.i.i.i, -1
  %i.y = icmp sgt i64 %.010.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, !llvm.loop !23

_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS1_EEaSEOS4_.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.z = load ptr, ptr %2, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !15
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, label %_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #12, !inline_history !24
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %2, align 8, !tbaa !15
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN9grpc_core20ProxyMapperInterfaceEEclEPS1_.exit.i.i.i.i.i.i.i, %_ZSt13move_backwardIPSt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EES6_ET0_T_S8_S7_.exit.i.i.i, %bb.d, %bb.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core19ProxyMapperRegistry7Builder5BuildEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::ProxyMapperRegistry") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EEaSEOS7_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !10
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  store ptr %i.d, ptr %i.a, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core19ProxyMapperRegistry7MapNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPNS_11ChannelArgsE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 %2, ptr %3, ptr noundef nonnull %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN9grpc_core11ChannelArgsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %.not25 = icmp eq ptr %i.a, %i.c
  br i1 %.not25, label %.critedge21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

6:                                                ; preds = %bb.d
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.022.026, i64 8 ; 2 uses
  %.not = icmp eq ptr %7, %i.c
  br i1 %.not, label %.critedge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %6
  %.sroa.022.026 = phi ptr [ %i.a, %.lr.ph ], [ %7, %6 ] ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.sroa.022.026, align 8, !tbaa !15 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 %2, ptr %3, ptr noundef nonnull %4)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 8, !tbaa !26, !range !20, !noundef !21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.critedge, label %6

.critedge21:                                      ; preds = %6, %bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.critedge21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.m, align 8, !tbaa !26
  br label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.c, %.critedge21
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %lpad.loopexit.split-lp30

.critedge:                                        ; preds = %bb.d, %bb.e
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare void @_ZN9grpc_core11ChannelArgsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core19ProxyMapperRegistry10MapAddressERK21grpc_resolved_addressPNS_11ChannelArgsE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.8") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(132) %2, ptr noundef nonnull %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN9grpc_core11ChannelArgsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %.not20 = icmp eq ptr %i.a, %i.c
  br i1 %.not20, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.016.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.016.021 = phi ptr [ %i.a, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %.sroa.016.021, align 8, !tbaa !15 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr dead_on_unwind writable sret(%"class.std::optional.8") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(132) %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.d, align 4, !tbaa !28, !range !20, !noundef !21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit19, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.n, align 4, !tbaa !28
  br label %.loopexit19

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.d, %.critedge
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %lpad.loopexit.split-lp25

.loopexit19:                                      ; preds = %bb.e, %bb.f
  call void @_ZN9grpc_core11ChannelArgsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #14 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !15
  store i64 %i.r, ptr %i.q, align 8, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !15, !alias.scope !44
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !15, !alias.scope !44
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !15, !alias.scope !43
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !15, !alias.scope !43
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !15, !alias.scope !44
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !15, !alias.scope !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !15, !alias.scope !44
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !15, !alias.scope !43
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !15, !alias.scope !44
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN9grpc_core20ProxyMapperInterfaceESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck
end_hunk_0
