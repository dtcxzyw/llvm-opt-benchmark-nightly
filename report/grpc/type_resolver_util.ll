Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/type_resolver_util?download=true
inline.NumInlined: 867
inline.NumDeleted: 464
begin_hunk_0_@_ZN6google8protobuf4util32NewTypeResolverForDescriptorPoolESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_14DescriptorPoolE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !10
  %i.e = icmp eq ptr %1, null
  %i.f = icmp ne i64 %0, 0
  %or.cond.i.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 8, !tbaa !14
  %i.g = icmp ugt i64 %0, 15
  br i1 %i.g, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.f    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !16
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.i, ptr %i.d, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc4, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc4 ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %0, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.k, ptr %i.j, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr readonly align 1 %1, i64 %0, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.p, align 8, !tbaa !20
  ret ptr %i.b

bb.f:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #21
  resume { ptr, i32 } %i.q
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Type") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(160) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 38 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %17 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %21 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 10 uses
  %22 = alloca %"class.std::vector.115", align 8  ; 14 uses
  %23 = alloca %"class.google::protobuf::DescriptorProto", align 8 ; 8 uses
  %24 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 13 uses
  tail call void @_ZN6google8protobuf4TypeC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %24, ptr noundef null)
          to label %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit unwind label %bb.db

_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull %24)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.k to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 5 uses
  %i.r = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_15DescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef %.0.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !47
  %i.u = or i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 8, !tbaa !47
  invoke void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = icmp eq i64 %i.x, 0
  %i.z = add i64 %i.w, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i.i.i.i = select i1 %i.y, ptr %i.q, ptr %i.ab
  %i.ac = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !51 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 176
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf20FileOptions_globals_E, ptr %.val
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.af, null
  %spec.select.i.i19.i = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %i.af
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i19.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %.not1.i = icmp eq ptr %i.ah, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ax, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %23, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %23)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.al, null
  %spec.select.i.i21.i = select i1 %.not.i.i20.i, ptr @_ZN6google8protobuf23MessageOptions_globals_E, ptr %i.al ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i21.i, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !47
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %25 = getelementptr inbounds nuw i8, ptr %spec.select.i.i21.i, i64 40
  %26 = load ptr, ptr %25, align 8                ; 2 uses
  %.not.i.i24.i = icmp eq ptr %26, null
  %spec.select.i.i25.i = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %26 ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 3 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i25.i)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.as, ptr %i.aj, align 8, !tbaa !53
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i25.i)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %23) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !56

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.aj, align 8, !tbaa !53
  %.pre4.i = load ptr, ptr %22, align 8, !tbaa !58
  %i.ay = ptrtoint ptr %.pre.i to i64
  %i.az = ptrtoint ptr %.pre4.i to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.bc = phi i64 [ %i.bb, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.bc, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.be = and i64 %indvars.iv.next.i, 2147483648
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bg = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bh = and i64 %indvars.iv.next.i, 2147483647
  %i.bi = load ptr, ptr %22, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.bi, i64 %i.bh
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.bj)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.bg, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.bm, null
  %spec.select.i.i29.i = select i1 %.not.i.i28.i, ptr @_ZN6google8protobuf23MessageOptions_globals_E, ptr %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select.i.i29.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18 ; 2 uses
  %.not.i.i30.i = icmp eq ptr %i.bo, null
  %spec.select.i.i31.i = select i1 %.not.i.i30.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %i.bo
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i31.i)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i: ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !47
  %i.br = or i32 %i.bq, 512
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !47
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.u, label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !41 ; 3 uses
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %bb.v, label %bb.w, !prof !43

bb.v:                                             ; preds = %bb.u
  %i.bx = add nsw i64 %i.bv, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ca = inttoptr i64 %i.bv to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.bz, %bb.v ], [ %i.ca, %bb.w ]
  %i.cb = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14MessageOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc34.i unwind label %bb.l ; 2 uses

