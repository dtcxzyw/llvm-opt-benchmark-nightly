inline.NumInlined: 525
inline.NumDeleted: 258
begin_hunk_0_@_ZN9grpc_core17EndpointAddressesaSERKS0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI21grpc_resolved_addressSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 132
  %i.o = icmp ugt i64 %i.n, 69874030582233150
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE11_M_allocateEm.exit.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 3 uses
  %i.q = icmp sgt i64 %i.f, 132
  br i1 %i.q, label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, label %bb.e, !prof !19

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE11_M_allocateEm.exit.i
  %i.r = icmp eq i64 %i.f, 132
  br i1 %i.r, label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE11_M_allocateEm.exit.i ], [ 132, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.p, ptr noundef nonnull align 4 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit

_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit: ; preds = %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit.sink.split, %bb.e
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #23
  br label %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !13
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i64 %i.f, 132
  br i1 %i.x, label %bb.i, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %i.f, 132
  br i1 %i.y, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.i, ptr noundef nonnull align 4 dereferenceable(132) %i.c, i64 132, i1 false), !tbaa.struct !14
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.g
  %i.z = icmp sgt i64 %i.w, 132
  br i1 %i.z, label %bb.m, label %bb.n, !prof !19

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = icmp eq i64 %i.w, 132
  br i1 %i.aa, label %bb.o, label %_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.i, ptr noundef nonnull align 4 dereferenceable(132) %i.c, i64 132, i1 false), !tbaa.struct !14
  br label %_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit

_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.ab = load ptr, ptr %1, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !12  ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 132
  br i1 %i.am, label %bb.p, label %bb.q, !prof !19

bb.p:                                             ; preds = %_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ac, ptr align 4 %i.ah, i64 %i.al, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.q:                                             ; preds = %_ZSt4copyIP21grpc_resolved_addressS1_ET0_T_S3_S2_.exit
  %i.an = icmp eq i64 %i.al, 132
  br i1 %i.an, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.ac, ptr noundef nonnull align 4 dereferenceable(132) %i.ah, i64 132, i1 false), !tbaa.struct !14
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseI21grpc_resolved_addressSaIS0_EE13_M_deallocateEPS0_m.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK21grpc_resolved_addressSt6vectorIS2_SaIS2_EEEENS1_IPS2_S7_EEET0_T_SC_SB_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core17EndpointAddressesC2EOS0_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !17
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  store ptr %i.d, ptr %i.b, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN9grpc_core11ChannelArgsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core17EndpointAddressesaSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(32) initializes((8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !17
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  store ptr %i.f, ptr %i.b, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #23
  br label %_ZNSt6vectorI21grpc_resolved_addressSaIS0_EEaSEOS2_.exit

_ZNSt6vectorI21grpc_resolved_addressSaIS0_EEaSEOS2_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #24 ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9grpc_core11ChannelArgsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK9grpc_core17EndpointAddresses3CmpERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not29 = icmp eq ptr %i.b, %i.c
  br i1 %.not29, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  %.pre30 = load ptr, ptr %1, align 8, !tbaa !8
  %.pre31 = ptrtoint ptr %.pre to i64
  %.pre32 = ptrtoint ptr %.pre30 to i64
  %.pre34 = sub i64 %.pre31, %.pre32
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %2 = sdiv i64 %i.f, 132
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load ptr, ptr %1, align 8, !tbaa !8        ; 2 uses
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7                             ; 2 uses
  %i.g = sdiv exact i64 %8, 132
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  %i.h = add nuw i64 %.02128, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.02128 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = icmp eq i64 %i.g, %.02128
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [132 x i8], ptr %i.c, i64 %.02128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22   ; 3 uses
  %i.m = getelementptr inbounds nuw [132 x i8], ptr %5, i64 %.02128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = icmp ugt i32 %i.l, %i.o
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.l, %i.o
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %i.l to i64
  %i.s = tail call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, i64 noundef %i.r) #28 ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.b, label %.thread

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi35 = phi i64 [ %.pre34, %.._crit_edge_crit_edge ], [ %8, %bb.b ]
  %i.t = icmp ugt i64 %.pre-phi35, %i.f
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = tail call noundef i32 @_ZN9grpc_core12QsortCompareERKNS_3AVLINS_21RefCountedStringValueENS_11ChannelArgs5ValueEEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %._crit_edge, %bb.g
  %.3 = phi i32 [ -1, %._crit_edge ], [ %i.w, %bb.g ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.s, %bb.f ], [ -1, %bb.e ]
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core17EndpointAddresses8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.5", align 8     ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::vector.5", align 8     ; 15 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 11 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca %"class.grpc_core::ChannelArgs", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not119 = icmp eq ptr %i.a, %i.c
  br i1 %.not119, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 7, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.f, ptr %9, align 8, !tbaa !24, !alias.scope !27
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !36, !alias.scope !27
  store i8 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !27
  br label %.loopexit117

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %.sroa.0114.0120 = phi ptr [ %i.a, %.lr.ph ], [ %i.aw, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_Z23grpc_sockaddr_to_stringB5cxx11PK21grpc_resolved_addressb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %3, ptr noundef nonnull %.sroa.0114.0120, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.o = load i64, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %4, align 8, !tbaa !24
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  store ptr %i.q, ptr %4, align 8, !tbaa !41
  %i.v = load i64, ptr %i.j, align 8, !tbaa !15
  store i64 %i.v, ptr %i.i, align 8, !tbaa !15
  %.pre = load i64, ptr %i.k, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = phi i64 [ %i.s, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.w, ptr %i.l, align 8, !tbaa !36
  store ptr %i.j, ptr %i.h, align 8, !tbaa !41
  store i64 0, ptr %i.k, align 8, !tbaa !36
  store i8 0, ptr %i.j, align 8, !tbaa !15
  br label %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202505126Status12ToStringSlowB5cxx11EmNS0_18StatusToStringModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %i.o, i32 noundef 1)
          to label %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit unwind label %bb.n

_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !42   ; 7 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !24
  %i.aa = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.i
  br i1 %i.ab, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !36  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !41
  %i.af = load i64, ptr %i.i, align 8, !tbaa !15
  store i64 %i.af, ptr %i.z, align 8, !tbaa !15
  %.pre122 = load i64, ptr %i.l, align 8, !tbaa !36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %.pre122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  store ptr %i.i, ptr %4, align 8, !tbaa !41
  store i64 0, ptr %i.l, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.ai, ptr %i.m, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_202505126Status8ToStringB5cxx11ENS0_18StatusToStringModeE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.o

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre123 = load ptr, ptr %4, align 8, !tbaa !41 ; 2 uses
  %i.aj = icmp eq ptr %.pre123, %i.i
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %.pre123, i64 noundef %i.al) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.am = load i64, ptr %3, align 8, !tbaa !39    ; 3 uses
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.j

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !41  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = trunc i64 %i.am to i1
  br i1 %i.as, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = inttoptr i64 %i.am to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.at)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41, %bb.j, %bb.k
end_hunk_0
