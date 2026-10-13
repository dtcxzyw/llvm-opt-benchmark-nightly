Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZNK6google8protobuf16MethodDescriptor6CopyToEPNS0_21MethodDescriptorProtoE:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit, %_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit32
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !528, !range !71, !noundef !72
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 1, ptr %i.dp, align 8, !tbaa !62
  %i.dq = load i32, ptr %i.j, align 8, !tbaa !47
  %i.dr = or i32 %i.dq, 16
  store i32 %i.dr, ptr %i.j, align 8, !tbaa !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !529, !range !71, !noundef !72
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 1, ptr %i.dv, align 1, !tbaa !62
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !47
  %i.dx = or i32 %i.dw, 32
  store i32 %i.dx, ptr %i.j, align 8, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !530 ; 2 uses
  %.not.i = icmp eq ptr %i.dz, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_21MethodDescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = load i32, ptr %i.j, align 8, !tbaa !47
  %i.eb = or i32 %i.ea, 8
  store i32 %i.eb, ptr %i.j, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !62 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ah, label %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ef = load i64, ptr %i.n, align 8, !tbaa !331 ; 3 uses
  %i.eg = trunc i64 %i.ef to i1
  br i1 %i.eg, label %bb.ai, label %bb.aj, !prof !170

bb.ai:                                            ; preds = %bb.ah
  %i.eh = add nsw i64 %i.ef, -1
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !334
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ek = inttoptr i64 %i.ef to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i = phi ptr [ %i.ej, %bb.ai ], [ %i.ek, %bb.aj ]
  %i.el = call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_13MethodOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i) ; 2 uses
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !62
  br label %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.ag
  %i.em = phi ptr [ %i.el, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i ], [ %i.ed, %bb.ag ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %i.ep = or i32 %i.eo, 2
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 56 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !62 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.ak, label %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit.i

bb.ak:                                            ; preds = %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !331 ; 3 uses
  %i.ev = trunc i64 %i.eu to i1
  br i1 %i.ev, label %bb.al, label %bb.am, !prof !170

bb.al:                                            ; preds = %bb.ak
  %i.ew = add nsw i64 %i.eu, -1
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !334
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i

bb.am:                                            ; preds = %bb.ak
  %i.ez = inttoptr i64 %i.eu to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i4.i = phi ptr [ %i.ey, %bb.al ], [ %i.ez, %bb.am ]
  %i.fa = call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i4.i) ; 2 uses
  store ptr %i.fa, ptr %i.eq, align 8, !tbaa !62
  br label %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i, %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i
  %i.fb = phi ptr [ %i.fa, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i ], [ %i.er, %_ZN6google8protobuf21MethodDescriptorProto15mutable_optionsEv.exit.i ]
  call void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.fb, ptr noundef nonnull align 8 dereferenceable(72) %i.dz)
  br label %_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_21MethodDescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit

_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_21MethodDescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %bb.af, %_ZN6google8protobuf13MethodOptions16mutable_featuresEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf16MethodDescriptor10input_typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.anon.650, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !519
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !520  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %i.a, ptr %1, align 8, !tbaa !522
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !525
  %i.h = load atomic i32, ptr %i.f acquire, align 4
  %.not.i2.i = icmp eq i32 %i.h, 221
  br i1 %.not.i2.i, label %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.c, !prof !283

bb.c:                                             ; preds = %bb.b
  call fastcc void @"_ZN4absl12lts_2025051213base_internal12CallOnceImplIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS4_17ServiceDescriptorEE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
  br label %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit

_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit: ; preds = %bb.a, %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !526
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf16MethodDescriptor11output_typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.anon.650, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !519
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !520  ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %i.a, ptr %1, align 8, !tbaa !522
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %i.g, align 8, !tbaa !525
  %i.h = load atomic i32, ptr %i.f acquire, align 4
  %.not.i2.i = icmp eq i32 %i.h, 221
  br i1 %.not.i2.i, label %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.c, !prof !283

bb.c:                                             ; preds = %bb.b
  call fastcc void @"_ZN4absl12lts_2025051213base_internal12CallOnceImplIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS4_17ServiceDescriptorEE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %1)
  br label %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit

