inline.NumInlined: 15753
inline.NumDeleted: 2714
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5arrow7compute8internal12_GLOBAL__N_126NumericToStringCastFunctorINS_10StringTypeENS_10DoubleTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.il, %bb.ad ], [ %i.iv, %bb.ae ]
  %i.iw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.iw, label %bb.af, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ih) #28, !inline_history !1584
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ab, %.critedge
  %i.ix = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 4 uses
  %i.ja = load atomic i64, ptr %i.iz acquire, align 8 ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 4294967297
  %i.jc = trunc i64 %i.ja to i32                  ; 2 uses
  br i1 %i.jb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.iz, align 8, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 0, ptr %i.jd, align 4, !tbaa !43
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #28, !inline_history !1585
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #28, !inline_history !1585
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.jk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.jk, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jl = add nsw i32 %i.jc, -1
  store i32 %i.jl, ptr %i.iz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ak:                                            ; preds = %bb.ai
  %i.jm = atomicrmw volatile add ptr %i.iz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.jc, %bb.aj ], [ %i.jm, %bb.ak ]
  %i.jn = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.jn, label %bb.al, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, !prof !66

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iy) #28, !inline_history !1584
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.al
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %13) #28, !inline_history !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i, %bb.t
  %.pn24.pn = phi { ptr, i32 } [ %i.hl, %bb.t ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit62, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %13) #28
  br label %bb.am

bb.am:                                            ; preds = %.body, %bb.s
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body ], [ %i.hi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.26)
  ret void
}

