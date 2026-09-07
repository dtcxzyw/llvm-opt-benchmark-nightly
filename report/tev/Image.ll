Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 134
begin_hunk_0_@_ZN3tev7waitAllITkNS_8range_ofINS_4TaskIvEEEERNSt3__16vectorIS3_NS4_9allocatorIS3_EEEEEEvOT_:bb.a
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #44
  br label %.loopexit21

bb.q:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit21

bb.r:                                             ; preds = %bb.m
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not6.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %bb.s, %.lr.ph.i.i.i.i15
  %.07.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i15 ], [ %i.e, %bb.s ]
  %i.be = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #44
  %.not.i.i.i.i16 = icmp eq ptr %i.d, %i.be
  br i1 %.not.i.i.i.i16, label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i15

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i15
  %.pre1.i.i = load ptr, ptr %1, align 8, !tbaa !281 ; 2 uses
  %.pre29 = ptrtoint ptr %.pre1.i.i to i64
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.s
  %.pre-phi = phi i64 [ %.pre29, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.h, %bb.s ]
  %i.bf = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.d, %bb.s ]
  store ptr %i.d, ptr %i.f, align 8, !tbaa !280
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !282
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %.pre-phi
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #45
  br label %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev.exit: ; preds = %bb.r, %_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE7__clearB8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  ret void

.loopexit21:                                      ; preds = %bb.e, %bb.h, %bb.i, %bb.q, %bb.p, %bb.l
  %.merged = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.at, %bb.l ], [ %i.bd, %bb.q ], [ %i.ar, %bb.h ], [ %i.as, %bb.i ], [ %lpad.phi, %bb.e ]
  call void @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  resume { ptr, i32 } %.merged

bb.t:                                             ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #49
  unreachable

bb.u:                                             ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN3tev10ScopeGuardIZNRS_5Image7textureENSt3__14spanIKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESC_E3$_3ED2Ev"(i64 %.0.val, i8 %.8.val) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNSt3__16chrono12system_clock3nowEv() #44
  %i.d = sub nsw i64 %i.c, %.0.val
  %i.e = sitofp i64 %i.d to double
  %i.f = fdiv double %i.e, 1.000000e+06
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store double %i.f, ptr %i.a, align 8, !tbaa !532
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240
  invoke void @_ZN4tlog6Logger3logIJdEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i32 noundef 4, ptr nonnull @.str.219, i64 37, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_3clEv.exit" unwind label %bb.d

"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_3clEv.exit": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.c

bb.c:                                             ; preds = %"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_3clEv.exit", %bb.a
  ret void

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #49
  unreachable
}

declare void @_ZN7nanogui7Texture12upload_asyncEPKhmPFvPvES3_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN3tev10ScopeGuardIZNRS_5Image7textureENSt3__14spanIKNS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESC_E3$_2ED2Ev"(i64 %.0.val, i8 %.8.val) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNSt3__16chrono12system_clock3nowEv() #44
  %i.d = sub nsw i64 %i.c, %.0.val
  %i.e = sitofp i64 %i.d to double
  %i.f = fdiv double %i.e, 1.000000e+06
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store double %i.f, ptr %i.a, align 8, !tbaa !532
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240
  invoke void @_ZN4tlog6Logger3logIJdEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i32 noundef 4, ptr nonnull @.str.218, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_2clEv.exit" unwind label %bb.d

"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_2clEv.exit": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br label %bb.c