_ZN6google8protobuf8internal14LazyDescriptor3GetEPKNS0_17ServiceDescriptorE.exit: ; preds = %bb.a, %"_ZN4absl12lts_202505129call_onceIZN6google8protobuf8internal14LazyDescriptor4OnceEPKNS3_17ServiceDescriptorEE3$_0JEEEvRNS0_9once_flagEOT_DpOT0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !526
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14FileDescriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.google::protobuf::DebugStringOptions", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i8 0, ptr %2, align 1, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !534
  call void @_ZNK6google8protobuf14FileDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 1 dereferenceable(3) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14FileDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i:
  %3 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %7 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %8 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %9 = alloca %"struct.std::pair.373", align 8    ; 5 uses
  %10 = alloca %"struct.std::pair.373", align 8   ; 5 uses
  %11 = alloca %"class.std::vector.195", align 8  ; 4 uses
  %12 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %13 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %16 = alloca %"class.std::vector.195", align 8  ; 7 uses
  %17 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 16 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %21 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 22 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.absl::lts_20250512::flat_hash_set.272", align 8 ; 19 uses
  %24 = alloca %"class.absl::lts_20250512::flat_hash_set.272", align 8 ; 19 uses
  %25 = alloca %"class.std::vector.195", align 8  ; 7 uses
  %26 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 16 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.google::protobuf::FileOptions", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20250512::flat_hash_set.6", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.c = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #45
          to label %.noexc112 unwind label %.thread653 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 12, ptr %i.c, align 4, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store ptr %i.c, ptr %16, align 8, !tbaa !405
  store ptr %i.f, ptr %i.e, align 8, !tbaa !535
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.g, ptr %18, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !63
  store i8 0, ptr %i.g, align 8, !tbaa !62
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterC2EPKNS0_14FileDescriptorERKSt6vectorIiSaIiEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %17, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.noexc112
  %i.i = load ptr, ptr %18, align 8, !tbaa !61    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.g, align 8, !tbaa !62
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %17, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !280  ; 3 uses
  %i.o = icmp slt i32 %i.n, 1000
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  %i.p = icmp eq i32 %i.n, 999
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  br i1 %i.p, label %._crit_edge.i.i.i, label %._crit_edge.i.i4.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.70, i64 6, i1 false)
  br label %bb.d

._crit_edge.i.i4.i:                               ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.139, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i4.i, %._crit_edge.i.i.i
  store ptr %i.q, ptr %19, align 8, !tbaa !58, !alias.scope !1291
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.r, align 8, !tbaa !63, !alias.scope !1291
  %i.s = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i8 0, ptr %i.s, align 2, !tbaa !62, !alias.scope !1291
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  store i64 6, ptr %15, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.q, ptr %i.t, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %0, i64 16, ptr nonnull @.str.75, ptr noundef nonnull %15, i64 noundef 1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.u = load ptr, ptr %19, align 8, !tbaa !61    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.q
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.e
  %i.w = load i64, ptr %i.q, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.m

.thread653:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

bb.f:                                             ; preds = %.noexc112
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %18, align 8, !tbaa !61   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.f
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %bb.ae

bb.g:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %19, align 8, !tbaa !61   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.h
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !62
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.al, ptr %20, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.am, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.an = invoke noundef ptr @_ZN6google8protobuf18Edition_descriptorEv()
          to label %.noexc124 unwind label %bb.l

.noexc124:                                        ; preds = %bb.i
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal10NameOfEnumB5cxx11EPKNS0_14EnumDescriptorEi(ptr noundef %i.an, i32 noundef %i.n)
          to label %.noexc125 unwind label %bb.l  ; 2 uses

.noexc125:                                        ; preds = %.noexc124
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 4 uses
  %i.as = icmp ult i64 %i.ar, 8
  br i1 %i.as, label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i: ; preds = %.noexc125
  %i.at = load i64, ptr %i.ap, align 1
  %i.au = icmp ne i64 %i.at, 6867513658151879749
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i, label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = add i64 %i.ar, -8
  br label %_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i

