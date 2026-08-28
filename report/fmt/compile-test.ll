Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/compile-test?download=true
inline.NumInlined: 6412
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !1029
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #28
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !1029
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #28 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.307)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #28
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !882
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !1029
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #28 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !1029
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #28 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt double %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.307)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #28
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !882
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !1029
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #28
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !1029
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #28 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.307)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #28
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !883
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.359", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !377
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !373
  store i64 500, ptr %i.c, align 8, !tbaa !376
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !92 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1018 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call double @llvm.round.f64(double %i.h)
  %i.m = fcmp une double %i.l, %i.h
  %spec.store.select.i = select i1 %i.m, i32 6, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %spec.store.select.i, %bb.d ], [ %i.j, %bb.c ]
  %i.n = fdiv double %i.h, 1.000000e+03
  %i.o = call double @fmod(double noundef %i.n, double noundef 6.000000e+01) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store double %i.o, ptr %3, align 16, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !33
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.308, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1017, !range !44, !noundef !45
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !380 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !375  ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !376
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !377
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !1089

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !373
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !375
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !33
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !375 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !373   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !380
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !380 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !375 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !376
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !377
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !1226

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.ar, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.ax = phi i64 [ %i.aq, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ay = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !373
  store i64 %.pre-phi.i.i.i, ptr %i.ap, align 8, !tbaa !375
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 %i.ao, ptr %i.az, align 1, !tbaa !33
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !375
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.ag, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !380
  %.pre = load ptr, ptr %4, align 8, !tbaa !373   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre21
  %.not31.i.i = icmp samesign eq i64 %.pre21, 0
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.thread, %bb.r
  %i.bc = phi ptr [ %i.am, %.thread ], [ %i.bb, %bb.r ] ; 2 uses
  %i.bd = phi ptr [ %i.ai, %.thread ], [ %.pre, %bb.r ]
  %.sroa.01.0.copyload39 = phi ptr [ %.sroa.01.0.copyload.pre, %.thread ], [ %.sroa.03.0.copyload, %bb.r ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 16 ; 2 uses
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 24
  %.pre.i.i14 = load i64, ptr %i.be, align 8, !tbaa !375
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bi = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bd, %.lr.ph34.i.i ], [ %i.cq, %._crit_edge.i.i ] ; 9 uses
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !376
  %i.bk = sub i64 %i.bj, %i.bi
  %i.bl = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bm = sub i64 %i.bg, %i.bl                    ; 4 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !377
  %i.bp = add i64 %i.bm, %i.bi
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bp)
          to label %.noexc15 unwind label %bb.w, !inline_history !1227

.noexc15:                                         ; preds = %bb.t
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !375 ; 2 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !376
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bs)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bq, %.noexc15 ], [ %i.bi, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bt, %.noexc15 ], [ %i.bm, %bb.s ] ; 13 uses
  %i.bu = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !373 ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bx = add i64 %.026.i.i, %i.bv
  %i.by = sub i64 %i.bl, %i.bx
  %diff.check = icmp ugt i64 %i.by, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <16 x i8>, ptr %i.ca, align 1, !tbaa !33
  %wide.load42 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <16 x i8> %wide.load, ptr %i.cc, align 1, !tbaa !33
  store <16 x i8> %wide.load42, ptr %i.cd, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1228

middle.block:                                     ; preds = %vector.body
end_hunk_0
