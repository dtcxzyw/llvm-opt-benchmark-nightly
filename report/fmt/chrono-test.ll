Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !2717
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt float %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #30
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !22
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !4228
  store i64 500, ptr %i.c, align 8, !tbaa !4229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !5314 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !5318 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = call noundef float @fmodf(float noundef %i.h, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.n, ptr %3, align 16, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.o, align 16, !tbaa !65
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !5317, !range !90, !noundef !91
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !4241 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !4244 ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !4229
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !398
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u)
          to label %.noexc unwind label %bb.k, !inline_history !5397

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.aa = phi i64 [ %i.t, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !4244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 45, ptr %i.ac, align 1, !tbaa !65
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.af = load i64, ptr %i.e, align 8, !tbaa !4244 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !65
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !4241
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !4241 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp eq i32 %2, 2
  %i.an = select i1 %i.am, i8 32, i8 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !4244 ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !4229
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !398
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.aq)
          to label %.noexc13 unwind label %bb.q, !inline_history !5535

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.aq, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.aw = phi i64 [ %i.ap, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ax = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i.i, ptr %i.ao, align 8, !tbaa !4244
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 %i.an, ptr %i.ay, align 1, !tbaa !65
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !4244
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.af, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !4241
  %.pre = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre21
  %.not31.i.i = icmp samesign eq i64 %.pre21, 0
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.thread, %bb.r
  %i.bb = phi ptr [ %i.al, %.thread ], [ %i.ba, %bb.r ] ; 2 uses
  %i.bc = phi ptr [ %i.ah, %.thread ], [ %.pre, %bb.r ]
  %.sroa.01.0.copyload39 = phi ptr [ %.sroa.01.0.copyload.pre, %.thread ], [ %.sroa.03.0.copyload, %bb.r ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 16 ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 24
  %.pre.i.i14 = load i64, ptr %i.bd, align 8, !tbaa !4244
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bh = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.co, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bc, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 9 uses
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !4229
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bl = sub i64 %i.bf, %i.bk                    ; 4 uses
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !398
  %i.bo = add i64 %i.bl, %i.bh
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bo)
          to label %.noexc15 unwind label %bb.w, !inline_history !5536

.noexc15:                                         ; preds = %bb.t
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !4244 ; 2 uses
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !4229
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.br)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bp, %.noexc15 ], [ %i.bh, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bs, %.noexc15 ], [ %i.bl, %bb.s ] ; 13 uses
  %i.bt = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !4228 ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bw = add i64 %.026.i.i, %i.bu
  %i.bx = sub i64 %i.bk, %i.bw
  %diff.check = icmp ugt i64 %i.bx, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !65
  %wide.load42 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <16 x i8> %wide.load, ptr %i.cb, align 1, !tbaa !65
  store <16 x i8> %wide.load42, ptr %i.cc, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !5537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !2717
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt float %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #30
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !22
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !4228
  store i64 500, ptr %i.c, align 8, !tbaa !4229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !5314 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !5550 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = fdiv float %i.h, 1.000000e+03
  %i.o = call noundef float @fmodf(float noundef %i.n, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.o, ptr %3, align 16, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !65
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !5549, !range !90, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !4241 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !398
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !5397

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !4244
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !65
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
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !4244 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !4241
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !4241 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !4229
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !398
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !5535

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.ar, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.ax = phi i64 [ %i.aq, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ay = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i.i, ptr %i.ap, align 8, !tbaa !4244
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 %i.ao, ptr %i.az, align 1, !tbaa !65
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !4244
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.ag, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !4241
  %.pre = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
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
  %.pre.i.i14 = load i64, ptr %i.be, align 8, !tbaa !4244
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bi = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bd, %.lr.ph34.i.i ], [ %i.cq, %._crit_edge.i.i ] ; 9 uses
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bk = sub i64 %i.bj, %i.bi
  %i.bl = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bm = sub i64 %i.bg, %i.bl                    ; 4 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !398
  %i.bp = add i64 %i.bm, %i.bi
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bp)
          to label %.noexc15 unwind label %bb.w, !inline_history !5536