_ZN4absl12lts_2025051216strings_internal22ExtractStringificationIN6google8protobuf7EditionEEESt17basic_string_viewIcSt11char_traitsIcEERNS1_13StringifySinkERKT_.exit.i: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i.i.i.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i.i.i.i, %.noexc125
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.hh = select i1 %i.hf, i64 6, i64 4
  %i.hi = load ptr, ptr %21, align 8, !tbaa !61
  %i.hj = load i64, ptr %i.gl, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i64 %i.hj, ptr %5, align 16
  store ptr %i.hi, ptr %i.gm, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 %i.hh, ptr nonnull %i.hg, ptr noundef nonnull %5, i64 noundef 1)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.hk = load ptr, ptr %21, align 8, !tbaa !61   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.gn
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.av
  %i.hm = load i64, ptr %i.gn, align 8, !tbaa !62
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.ho = load i32, ptr %i.gc, align 4, !tbaa !502
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next188, %i.hp
  br i1 %i.hq, label %.lr.ph75, label %._crit_edge76, !llvm.loop !1315

bb.aw:                                            ; preds = %.lr.ph75
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.ax:                                            ; preds = %bb.au
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %21, align 8, !tbaa !61   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.gn
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.ax
  %i.hv = load i64, ptr %i.gn, align 8, !tbaa !62
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.aw
  %.pn56 = phi { ptr, i32 } [ %i.hr, %bb.aw ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.hs, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40
  br label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit
  %i.hx = load ptr, ptr %13, align 8, !tbaa !61
  %i.hy = load i64, ptr %i.r, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i64 %i.hy, ptr %4, align 16
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hx, ptr %i.hz, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 4, ptr nonnull @.str.99, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter14AddPostCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %14, ptr noundef %2)
          to label %bb.az unwind label %bb.u

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6google8protobuf11EnumOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.ia = load ptr, ptr %i.o, align 8, !tbaa !61  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.p
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138: ; preds = %bb.az
  %i.ic = load i64, ptr %i.p, align 8, !tbaa !62
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138
  %i.ie = load ptr, ptr %i.m, align 8, !tbaa !119 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ie, %i.ig
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.im, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139 ] ; 3 uses
  %i.ih = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !62
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i140 = icmp eq ptr %i.im, %i.ig
  br i1 %.not.i.i.i.i.i140, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139
  %i.in = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i139 ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !121
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.ba, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.it = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.k
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.iv = load i64, ptr %i.k, align 8, !tbaa !62
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ix = load ptr, ptr %i.g, align 8, !tbaa !61  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.h
  br i1 %i.iy, label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.iz = load i64, ptr %i.h, align 8, !tbaa !62
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.jb = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.d
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit
  %i.jd = load i64, ptr %i.d, align 8, !tbaa !62
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  ret void

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKc.exit121
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ad, %bb.ai, %bb.ap, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.at, %bb.z, %bb.v, %bb.u
  %.pn62 = phi { ptr, i32 } [ %i.dp, %bb.v ], [ %i.ex, %bb.z ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.do, %bb.u ], [ %i.jf, %bb.bb ], [ %i.gv, %bb.at ], [ %i.fi, %bb.ad ], [ %i.fo, %bb.ai ], [ %.pn58, %bb.ap ]
  call void @_ZN6google8protobuf11EnumOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #40
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.t
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.bc ], [ %i.dn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.r
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %bb.bd ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.dh, %bb.r ]
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %14) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.be
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %.pn62.pn.pn, %bb.be ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  %i.jg = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.d
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %.body
  %i.ji = load i64, ptr %i.d, align 8, !tbaa !62
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  resume { ptr, i32 } %.pn62.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %3, i1 noundef zeroext %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %7 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %8 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %9 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %10 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %11 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %12 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %13 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %14 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %15 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %16 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %17 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %18 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %19 = alloca %"class.std::vector.195", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %21 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.google::protobuf::MessageOptions", align 8 ; 10 uses
  %24 = alloca %"class.absl::lts_20250512::flat_hash_set.6", align 8 ; 22 uses
  %25 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %27 = alloca %"class.google::protobuf::ExtensionRangeOptions", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %35 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 7 uses
  %36 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !396
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 51
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62, !range !71, !noundef !72
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40
  %i.g = shl nsw i32 %1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.i, ptr %20, align 8, !tbaa !58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.h, i8 noundef signext 32)
  %i.j = add nsw i32 %1, 1                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 0, ptr %i.n, align 8, !tbaa !63
  store i8 0, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !63
  store i8 0, ptr %i.p, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !536
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 7 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !58
  %i.v = load ptr, ptr %20, align 8, !tbaa !61    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.x, ptr %i.a, align 8, !tbaa !59
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !61
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ab = phi ptr [ %i.z, %.noexc.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !62
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 128
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !63
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ah = load i8, ptr %3, align 1, !tbaa !532, !range !71, !noundef !72
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf10Descriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !378
  %i.al = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull %i.k)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %19, align 8, !tbaa !405  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !406
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #41
  br label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %19, align 8, !tbaa !405  ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !406
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i:               ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !61  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  %i.bb = zext i1 %i.al to i8
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !62
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.be) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i ]
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.k) #40
  br label %.body

