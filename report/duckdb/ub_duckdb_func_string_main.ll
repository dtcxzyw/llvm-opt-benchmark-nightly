Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_string_main?download=true
inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_120NFCNormalizeFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jw) #28, !inline_history !1056
  %i.kf = load ptr, ptr %i.jw, align 8, !tbaa !80
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jw) #28, !inline_history !1056
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ki = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i2.i.i.i.i = icmp eq i8 %i.ki, 0
  br i1 %.not.i.i.i.i.i2.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kj = add nsw i32 %i.ka, -1
  store i32 %i.kj, ptr %i.jx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.kk = atomicrmw volatile add ptr %i.jx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i4.i.i.i.i = phi i32 [ %i.ka, %bb.bc ], [ %i.kk, %bb.bd ]
  %i.kl = icmp eq i32 %.0.i.i.i.i.i.i4.i.i.i.i, 1
  br i1 %i.kl, label %bb.be, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i, !prof !83

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jw) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i:   ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i.i.i, %bb.ba, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120NFCNormalizeOperatorEEEvRNS_6VectorES6_m.exit

bb.bf:                                            ; preds = %bb.ac, %bb.ab
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

bb.bg:                                            ; preds = %bb.ad
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc.i.i.i, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %.noexc87.i.i.i, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.i.i.i.i
  %lpad.loopexit94.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.ap, %.noexc84.i.i.i, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i
  %lpad.loopexit99.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %bb.af, %bb.ae
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %bb.bg, %bb.bf
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.km, %bb.bf ], [ %i.kn, %bb.bg ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit94.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit99.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn.i.i.i

_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120NFCNormalizeOperatorEEEvRNS_6VectorES6_m.exit: ; preds = %.loopexit99.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i, %bb.c, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i, %.preheader.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i.i
  %i.ko = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  call void @_ZN6duckdb12StringVector16AddHeapReferenceERNS_6VectorES2_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.ko)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb18RegexpBaseBindDataC2Ev(ptr noundef nonnull align 8 dereferenceable(65) initializes((0, 31)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18RegexpBaseBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8388608, ptr %i.a, align 8, !tbaa !1057
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !1060
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !1061
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !1062
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.e, align 2, !tbaa !1063
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i32 0, ptr %i.f, align 1
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.g, align 1, !tbaa !548
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.k, align 8, !tbaa !1064
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_ZN6duckdb18RegexpBaseBindDataC2EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(65) initializes((0, 32)) %0, ptr nofree noundef readonly byval(%"class.duckdb_re2::RE2::Options") align 8 captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18RegexpBaseBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1066
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !29
  %i.k = load i64, ptr %i.e, align 8, !tbaa !7
  store i64 %i.k, ptr %i.c, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = zext i1 %3 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.n, ptr %i.o, align 8, !tbaa !15
  store ptr %i.e, ptr %2, align 8, !tbaa !29
  store i64 0, ptr %i.m, align 8, !tbaa !15
  store i8 0, ptr %i.e, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.l, ptr %i.p, align 8, !tbaa !1064
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6duckdb18RegexpBaseBindDataD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !29
  %bcmp.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 27
  %.val = load i8, ptr %i.q, align 1, !tbaa !1068, !range !190, !noundef !122
  %i.r = getelementptr i8, ptr %1, i64 27
  %.val5 = load i8, ptr %i.r, align 1, !tbaa !1068, !range !190, !noundef !122
  %.not = icmp eq i8 %.val, %.val5
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.a
  %i.s = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.a ], [ %.not, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19RegexInitLocalStateERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.24") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb15RegexLocalStateESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29, !noalias !1069 ; 3 uses
  invoke void @_ZN6duckdb15RegexLocalStateC2ERNS_18RegexpBaseBindDataEb(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(65) %3, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN6duckdb15RegexLocalStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.c, !noalias !1069

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #32, !noalias !1069
  resume { ptr, i32 } %i.e

_ZNSt10unique_ptrIN6duckdb15RegexLocalStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !1072
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21RegexpMatchesBindDataC2EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 32)) %0, ptr noundef byval(%"class.duckdb_re2::RE2::Options") align 8 %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::unique_ptr.42", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %5, align 8, !tbaa !29
  %i.i = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.i, ptr %i.a, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.c, ptr %2, align 8, !tbaa !29
  store i64 0, ptr %i.l, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb18RegexpBaseBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !11
  %i.q = icmp eq ptr %i.j, %i.a
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.o, align 8, !tbaa !29
  %i.t = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.t, ptr %i.p, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = zext i1 %3 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.k, ptr %i.v, align 8, !tbaa !15
  store ptr %i.a, ptr %5, align 8, !tbaa !29
  store i64 0, ptr %i.m, align 8, !tbaa !15
  store i8 0, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.u, ptr %i.w, align 8, !tbaa !1064
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpMatchesBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.z, align 8, !tbaa !15
  store i8 0, ptr %i.y, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.ac, align 8, !tbaa !15
  store i8 0, ptr %i.ab, align 8, !tbaa !7
  br i1 %3, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.ad = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1075
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !29, !noalias !1075
  store ptr %i.ae, ptr %4, align 8, !tbaa !1078, !noalias !1075
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.v, align 8, !tbaa !15, !noalias !1075
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !1080, !noalias !1075
  invoke void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(23) %1)
          to label %bb.f unwind label %bb.e, !noalias !1075