.noexc15:                                         ; preds = %bb.t
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !4244 ; 2 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bs)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bq, %.noexc15 ], [ %i.bi, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bt, %.noexc15 ], [ %i.bm, %bb.s ] ; 13 uses
  %i.bu = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !4228 ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %i.ca, align 1, !tbaa !65
  %wide.load42 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <16 x i8> %wide.load, ptr %i.cc, align 1, !tbaa !65
  store <16 x i8> %wide.load42, ptr %i.cd, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !5568

middle.block:                                     ; preds = %vector.body
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !2738
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !2738
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt double %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #30
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !2738
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !22
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.357", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !4228
  store i64 500, ptr %i.c, align 8, !tbaa !4229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !3669 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !5577 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call double @llvm.round.f64(double %i.h)
  %i.m = fcmp une double %i.l, %i.h
  %spec.store.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %spec.store.select.i, %bb.d ], [ %i.j, %bb.c ]
  %i.n = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store double %i.n, ptr %3, align 16, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.o, align 16, !tbaa !65
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i8, ptr %i.p, align 8, !tbaa !5576, !range !90, !noundef !91
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !4241 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !4244 ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !4229
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !398
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u)
          to label %.noexc unwind label %bb.k, !inline_history !5397

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.aa = phi i64 [ %i.t, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !4244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 45, ptr %i.ac, align 1, !tbaa !65
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.af = load i64, ptr %i.e, align 8, !tbaa !4244 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !65
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !4241
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !4241 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp eq i32 %2, 2
  %i.an = select i1 %i.am, i8 32, i8 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !4244 ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !4229
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !398
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.aq)
          to label %.noexc13 unwind label %bb.q, !inline_history !5535

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.aq, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.aw = phi i64 [ %i.ap, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ax = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i.i, ptr %i.ao, align 8, !tbaa !4244
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 %i.an, ptr %i.ay, align 1, !tbaa !65
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !4244
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.af, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !4241
  %.pre = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 %.pre21
  %.not31.i.i = icmp samesign eq i64 %.pre21, 0
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaacvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EcvNS1_10has_appendIS8_T0_vEE_EEiE4typeELi0EEES8_SD_SD_S8_.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.thread, %bb.r
  %i.bb = phi ptr [ %i.al, %.thread ], [ %i.ba, %bb.r ] ; 2 uses
  %i.bc = phi ptr [ %i.ah, %.thread ], [ %.pre, %bb.r ]
  %.sroa.01.0.copyload39 = phi ptr [ %.sroa.01.0.copyload.pre, %.thread ], [ %.sroa.03.0.copyload, %bb.r ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 16 ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload39, i64 24
  %.pre.i.i14 = load i64, ptr %i.bd, align 8, !tbaa !4244
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bh = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.co, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bc, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 9 uses
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !4229
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bl = sub i64 %i.bf, %i.bk                    ; 4 uses
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !398
  %i.bo = add i64 %i.bl, %i.bh
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bo)
          to label %.noexc15 unwind label %bb.w, !inline_history !5536

.noexc15:                                         ; preds = %bb.t
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !4244 ; 2 uses
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !4229
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.br)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bp, %.noexc15 ], [ %i.bh, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bs, %.noexc15 ], [ %i.bl, %bb.s ] ; 13 uses
  %i.bt = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !4228 ; 2 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bw = add i64 %.026.i.i, %i.bu
  %i.bx = sub i64 %i.bk, %i.bw
  %diff.check = icmp ugt i64 %i.bx, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !65
  %wide.load42 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <16 x i8> %wide.load, ptr %i.cb, align 1, !tbaa !65
  store <16 x i8> %wide.load42, ptr %i.cc, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !5628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !2738
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
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
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !2738
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt double %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #30
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
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
  %i.d = load double, ptr %i.c, align 8, !tbaa !2738
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !2738
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !22
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.357", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !4228
  store i64 500, ptr %i.c, align 8, !tbaa !4229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !3669 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !5640 ; 2 uses
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
  %i.o = call double @fmod(double noundef %i.n, double noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store double %i.o, ptr %3, align 16, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !65
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 8, !tbaa !5639, !range !90, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !4241 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !398
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !5397

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !4244
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !65
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
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !4244 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !4241
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !4241 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !4229
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !398
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !5535

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.ar, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.ax = phi i64 [ %i.aq, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ay = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i.i, ptr %i.ap, align 8, !tbaa !4244
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 %i.ao, ptr %i.az, align 1, !tbaa !65
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !4244
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.ag, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !4241
  %.pre = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
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
  %.pre.i.i14 = load i64, ptr %i.be, align 8, !tbaa !4244
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bi = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bd, %.lr.ph34.i.i ], [ %i.cq, %._crit_edge.i.i ] ; 9 uses
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bk = sub i64 %i.bj, %i.bi
  %i.bl = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bm = sub i64 %i.bg, %i.bl                    ; 4 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !398
  %i.bp = add i64 %i.bm, %i.bi
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bp)
          to label %.noexc15 unwind label %bb.w, !inline_history !5536