bb.l:                                             ; preds = %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, %bb.d
  %i.bf = phi i8 [ 0, %bb.d ], [ %i.bb, %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.bf, ptr %21, align 8, !tbaa !542
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %21, ptr noundef %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %4, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %20, align 8, !tbaa !61
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf17ServiceDescriptor11DebugStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:bb.a
  br label %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit.i: ; preds = %.noexc28, %bb.k
  %i.bo = phi ptr [ %i.bn, %.noexc28 ], [ %i.be, %bb.k ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %i.az)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14ServiceOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.s

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14ServiceOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf14ServiceOptionsC2ERKS1_.exit, %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !387
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !546
  %i.bt = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bs, ptr noundef %1)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14ServiceOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !506
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.u

._crit_edge:                                      ; preds = %bb.v, %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !63
  %i.ca = and i64 %i.bz, -2
  %i.cb = icmp eq i64 %i.ca, 4611686018427387902
  br i1 %i.cb, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #44
          to label %.noexc30 unwind label %bb.s

.noexc30:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.100, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.s ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !62
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ce) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.r:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.o, %_ZN6google8protobuf14ServiceOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14ServiceOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !508
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %i.ck, i64 %indvars.iv
  invoke void @_ZNK6google8protobuf16MethodDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %i.cl, i32 noundef 1, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bu, align 8, !tbaa !506
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.u, label %._crit_edge, !llvm.loop !1380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter14AddPostCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %1)
          to label %bb.w unwind label %bb.s

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @_ZN6google8protobuf14ServiceOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !61  ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.m
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.w
  %i.cr = load i64, ptr %i.m, align 8, !tbaa !62
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !119 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ct, %i.cv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.db, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36 ] ; 3 uses
  %i.cw = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !62
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.db, %i.cv
  br i1 %.not.i.i.i.i.i37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36
  %i.dc = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36 ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !121
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.x, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !61  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.h
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.dk = load i64, ptr %i.h, align 8, !tbaa !62
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.e
  br i1 %i.dn, label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.do = load i64, ptr %i.e, align 8, !tbaa !62
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void

bb.y:                                             ; preds = %bb.t, %bb.s
  %.pn20 = phi { ptr, i32 } [ %i.cj, %bb.t ], [ %i.ci, %bb.s ]
  call void @_ZN6google8protobuf14ServiceOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.y ], [ %i.ch, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.q, %bb.p
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.z ], [ %i.cg, %bb.q ], [ %i.cf, %bb.p ]
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %5) #40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %bb.aa ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [5 x %"class.std::basic_string_view"], align 16 ; 13 uses
  %6 = alloca %"class.std::vector.195", align 8   ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %17 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.google::protobuf::FieldOptions", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.c, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.e, ptr %9, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 0, ptr %i.f, align 8, !tbaa !63
  store i8 0, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 16
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.n, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !401  ; 6 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i32, ptr %i.k acquire, align 4
  %.not.i197 = icmp eq i32 %i.l, 221
  br i1 %.not.i197, label %.noexc, label %bb.c, !prof !283

bb.c:                                             ; preds = %bb.b
  %i.m = cmpxchg ptr %i.k, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.c
  %i.o = invoke noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.k, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
          to label %.noexc208 unwind label %bb.k

.noexc208:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %.noexc

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %.noexc208, %bb.c
  invoke void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc209 unwind label %bb.k, !inline_history !17

.noexc209:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  %i.q = atomicrmw xchg ptr %i.k, i32 221 release, align 4
  %i.r = icmp eq i32 %i.q, 94570706
  br i1 %i.r, label %bb.d, label %.noexc