declare void @_ZN5arrow8internal22FloatToStringFormatterC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci(ptr noundef nonnull align 8 dereferenceable(8), float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci(ptr noundef nonnull align 8 dereferenceable(8), double noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2483
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !2483
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712, !noalias !2483, !nonnull !98, !align !683
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #28, !noalias !2483
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !2483 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2483
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2483
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !298    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !298    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !55
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

declare noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow14DecimalTypeIdsEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_13Decimal32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::StringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !2490 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !2490
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !2490 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !2490 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !2490
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !2490
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !2495 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !2495
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2495
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2500

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !2495 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !2495
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !2495 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !2495 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !2501
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.ex, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !2504
  %i.ce = load i32, ptr %.5.i.i, align 1, !noalias !2504
  store i32 %i.ce, ptr %13, align 4, !noalias !2504
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !2509
  invoke void @_ZNK5arrow9Decimal328ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.cf = load ptr, ptr %12, align 8, !tbaa !298, !noalias !2509
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !2509 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2512
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !2515 ; 2 uses
  %i.cj = load ptr, ptr %16, align 8, !tbaa !44, !noalias !2515
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !2515
  %i.cm = invoke noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !2501, !inline_history !2518 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cm, %i.ci
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2512
  br label %bb.l
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_13Decimal32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.it = load ptr, ptr %17, align 8, !tbaa !1576
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !2564
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.iy, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !43
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28, !inline_history !1582
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !44
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.jb, %bb.aa ], [ %i.jl, %bb.ab ]
  %i.jm = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.jm, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_10BinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jp, align 8, !tbaa !41
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !43
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1583
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1583
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.js, %bb.ag ], [ %i.kc, %bb.ah ]
  %i.kd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kd, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1584
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.kg, align 8, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !43
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !44
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1585
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !44
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1585
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kj, %bb.am ], [ %i.kt, %bb.an ]
  %i.ku = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ku, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1584
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.is, %bb.w ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_13Decimal64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::StringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !2567 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !2567
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !2567 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !2567 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !2567
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !2567
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !2572 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !2572
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2572
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2577

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !2572 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !2572
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !2572 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !2572 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !2578
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.ex, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !2581
  %i.ce = load i64, ptr %.5.i.i, align 1, !noalias !2581
  store i64 %i.ce, ptr %13, align 8, !noalias !2581
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !2586
  invoke void @_ZNK5arrow9Decimal648ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.cf = load ptr, ptr %12, align 8, !tbaa !298, !noalias !2586
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !2586 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2589
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !2592 ; 2 uses
  %i.cj = load ptr, ptr %16, align 8, !tbaa !44, !noalias !2592
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !2592
  %i.cm = invoke noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !2578, !inline_history !2518 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cm, %i.ci
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2589
  br label %bb.l
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_13Decimal64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.it = load ptr, ptr %17, align 8, !tbaa !1576
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.iu) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !2640
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 4 uses
  %i.iz = load atomic i64, ptr %i.iy acquire, align 8 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 4294967297
  %i.jb = trunc i64 %i.iz to i32                  ; 2 uses
  br i1 %i.ja, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.iy, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store i32 0, ptr %i.jc, align 4, !tbaa !43
  %i.jd = load ptr, ptr %i.ix, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28, !inline_history !1582
  %i.jg = load ptr, ptr %i.ix, align 8, !tbaa !44
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jj, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jk = add nsw i32 %i.jb, -1
  store i32 %i.jk, ptr %i.iy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jl = atomicrmw volatile add ptr %i.iy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.jb, %bb.aa ], [ %i.jl, %bb.ab ]
  %i.jm = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.jm, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ix) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_10BinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jp, align 8, !tbaa !41
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !43
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1583
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1583
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.js, %bb.ag ], [ %i.kc, %bb.ah ]
  %i.kd = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kd, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #28, !inline_history !1584
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 4 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 4294967297
  %i.kj = trunc i64 %i.kh to i32                  ; 2 uses
  br i1 %i.ki, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.kg, align 8, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  store i32 0, ptr %i.kk, align 4, !tbaa !43
  %i.kl = load ptr, ptr %i.kf, align 8, !tbaa !44
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1585
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !44
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1585
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ks = add nsw i32 %i.kj, -1
  store i32 %i.ks, ptr %i.kg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kt = atomicrmw volatile add ptr %i.kg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kj, %bb.am ], [ %i.kt, %bb.an ]
  %i.ku = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ku, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kf) #28, !inline_history !1584
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.is, %bb.w ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_14Decimal128TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal128", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal128", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::StringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !2643 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !2643
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !2643 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !2643 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !2643
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !2643
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !2648 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !2648
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2648
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2653

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !2648 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !2648
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !2648 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !2648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !2654
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.ew, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !2657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 1 dereferenceable(16) %.5.i.i, i64 16, i1 false), !noalias !2657
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !2662
  invoke void @_ZNK5arrow10Decimal1288ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.ce = load ptr, ptr %12, align 8, !tbaa !298, !noalias !2662
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !2662 ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2665
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !2668 ; 2 uses
  %i.ci = load ptr, ptr %16, align 8, !tbaa !44, !noalias !2668
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2668
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !2654, !inline_history !2518 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cl, %i.ch
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2665
  br label %bb.l

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_14Decimal128TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.ir = load ptr, ptr %17, align 8, !tbaa !1576
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.is) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !2716
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 4 uses
  %i.ix = load atomic i64, ptr %i.iw acquire, align 8 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 4294967297
  %i.iz = trunc i64 %i.ix to i32                  ; 2 uses
  br i1 %i.iy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.iw, align 8, !tbaa !41
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  store i32 0, ptr %i.ja, align 4, !tbaa !43
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !44
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #28, !inline_history !1582
  %i.je = load ptr, ptr %i.iv, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jh, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ji = add nsw i32 %i.iz, -1
  store i32 %i.ji, ptr %i.iw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jj = atomicrmw volatile add ptr %i.iw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.iz, %bb.aa ], [ %i.jj, %bb.ab ]
  %i.jk = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.jk, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_10BinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %i.jo = load atomic i64, ptr %i.jn acquire, align 8 ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 4294967297
  %i.jq = trunc i64 %i.jo to i32                  ; 2 uses
  br i1 %i.jp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jn, align 8, !tbaa !41
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 0, ptr %i.jr, align 4, !tbaa !43
  %i.js = load ptr, ptr %i.jm, align 8, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #28, !inline_history !1583
  %i.jv = load ptr, ptr %i.jm, align 8, !tbaa !44
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8
  call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #28, !inline_history !1583
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jz = add nsw i32 %i.jq, -1
  store i32 %i.jz, ptr %i.jn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ka = atomicrmw volatile add ptr %i.jn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jq, %bb.ag ], [ %i.ka, %bb.ah ]
  %i.kb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kb, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jm) #28, !inline_history !1584
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.kc = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %i.kf = load atomic i64, ptr %i.ke acquire, align 8 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 4294967297
  %i.kh = trunc i64 %i.kf to i32                  ; 2 uses
  br i1 %i.kg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ke, align 8, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 0, ptr %i.ki, align 4, !tbaa !43
  %i.kj = load ptr, ptr %i.kd, align 8, !tbaa !44
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #28, !inline_history !1585
  %i.km = load ptr, ptr %i.kd, align 8, !tbaa !44
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #28, !inline_history !1585
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kp, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kq = add nsw i32 %i.kh, -1
  store i32 %i.kq, ptr %i.ke, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kr = atomicrmw volatile add ptr %i.ke, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kh, %bb.am ], [ %i.kr, %bb.an ]
  %i.ks = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ks, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #28, !inline_history !1584
  br label %_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.iq, %bb.w ], [ %i.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_10StringTypeENS_14Decimal256TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::StringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !2719 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !2719
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !2719 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !2719 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !2719
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !2719
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !2724 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !2724
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2724
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2729

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !2724 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !2724
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !2724 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !2724 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !2730
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.ew, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !2733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull readonly align 1 dereferenceable(32) %.5.i.i, i64 32, i1 false), !noalias !2733
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !2738
  invoke void @_ZNK5arrow10Decimal2568ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.ce = load ptr, ptr %12, align 8, !tbaa !298, !noalias !2738
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !2738 ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2741
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !2744 ; 2 uses
  %i.ci = load ptr, ptr %16, align 8, !tbaa !44, !noalias !2744
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !2744
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !2730, !inline_history !2518 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cl, %i.ch
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2741
  br label %bb.l

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal12_GLOBAL__N_126NumericToStringCastFunctorINS_15LargeStringTypeENS_10DoubleTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  %i.hm = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !6785
  br label %.critedge29