.noexc34.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !18
  br label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc34.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i
  %i.cc = phi ptr [ %i.cb, %.noexc34.i ], [ %i.bs, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47
  %i.cf = or i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !18 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.x, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !41 ; 3 uses
  %i.cl = trunc i64 %i.ck to i1
  br i1 %i.cl, label %bb.y, label %bb.z, !prof !43

bb.y:                                             ; preds = %bb.x
  %i.cm = add nsw i64 %i.ck, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i

bb.z:                                             ; preds = %bb.x
  %i.cp = inttoptr i64 %i.ck to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i36.i = phi ptr [ %i.co, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i36.i)
          to label %.noexc37.i unwind label %bb.l ; 2 uses

.noexc37.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !18
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %.noexc37.i, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cr = phi ptr [ %i.cq, %.noexc37.i ], [ %i.ch, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cr, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %bb.s
  %i.cs = load ptr, ptr %22, align 8, !tbaa !58   ; 3 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i ], [ %i.cs, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.05.i.i.i.i) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cs, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE:bb.a
  %i.ty = getelementptr inbounds nuw [56 x i8], ptr %i.tx, i64 %indvars.iv74.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !60 ; 2 uses
  %.0.copyload.i.i.i58.i = load i16, ptr %i.ua, align 1
  %i.ub = zext i16 %.0.copyload.i.i.i58.i to i64  ; 2 uses
  %i.uc = xor i64 %i.ub, -1
  %i.ud = getelementptr inbounds i8, ptr %i.ua, i64 %i.uc
  %i.ue = load i64, ptr %i.dt, align 8, !tbaa !41 ; 3 uses
  %i.uf = trunc i64 %i.ue to i1
  br i1 %i.uf, label %bb.cz, label %bb.da, !prof !43

bb.cz:                                            ; preds = %bb.cy
  %i.ug = add nsw i64 %i.ue, -1
  %i.uh = inttoptr i64 %i.ug to ptr
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !44
  br label %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i

bb.da:                                            ; preds = %bb.cy
  %i.uj = inttoptr i64 %i.ue to ptr
  br label %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i

_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i62.i = phi ptr [ %i.ui, %bb.cz ], [ %i.uj, %bb.da ]
  %i.uk = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef %.0.i.i.i62.i)
          to label %.noexc60 unwind label %.loopexit ; 2 uses

.noexc60:                                         ; preds = %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !19
  %i.un = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.uk, i64 noundef 0, i64 noundef %i.um, ptr noundef nonnull %i.ud, i64 noundef %i.ub)
          to label %.noexc61 unwind label %.loopexit ; 0 uses

.noexc61:                                         ; preds = %.noexc60
  %i.uo = load i32, ptr %i.dp, align 8, !tbaa !47
  %i.up = or i32 %i.uo, 2                         ; 2 uses
  store i32 %i.up, ptr %i.dp, align 8, !tbaa !47
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.uq = load i32, ptr %i.if, align 8, !tbaa !69
  %i.ur = sext i32 %i.uq to i64
  %i.us = icmp slt i64 %indvars.iv.next75.i, %i.ur
  br i1 %i.us, label %bb.cy, label %._crit_edge.i14, !llvm.loop !130

_ZN6google8protobuf4util12_GLOBAL__N_117ConvertDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorERKNS0_19FileDescriptorProtoERKNS0_15DescriptorProtoEPNS0_4TypeE.exit: ; preds = %.noexc58
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  ret void

bb.db:                                            ; preds = %bb.a
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit:                                        ; preds = %_ZN6google8protobuf4Type10add_oneofsISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit.i, %.noexc60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_122ConvertFieldDescriptorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoEPNS0_5FieldE.exit.i, %bb.cr, %.noexc53, %bb.cl, %.noexc51, %bb.ch, %.noexc.i.i.i42.i.i.i, %bb.by, %.noexc.i.i.i.i.i.i, %bb.bs, %bb.bq, %bb.bp, %.noexc.i.i27.i.i.i, %bb.bm, %.noexc.i.i22.i.i.i, %bb.bj, %.noexc.i.i17.i.i.i, %bb.bg, %.noexc.i.i.i.i.i, %bb.bd, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit51.i.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %.noexc31, %_ZN6google8protobuf4Type10add_fieldsEv.exit.i
  %lpad.loopexit63 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc43.i.i.i.invoke, %.noexc58, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i16, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11, %bb.ac, %bb.f, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.e, %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %bb.ab ], [ %i.pk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i ], [ %.pn.i25, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i ], [ %i.qj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i ], [ %i.rh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit63, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %24) #20
  br label %bb.dc

bb.dc:                                            ; preds = %.body, %bb.db
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ut, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #4