bb.d:                                             ; preds = %.noexc209
  invoke void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.k, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d, %.noexc208, %.noexc209, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !305
  invoke void @_ZNK6google8protobuf15FieldDescriptor24FieldTypeNameDebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(88) %i.v)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %10, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !401  ; 6 uses
  %.not.i76 = icmp eq ptr %i.z, null
  br i1 %.not.i76, label %.noexc77, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %.not.i199 = icmp eq i32 %i.aa, 221
  br i1 %.not.i199, label %.noexc77, label %bb.g, !prof !283

bb.g:                                             ; preds = %bb.f
  %i.ab = cmpxchg ptr %i.z, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i212, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i211

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i211: ; preds = %bb.g
  %i.ad = invoke noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.z, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
          to label %.noexc213 unwind label %bb.l

.noexc213:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i211
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i212, label %.noexc77

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i212: ; preds = %.noexc213, %bb.g
  invoke void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc214 unwind label %bb.l, !inline_history !17

.noexc214:                                        ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i212
  %i.af = atomicrmw xchg ptr %i.z, i32 221 release, align 4
  %i.ag = icmp eq i32 %i.af, 94570706
  br i1 %i.ag, label %bb.h, label %.noexc77

bb.h:                                             ; preds = %.noexc214
  invoke void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.z, i1 noundef zeroext true)
          to label %.noexc77 unwind label %bb.l

.noexc77:                                         ; preds = %bb.h, %.noexc213, %.noexc214, %bb.f, %bb.e
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !305
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  invoke void @_ZNK6google8protobuf15FieldDescriptor24FieldTypeNameDebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %i.ak)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %.noexc77
  %i.al = load ptr, ptr %11, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  store i64 %i.y, ptr %7, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.w, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.an, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.al, ptr %i.aq, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %9, i64 11, ptr nonnull @.str.101, ptr noundef nonnull %7, i64 noundef 2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.ar = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !62
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.aw = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !62
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.v

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %bb.d, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %.noexc
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.l:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i212, %bb.h, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i211, %.noexc77
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.m:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.m
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.nw, %i.nq
  br i1 %.not.i.i.i.i.i177, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176
  %i.nx = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i176 ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !121
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.ce, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.od = load ptr, ptr %i.dz, align 8, !tbaa !61 ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.ea
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.of = load i64, ptr %i.ea, align 8, !tbaa !62
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.oh = load ptr, ptr %i.dw, align 8, !tbaa !61 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.dx
  br i1 %i.oi, label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.oj = load i64, ptr %i.dx, align 8, !tbaa !62
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit

_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.ol = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.on = icmp eq ptr %i.ol, %i.om
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit
  %i.oo = load i64, ptr %i.om, align 8, !tbaa !62
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.op) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  %i.oq = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.e
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.os = load i64, ptr %i.e, align 8, !tbaa !62
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.ou = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.d
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.ow = load i64, ptr %i.d, align 8, !tbaa !62
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  ret void

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.bs
  %.pn60 = phi { ptr, i32 } [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.lc, %bb.bs ]
  call void @_ZN6google8protobuf12FieldOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %20) #40
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.br
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.cf ], [ %i.lb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bb, %bb.bc, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.cg, %bb.ba
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.ba ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn60.pn, %bb.cg ], [ %i.ib, %bb.bd ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.ia, %bb.bc ], [ %i.hz, %bb.bb ]
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %16) #40
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ch
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %bb.ch ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.oy = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %.body
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !62
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.z
  %.pn60.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.z ], [ %.pn60.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn60.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn60.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.cm, %bb.u ]
  %i.pd = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.e
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.ci
  %i.pf = load i64, ptr %i.e, align 8, !tbaa !62
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.ph = load ptr, ptr %8, align 8, !tbaa !61    ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.d
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.pj = load i64, ptr %i.d, align 8, !tbaa !62
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf11FileOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #26

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !97
  %i.h = and i64 %i.g, 65536
  %i.i = icmp ne i64 %i.h, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.a, ptr noundef %i.e, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE15destructor_implEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Descriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::DebugStringOptions", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i8 0, ptr %2, align 1, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !534
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58, !alias.scope !1383
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !63, !alias.scope !1383
  store i8 0, ptr %i.c, align 8, !tbaa !62, !alias.scope !1383
  invoke void @_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef 0, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 1 dereferenceable(3) %2, i1 noundef zeroext true)
          to label %_ZNK6google8protobuf10Descriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1383 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !62, !alias.scope !1383
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZNK6google8protobuf10Descriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Descriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !62
  invoke void @_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb(ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(3) %2, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15OneofDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %6 = alloca %"class.std::vector.195", align 8   ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %9 = alloca %"class.google::protobuf::OneofOptions", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.c, i8 noundef signext 32)
  %i.e = add nsw i32 %1, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.i, align 8, !tbaa !63
  store i8 0, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 0, ptr %i.l, align 8, !tbaa !63
  store i8 0, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !536
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 7 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !58
  %i.q = load ptr, ptr %7, align 8, !tbaa !61     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.s, ptr %i.a, align 8, !tbaa !59
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.u, ptr %i.o, align 8, !tbaa !61
  %i.v = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.v, ptr %i.p, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !62
  store i8 %i.x, ptr %i.w, align 1, !tbaa !62
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %i.y, ptr %i.z, align 8, !tbaa !63
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ac = load i8, ptr %3, align 1, !tbaa !532, !range !71, !noundef !72
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf15OneofDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !382
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !378
  %i.ai = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.f)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %6, align 8, !tbaa !405   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf15OneofDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !406
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #41
  br label %_ZNK6google8protobuf15OneofDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !405   ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !406
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i:               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !61  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNK6google8protobuf15OneofDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.ay = zext i1 %i.ai to i8
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !62
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.az, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ap, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i ]
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.f) #40
  br label %.body