.critedge29:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit54
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !46 ; 8 uses
  %.not.i.i55 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i55, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.critedge29
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.hp, align 8, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !43
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !44
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #28, !inline_history !1582
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i56 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.y:                                             ; preds = %bb.w
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i58 = phi i32 [ %i.hs, %bb.x ], [ %i.ic, %bb.y ]
  %i.id = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.id, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge29, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.thread60, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEEE, i64 16), ptr %13, align 8, !tbaa !44
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 208
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ig, align 8, !tbaa !41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !43
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !44
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #28, !inline_history !5920
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #28, !inline_history !5920
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ij, %bb.ad ], [ %i.it, %bb.ae ]
  %i.iu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.iu, label %bb.af, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #28, !inline_history !5921
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ab, %.critedge
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ix, align 8, !tbaa !41
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !43
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !44
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #28, !inline_history !5922
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !44
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #28, !inline_history !5922
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ak:                                            ; preds = %bb.ai
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ja, %bb.aj ], [ %i.jk, %bb.ak ]
  %i.jl = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.jl, label %bb.al, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, !prof !66

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #28, !inline_history !5921
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.al
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %13) #28, !inline_history !5921
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i, %bb.t
  %.pn24.pn = phi { ptr, i32 } [ %i.hj, %bb.t ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit62, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %13) #28
  br label %bb.am