bb.c:                                             ; preds = %"_ZZNR3tev5Image7textureENSt3__14spanIKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEELm18446744073709551615EEENS_18EInterpolationModeESB_ENK3$_2clEv.exit", %bb.a
  ret void

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #49
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNKR3tev5Image15channelsInGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(516) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !471 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470  ; 2 uses
  %.not19 = icmp eq ptr %i.b, %i.d
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.010.020 = phi ptr [ %i.q, %.critedge ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = load i8, ptr %.sroa.010.020, align 8     ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.e, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.f, i64 %i.h, i64 %i.j
  %.not.i = icmp eq i64 %2, %i.k
  br i1 %.not.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit, label %.critedge

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit: ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 1
  %i.o = select i1 %i.f, ptr %i.m, ptr %i.n
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.o, i64 %2)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %bb.b, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !205  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.a, %bb.b
  %.sroa.013.1 = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ null, %.critedge ]
  %.sroa.3.1 = phi i64 [ %i.y, %bb.b ], [ 0, %bb.a ], [ 0, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.013.1, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev5Image7ungroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(516) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer.736", align 8 ; 10 uses
  %4 = alloca %"struct.tev::ChannelGroup", align 8 ; 7 uses
  %5 = alloca %"struct.tev::ChannelGroup", align 8 ; 7 uses
  %6 = alloca %"struct.std::__1::__split_buffer.736", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 8 uses
  %.val = load ptr, ptr %i.a, align 16, !tbaa !471 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !470 ; 8 uses
  %.not2.i.i.i = icmp eq ptr %.val, %.val6
  br i1 %.not2.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i
  %.03.i.i.i = phi ptr [ %i.o, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i ], [ %.val, %bb.a ] ; 6 uses
  %i.c = load i8, ptr %.03.i.i.i, align 8         ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i8 %i.c, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = select i1 %i.d, i64 %i.f, i64 %i.h
  %.not.i.i.i.i = icmp eq i64 %i.i, %2
  br i1 %.not.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 1
  %i.m = select i1 %i.d, ptr %i.k, ptr %i.l
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.m, ptr readonly %1, i64 %2)
  %i.n = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.n, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit", label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %.val6
  br i1 %.not.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.thread", label %.lr.ph.i.i.i, !llvm.loop !2225

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi ptr [ %.val, %bb.a ], [ %.03.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i ] ; 3 uses
  %i.p = ptrtoint ptr %.val to i64                ; 2 uses
  %i.q = icmp eq ptr %.0.lcssa.i.i.i, %.val6
  br i1 %i.q, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit"
  %7 = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %8 = sub i64 %7, %i.p
  %9 = getelementptr inbounds i8, ptr %.val, i64 %8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !205  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !206  ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %10 = sub i64 %i.x, %i.p
  %11 = getelementptr inbounds i8, ptr %.val, i64 %10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !484
  %.not56.i.i = icmp eq ptr %.val6, %i.z
  br i1 %.not56.i.i, label %.critedge.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit.i.lr.ph.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit.i.lr.ph.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %_ZN3tev12ChannelGroupD2Ev.exit.i.i

_ZN3tev12ChannelGroupD2Ev.exit.i.i:               ; preds = %_ZN3tev12ChannelGroupD2Ev.exit.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit.i.lr.ph.i.i
  %.sroa.251.058.i.i = phi ptr [ %i.s, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit.i.lr.ph.i.i ], [ %i.ai, %_ZN3tev12ChannelGroupD2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call fastcc void @"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS0_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEZN3tev5Image7ungroupENS_17basic_string_viewIcS6_EEE3$_1E10__iteratorILb1EEdeB8ne180100Ev"(ptr dead_on_unwind noalias writable align 8 %5, ptr %.sroa.251.058.i.i)
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !470 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.af = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !272
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !272
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !272
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !272
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !470
  %.pre.i.i = load ptr, ptr %i.y, align 16, !tbaa !484
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.251.058.i.i, i64 24 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, %.pre.i.i
  %i.aj = icmp eq ptr %i.ai, %i.u
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aj
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN3tev12ChannelGroupD2Ev.exit.i.i, !llvm.loop !2226

.critedge.i.i:                                    ; preds = %_ZN3tev12ChannelGroupD2Ev.exit.i.i, %bb.c
  %i.ak = phi ptr [ %.val6, %bb.c ], [ %i.ah, %_ZN3tev12ChannelGroupD2Ev.exit.i.i ]
  %.sroa.251.0.lcssa.i.i = phi ptr [ %i.s, %bb.c ], [ %i.ai, %_ZN3tev12ChannelGroupD2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 32, i1 false)
  store ptr %i.y, ptr %i.al, align 8, !tbaa !582
  %i.am = icmp eq ptr %.sroa.251.0.lcssa.i.i, %i.u
  br i1 %i.am, label %bb.p, label %.lr.ph23.i.i.i

.lr.ph23.i.i.i:                                   ; preds = %.critedge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc37.i.i, %.lr.ph23.i.i.i
  %i.aw = phi ptr [ null, %.lr.ph23.i.i.i ], [ %i.ci, %.noexc37.i.i ] ; 3 uses
  %.sroa.118.021.i.i.i = phi ptr [ %.sroa.251.0.lcssa.i.i, %.lr.ph23.i.i.i ], [ %i.cj, %.noexc37.i.i ] ; 2 uses
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !484
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZN3tev12ChannelGroupD2Ev.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %6, align 8, !tbaa !586
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48
  %i.be = shl nsw i64 %i.bd, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr null, ptr %i.ap, align 8, !tbaa !587
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !582
  %i.bf = icmp ugt i64 %i.be, 384307168202282325
  br i1 %i.bf, label %bb.f, label %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #47
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 8) ; 2 uses
  %i.bg = mul nuw i64 %.sroa.speculated.i.i.i, 48
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #46
          to label %.noexc36.i.i unwind label %.loopexit53.i.i ; 8 uses