bb.k:                                             ; preds = %_ZNK6google8protobuf15OneofDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, %bb.c
  %i.bc = phi i8 [ 0, %bb.c ], [ %i.ay, %_ZNK6google8protobuf15OneofDescriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.bc, ptr %8, align 8, !tbaa !542
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef %2)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %7, align 8, !tbaa !61
  %i.be = load i64, ptr %i.r, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !145 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.bg, align 1
  %i.bh = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.bi = xor i64 %i.bh, -1
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store i64 %i.be, ptr %5, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bd, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bh, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bj, ptr %i.bm, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 12, ptr nonnull @.str.108, ptr noundef nonnull %5, i64 noundef 2)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !516
  invoke void @_ZN6google8protobuf12OneofOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(64) %i.bo)
          to label %_ZN6google8protobuf12OneofOptionsC2ERKS1_.exit unwind label %bb.v

_ZN6google8protobuf12OneofOptionsC2ERKS1_.exit:   ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !517 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_12OneofOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf12OneofOptionsC2ERKS1_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !47
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf12_GLOBAL__N_122FormatBracketedOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !63, !alias.scope !1400
  store i8 0, ptr %i.d, align 8, !tbaa !62, !alias.scope !1400
  %.not41.i.i.i.i = icmp eq ptr %.pre, %i.c
  br i1 %.not41.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !1401 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 3 uses
  %.not4244.i.i.i.i = icmp eq ptr %i.h, %i.c      ; 2 uses
  br i1 %.not4244.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.025.lcssa.i.i.i.i = phi i64 [ %i.g, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.025.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.02546.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.g, %bb.d ]
  %.sroa.029.045.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.pre, %bb.d ]
  %i.j = add i64 %.02546.i.i.i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.029.045.i.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63, !noalias !1401
  %i.m = add i64 %i.j, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.not42.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not42.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1393

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %.025.lcssa.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i unwind label %bb.f

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i: ; preds = %bb.e
  %i.o = load ptr, ptr %5, align 8, !tbaa !61, !alias.scope !1400 ; 2 uses
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !61, !noalias !1401
  %i.q = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !1401
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.q, i1 false)
  br i1 %.not4244.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit, label %.lr.ph50.preheader.i.i.i.i

.lr.ph50.preheader.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i
  %i.r = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !1401
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  br label %.lr.ph50.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !61, !alias.scope !1400 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %.body, label %.body.sink.split