bb.am:                                            ; preds = %.body, %bb.s
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body ], [ %i.hg, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %.pn24.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_13Decimal32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal32", align 4 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::LargeStringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !6788 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !6788
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !6788 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !6788 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !6788
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !6788
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !6793 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !6793
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !6793
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6798

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !6793 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !6793
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !6793 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !6793 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !6799
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.eu, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !6802
  %i.ce = load i32, ptr %.5.i.i, align 1, !noalias !6802
  store i32 %i.ce, ptr %13, align 4, !noalias !6802
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !6807
  invoke void @_ZNK5arrow9Decimal328ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.cf = load ptr, ptr %12, align 8, !tbaa !298, !noalias !6807
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !6807 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !6810
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !6813 ; 2 uses
  %i.ci = load ptr, ptr %16, align 8, !tbaa !44, !noalias !6813
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !6813
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !6799, !inline_history !6816 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cl, %i.ch
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !6810
  br label %bb.l

end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_13Decimal32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.in = load ptr, ptr %17, align 8, !tbaa !1576
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.io) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !6862
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.is, align 8, !tbaa !41
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !43
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !44
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !1582
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !44
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.iv, %bb.aa ], [ %i.jf, %bb.ab ]
  %i.jg = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.jg, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jj, align 8, !tbaa !41
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !43
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5920
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5920
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jw = atomicrmw volatile add ptr %i.jj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jm, %bb.ag ], [ %i.jw, %bb.ah ]
  %i.jx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jx, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5921
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ka, align 8, !tbaa !41
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !43
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5922
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !44
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5922
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kd, %bb.am ], [ %i.kn, %bb.an ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ko, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5921
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !5921
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.im, %bb.w ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_13Decimal64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal64", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::LargeStringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !6865 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !6865
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !6865 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !6865 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !6865
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !6865
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !6870 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !6870
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !6870
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6875

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !6870 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !6870
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !6870 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !6870 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !6876
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.eu, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !6879
  %i.ce = load i64, ptr %.5.i.i, align 1, !noalias !6879
  store i64 %i.ce, ptr %13, align 8, !noalias !6879
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !6884
  invoke void @_ZNK5arrow9Decimal648ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.cf = load ptr, ptr %12, align 8, !tbaa !298, !noalias !6884
  %i.cg = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !6884 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !6887
  %i.ch = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !6890 ; 2 uses
  %i.ci = load ptr, ptr %16, align 8, !tbaa !44, !noalias !6890
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !6890
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !6876, !inline_history !6816 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.cl, %i.ch
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !6887
  br label %bb.l

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_13Decimal64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.in = load ptr, ptr %17, align 8, !tbaa !1576
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.io) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !6938
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.iq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.is, align 8, !tbaa !41
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !43
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !44
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !1582
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !44
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.iv, %bb.aa ], [ %i.jf, %bb.ab ]
  %i.jg = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.jg, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 4 uses
  %i.jk = load atomic i64, ptr %i.jj acquire, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 4294967297
  %i.jm = trunc i64 %i.jk to i32                  ; 2 uses
  br i1 %i.jl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jj, align 8, !tbaa !41
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  store i32 0, ptr %i.jn, align 4, !tbaa !43
  %i.jo = load ptr, ptr %i.ji, align 8, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5920
  %i.jr = load ptr, ptr %i.ji, align 8, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5920
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jv = add nsw i32 %i.jm, -1
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.jw = atomicrmw volatile add ptr %i.jj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jm, %bb.ag ], [ %i.jw, %bb.ah ]
  %i.jx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jx, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ji) #28, !inline_history !5921
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ka, align 8, !tbaa !41
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !43
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !44
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5922
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !44
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5922
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kd, %bb.am ], [ %i.kn, %bb.an ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ko, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #28, !inline_history !5921
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !5921
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.im, %bb.w ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_14Decimal128TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal128", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal128", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::LargeStringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !6941 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !6941
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !6941 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !6941 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !6941
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !6941
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !6946 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !6946
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !6946
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6951

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !6946 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !6946
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !6946 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !6946 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !6952
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !6955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 1 dereferenceable(16) %.5.i.i, i64 16, i1 false), !noalias !6955
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !6960
  invoke void @_ZNK5arrow10Decimal1288ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.ce = load ptr, ptr %12, align 8, !tbaa !298, !noalias !6960
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !6960 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !6963
  %i.cg = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !6966 ; 2 uses
  %i.ch = load ptr, ptr %16, align 8, !tbaa !44, !noalias !6966
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !6966
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !6952, !inline_history !6816 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.ck, %i.cg
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !6963
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.noexc.i.i.i
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_14Decimal128TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.il = load ptr, ptr %17, align 8, !tbaa !1576
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = call noundef nonnull align 8 dereferenceable(129) ptr @_ZNSt7variantIJN5arrow9ArraySpanESt10shared_ptrINS0_9ArrayDataEEEEaSIKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S4_EE4typeEE18is_constructible_vISD_SA_E15is_assignable_vIRSD_SA_EERS5_E4typeESB_(ptr noundef nonnull align 8 dereferenceable(129) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.im) #28 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !83, !alias.scope !7014
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit42, %_ZN5arrow6StatusD2Ev.exit46
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !46 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 4 uses
  %i.ir = load atomic i64, ptr %i.iq acquire, align 8 ; 2 uses
  %i.is = icmp eq i64 %i.ir, 4294967297
  %i.it = trunc i64 %i.ir to i32                  ; 2 uses
  br i1 %i.is, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.iq, align 8, !tbaa !41
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  store i32 0, ptr %i.iu, align 4, !tbaa !43
  %i.iv = load ptr, ptr %i.ip, align 8, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #28, !inline_history !1582
  %i.iy = load ptr, ptr %i.ip, align 8, !tbaa !44
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #28, !inline_history !1582
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i48 = icmp eq i8 %i.jb, 0
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jc = add nsw i32 %i.it, -1
  store i32 %i.jc, ptr %i.iq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