.noexc36.i.i:                                     ; preds = %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i.i
  store ptr %i.bh, ptr %3, align 8, !tbaa !586
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !588
  store ptr %i.bh, ptr %i.as, align 8, !tbaa !589
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %.sroa.speculated.i.i.i ; 2 uses
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !484
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !589 ; 3 uses
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !588 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not19.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i11

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i11
  %.pre26.i.i.i = load ptr, ptr %3, align 8, !tbaa !484
  %.pre27.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !484
  %.pre28.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !484
  %.pre29.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !484
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.noexc36.i.i
  %i.bl = phi ptr [ %i.bi, %.noexc36.i.i ], [ %.pre29.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.bm = phi ptr [ %i.bh, %.noexc36.i.i ], [ %i.cb, %._crit_edge.loopexit.i.i.i ]
  %i.bn = phi ptr [ %i.bh, %.noexc36.i.i ], [ %.pre28.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.bo = phi ptr [ %i.bj, %.noexc36.i.i ], [ %.pre27.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.bp = phi ptr [ %i.bh, %.noexc36.i.i ], [ %.pre26.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi ptr [ %i.bk, %.noexc36.i.i ], [ %i.cc, %._crit_edge.loopexit.i.i.i ]
  %i.bq = load ptr, ptr %6, align 8, !tbaa !484
  store ptr %i.bp, ptr %6, align 8, !tbaa !484
  store ptr %i.bq, ptr %3, align 8, !tbaa !484
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !484
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !484
  store ptr %i.bm, ptr %i.an, align 8, !tbaa !484
  store ptr %.lcssa.i.i.i, ptr %i.ar, align 8, !tbaa !484
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !484
  store ptr %i.bl, ptr %i.ao, align 8, !tbaa !484
  store ptr %i.br, ptr %i.ap, align 8, !tbaa !484
  call void @_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %.pre30.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !588
  br label %_ZN3tev12ChannelGroupD2Ev.exit.i.i.i

.lr.ph.i.i.i11:                                   ; preds = %.noexc36.i.i, %.lr.ph.i.i.i11
  %i.bs = phi ptr [ %i.cb, %.lr.ph.i.i.i11 ], [ %i.bh, %.noexc36.i.i ] ; 3 uses
  %.01020.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i11 ], [ %i.bj, %.noexc36.i.i ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %.01020.i.i.i, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.01020.i.i.i, i8 0, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01020.i.i.i, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !272
  store <2 x ptr> %i.bw, ptr %i.bt, align 8, !tbaa !272
  %i.bx = getelementptr inbounds nuw i8, ptr %.01020.i.i.i, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !272
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.01020.i.i.i, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !588
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 3 uses
  store ptr %i.cb, ptr %i.ar, align 8, !tbaa !588
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !588 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, %i.cc
  br i1 %.not.i.i.i12, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i11, !llvm.loop !2227

_ZN3tev12ChannelGroupD2Ev.exit.i.i.i:             ; preds = %._crit_edge.i.i.i, %bb.d
  %i.cd = phi ptr [ %.pre30.i.i.i, %._crit_edge.i.i.i ], [ %i.aw, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  invoke fastcc void @"_ZNKSt3__16ranges14transform_viewB10llvm18_nuaINS0_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS7_IS9_EEEEEEZN3tev5Image7ungroupENS_17basic_string_viewIcS6_EEE3$_1E10__iteratorILb1EEdeB8ne180100Ev"(ptr dead_on_unwind noalias writable align 8 %4, ptr %.sroa.118.021.i.i.i)
          to label %.noexc37.i.i unwind label %.loopexit53.i.i

.noexc37.i.i:                                     ; preds = %_ZN3tev12ChannelGroupD2Ev.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  %i.cg = load <2 x ptr>, ptr %i.au, align 8, !tbaa !272
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !272
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !272
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !272
  %.pre31.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !588
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre31.i.i.i, i64 48 ; 3 uses
  store ptr %i.ci, ptr %i.an, align 8, !tbaa !588
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.118.021.i.i.i, i64 24 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.u
  br i1 %i.ck, label %"_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEE32__construct_at_end_with_sentinelINS_6ranges14transform_viewB10llvm18_nuaINS8_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISG_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSE_EEE3$_1E10__iteratorILb1EEESR_EEvT_T0_.exit.i.i", label %bb.d, !llvm.loop !2228

"_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEE32__construct_at_end_with_sentinelINS_6ranges14transform_viewB10llvm18_nuaINS8_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISG_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSE_EEE3$_1E10__iteratorILb1EEESR_EEvT_T0_.exit.i.i": ; preds = %.noexc37.i.i
  %i.cl = load ptr, ptr %i.a, align 16, !tbaa !471
  %i.cm = ptrtoint ptr %.val6 to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 4 uses
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sub i64 %i.x, %i.cn
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !470
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cn
  %i.ct = sdiv exact i64 %i.cs, 48
  %i.cu = load ptr, ptr %i.at, align 8, !tbaa !589
  %i.cv = ptrtoint ptr %i.ci to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 48
  %i.cz = add nsw i64 %i.cy, %i.ct                ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 384307168202282325
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEE32__construct_at_end_with_sentinelINS_6ranges14transform_viewB10llvm18_nuaINS8_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISG_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSE_EEE3$_1E10__iteratorILb1EEESR_EEvT_T0_.exit.i.i"
  invoke void @_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #47
          to label %.noexc40.i.i unwind label %bb.j

.noexc40.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %"_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEE32__construct_at_end_with_sentinelINS_6ranges14transform_viewB10llvm18_nuaINS8_8ref_viewIKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISG_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSE_EEE3$_1E10__iteratorILb1EEESR_EEvT_T0_.exit.i.i"
  %i.db = load ptr, ptr %i.y, align 16, !tbaa !484
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cn
  %i.de = sdiv exact i64 %i.dd, 48                ; 2 uses
  %.not.i38.i.i = icmp ult i64 %i.de, 192153584101141162
  %i.df = shl nuw nsw i64 %i.de, 1
  %.sroa.speculated.i39.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 %i.cz)
  %.0.i.i.i = select i1 %.not.i38.i.i, i64 %.sroa.speculated.i39.i.i, i64 384307168202282325
  invoke void @_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.0.i.i.i)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dg = load ptr, ptr %i.a, align 16, !tbaa !471 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cp
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 %i.co
  %.pre62.i.i = load ptr, ptr %i.b, align 8, !tbaa !470
  br label %bb.p

.loopexit53.i.i:                                  ; preds = %_ZN3tev12ChannelGroupD2Ev.exit.i.i.i, %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

.loopexit.split-lp.i.i:                           ; preds = %bb.f
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit.split-lp.i.i, %.loopexit53.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.dj, %bb.j ], [ %lpad.loopexit.i.i, %.loopexit53.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %.022.i.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %i.dk = call ptr @__cxa_begin_catch(ptr %.022.i.i) #44 ; 0 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !470
  %i.dm = invoke ptr @_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.val6, ptr %i.dl)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_rethrow() #47
          to label %bb.x unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn26.i.i = phi { ptr, i32 } [ %i.do, %bb.n ], [ %i.dn, %bb.m ]
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.p:                                             ; preds = %bb.i, %.critedge.i.i
  %i.dp = phi ptr [ %.pre62.i.i, %bb.i ], [ %i.ak, %.critedge.i.i ] ; 6 uses
  %.021.i.i = phi ptr [ %i.di, %bb.i ], [ %.val6, %.critedge.i.i ] ; 6 uses
  %.0.i.i = phi ptr [ %i.dh, %bb.i ], [ %11, %.critedge.i.i ] ; 4 uses
  %i.dq = icmp eq ptr %.0.i.i, %.021.i.i
  br i1 %i.dq, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = icmp eq ptr %.021.i.i, %i.dp
  br i1 %i.dr, label %.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt3__14swapB8ne180100IN3tev12ChannelGroupEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.021.i.i) #44
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 48 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dp
  br i1 %i.du, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %i.dv = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i ], [ %i.dt, %bb.r ] ; 3 uses
  %i.dw = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i ], [ %i.ds, %bb.r ] ; 3 uses
  %.029.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i, %bb.r ] ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %.029.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.dx, ptr %i.dv, ptr %.029.i.i.i.i.i.i ; 2 uses
  call void @_ZNSt3__14swapB8ne180100IN3tev12ChannelGroupEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #44
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 48 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dp
  br i1 %i.ea, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2229

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.r
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.021.i.i, %bb.r ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.r ], [ %i.dy, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.lcssa.i.i.i.i.i.i, %.0.lcssa.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.i.outer

.preheader.i.i.i.i.i.i.outer:                     ; preds = %._crit_edge.i.i.i.i.i.i, %.loopexit
  %.128.i.i.i.i.i.i.ph = phi ptr [ %.lcssa60, %.loopexit ], [ %.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i.i.ph = phi ptr [ %.lcssa58, %.loopexit ], [ %.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i.i.i.ph = phi ptr [ %spec.select13.i.i.i.i.i.i, %.loopexit ], [ %.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  call void @_ZNSt3__14swapB8ne180100IN3tev12ChannelGroupEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(48) %.128.i.i.i.i.i.i.ph, ptr noundef nonnull align 8 dereferenceable(48) %.1.i.i.i.i.i.i.ph) #44
  %i.eb = getelementptr inbounds nuw i8, ptr %.128.i.i.i.i.i.i.ph, i64 48 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.ph, i64 48 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dp
  %i.ee = icmp eq ptr %i.eb, %.2.i.i.i.i.i.i.ph   ; 2 uses
  br i1 %i.ed, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.preheader.i.i.i.i.i.i.outer
  br i1 %i.ee, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.i.outer.peel.newph

.preheader.i.i.i.i.i.i.outer.peel.newph:          ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i.i.i.i.i.i.ph, i64 48 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dp
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.outer.peel.newph, %bb.t
  %.128.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.t ], [ %i.eb, %.preheader.i.i.i.i.i.i.outer.peel.newph ] ; 2 uses
  call void @_ZNSt3__14swapB8ne180100IN3tev12ChannelGroupEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(48) %.128.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.2.i.i.i.i.i.i.ph) #44
  %i.eh = getelementptr inbounds nuw i8, ptr %.128.i.i.i.i.i.i, i64 48 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, %.2.i.i.i.i.i.i.ph   ; 2 uses
  br i1 %i.eg, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.preheader.i.i.i.i.i.i
  br i1 %i.ei, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !2230

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.outer
  %.lcssa60 = phi ptr [ %i.eb, %.preheader.i.i.i.i.i.i.outer ], [ %i.eh, %.preheader.i.i.i.i.i.i ]
  %.lcssa58 = phi ptr [ %i.ec, %.preheader.i.i.i.i.i.i.outer ], [ %i.ef, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.lcssa = phi i1 [ %i.ee, %.preheader.i.i.i.i.i.i.outer ], [ %i.ei, %.preheader.i.i.i.i.i.i ]
  %spec.select13.i.i.i.i.i.i = select i1 %.lcssa, ptr %.lcssa58, ptr %.2.i.i.i.i.i.i.ph
  br label %.preheader.i.i.i.i.i.i.outer, !llvm.loop !2231

.loopexit.i.i:                                    ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i = phi ptr [ %.0.i.i, %bb.q ], [ %i.dp, %bb.p ], [ %.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa.i.i.i.i.i.i, %bb.s ], [ %.lcssa.i.i.i.i.i.i, %bb.t ]
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !589 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !588 ; 2 uses
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 48
  %i.er = invoke ptr @_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorIPS2_EES9_EENS_11__wrap_iterIS8_EENSA_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.0.0.i.i.i.i, ptr %i.ek, ptr %i.em, i64 noundef %i.eq)
          to label %"_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE6insertINS_6ranges14transform_viewB10llvm18_nuaINS7_8ref_viewIKNS0_INS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISE_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSC_EEE3$_1E10__iteratorILb1EEETnNS_9enable_ifIXaasr37__has_exactly_input_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISR_E9referenceEEE5valueEiE4typeELi0EEENS_11__wrap_iterIPS2_EENSX_IPKS2_EESR_SR_.exit" unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %.loopexit.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %.pn28.i.i = phi { ptr, i32 } [ %i.es, %bb.u ], [ %.pn26.i.i, %bb.o ]
  call void @_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  resume { ptr, i32 } %.pn28.i.i

bb.w:                                             ; preds = %bb.o
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #49
  unreachable

bb.x:                                             ; preds = %bb.l
  unreachable

"_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE6insertINS_6ranges14transform_viewB10llvm18_nuaINS7_8ref_viewIKNS0_INS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISE_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSC_EEE3$_1E10__iteratorILb1EEETnNS_9enable_ifIXaasr37__has_exactly_input_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISR_E9referenceEEE5valueEiE4typeELi0EEENS_11__wrap_iterIPS2_EENSX_IPKS2_EESR_SR_.exit": ; preds = %.loopexit.i.i
  call void @_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @_ZN3tev16removeDuplicatesINS_12ChannelGroupEEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.thread"

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.thread": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i, %"_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE6insertINS_6ranges14transform_viewB10llvm18_nuaINS7_8ref_viewIKNS0_INS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS3_ISE_EEEEEEZNS1_5Image7ungroupENS_17basic_string_viewIcSC_EEE3$_1E10__iteratorILb1EEETnNS_9enable_ifIXaasr37__has_exactly_input_iterator_categoryIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsISR_E9referenceEEE5valueEiE4typeELi0EEENS_11__wrap_iterIPS2_EENSX_IPKS2_EESR_SR_.exit", %bb.b, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERNS_6vectorIN3tev12ChannelGroupENS_9allocatorIS6_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNS5_5Image7ungroupESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3tev16removeDuplicatesINS_12ChannelGroupEEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::unordered_set.1767", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !337
  %i.b = load ptr, ptr %0, align 8, !tbaa !471    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470  ; 2 uses
  %.not26 = icmp eq ptr %i.b, %i.d
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.j ]
  invoke void @_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0.lcssa)
          to label %bb.l unwind label %bb.n

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.028 = phi i64 [ %.1, %bb.j ], [ 0, %bb.a ]    ; 3 uses
  %.sroa.020.027 = phi ptr [ %i.am, %bb.j ], [ %i.b, %bb.a ] ; 14 uses
  %i.e = invoke ptr @_ZNKSt3__112__hash_tableIN3tev12ChannelGroupENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS2_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.027)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.d, label %bb.j