.lr.ph50.i.i.i.i:                                 ; preds = %.lr.ph50.i.i.i.i, %.lr.ph50.preheader.i.i.i.i
  %i.w = phi ptr [ %i.ad, %.lr.ph50.i.i.i.i ], [ %i.h, %.lr.ph50.preheader.i.i.i.i ] ; 3 uses
  %.049.i.i.i.i = phi ptr [ %i.ac, %.lr.ph50.i.i.i.i ], [ %i.s, %.lr.ph50.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.048.i.i.i.i = phi ptr [ %i.w, %.lr.ph50.i.i.i.i ], [ %.pre, %.lr.ph50.preheader.i.i.i.i ]
  store i16 8236, ptr %.049.i.i.i.i, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i, i64 2 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !61, !noalias !1401
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i.i.i.i, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63, !noalias !1401
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.y, i64 %i.aa, i1 false)
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !63, !noalias !1401
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %.not43.i.i.i.i = icmp eq ptr %i.ad, %i.c
  br i1 %.not43.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit, label %.lr.ph50.i.i.i.i, !llvm.loop !1394

_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit: ; preds = %.lr.ph50.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i, %._crit_edge.i.i.i.i, %bb.c
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !63  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !63
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.ae
  br i1 %i.ai, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.g:                                             ; preds = %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #44
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E.exit
  %i.aj = load ptr, ptr %5, align 8, !tbaa !61
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aj, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.al = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.d
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = load i64, ptr %i.d, align 8, !tbaa !62
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.d
  br i1 %i.as, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.f
  %.sink = phi ptr [ %i.u, %bb.f ], [ %i.ar, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.aq, %bb.i ]
  %i.at = load i64, ptr %i.d, align 8, !tbaa !62
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.au) #41
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.aq, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = phi ptr [ %.pre15, %._crit_edge ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.aw = icmp ne ptr %.pre, %i.av                ; 2 uses
  br i1 %i.aw, label %.lr.ph.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %bb.j ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i, align 8, !tbaa !61 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i13: ; preds = %.lr.ph.i.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !62
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i13
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.j
  %.not.i.i1.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !121
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %.pre to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.bh) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret i1 %i.aw

bb.l:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ap, %bb.h ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf21ExtensionRangeOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZN6google8protobuf14MessageOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15FieldDescriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.google::protobuf::DebugStringOptions", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i8 0, ptr %2, align 1, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !534
  call void @_ZNK6google8protobuf15FieldDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 dereferenceable(3) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15FieldDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 8
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !296
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  store i64 %i.k, ptr %3, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %i.n, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %0, i64 13, ptr nonnull @.str.84, ptr noundef nonnull %3, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]
  invoke void @_ZNK6google8protobuf15FieldDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %.0, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.c, align 1
  %i.r = and i8 %i.q, 8
  %.not10 = icmp eq i8 %i.r, 0
  br i1 %.not10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.b, align 8, !tbaa !63
  %i.t = and i64 %i.s, -2
  %i.u = icmp eq i64 %i.t, 4611686018427387902
  br i1 %i.u, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #44
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.h
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.100, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.d ; 0 uses

bb.j:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.y = load i64, ptr %i.a, align 8, !tbaa !62
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15FieldDescriptor24FieldTypeNameDebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !399   ; 4 uses
  switch i8 %i.c, label %bb.k [
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 14, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !280
  %i.h = icmp slt i32 %i.g, 1000
  %i.i = icmp eq i8 %i.c, 10
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.k, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.l, align 1, !tbaa !62
  br label %bb.o

_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i64 1, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.73, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.n = and i8 %i.c, -2
  %switch.i = icmp eq i8 %i.n, 10
  tail call void @llvm.assume(i1 %switch.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !401  ; 6 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit.thread
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %.not.i.i = icmp eq i32 %i.q, 221
  br i1 %.not.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, label %bb.e, !prof !283

bb.e:                                             ; preds = %bb.d
  %i.r = cmpxchg ptr %i.p, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i: ; preds = %bb.e
  %i.t = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.p, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1), !inline_history !402
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.e
  tail call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !10
  %i.v = atomicrmw xchg ptr %i.p, i32 221 release, align 4
  %i.w = icmp eq i32 %i.v, 94570706
  br i1 %i.w, label %bb.f, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.p, i1 noundef zeroext true), !inline_history !402
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i: ; preds = %bb.f, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i, %bb.d, %_ZN6google8protobuf12_GLOBAL__N_113IsGroupSyntaxENS0_7EditionEPKNS0_15FieldDescriptorE.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !145 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  store i64 %i.ac, ptr %3, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !255
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store i64 1, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.73, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !401 ; 6 uses
  %.not.i8 = icmp eq ptr %i.ah, null
  br i1 %.not.i8, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load atomic i32, ptr %i.ah acquire, align 4
  %.not.i18 = icmp eq i32 %i.ai, 221
  br i1 %.not.i18, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.i, !prof !283

