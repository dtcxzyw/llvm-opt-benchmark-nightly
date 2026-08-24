Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/type_resolver_util?download=true
inline.NumInlined: 859
inline.NumDeleted: 458
begin_hunk_0_@_ZN6google8protobuf4util32NewTypeResolverForDescriptorPoolESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_14DescriptorPoolE:bb.a
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull %24)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40   ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
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
  %i.t = load i32, ptr %i.s, align 8, !tbaa !3
  %i.u = or i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 8, !tbaa !3
  invoke void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %i.y = icmp eq i64 %i.x, 0
  %i.z = add i64 %i.w, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i.i.i.i = select i1 %i.y, ptr %i.q, ptr %i.ab
  %i.ac = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %24, i64 176
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %i.ae = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr %.val
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.ag, null
  %i.ah = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.ag
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ah)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %.not1.i = icmp eq ptr %i.aj, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.bd, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %23, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %23)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.an, null
  %i.ao = select i1 %.not.i.i19.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.at, null
  %i.au = select i1 %.not.i.i21.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.at ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !51 ; 3 uses
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.ay, ptr %i.al, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %23) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !54

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !51
  %.pre4.i = load ptr, ptr %22, align 8, !tbaa !56
  %i.be = ptrtoint ptr %.pre.i to i64
  %i.bf = ptrtoint ptr %.pre4.i to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.bi = phi i64 [ %i.bh, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.bi, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.bk = and i64 %indvars.iv.next.i, 2147483648
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bm = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bn = and i64 %indvars.iv.next.i, 2147483647
  %i.bo = load ptr, ptr %22, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %i.bn
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.bp)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.bm, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.bs, null
  %i.bt = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !17 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.bv, null
  %i.bw = select i1 %.not.i.i25.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.bv
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(72) %i.bw)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i: ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !3
  %i.bz = or i32 %i.by, 512
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !3
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.u, label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !40 ; 3 uses
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i64 %i.cd, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ci = inttoptr i64 %i.cd to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.ch, %bb.v ], [ %i.ci, %bb.w ]
  %i.cj = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14MessageOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.l ; 2 uses

.noexc28.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !17
  br label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc28.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.ck = phi ptr [ %i.cj, %.noexc28.i ], [ %i.ca, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = or i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !17 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.x, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40 ; 3 uses
  %i.ct = trunc i64 %i.cs to i1
  br i1 %i.ct, label %bb.y, label %bb.z, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.cu = add nsw i64 %i.cs, -1
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

bb.z:                                             ; preds = %bb.x
  %i.cx = inttoptr i64 %i.cs to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i30.i = phi ptr [ %i.cw, %bb.y ], [ %i.cx, %bb.z ]
  %i.cy = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i30.i)
          to label %.noexc31.i unwind label %bb.l ; 2 uses

.noexc31.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !17
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %.noexc31.i, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.cz = phi ptr [ %i.cy, %.noexc31.i ], [ %i.cp, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %bb.s
  %i.da = load ptr, ptr %22, align 8, !tbaa !56   ; 3 uses
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.da, %i.db
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %i.da, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %.05.i.i.i.i) #20
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.dd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.da, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !53
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r, %bb.o, %bb.l
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.o ], [ %i.bq, %bb.r ], [ %i.az, %bb.l ]
  call void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = add i64 %i.dk, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.0.i.i.i.i.i10 = select i1 %i.dm, ptr %i.q, ptr %i.dp
  %i.dq = load ptr, ptr %.0.i.i.i.i.i10, align 8, !tbaa !49 ; 2 uses
  invoke void @_ZN6google8protobuf4Type5ClearEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !58 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.dt, align 1
  %i.du = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.dv = xor i64 %i.du, -1
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !3
  %i.dz = or i32 %i.dy, 8
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !40 ; 3 uses
  %i.ed = trunc i64 %i.ec to i1
  br i1 %i.ed, label %bb.ad, label %bb.ae, !prof !42

bb.ad:                                            ; preds = %.noexc26
  %i.ee = add nsw i64 %i.ec, -1
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util23ConvertDescriptorToTypeESt17basic_string_viewIcSt11char_traitsIcEERKNS0_10DescriptorE:bb.a
.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc43.i.i.i.invoke, %.noexc57, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit56.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i15, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i11, %bb.ac, %bb.f, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.e, %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.pn.i, %bb.ab ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i ], [ %.pn.i24, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit50.i ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i ], [ %i.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit62, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %24) #20
  br label %bb.dc

bb.dc:                                            ; preds = %.body, %bb.db
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.vd, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #4

declare void @_ZNK6google8protobuf10Descriptor6CopyToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf4TypeD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  invoke void @_ZNK6google8protobuf14FileDescriptor13CopyHeadingToEPNS0_19FileDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(184) %i.c, ptr noundef nonnull %9)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProtoC2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
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
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3
  %i.o = or i32 %i.n, 4
  store i32 %i.o, ptr %i.m, align 8, !tbaa !3
  invoke void @_ZNK6google8protobuf14EnumDescriptor6CopyToEPNS0_19EnumDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.l)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = add i64 %i.q, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.i.i.i.i = select i1 %i.s, ptr %i.k, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 176
  %.val = load ptr, ptr %i.x, align 8, !tbaa !17  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %.not.i.i.i = icmp eq ptr %.val, null
  %i.y = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf30_FileOptions_default_instance_E, ptr %.val
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i.i18.i = icmp eq ptr %i.aa, null
  %i.ab = select i1 %.not.i.i18.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.aa
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 2 uses
  %.not1.i = icmp eq ptr %i.ad, null
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i
  %.0142.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.ax, %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN6google8protobuf15DescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(176) %8, ptr noundef null)
          to label %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i unwind label %bb.m