bb.c:                                             ; preds = %.noexc, %bb.i, %bb.h, %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.g = invoke { ptr, i8 } @_ZNSt3__112__hash_tableIN3tev12ChannelGroupENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEE25__emplace_unique_key_argsIS2_JRKS2_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS2_PvEEEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.027, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.027)
          to label %_ZNSt3__113unordered_setIN3tev12ChannelGroupENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit unwind label %bb.k ; 0 uses

_ZNSt3__113unordered_setIN3tev12ChannelGroupENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit: ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !471
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.028 ; 6 uses
  %.not.i.i = icmp eq ptr %i.i, %.sroa.020.027
  br i1 %.not.i.i, label %_ZN3tev12ChannelGroupaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__113unordered_setIN3tev12ChannelGroupENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEE6insertB8ne180100ERKS2_.exit
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  %i.l = load i8, ptr %.sroa.020.027, align 8     ; 2 uses
  %i.m = trunc i8 %i.l to i1                      ; 3 uses
  br i1 %i.k, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020.027, i64 24, i1 false), !tbaa.struct !431
  br label %.noexc

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.o, i64 noundef %i.q)
          to label %.noexc unwind label %bb.c     ; 0 uses

bb.i:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 1
  %i.v = select i1 %i.m, ptr %i.t, ptr %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i8 %i.l, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = select i1 %i.m, i64 %i.x, i64 %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.v, i64 noundef %i.aa)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.i, %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !205 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.020.027, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !206 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