bb.e:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1075
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #32, !noalias !1075
  br label %.body

bb.f:                                             ; preds = %.noexc
  store ptr %i.ad, ptr %6, align 8, !tbaa !1081, !alias.scope !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1075
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 536870911
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1083
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.t unwind label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.an) #28
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.au = invoke noundef ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.av = invoke noundef zeroext i1 @_ZNK10duckdb_re23RE218PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(148) %i.au, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa, i32 noundef 1000)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = zext i1 %i.av to i8
  store i8 %i.ax, ptr %i.aw, align 8, !tbaa !1092
  %i.ay = load ptr, ptr %6, align 8, !tbaa !1081  ; 3 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i

_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i: ; preds = %bb.p
  call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ay) #28
end_hunk_0
begin_hunk_1_@_ZN6duckdb21RegexpReplaceBindDataC2EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.i, ptr %i.a, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %2, align 8, !tbaa !29
  store i64 0, ptr %i.l, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !11
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !29
  %i.s = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.s, ptr %i.o, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = zext i1 %4 to i8
  %i.u = zext i1 %3 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.k, ptr %i.v, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.u, ptr %i.w, align 8, !tbaa !1064
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpReplaceBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.t, ptr %i.x, align 1, !tbaa !1103
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb21RegexpReplaceBindData4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.9") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(66) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb21RegexpReplaceBindDataESt14default_deleteIS1_EED2Ev.exit:
  %2 = alloca %"class.duckdb::unique_ptr.154", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65
  call void @_ZN6duckdb9make_uniqINS_21RegexpReplaceBindDataEJRKN10duckdb_re23RE27OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKbSG_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.154") align 8 %2, ptr noundef nonnull align 8 dereferenceable(23) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !1105
  store ptr %i.e, ptr %0, align 8, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_21RegexpReplaceBindDataEJRKN10duckdb_re23RE27OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKbSG_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.154") align 8 %0, ptr noundef nonnull align 8 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb_re2::RE2::Options", align 8 ; 2 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1066
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !11
  %i.d = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !69
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %6, align 8, !tbaa !29
  %i.i = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.i, ptr %i.c, align 8, !tbaa !7
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !7
  store i8 %i.k, ptr %i.j, align 1, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !15
  %i.n = load ptr, ptr %6, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = load i8, ptr %3, align 1, !tbaa !548, !range !190, !noundef !122
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = load i8, ptr %4, align 1, !tbaa !548, !range !190, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  invoke void @_ZN6duckdb21RegexpReplaceBindDataC1EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(66) %i.b, ptr noundef nonnull byval(%"class.duckdb_re2::RE2::Options") align 8 %5, ptr noundef nonnull %6, i1 noundef zeroext %i.q, i1 noundef zeroext %i.s)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.b, ptr %0, align 8, !tbaa !1105
  %i.t = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !29     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.w, %bb.g ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb21RegexpReplaceBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !29
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.p, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread

_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 27
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !1068, !range !190, !noundef !122
  %i.r = getelementptr i8, ptr %1, i64 27
  %.val5.i = load i8, ptr %i.r, align 1, !tbaa !1068, !range !190, !noundef !122
  %.not.i = icmp eq i8 %.val.i, %.val5.i
  br i1 %.not.i, label %bb.d, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread

bb.d:                                             ; preds = %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1103, !range !190, !noundef !122
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.v = load i8, ptr %i.u, align 1, !tbaa !1103, !range !190, !noundef !122
  %i.w = icmp eq i8 %i.t, %i.v
  br label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread

_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit.thread: ; preds = %bb.b, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.d, %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit
  %i.x = phi i1 [ false, %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit ], [ %i.w, %bb.d ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb21RegexpExtractBindDataC2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((8, 31)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8388608, ptr %i.a, align 8, !tbaa !1057
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.b, align 8, !tbaa !1060
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !1061
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !1062
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.e, align 2, !tbaa !1063
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i32 0, ptr %i.f, align 1
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.g, align 1, !tbaa !548
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !15
  store i8 0, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.k, align 8, !tbaa !1064
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpExtractBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.m, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_ZN6duckdb21RegexpExtractBindDataC2EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbS9_(ptr noundef nonnull align 8 dereferenceable(120) initializes((8, 32)) %0, ptr nofree noundef readonly byval(%"class.duckdb_re2::RE2::Options") align 8 captures(none) %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.i, ptr %i.a, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.c, ptr %2, align 8, !tbaa !29
  store i64 0, ptr %i.l, align 8, !tbaa !15
  store i8 0, ptr %i.c, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !11
  %i.p = icmp eq ptr %i.j, %i.a
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.j, ptr %i.n, align 8, !tbaa !29
  %i.s = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.s, ptr %i.o, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = zext i1 %3 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.k, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.t, ptr %i.v, align 8, !tbaa !1064
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RegexpExtractBindDataE, i64 16), ptr %0, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !11
  %i.y = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.y, ptr %i.w, align 8, !tbaa !29
  %i.af = load i64, ptr %i.z, align 8, !tbaa !7
  store i64 %i.af, ptr %i.x, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !15
  store ptr %i.z, ptr %4, align 8, !tbaa !29
  store i64 0, ptr %i.ag, align 8, !tbaa !15
  store i8 0, ptr %i.z, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !29
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1078
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !15
  store i64 %i.am, ptr %i.al, align 8, !tbaa !1080
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb21RegexpExtractBindData4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.9") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb21RegexpExtractBindDataESt14default_deleteIS1_EED2Ev.exit:
  %2 = alloca %"class.duckdb::unique_ptr.163", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN6duckdb9make_uniqINS_21RegexpExtractBindDataEJRKN10duckdb_re23RE27OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKbSE_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.163") align 8 %2, ptr noundef nonnull align 8 dereferenceable(23) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = load ptr, ptr %2, align 8, !tbaa !1107
  store ptr %i.e, ptr %0, align 8, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_21RegexpExtractBindDataEJRKN10duckdb_re23RE27OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKbSE_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.163") align 8 %0, ptr noundef nonnull align 8 dereferenceable(23) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb_re2::RE2::Options", align 8 ; 2 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1066
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !11
  %i.e = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.g, ptr %i.b, align 8, !tbaa !69
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %6, align 8, !tbaa !29
  %i.j = load i64, ptr %i.b, align 8, !tbaa !69
  store i64 %i.j, ptr %i.d, align 8, !tbaa !7
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !7
  store i8 %i.l, ptr %i.k, align 1, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !15
  %i.o = load ptr, ptr %6, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.q = load i8, ptr %3, align 1, !tbaa !548, !range !190, !noundef !122
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !11
  %i.s = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.u, ptr %i.a, align 8, !tbaa !69
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.d
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.j   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i11
  store ptr %i.w, ptr %7, align 8, !tbaa !29
  %i.x = load i64, ptr %i.a, align 8, !tbaa !69
  store i64 %i.x, ptr %i.r, align 8, !tbaa !7
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc12, %bb.d
  %i.y = phi ptr [ %i.w, %.noexc12 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i10
  %i.z = load i8, ptr %i.s, align 1, !tbaa !7
  store i8 %i.z, ptr %i.y, align 1, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i10
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = load ptr, ptr %7, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ae = trunc nuw i8 %i.q to i1
  invoke void @_ZN6duckdb21RegexpExtractBindDataC1EN10duckdb_re23RE27OptionsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbS9_(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull byval(%"class.duckdb_re2::RE2::Options") align 8 %5, ptr noundef nonnull %6, i1 noundef zeroext %i.ae, ptr noundef nonnull %7)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %0, align 8, !tbaa !1107
  %i.af = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.r
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.af) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ah) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  ret void

bb.i:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.j:                                             ; preds = %.noexc.i11
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.k:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !29    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.am) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.al, %bb.k ] ; 2 uses
  %i.ao = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZdlPv(ptr noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @_ZdlPv(ptr noundef nonnull %i.c) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6duckdb21RegexpExtractBindData6EqualsERKNS_12FunctionDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1064, !range !190, !noundef !122
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !29
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.i)
  %i.p = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.p, label %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 27
  %.val.i = load i8, ptr %i.q, align 1, !tbaa !1068, !range !190, !noundef !122
  %i.r = getelementptr i8, ptr %1, i64 27
  %.val5.i = load i8, ptr %i.r, align 1, !tbaa !1068, !range !190, !noundef !122
  %.not.i = icmp eq i8 %.val.i, %.val5.i
  br i1 %.not.i, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.d:                                             ; preds = %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !15
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !29
  %bcmp.i = tail call i32 @bcmp(ptr %i.ab, ptr %i.aa, i64 %i.v)
  %i.ac = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.f, %bb.e, %bb.d, %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit
  %i.ad = phi i1 [ false, %_ZNK6duckdb18RegexpBaseBindData6EqualsERKNS_12FunctionDataE.exit ], [ true, %bb.e ], [ false, %bb.d ], [ %i.ac, %bb.f ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9RegexpFun12GetFunctionsEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %4 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca [3 x %"struct.duckdb::LogicalType"], align 8 ; 14 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %12 = alloca %"class.std::function", align 8    ; 9 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 17, ptr %i.a, align 8, !tbaa !69
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !29
  %i.d = load i64, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.23, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = load ptr, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
          to label %bb.a unwind label %bb.az

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit102

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 noundef zeroext 25)
          to label %bb.c unwind label %.loopexit102.loopexit108

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc78 unwind label %bb.g   ; 6 uses