bb.ab:                                            ; preds = %bb.z
  %i.jd = atomicrmw volatile add ptr %i.iq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i50 = phi i32 [ %i.it, %bb.aa ], [ %i.jd, %bb.ab ]
  %i.je = icmp eq i32 %.0.i.i.i.i50, 1
  br i1 %i.je, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ip) #28
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge26, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEEE, i64 16), ptr %16, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 208
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.jh, align 8, !tbaa !41
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !43
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #28, !inline_history !5920
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #28, !inline_history !5920
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jk, %bb.ag ], [ %i.ju, %bb.ah ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jv, label %bb.ai, label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, !prof !66

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #28, !inline_history !5921
  br label %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i:     ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae, %.critedge
  %i.jw = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i1.i, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 4 uses
  %i.jz = load atomic i64, ptr %i.jy acquire, align 8 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 4294967297
  %i.kb = trunc i64 %i.jz to i32                  ; 2 uses
  br i1 %i.ka, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.jy, align 8, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !43
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !44
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #28, !inline_history !5922
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #28, !inline_history !5922
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.kj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.kj, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kk = add nsw i32 %i.kb, -1
  store i32 %i.kk, ptr %i.jy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.an:                                            ; preds = %bb.al
  %i.kl = atomicrmw volatile add ptr %i.jy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.kb, %bb.am ], [ %i.kl, %bb.an ]
  %i.km = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.km, label %bb.ao, label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit, !prof !66

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #28, !inline_history !5921
  br label %_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit

_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderIhvED2Ev.exit.i, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ao
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(256) %16) #28, !inline_history !5921
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i, %bb.w
  %.pn21.pn = phi { ptr, i32 } [ %i.ik, %bb.w ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i91.i.i.i ], [ %eh.lpad-body.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit61, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(256) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_126DecimalToStringCastFunctorINS_15LargeStringTypeENS_14Decimal256TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %14 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::LargeStringBuilder", align 8 ; 45 uses
  %17 = alloca %"class.std::shared_ptr.266", align 8 ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !2486 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %19 = load ptr, ptr %i.d, align 8, !tbaa !694
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !567, !noalias !7017 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8, !noalias !7017
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8, !noalias !7017 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.c, !llvm.loop !569

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #28, !noalias !7017 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !44, !noalias !7017
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #32, !noalias !7017
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !571
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !572  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1496
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 64, ptr %i.u, align 8, !tbaa !1497
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.s, ptr %i.w, align 8, !tbaa !1147
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.x, align 8, !tbaa !632
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.z, align 8, !tbaa !1148
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, i8 0, i64 80, i1 false)
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !1147
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 168 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ac, align 8, !tbaa !632
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 176
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ae, align 8, !tbaa !1148
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 216
  store ptr %i.s, ptr %i.ag, align 8, !tbaa !1147
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ah, align 8, !tbaa !632
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aj, align 8, !tbaa !1148
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %16, align 8, !tbaa !44
  %i.ak = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !43
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aw = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.am, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ax, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !694, !noalias !7022 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44, !noalias !7022
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !7022
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7027