end_hunk_0
begin_hunk_1_@_ZNSt3__14swapB8ne180100IN3tev12ChannelGroupEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_:_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.819.0.copyload = load ptr, ptr %.sroa.819.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 24, i1 false), !tbaa.struct !431
  store i8 0, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !126
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !205  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN3tev12ChannelGroupaSEOS0_.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i, i64 -24 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i, %bb.a
  %i.p = phi ptr [ %.pre.i.i.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !206
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !272
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZN3tev12ChannelGroupaSEOS0_.exit

_ZN3tev12ChannelGroupaSEOS0_.exit:                ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !272
  store <2 x ptr> %i.w, ptr %i.a, align 8, !tbaa !272
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !272
  store ptr %i.y, ptr %i.d, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.z = load i8, ptr %1, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4.thread

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4.thread: ; preds = %_ZN3tev12ChannelGroupaSEOS0_.exit
  store i64 %.sroa.0.0.copyload, ptr %1, align 8
  %.sroa.8.0..sroa_idx1742 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx1742, align 8
  %.sroa.819.0..sroa_idx2043 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.819.0.copyload, ptr %.sroa.819.0..sroa_idx2043, align 8, !tbaa !126
  br label %_ZN3tev12ChannelGroupD2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4: ; preds = %_ZN3tev12ChannelGroupaSEOS0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126
  %i.ad = load i64, ptr %1, align 8
  %i.ae = and i64 %i.ad, -2
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #45
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !205 ; 5 uses
  store i64 %.sroa.0.0.copyload, ptr %1, align 8
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx17, align 8
  %.sroa.819.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.819.0.copyload, ptr %.sroa.819.0..sroa_idx20, align 8, !tbaa !126
  %.not.i.i.i.i5 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i5, label %_ZN3tev12ChannelGroupD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !206 ; 2 uses
  %.not6.i.i.i.i.i.i.i6 = icmp eq ptr %.pre, %i.af
  br i1 %.not6.i.i.i.i.i.i.i6, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i13, label %.lr.ph.i.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i.i7:                            ; preds = %bb.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9
  %.07.i.i.i.i.i.i.i8 = phi ptr [ %i.ag, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9 ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i8, i64 -24 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i7
  %i.aj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i.i8, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !126
  %i.al = load i64, ptr %i.ag, align 8
  %i.am = and i64 %i.al, -2
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #45
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i7
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %.pre, %i.ag
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i11, label %.lr.ph.i.i.i.i.i.i.i7

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i11: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i.i.i.i9
  %.pre.i.i.i.i12 = load ptr, ptr %i.u, align 8, !tbaa !205
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i13

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i13: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i11, %bb.c
  %i.an = phi ptr [ %.pre.i.i.i.i12, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i11 ], [ %.pre, %bb.c ] ; 2 uses
  store ptr %.pre, ptr %i.v, align 8, !tbaa !206
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #45
  br label %_ZN3tev12ChannelGroupD2Ev.exit

_ZN3tev12ChannelGroupD2Ev.exit:                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i4, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit.i.i.i.i13
  store <2 x ptr> %i.c, ptr %i.u, align 8, !tbaa !272
  store ptr %i.e, ptr %i.x, align 8, !tbaa !272
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__insert_with_sizeB8ne180100INS_13move_iteratorIPS2_EES9_EENS_11__wrap_iterIS8_EENSA_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__1::__overload", align 1 ; 3 uses
  %6 = alloca %"struct.std::__1::__overload.734", align 1 ; 3 uses
  %7 = alloca %"struct.std::__1::__split_buffer.736", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !471    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 9 uses
  %i.f = icmp sgt i64 %4, 0
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !484
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !470  ; 6 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 48
  %.not = icmp sgt i64 %4, %i.n
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %4
  %i.p = sub i64 %i.l, %i.b                       ; 3 uses
  %i.q = sdiv exact i64 %i.p, 48
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.p ; 3 uses
  %i.t = icmp eq ptr %i.s, %3
  br i1 %i.t, label %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.04.09.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.s, %bb.d ] ; 5 uses
  %storemerge8.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %storemerge8.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.09.i.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.09.i.i.i, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !272
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !272
  store ptr %i.z, ptr %i.w, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %3
  br i1 %i.ac, label %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !3111

_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre48 = ptrtoint ptr %i.ab to i64
  br label %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit

_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit.loopexit ], [ %i.l, %bb.d ] ; 2 uses
  %i.ad = sub i64 %.pre-phi, %i.l
  %i.ae = getelementptr inbounds i8, ptr %i.j, i64 %i.ad ; 2 uses
  store ptr %i.ae, ptr %i.i, align 8, !tbaa !470
  %i.af = icmp sgt i64 %i.p, 0
  br i1 %i.af, label %.critedge, label %bb.j

