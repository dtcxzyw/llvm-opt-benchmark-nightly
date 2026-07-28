inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !54
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !132

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !419

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %.not147 = icmp ult i32 %i.bq, %i.bo
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bo)
  br i1 %.not147, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.v ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.v, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.w
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !121
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !136
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317 ; 3 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !136    ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !300
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !338
  %i.r = or i32 %i.q, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit unwind label %bb.h

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E1_clISB_EEDaSO_.exit
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #26
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.k, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit: ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !307, !nonnull !39, !align !317
  %i.v = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(8) %5) #26
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 1 dereferenceable(8) %5, i64 noundef %i.v)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit unwind label %bb.i ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E3_clIS4_EEDaSO_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E2_clIS9_EEDaSO_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clISD_EEDaSO_.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clISF_EEDaSO_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.h, %bb.f, %bb.j
  %.pn15 = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !399

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !300
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, label %bb.e, !prof !132

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i64 %1, 2
  br i1 %i.f, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %0, align 1, !tbaa !54
  %i.h = icmp eq i8 %i.g, 48
  br i1 %i.h, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !54
  switch i8 %i.j, label %bb.n [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = add i64 %1, -3                           ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, !prof !28

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.03049.i.i = phi i64 [ %i.t, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.03148.i.i = phi i64 [ %.1.i.i, %bb.m ], [ 0, %bb.h ]
  %i.n = shl i64 %.03148.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.03049.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !54    ; 5 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i, label %3, label %bb.i

3:                                                ; preds = %.lr.ph.i.i
  %4 = zext nneg i8 %i.q to i64
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.r = add i8 %i.p, -65
  %or.cond42.i.i = icmp ult i8 %i.r, 6
  br i1 %or.cond42.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %5 = zext nneg i8 %i.p to i64
  %6 = add nsw i64 %5, -55
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.s = add i8 %i.p, -97
  %or.cond43.i.i = icmp ult i8 %i.s, 6
  br i1 %or.cond43.i.i, label %bb.l, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.l:                                             ; preds = %bb.k
  %7 = zext nneg i8 %i.p to i64
  %8 = add nsw i64 %7, -87
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %3
  %.pn.i.i = phi i64 [ %4, %3 ], [ %6, %bb.j ], [ %8, %bb.l ]
  %.1.i.i = or i64 %.pn.i.i, %i.n                 ; 2 uses
  %i.t = add nuw nsw i64 %.03049.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.03049.i.i, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !420

._crit_edge.i.i:                                  ; preds = %bb.m
  store i64 %.1.i.i, ptr %2, align 8, !tbaa !121
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e
  %scevgep.i = getelementptr i8, ptr %0, i64 %1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.01722.i = phi i64 [ %1, %bb.n ], [ %i.w, %bb.p ] ; 2 uses
  %.01821.i = phi ptr [ %0, %bb.n ], [ %i.x, %bb.p ] ; 3 uses
  %i.u = load i8, ptr %.01821.i, align 1, !tbaa !54
  %i.v = icmp eq i8 %i.u, 48
  br i1 %i.v, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.w = add i64 %.01722.i, -1                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01821.i, i64 1
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.critedge.i, label %bb.o, !llvm.loop !421

.critedge.i:                                      ; preds = %bb.p, %bb.o
  %.018.lcssa.i = phi ptr [ %scevgep.i, %bb.p ], [ %.01821.i, %bb.o ]
  %.017.lcssa.i = phi i64 [ 0, %bb.p ], [ %.01722.i, %bb.o ]
  %i.y = tail call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i, i64 noundef %.017.lcssa.i, ptr noundef %2)
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit: ; preds = %bb.k, %bb.d, %bb.h, %._crit_edge.i.i, %.critedge.i
  %.0.i = phi i1 [ %i.y, %.critedge.i ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge.i.i ], [ false, %bb.k ]
  ret i1 %.0.i
}

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA90_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(90) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #22 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !54
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !54
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !54
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !54
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !54
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not251 = icmp eq i64 %1, 5
  br i1 %.not251, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !54
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext nneg i8 %i.aj to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not252 = icmp eq i64 %1, 6
  br i1 %.not252, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !54
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not253 = icmp eq i64 %1, 7
  br i1 %.not253, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i64 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext nneg i8 %i.ax to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not254 = icmp eq i64 %1, 8
  br i1 %.not254, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !54
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i64 %i.bb, 10
  %i.bg = icmp ult i8 %i.be, 10
  %i.bh = zext nneg i8 %i.be to i64
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  br i1 %i.bg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not255 = icmp eq i64 %1, 9
  br i1 %.not255, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
end_hunk_0