.noexc78:                                         ; preds = %bb.c
  store ptr %i.l, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !21
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread137

.thread137:                                       ; preds = %.noexc78
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #28 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc78
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 10)
          to label %bb.i unwind label %bb.ba

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #28 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.l) #28
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread137
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body79 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #31
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body79

.body79:                                          ; preds = %bb.d, %bb.g
  %eh.lpad-body80 = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.x, %bb.d ] ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %.body79
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #32
  br label %.body

bb.i:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ae, align 8
  store ptr @_ZN6duckdbL21RegexpMatchesFunctionINS_14RegexFullMatchEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %6, align 8, !tbaa !23
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.ad, align 8, !tbaa !24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.ac, align 8, !tbaa !27
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 0)
          to label %bb.j unwind label %bb.bb

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @_ZN6duckdb17RegexpMatchesBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE, ptr noundef null, ptr noundef null, ptr noundef nonnull @_ZN6duckdb19RegexInitLocalStateERNS_15ExpressionStateERKNS_23BoundFunctionExpressionEPNS_12FunctionDataE, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null)
          to label %bb.k unwind label %bb.bc

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !335 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !338
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.ag, ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %.noexc36 unwind label %bb.bd

.noexc36:                                         ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.ag, align 8, !tbaa !80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 240 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ao, null
end_hunk_1