.critedge:                                        ; preds = %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit, %bb.c
  %.pre-phi50 = phi i64 [ %i.l, %bb.c ], [ %.pre-phi, %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit ]
  %i.ag = phi ptr [ %i.j, %bb.c ], [ %i.ae, %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.o, %bb.c ], [ %i.s, %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE18__construct_at_endINS_13move_iteratorIPS2_EES9_EEvT_T0_m.exit ]
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %4
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %.pre-phi50, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.e, i64 %i.aj ; 3 uses
  %i.al = icmp ult ptr %i.ak, %i.j
  br i1 %i.al, label %.lr.ph.i, label %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01924.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ak, %.critedge ] ; 5 uses
  %.sroa.6.023.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ag, %.critedge ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.023.i, ptr noundef nonnull align 8 dereferenceable(48) %.01924.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.01924.i, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !272
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %.01924.i, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !272
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.01924.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 48 ; 2 uses
  %i.au = icmp ult ptr %i.as, %i.j
  br i1 %i.au, label %.lr.ph.i, label %_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, !llvm.loop !60

_ZNSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit: ; preds = %.lr.ph.i, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.ag, %.critedge ], [ %i.at, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.i, align 8, !tbaa !470
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.av = call { ptr, ptr } @_ZNKSt3__120__move_backward_loopINS_17_ClassicAlgPolicyEEclB8ne180100IPN3tev12ChannelGroupES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %i.e, ptr noundef %i.ak, ptr noundef %i.ag) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.aw = call { ptr, ptr } @_ZNKSt3__111__copy_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_13move_iteratorIPN3tev12ChannelGroupEEES8_S7_EENS_4pairIT_T1_EESA_T0_SB_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %2, ptr %.sroa.0.0, ptr noundef %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.ax = sub i64 %i.l, %i.c
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = add i64 %i.ay, %4                       ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 384307168202282325
  br i1 %i.ba, label %bb.f, label %_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #47
  unreachable