declare void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util23ConvertDescriptorToTypeERKNS0_14EnumDescriptorE(ptr dead_on_unwind noalias nonnull writable sret(%"class.google::protobuf::Enum") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 10 uses
  %6 = alloca %"class.google::protobuf::FeatureSet", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.115", align 8   ; 14 uses
  %8 = alloca %"class.google::protobuf::DescriptorProto", align 8 ; 8 uses
  %9 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 13 uses
  tail call void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %9, ptr noundef null)
          to label %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit unwind label %bb.bb

_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull %9)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.e to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 5 uses
  %i.l = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_19EnumDescriptorProtoEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %.0.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !47
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 8, !tbaa !47
  invoke void @_ZNK6google8protobuf14EnumDescriptor6CopyToEPNS0_19EnumDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.l)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !48
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = add i64 %i.q, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.i.i.i.i = select i1 %i.s, ptr %i.k, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !51 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 176
  %.val = load ptr, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf20FileOptions_globals_E, ptr %.val
  %i.y = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.z, null
  %spec.select.i.i19.i = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %i.z
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i19.i)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136 ; 2 uses
  %.not1.i = icmp eq ptr %i.ab, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.ar, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %8)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.af, null
  %spec.select.i.i21.i = select i1 %.not.i.i20.i, ptr @_ZN6google8protobuf23MessageOptions_globals_E, ptr %i.af ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i.i21.i, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %10 = getelementptr inbounds nuw i8, ptr %spec.select.i.i21.i, i64 40
  %11 = load ptr, ptr %10, align 8                ; 2 uses
  %.not.i.i24.i = icmp eq ptr %11, null
  %spec.select.i.i25.i = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %11 ; 2 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 3 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i25.i)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !53
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i25.i)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %8) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !137

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !53
  %.pre4.i = load ptr, ptr %7, align 8, !tbaa !58
  %i.as = ptrtoint ptr %.pre.i to i64
  %i.at = ptrtoint ptr %.pre4.i to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.aw = phi i64 [ %i.av, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.aw, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.ay = and i64 %indvars.iv.next.i, 2147483648
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.ba = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bb = and i64 %indvars.iv.next.i, 2147483647
  %i.bc = load ptr, ptr %7, align 8, !tbaa !58
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %i.bb
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bd)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.ba, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.bg, null
  %spec.select.i.i29.i = select i1 %.not.i.i28.i, ptr @_ZN6google8protobuf20EnumOptions_globals_E, ptr %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select.i.i29.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %.not.i.i30.i = icmp eq ptr %i.bi, null
  %spec.select.i.i31.i = select i1 %.not.i.i30.i, ptr @_ZN6google8protobuf19FeatureSet_globals_E, ptr %i.bi
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i31.i)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i: ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !47
  %i.bl = or i32 %i.bk, 16
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !47
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.u, label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !41 ; 3 uses
  %i.bq = trunc i64 %i.bp to i1
  br i1 %i.bq, label %bb.v, label %bb.w, !prof !43

bb.v:                                             ; preds = %bb.u
  %i.br = add nsw i64 %i.bp, -1
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bu = inttoptr i64 %i.bp to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.bt, %bb.v ], [ %i.bu, %bb.w ]
  %i.bv = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_11EnumOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc34.i unwind label %bb.l ; 2 uses

.noexc34.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.bv, ptr %i.bf, align 8, !tbaa !18
  br label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc34.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i
  %i.bw = phi ptr [ %i.bv, %.noexc34.i ], [ %i.bm, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit33.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !47
  %i.bz = or i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.x, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !41 ; 3 uses
  %i.cf = trunc i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z, !prof !43

bb.y:                                             ; preds = %bb.x
  %i.cg = add nsw i64 %i.ce, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !44
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i

bb.z:                                             ; preds = %bb.x
  %i.cj = inttoptr i64 %i.ce to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i36.i = phi ptr [ %i.ci, %bb.y ], [ %i.cj, %bb.z ]
  %i.ck = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i36.i)
          to label %.noexc37.i unwind label %bb.l ; 2 uses

.noexc37.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i35.i
  store ptr %i.ck, ptr %i.ca, align 8, !tbaa !18
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i: ; preds = %.noexc37.i, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.cl = phi ptr [ %i.ck, %.noexc37.i ], [ %i.cb, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %bb.s
  %i.cm = load ptr, ptr %7, align 8, !tbaa !58    ; 3 uses
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !53 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.cm, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.05.i.i.i.i) #20
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.cn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.cp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cm, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

end_hunk_1