bb.i:                                             ; preds = %bb.h
  %i.aj = cmpxchg ptr %i.ah, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  br i1 %i.ak, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.i
  %i.al = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull align 4 dereferenceable(4) %i.ah, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf15FieldDescriptorEEJS7_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef 1)
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %bb.i
  tail call void @_ZNK6google8protobuf15FieldDescriptor20InternalTypeOnceInitEv(ptr noundef nonnull align 8 dereferenceable(88) %1), !inline_history !11
  %i.an = atomicrmw xchg ptr %i.ah, i32 221 release, align 4
  %i.ao = icmp eq i32 %i.an, 94570706
  br i1 %i.ao, label %bb.j, label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

bb.j:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull align 4 dereferenceable(4) %i.ah, i1 noundef zeroext true)
  br label %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.h, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i, %bb.j, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !145 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.0.copyload.i.i.i9 = load i16, ptr %i.at, align 1
  %i.au = zext i16 %.0.copyload.i.i.i9 to i64     ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  store i64 %i.au, ptr %5, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aw, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !255
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ax = zext i8 %i.c to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @_ZN6google8protobuf15FieldDescriptor11kTypeToNameE, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !255 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !58
  %i.bb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !59
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i14, label %._crit_edge.i.i13

.noexc.i14:                                       ; preds = %bb.k
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !61
  %i.be = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.be, ptr %i.ba, align 8, !tbaa !62
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc.i14, %bb.k
  %i.bf = phi ptr [ %i.bd, %.noexc.i14 ], [ %i.ba, %bb.k ] ; 2 uses
  switch i64 %i.bb, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i13
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !62
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !62
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i13
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !63
  %i.bj = load ptr, ptr %0, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit, %_ZN4absl12lts_202505129call_onceIRFvPKN6google8protobuf15FieldDescriptorEEJS6_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i, %bb.c
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf12FieldOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15OneofDescriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::DebugStringOptions", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i8 0, ptr %2, align 1, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !534
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58, !alias.scope !1404
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !63, !alias.scope !1404
  store i8 0, ptr %i.c, align 8, !tbaa !62, !alias.scope !1404
  invoke void @_ZNK6google8protobuf15OneofDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %_ZNK6google8protobuf15OneofDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1404 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !62, !alias.scope !1404
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZNK6google8protobuf15OneofDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15OneofDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !62
  invoke void @_ZNK6google8protobuf15OneofDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf12OneofOptionsD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #26

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14EnumDescriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::DebugStringOptions", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store i8 0, ptr %2, align 1, !tbaa !532
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !533
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !534
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !58, !alias.scope !1407
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !63, !alias.scope !1407
  store i8 0, ptr %i.c, align 8, !tbaa !62, !alias.scope !1407
  invoke void @_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 1 dereferenceable(3) %2)
          to label %_ZNK6google8protobuf14EnumDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !1407 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !62, !alias.scope !1407
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZNK6google8protobuf14EnumDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf14EnumDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store i8 0, ptr %i.a, align 8, !tbaa !62
  invoke void @_ZNK6google8protobuf14EnumDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull align 1 dereferenceable(3) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf19EnumValueDescriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %6 = alloca %"class.std::vector.195", align 8   ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %9 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %10 = alloca %"class.google::protobuf::EnumValueOptions", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.c, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.h, align 8, !tbaa !63
  store i8 0, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i64 0, ptr %i.k, align 8, !tbaa !63
  store i8 0, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !536
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 7 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !58
  %i.p = load ptr, ptr %7, align 8, !tbaa !61     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.r, ptr %i.a, align 8, !tbaa !59
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.j   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.n, align 8, !tbaa !61
  %i.u = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.u, ptr %i.o, align 8, !tbaa !62
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !62
  store i8 %i.w, ptr %i.v, align 1, !tbaa !62
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 %i.x, ptr %i.y, align 8, !tbaa !63
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ab = load i8, ptr %3, align 1, !tbaa !532, !range !71, !noundef !72
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf19EnumValueDescriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !306
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !383
  %i.ah = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.e)
          to label %bb.f unwind label %bb.h
end_hunk_4