_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.e
  %i.bb = sub i64 %i.k, %i.c
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %.not.i = icmp ult i64 %i.bc, 192153584101141162
  %i.bd = shl nuw nsw i64 %i.bc, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.az)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 384307168202282325 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.g, ptr %i.bf, align 8, !tbaa !582
  %i.bg = icmp eq i64 %.0.i, 0
  br i1 %i.bg, label %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit
  %i.bh = icmp ugt i64 %.0.i, 384307168202282325
  br i1 %i.bh, label %bb.h, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEEEDaRT_m.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #47
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEEEDaRT_m.exit.i: ; preds = %bb.g
  %i.bi = mul nuw i64 %.0.i, 48
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #46
  br label %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit

_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.bj, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorIN3tev12ChannelGroupENS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %7, align 8, !tbaa !586
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 11 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !588
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !589
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !484
  %.idx.i = mul nuw nsw i64 %4, 48                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i ; 3 uses
  %i.bp = add nsw i64 %.idx.i, -48                ; 2 uses
  %i.bq = udiv i64 %i.bp, 48
  %i.br = and i64 %i.bq, 1
  %lcmp.mod.not.not = icmp eq i64 %i.br, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i38.prol, label %.lr.ph.i38.prol.loopexit

.lr.ph.i38.prol:                                  ; preds = %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bv = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !272
  store <2 x ptr> %i.bv, ptr %i.bs, align 8, !tbaa !272
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !272
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %.lr.ph.i38.prol.loopexit