.noexc15:                                         ; preds = %bb.t
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !4244 ; 2 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bs)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bq, %.noexc15 ], [ %i.bi, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bt, %.noexc15 ], [ %i.bm, %bb.s ] ; 13 uses
  %i.bu = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !4228 ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %i.ca, align 1, !tbaa !65
  %wide.load42 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <16 x i8> %wide.load, ptr %i.cc, align 1, !tbaa !65
  store <16 x i8> %wide.load42, ptr %i.cd, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !5658

middle.block:                                     ; preds = %vector.body
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !2717
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = fcmp ogt float %i.n, 1.200000e+01
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #30
  resume { ptr, i32 } %i.s

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.t, align 8, !tbaa !18
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !2717
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !2717
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !22
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !398
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !4228
  store i64 500, ptr %i.c, align 8, !tbaa !4229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !5314 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !5735 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = fmul float %i.h, f0x5D5E0B6B
  %i.o = call noundef float @fmodf(float noundef %i.n, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.o, ptr %3, align 16, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !65
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !5734, !range !90, !noundef !91
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !4241 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !4229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !398
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !5397

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !4244
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !65
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
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !4244 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !65
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !4241
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !4241 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !4229
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !398
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !5535

.noexc13:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.o
  %.pre-phi.i.i.i = phi i64 [ %i.ar, %bb.o ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.ax = phi i64 [ %i.aq, %bb.o ], [ %.pre.i.i.i, %.noexc13 ]
  %i.ay = load ptr, ptr %.sroa.03.0.copyload, align 8, !tbaa !4228
  store i64 %.pre-phi.i.i.i, ptr %i.ap, align 8, !tbaa !4244
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 %i.ao, ptr %i.az, align 1, !tbaa !65
  %.pre21.pre = load i64, ptr %i.e, align 8, !tbaa !4244
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %.pre21 = phi i64 [ %.pre21.pre, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %i.ag, %bb.n ] ; 2 uses
  store ptr %.sroa.03.0.copyload, ptr %0, align 8, !tbaa !4241
  %.pre = load ptr, ptr %4, align 8, !tbaa !4228  ; 3 uses
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
  %.pre.i.i14 = load i64, ptr %i.be, align 8, !tbaa !4244
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.bi = phi i64 [ %.pre.i.i14, %.lr.ph34.i.i ], [ %i.cp, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %i.bd, %.lr.ph34.i.i ], [ %i.cq, %._crit_edge.i.i ] ; 9 uses
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bk = sub i64 %i.bj, %i.bi
  %i.bl = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.bm = sub i64 %i.bg, %i.bl                    ; 4 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !398
  %i.bp = add i64 %i.bm, %i.bi
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload39, i64 noundef %i.bp)
          to label %.noexc15 unwind label %bb.w, !inline_history !5536

.noexc15:                                         ; preds = %bb.t
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !4244 ; 2 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !4229
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bs)
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %.026.i.i = phi i64 [ %i.bq, %.noexc15 ], [ %i.bi, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.bt, %.noexc15 ], [ %i.bm, %bb.s ] ; 13 uses
  %i.bu = load ptr, ptr %.sroa.01.0.copyload39, align 8, !tbaa !4228 ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %i.ca, align 1, !tbaa !65
  %wide.load42 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <16 x i8> %wide.load, ptr %i.cc, align 1, !tbaa !65
  store <16 x i8> %wide.load42, ptr %i.cd, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !5753

middle.block:                                     ; preds = %vector.body
end_hunk_4