.noexc:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !613, !noalias !7022 ; 3 uses
  %i.bf = sext i32 %i.bc to i64                   ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !614, !noalias !7022
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !614, !noalias !7022 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !580, !noalias !7022 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !7028
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.bj, i64 noundef %i.be, i64 noundef %i.bl)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph175.i.i.i, label %_ZN5arrow6StatusD2Ev.exit40

.lr.ph175.i.i.i:                                  ; preds = %.noexc29
  %i.bn = mul nsw i64 %i.be, %i.bf
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 240 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 184 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge65.i.i.i, %.lr.ph175.i.i.i
  %.0.i.i = phi ptr [ %i.bo, %.lr.ph175.i.i.i ], [ %.1.i.i, %.critedge65.i.i.i ] ; 6 uses
  %.054174.i.i.i = phi i64 [ 0, %.lr.ph175.i.i.i ], [ %.458.i.i.i, %.critedge65.i.i.i ] ; 7 uses
  %i.bz = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.k
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.bz to i16 ; 5 uses
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %i.bz, 16 ; 2 uses
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i16
  %i.ca = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  br i1 %i.ca, label %.preheader.i.i.i, label %bb.s

.preheader.i.i.i:                                 ; preds = %.noexc30
  %i.cb = sext i16 %.sroa.0.0.extract.trunc.i.i.i to i64 ; 2 uses
  %.not64169.i.i.i = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i, 0
  br i1 %.not64169.i.i.i, label %.lr.ph172.preheader.i.i.i, label %.critedge65.i.i.i

.lr.ph172.preheader.i.i.i:                        ; preds = %.preheader.i.i.i
  %i.cc = add i64 %.054174.i.i.i, %i.cb
  br label %.lr.ph172.i.i.i

.lr.ph172.i.i.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit79.i.i.i, %.lr.ph172.preheader.i.i.i
  %.5.i.i = phi ptr [ %.0.i.i, %.lr.ph172.preheader.i.i.i ], [ %i.cd, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ] ; 2 uses
  %.053171.i.i.i = phi i64 [ 0, %.lr.ph172.preheader.i.i.i ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit79.i.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.bf ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !7031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull readonly align 1 dereferenceable(32) %.5.i.i, i64 32, i1 false), !noalias !7031
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !7036
  invoke void @_ZNK5arrow10Decimal2568ToStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.g)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %.lr.ph172.i.i.i
  %i.ce = load ptr, ptr %12, align 8, !tbaa !298, !noalias !7036
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !702, !noalias !7036 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !7039
  %i.cg = load i64, ptr %i.bu, align 8, !tbaa !587, !noalias !7042 ; 2 uses
  %i.ch = load ptr, ptr %16, align 8, !tbaa !44, !noalias !7042
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !7042
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(256) %16)
          to label %.noexc.i.i.i unwind label %bb.r, !noalias !7028, !inline_history !6816 ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc31
  %.not.i.not.i.i.i.i = icmp slt i64 %i.ck, %i.cg
  br i1 %.not.i.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i

_ZN5arrow6StatusD2Ev.exit25.thread.i.i.i.i:       ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !7039
  br label %bb.l

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %.noexc.i.i.i
end_hunk_7