_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i:  ; preds = %bb.g
  invoke void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(160) %.0142.i, ptr noundef nonnull %8)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google8protobuf15DescriptorProtoC2Ev.exit.i
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %i.ah, null
  %i.ai = select i1 %.not.i.i19.i, ptr @_ZN6google8protobuf33_MessageOptions_default_instance_E, ptr %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.an, null
  %i.ao = select i1 %.not.i.i21.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !51 ; 3 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf10FeatureSetC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.j
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.as, ptr %i.af, align 8, !tbaa !51
  br label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.ao)
          to label %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i unwind label %bb.n

bb.l:                                             ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.t, %bb.p
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
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #20
  br label %bb.o

_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.k, %.noexc.i, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.0142.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  call void @_ZN6google8protobuf15DescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(176) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !135

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ab

._crit_edge.loopexit.i:                           ; preds = %_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EE9push_backERKS2_.exit.i
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !51
  %.pre4.i = load ptr, ptr %7, align 8, !tbaa !56
  %i.ay = ptrtoint ptr %.pre.i to i64
  %i.az = ptrtoint ptr %.pre4.i to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc
  %i.bc = phi i64 [ %i.bb, %._crit_edge.loopexit.i ], [ 0, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i: ; preds = %bb.q, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ %i.bc, %._crit_edge.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.be = and i64 %indvars.iv.next.i, 2147483648
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bg = invoke noundef i64 @_ZNK6google8protobuf10FeatureSet12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.s unwind label %bb.l

bb.q:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i
  %i.bh = and i64 %indvars.iv.next.i, 2147483647
  %i.bi = load ptr, ptr %7, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.bi, i64 %i.bh
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bj)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.p
  %.not15.i = icmp eq i64 %i.bg, 0
  br i1 %.not15.i, label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.bm, null
  %i.bn = select i1 %.not.i.i24.i, ptr @_ZN6google8protobuf30_EnumOptions_default_instance_E, ptr %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17 ; 2 uses
  %.not.i.i25.i = icmp eq ptr %i.bp, null
  %i.bq = select i1 %.not.i.i25.i, ptr @_ZN6google8protobuf29_FeatureSet_default_instance_E, ptr %i.bp
  invoke void @_ZN6google8protobuf10FeatureSet9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.bq)
          to label %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i unwind label %bb.l

_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i: ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !3
  %i.bt = or i32 %i.bs, 16
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !3
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !17 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.u, label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40 ; 3 uses
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cc = inttoptr i64 %i.bx to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi ptr [ %i.cb, %bb.v ], [ %i.cc, %bb.w ]
  %i.cd = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_11EnumOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.l ; 2 uses

.noexc28.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !17
  br label %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i: ; preds = %.noexc28.i, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i
  %i.ce = phi ptr [ %i.cd, %.noexc28.i ], [ %i.bu, %_ZN6google8protobuf10FeatureSet9MergeFromERKS1_.exit27.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = or i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !17 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.x, label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

bb.x:                                             ; preds = %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !40 ; 3 uses
  %i.cn = trunc i64 %i.cm to i1
  br i1 %i.cn, label %bb.y, label %bb.z, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i64 %i.cm, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

bb.z:                                             ; preds = %bb.x
  %i.cr = inttoptr i64 %i.cm to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i30.i = phi ptr [ %i.cq, %bb.y ], [ %i.cr, %bb.z ]
  %i.cs = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i30.i)
          to label %.noexc31.i unwind label %bb.l ; 2 uses

.noexc31.i:                                       ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i29.i
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !17
  br label %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i: ; preds = %.noexc31.i, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i
  %i.ct = phi ptr [ %i.cs, %.noexc31.i ], [ %i.cj, %_ZN6google8protobuf19EnumDescriptorProto15mutable_optionsEv.exit.i ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i unwind label %bb.l

_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i:   ; preds = %_ZN6google8protobuf11EnumOptions16mutable_featuresEv.exit.i, %bb.s
  %i.cu = load ptr, ptr %7, align 8, !tbaa !56    ; 3 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !51 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cu, %i.cv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.cu, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 2 uses
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %.05.i.i.i.i) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i
  %i.cx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cu, %_ZN6google8protobuf10FeatureSetaSERKS1_.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #21
  br label %bb.ac

bb.ab:                                            ; preds = %bb.r, %bb.o, %bb.l
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.o ], [ %i.bk, %bb.r ], [ %i.at, %bb.l ]
  call void @_ZNSt6vectorIN6google8protobuf10FeatureSetESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf10FeatureSetES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6google8protobuf10FeatureSetD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = add i64 %i.de, -1
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.i.i.i.i.i8 = select i1 %i.dg, ptr %i.k, ptr %i.dj
  %i.dk = load ptr, ptr %.0.i.i.i.i.i8, align 8, !tbaa !49 ; 2 uses
  invoke void @_ZN6google8protobuf4Enum5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, -4
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !15 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !18
  switch i64 %i.ds, label %bb.ad [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
    i64 0, label %_ZN6google8protobuf4util12_GLOBAL__N_113ConvertSyntaxESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.noexc20
  %i.dt = load i32, ptr %i.dq, align 1
  %i.du = xor i32 %i.dt, 1953460848
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = zext i16 %i.dw to i32
  %i.dy = xor i32 %i.dx, 12911
  %i.dz = or i32 %i.du, %i.dy
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
end_hunk_1