.lr.ph.i38.prol.loopexit:                         ; preds = %.lr.ph.i38.prol, %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %.sroa.0.012.i.unr = phi ptr [ %i.bk, %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit ], [ %i.by, %.lr.ph.i38.prol ]
  %.sroa.08.011.i.unr = phi ptr [ %2, %_ZNSt3__114__split_bufferIN3tev12ChannelGroupERNS_9allocatorIS2_EEEC2EmmS5_.exit ], [ %i.bz, %.lr.ph.i38.prol ]
  %i.ca = icmp ult i64 %i.bp, 48
  br i1 %i.ca, label %.unr-lcssa, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.prol.loopexit, %.lr.ph.i38
  %.sroa.0.012.i = phi ptr [ %i.cp, %.lr.ph.i38 ], [ %.sroa.0.012.i.unr, %.lr.ph.i38.prol.loopexit ] ; 7 uses
  %.sroa.08.011.i = phi ptr [ %i.cq, %.lr.ph.i38 ], [ %.sroa.08.011.i.unr, %.lr.ph.i38.prol.loopexit ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.011.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.08.011.i, i8 0, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 40
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !272
  store <2 x ptr> %i.ce, ptr %i.cb, align 8, !tbaa !272
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !272
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 72 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 88
  %i.cm = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !272
  store <2 x ptr> %i.cm, ptr %i.cj, align 8, !tbaa !272
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !272
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 96
  %.not.i39.1 = icmp eq ptr %i.cp, %i.bo
  br i1 %.not.i39.1, label %.unr-lcssa, label %.lr.ph.i38, !llvm.loop !3112

.unr-lcssa:                                       ; preds = %.lr.ph.i38, %.lr.ph.i38.prol.loopexit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !471   ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.cr
  br i1 %.not12.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.unr-lcssa, %.lr.ph.i.i
  %i.cs = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.bk, %.unr-lcssa ] ; 3 uses
  %.sroa.18.013.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.e, %.unr-lcssa ] ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -48 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -48 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -24
  %i.cw = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cy = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !272
  store <2 x ptr> %i.cy, ptr %i.cv, align 8, !tbaa !272
  %i.cz = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !272
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.cu, %i.cr
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !61

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i: ; preds = %.lr.ph.i.i, %.unr-lcssa
  %.pre.i = phi ptr [ %i.bk, %.unr-lcssa ], [ %i.ct, %.lr.ph.i.i ]
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !470 ; 3 uses
  %.not8.i.i = icmp eq ptr %1, %i.db
  br i1 %.not8.i.i, label %bb.i, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, %.lr.ph.i14.i
  %.010.i.i = phi ptr [ %i.di, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 5 uses
  %storemerge9.i.i = phi ptr [ %i.dj, %.lr.ph.i14.i ], [ %i.bo, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %storemerge9.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.010.i.i, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.010.i.i, i8 0, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 40
  %i.df = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !272
  store <2 x ptr> %i.df, ptr %i.dc, align 8, !tbaa !272
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !272
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 48 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.di, %i.db
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !62

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIN3tev12ChannelGroupEEEPS3_S5_S5_EET2_RT_T0_T1_S6_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !484
  br label %bb.i
end_hunk_1
