inline.NumInlined: 2852
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3fmt3v116detail5valueINS0_7contextEE13format_customINSt6chrono8durationIlSt5ratioILl3600ELl1EEEENS0_9formatterISA_cvEEEEvPvRNS0_13parse_contextIcEERS3_:bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  store ptr %i.k, ptr %1, align 8, !tbaa !288
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !290
  %i.n = sub i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !290
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !8
  %i.o = call ptr @_ZNK3fmt3v119formatterINSt6chrono8durationIlSt5ratioILl3600ELl1EEEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES6_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt3v119formatterINSt6chrono8durationIlSt5ratioILl3600ELl1EEEEcvE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::chrono_format_checker", align 1 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !288    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !290  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 8 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !26
  %i.g = icmp eq i8 %i.f, 125
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN3fmt3v116detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(16) %0) ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !26    ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond = icmp ult i8 %i.k, 10
  %i.l = icmp eq i8 %i.j, 123
  %or.cond5 = or i1 %i.l, %or.cond
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call { ptr, i32 } @_ZN3fmt3v116detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 4 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  %i.r = load i32, ptr %0, align 8, !tbaa !284
  %i.s = and i32 %i.r, -193
  %i.t = shl i32 %i.q, 6
  %i.u = or i32 %i.s, %i.t
  store i32 %i.u, ptr %0, align 8, !tbaa !284
  %i.v = icmp eq ptr %i.p, %i.d
  br i1 %i.v, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i8, ptr %i.p, align 1, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.w = phi i8 [ %.pre, %._crit_edge ], [ %i.j, %bb.d ]
  %.041 = phi ptr [ %i.p, %._crit_edge ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 0, ptr %2, align 1, !tbaa !291
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %2, align 1, !tbaa !291
  %i.y = getelementptr inbounds nuw i8, ptr %.041, i64 1 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.30) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = tail call { ptr, i32 } @_ZN3fmt3v116detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef nonnull %i.y, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { ptr, i32 } %i.ac, 1
  %i.af = load i32, ptr %0, align 8, !tbaa !284
  %i.ag = and i32 %i.af, -769
  %i.ah = shl i32 %i.ae, 8
  %i.ai = or i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %0, align 8, !tbaa !284
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.f, %bb.i
  %.14257 = phi ptr [ %i.ad, %bb.i ], [ %.041, %bb.f ] ; 3 uses
  %i.aj = load i8, ptr %.14257, align 1, !tbaa !26
  %i.ak = icmp eq i8 %i.aj, 76
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.al = load i32, ptr %0, align 8, !tbaa !284
  %i.am = or i32 %i.al, 16384
  store i32 %i.am, ptr %0, align 8, !tbaa !284
  %i.an = getelementptr inbounds nuw i8, ptr %.14257, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread, %bb.i
  %.2 = phi ptr [ %i.an, %bb.j ], [ %.14257, %.thread ], [ %i.ad, %bb.i ] ; 3 uses
  %i.ao = call noundef ptr @_ZN3fmt3v116detail19parse_chrono_formatIcRNS1_21chrono_format_checkerEEEPKT_S7_S7_OT0_(ptr noundef %.2, ptr noundef nonnull %i.d, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.2 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.2, ptr %i.as, align 8, !tbaa !293
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.c, %bb.a, %bb.b
  %.1 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.ao, %bb.k ], [ %i.p, %bb.e ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterINSt6chrono8durationIlSt5ratioILl3600ELl1EEEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES6_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 8 uses
  %4 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v11::detail::duration_formatter", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !286
  store i32 -1, ptr %i.a, align 4, !tbaa !286
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !288  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !290  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !223
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !283
  store i64 500, ptr %i.h, align 8, !tbaa !222
  %i.l = load i32, ptr %3, align 4, !tbaa !284    ; 2 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = invoke noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  store i32 %i.q, ptr %i.o, align 4, !tbaa !294
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit: ; preds = %.noexc, %bb.a
  %i.r = lshr i32 %i.l, 8
  %i.s = and i32 %i.r, 3                          ; 2 uses
  %.not.i23 = icmp eq i32 %i.s, 0
  br i1 %.not.i23, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = invoke noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25 unwind label %.loopexit.split-lp

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25: ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit, %bb.c
  %.0 = phi i32 [ %i.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit ], [ %i.u, %bb.c ]
  %i.v = icmp samesign eq i64 %i.f, 0
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25
  %i.w = load i8, ptr %i.d, align 1, !tbaa !26
  %i.x = icmp eq i8 %i.w, 125
  br i1 %i.x, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit25
  %i.y = invoke ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %4, i64 noundef %1)
          to label %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit unwind label %bb.h ; 5 uses

_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !220
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !222
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit
  %i.ac = phi i64 [ %.pre, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit ], [ %i.ah, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ad = phi i64 [ %.pre.i.i.i.i, %_ZN3fmt3v116detail21format_duration_valueIclNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEET1_S9_S6_i.exit ], [ %i.ah, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  %i.af = icmp ugt i64 %i.ae, %i.ac
  br i1 %i.af, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !223
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae)
          to label %.noexc27 unwind label %.loopexit, !inline_history !295

.noexc27:                                         ; preds = %bb.g
  %.pre30.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !222
  %.pre31.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc27, %bb.f
  %i.ah = phi i64 [ %i.ac, %bb.f ], [ %.pre30.i.i.i.i, %.noexc27 ] ; 4 uses
  %i.ai = phi i64 [ %i.ad, %bb.f ], [ %.pre31.i.i.i.i, %.noexc27 ] ; 2 uses
  %.not = icmp eq i64 %i.ah, %i.ai
  br i1 %.not, label %._crit_edge.i.i.i.i, label %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl3600ELl1EENS0_14basic_appenderIcEEEET1_S7_.exit

._crit_edge.i.i.i.i:                              ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !220
  br label %bb.f

_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl3600ELl1EENS0_14basic_appenderIcEEEET1_S7_.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 104, ptr %i.ak, align 1, !tbaa !26
  %.pre32.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !220
  %i.al = add i64 %.pre32.i.i.i.i, 1
  store i64 %i.al, ptr %i.z, align 8, !tbaa !220
  br label %bb.o

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.o, %bb.b, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !296
  store ptr %4, ptr %5, align 8, !tbaa !297
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.ao, align 8, !tbaa !299
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ap, align 8, !tbaa !296
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !304
  %i.as = icmp slt i64 %1, 0
  br i1 %i.as, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %bb.i
  %i.at = sub i64 0, %1                           ; 2 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !299
  store i8 1, ptr %i.ar, align 8, !tbaa !304
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.j, %bb.i
  %i.au = phi i64 [ %i.at, %bb.j ], [ %1, %bb.i ] ; 2 uses
  %i.av = icmp ugt i64 %i.au, 5124095576030431
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %thread-pre-split.i
  invoke void @_ZN3fmt3v116detail20throw_duration_errorEv() #30
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %thread-pre-split.i
  %i.aw = mul nuw i64 %i.au, 3600
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.0, ptr %i.ay, align 8, !tbaa !305
  %i.az = load i32, ptr %0, align 8, !tbaa !284
  %i.ba = lshr i32 %i.az, 14
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = and i8 %i.bb, 1
  store i8 %i.bc, ptr %i.aq, align 8, !tbaa !306
  %i.bd = invoke noundef ptr @_ZN3fmt3v116detail19parse_chrono_formatIcRNS1_18duration_formatterIclSt5ratioILl3600ELl1EEEEEEPKT_SA_SA_OT0_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.r

bb.o:                                             ; preds = %_ZN3fmt3v116detail20format_duration_unitIcSt5ratioILl3600ELl1EENS0_14basic_appenderIcEEEET1_S7_.exit, %bb.m
  %.sroa.0.0.copyload.i29 = load ptr, ptr %2, align 8, !tbaa !297
  %i.bf = load ptr, ptr %4, align 8, !tbaa !283
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !220
  %i.bh = invoke ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i29, ptr %i.bf, i64 %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %4, align 8, !tbaa !283   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.bi) #29
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret ptr %i.bh

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.am, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bj = load ptr, ptr %4, align 8, !tbaa !283   ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.bj, %i.k
  br i1 %.not.i.i30, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit31, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.bj) #29
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit31

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit31: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt3v116detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
.peel.begin:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = load i8, ptr %0, align 1, !tbaa !26      ; 3 uses
  %i.c = lshr i8 %i.b, 2
  %i.d = and i8 %i.c, 62
  %i.e = zext nneg i8 %i.d to i64
  %i.f = lshr i64 4203265827220226048, %i.e
  %i.g = and i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, 1
  %spec.select = select i1 %i.m, ptr %0, ptr %i.i ; 5 uses
  %i.n = load i8, ptr %spec.select, align 1, !tbaa !26
  switch i8 %i.n, label %bb.a [
    i8 60, label %.loopexit
    i8 62, label %.loopexit49
    i8 94, label %.loopexit55
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.o = icmp eq ptr %spec.select, %0
  br i1 %i.o, label %.loopexit44, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  switch i8 %i.b, label %.loopexit44 [
    i8 60, label %.loopexit55.thread61
    i8 62, label %.loopexit55.thread65
    i8 94, label %.loopexit55.thread
  ]

.loopexit55.thread65:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit55.thread61:                             ; preds = %.peel.next
  br label %.loopexit55.thread

.loopexit:                                        ; preds = %.peel.begin
  br label %.loopexit55

.loopexit49:                                      ; preds = %.peel.begin
  br label %.loopexit55

.loopexit55:                                      ; preds = %.peel.begin, %.loopexit49, %.loopexit
  %.132.ph = phi i32 [ 1, %.loopexit ], [ 3, %.peel.begin ], [ 2, %.loopexit49 ] ; 2 uses
  %.not38 = icmp eq ptr %spec.select, %0
  br i1 %.not38, label %.loopexit55.thread, label %bb.b

bb.b:                                             ; preds = %.loopexit55
  switch i8 %i.b, label %bb.d [
    i8 125, label %.critedge
    i8 123, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.24) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %spec.select to i64         ; 4 uses
  %i.q = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.r = sub i64 %i.p, %i.q                       ; 10 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !284
  %i.t = and i32 %i.s, -229377
  %i.u = trunc i64 %i.r to i32
  %i.v = shl i32 %i.u, 15
  %i.w = or i32 %i.t, %i.v
  store i32 %i.w, ptr %2, align 4, !tbaa !284
  switch i64 %i.r, label %iter.check [
    i64 1, label %bb.e
    i64 0, label %_ZN3fmt3v1111basic_specs8set_fillIcEEvNS0_17basic_string_viewIT_EE.exit
  ]

iter.check:                                       ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  %i.y = sub i64 %i.q, %i.p
  %i.z = icmp ult i64 %i.y, -4
  %or.cond = or i1 %min.iters.check, %i.z
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = sub i64 %i.a, %i.q
  %i.ab = add i64 %i.aa, 3
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail19parse_chrono_formatIcRNS1_18duration_formatterIclSt5ratioILl3600ELl1EEEEEEPKT_SA_SA_OT0_:bb.a

bb.ac:                                            ; preds = %._crit_edge.i.i.i201, %bb.ab
  %i.dh = phi i64 [ %.pre.i.i.i191, %bb.ab ], [ %i.dp, %._crit_edge.i.i.i201 ] ; 2 uses
  %i.di = add i64 %i.dh, 1                        ; 2 uses
  %i.dj = load i64, ptr %i.df, align 8, !tbaa !222 ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.ad, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i193

bb.ad:                                            ; preds = %bb.ac
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !223
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i188, i64 noundef %i.di), !inline_history !334
  %.pre30.i.i.i203 = load i64, ptr %i.df, align 8, !tbaa !222
  %.pre31.i.i.i204 = load i64, ptr %i.de, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i193

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i193: ; preds = %bb.ad, %bb.ac
  %i.dm = phi i64 [ %i.dh, %bb.ac ], [ %.pre31.i.i.i204, %bb.ad ] ; 3 uses
  %i.dn = phi i64 [ %i.dj, %bb.ac ], [ %.pre30.i.i.i203, %bb.ad ]
  %i.do = icmp ne i64 %i.dn, %i.dm                ; 2 uses
  %spec.select.i.i.i194 = zext i1 %i.do to i64    ; 2 uses
  br i1 %i.do, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit205, label %._crit_edge.i.i.i201

._crit_edge.i.i.i201:                             ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i193
  %i.dp = add nuw nsw i64 %i.dm, %spec.select.i.i.i194 ; 2 uses
  store i64 %i.dp, ptr %i.de, align 8, !tbaa !220
  br label %bb.ac

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit205: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i193
  %i.dq = load ptr, ptr %.sroa.01.0.copyload.i188, align 8, !tbaa !283
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dm
  store i8 9, ptr %i.dr, align 1, !tbaa !26
  %.pre32.i.i.i200 = load i64, ptr %i.de, align 8, !tbaa !220
  %i.ds = add i64 %.pre32.i.i.i200, %spec.select.i.i.i194
  store i64 %i.ds, ptr %i.de, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ae:                                            ; preds = %bb.u
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !340
  %i.du = udiv i64 %i.dt, 86400
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.du, i32 noundef 0, i32 noundef 0)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.af:                                            ; preds = %bb.u
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !340
  %i.dw = udiv i64 %i.dv, 3600
  %i.dx = urem i64 %i.dw, 24
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.dx, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ag:                                            ; preds = %bb.u
  %i.dy = load i64, ptr %i.c, align 8, !tbaa !340
  %i.dz = udiv i64 %i.dy, 3600
  %i.ea = urem i64 %i.dz, 12                      ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  %i.ec = select i1 %i.eb, i64 12, i64 %i.ea
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ec, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ah:                                            ; preds = %bb.u
  %i.ed = load i64, ptr %i.c, align 8, !tbaa !340
  %i.ee = udiv i64 %i.ed, 60
  %i.ef = urem i64 %i.ee, 60
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ef, i32 noundef 2, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ai:                                            ; preds = %bb.u
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 0, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.aj:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !alias.scope !341
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !340, !noalias !341 ; 3 uses
  %i.eh = udiv i64 %i.eg, 3600
  %i.ei = urem i64 %i.eh, 24
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  store i32 %i.ej, ptr %i.h, align 8, !tbaa !344, !alias.scope !341
  %i.ek = udiv i64 %i.eg, 60
  %i.el = urem i64 %i.ek, 60
  %i.em = trunc nuw nsw i64 %i.el to i32
  store i32 %i.em, ptr %i.i, align 4, !tbaa !346, !alias.scope !341
  %i.en = urem i64 %i.eg, 60
  %i.eo = trunc nuw nsw i64 %i.en to i32
  store i32 %i.eo, ptr %5, align 8, !tbaa !347, !alias.scope !341
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 ptrtoint (ptr @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_12_hour_timeEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ak:                                            ; preds = %bb.u
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !340
  %i.eq = udiv i64 %i.ep, 3600
  %i.er = urem i64 %i.eq, 24
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.er, i32 noundef 2, i32 noundef 0)
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %2, align 8, !tbaa !297 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 8 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !220 ; 2 uses
  %i.eu = add i64 %i.et, 1                        ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !222
  %i.ex = icmp ugt i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.al, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i1.i, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !223
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i1.i, i64 noundef %i.eu), !inline_history !348
  %.pre.i.i3.i = load i64, ptr %i.es, align 8, !tbaa !220 ; 2 uses
  %.pre2.i.i4.i = add i64 %.pre.i.i3.i, 1
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit: ; preds = %bb.ak, %bb.al
  %.pre-phi.i.i2.i = phi i64 [ %i.eu, %bb.ak ], [ %.pre2.i.i4.i, %bb.al ]
  %i.fa = phi i64 [ %i.et, %bb.ak ], [ %.pre.i.i3.i, %bb.al ]
  %i.fb = load ptr, ptr %.sroa.0.0.copyload.i1.i, align 8, !tbaa !283
  store i64 %.pre-phi.i.i2.i, ptr %i.es, align 8, !tbaa !220
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 58, ptr %i.fc, align 1, !tbaa !26
  %i.fd = load i64, ptr %i.c, align 8, !tbaa !340
  %i.fe = udiv i64 %i.fd, 60
  %i.ff = urem i64 %i.fe, 60
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE5writeEliNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i64 noundef %i.ff, i32 noundef 2, i32 noundef 0)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.am:                                            ; preds = %bb.u
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE11on_iso_timeEv(ptr noundef nonnull align 8 dereferenceable(49) %2)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.an:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !alias.scope !349
  %i.fg = load i64, ptr %i.c, align 8, !tbaa !340, !noalias !349 ; 3 uses
  %i.fh = udiv i64 %i.fg, 3600
  %i.fi = urem i64 %i.fh, 24
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  store i32 %i.fj, ptr %i.f, align 8, !tbaa !344, !alias.scope !349
  %i.fk = udiv i64 %i.fg, 60
  %i.fl = urem i64 %i.fk, 60
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  store i32 %i.fm, ptr %i.g, align 4, !tbaa !346, !alias.scope !349
  %i.fn = urem i64 %i.fg, 60
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  store i32 %i.fo, ptr %4, align 8, !tbaa !347, !alias.scope !349
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 ptrtoint (ptr @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE8on_am_pmEv to i64), i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ao:                                            ; preds = %bb.u
  %i.fp = load i8, ptr %i.d, align 8, !tbaa !304, !range !71, !noundef !72
  %i.fq = trunc nuw i8 %i.fp to i1
  %.sroa.0.0.copyload.i.pre251 = load ptr, ptr %2, align 8, !tbaa !297 ; 6 uses
  br i1 %i.fq, label %bb.ap, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.pre251, i64 8 ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !220 ; 2 uses
  %i.ft = add i64 %i.fs, 1                        ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.pre251, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !222
  %i.fw = icmp ugt i64 %i.ft, %i.fv
  br i1 %i.fw, label %bb.aq, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.pre251, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !223
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.pre251, i64 noundef %i.ft), !inline_history !352
  %.pre.i.i.i.i = load i64, ptr %i.fr, align 8, !tbaa !220 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.aq, %bb.ap
  %.pre-phi.i.i.i.i = phi i64 [ %i.ft, %bb.ap ], [ %.pre2.i.i.i.i, %bb.aq ]
  %i.fz = phi i64 [ %i.fs, %bb.ap ], [ %.pre.i.i.i.i, %bb.aq ]
  %i.ga = load ptr, ptr %.sroa.0.0.copyload.i.pre251, align 8, !tbaa !283
  store i64 %.pre-phi.i.i.i.i, ptr %i.fr, align 8, !tbaa !220
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fz
  store i8 45, ptr %i.gb, align 1, !tbaa !26
  store i8 0, ptr %i.d, align 8, !tbaa !304
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %2, align 8, !tbaa !297
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit: ; preds = %bb.ao, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre251, %bb.ao ], [ %.sroa.0.0.copyload.i.pre, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i.i ]
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !299
  %i.gd = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i, i64 noundef %i.gc)
  store ptr %i.gd, ptr %2, align 8, !tbaa !297
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.ar:                                            ; preds = %bb.u
  %.sroa.0.0.copyload.i206 = load ptr, ptr %2, align 8, !tbaa !297 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i206, i64 8 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i206, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i206, i64 24
  %.pre.i.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !220
  %.pre.i = load i64, ptr %i.gf, align 8, !tbaa !222
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.ar
  %i.gh = phi i64 [ %.pre.i, %bb.ar ], [ %i.gm, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.gi = phi i64 [ %.pre.i.i.i.i.i, %bb.ar ], [ %i.gm, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.gj = add i64 %i.gi, 1                        ; 2 uses
  %i.gk = icmp ugt i64 %i.gj, %i.gh
  br i1 %i.gk, label %bb.at, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !223
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i206, i64 noundef %i.gj), !inline_history !353
  %.pre30.i.i.i.i.i = load i64, ptr %i.gf, align 8, !tbaa !222
  %.pre31.i.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.gm = phi i64 [ %i.gh, %bb.as ], [ %.pre30.i.i.i.i.i, %bb.at ] ; 4 uses
  %i.gn = phi i64 [ %i.gi, %bb.as ], [ %.pre31.i.i.i.i.i, %bb.at ] ; 2 uses
  %.not.i = icmp eq i64 %i.gm, %i.gn
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE16on_duration_unitEv.exit

._crit_edge.i.i.i.i.i:                            ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i.i
  store i64 %i.gm, ptr %i.ge, align 8, !tbaa !220
  br label %bb.as

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE16on_duration_unitEv.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i.i
  %i.go = load ptr, ptr %.sroa.0.0.copyload.i206, align 8, !tbaa !283
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store i8 104, ptr %i.gp, align 1, !tbaa !26
  %.pre32.i.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !220
  %i.gq = add i64 %.pre32.i.i.i.i.i, 1
  store i64 %i.gq, ptr %i.ge, align 8, !tbaa !220
  store ptr %.sroa.0.0.copyload.i206, ptr %2, align 8, !tbaa !297
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.au:                                            ; preds = %bb.u
  %i.gr = icmp eq ptr %i.cb, %1
  br i1 %i.gr, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.gs = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull @.str.31)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gs) #29
  br label %bb.bt

bb.ay:                                            ; preds = %bb.au
  %i.gu = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 14 uses
  %i.gv = load i8, ptr %i.cb, align 1, !tbaa !26
  switch i8 %i.gv, label %bb.az [
    i8 89, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 121, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 67, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 99, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 120, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 88, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 122, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
  ]

bb.az:                                            ; preds = %bb.ay
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull @.str.31)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @__cxa_throw(ptr nonnull %i.gw, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gw) #29
  br label %bb.bt

bb.bc:                                            ; preds = %bb.u
  %i.gy = icmp eq ptr %i.cb, %1
  br i1 %i.gy, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.gz = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull @.str.31)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @__cxa_throw(ptr nonnull %i.gz, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gz) #29
  br label %bb.bt

bb.bg:                                            ; preds = %bb.bc
  %i.hb = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 28 uses
  %i.hc = load i8, ptr %i.cb, align 1, !tbaa !26
  switch i8 %i.hc, label %bb.bl [
    i8 121, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 109, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 85, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 87, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 86, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 100, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 101, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 119, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 117, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
    i8 72, label %bb.bh
    i8 73, label %bb.bi
    i8 77, label %bb.bj
    i8 83, label %bb.bk
    i8 122, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.bi:                                            ; preds = %bb.bg
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.bj:                                            ; preds = %bb.bg
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %2, i32 noundef 1, i32 noundef %.0128)
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.hd = load i64, ptr %i.c, align 8, !tbaa !340
  %i.he = urem i64 %i.hd, 60
  %i.hf = trunc nuw nsw i64 %i.he to i32
  store i32 %i.hf, ptr %3, align 8, !tbaa !347
  call void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef 1, i32 noundef %.0128)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

bb.bl:                                            ; preds = %bb.bg
  %i.hg = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull @.str.31)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @__cxa_throw(ptr nonnull %i.hg, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hg) #29
  br label %bb.bt

bb.bo:                                            ; preds = %bb.u
  %i.hi = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull @.str.31)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hi) #29
  br label %bb.bt

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.loopexit: ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i157
  %i.hk = load ptr, ptr %.sroa.01.0.copyload.i152, align 8, !tbaa !283
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.cl
  %i.hm = load i8, ptr %.1, align 1, !tbaa !26
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !26
  %.pre32.i.i.i164 = load i64, ptr %i.cd, align 8, !tbaa !220
  %i.hn = add i64 %.pre32.i.i.i164, %spec.select.i.i.i158
  store i64 %i.hn, ptr %i.cd, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169: ; preds = %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.loopexit, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit187, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit205, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit, %bb.am, %bb.an, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE16on_duration_unitEv.exit, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.g
  %.1136 = phi ptr [ %i.hb, %bb.bg ], [ %.0135243, %bb.g ], [ %i.hb, %bb.bg ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit187 ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit205 ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.ae ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.af ], [ %i.cb, %bb.ag ], [ %i.cb, %bb.ah ], [ %i.cb, %bb.ai ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.aj ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit ], [ %i.cb, %bb.am ], [ %i.cb, %bb.an ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE16on_duration_unitEv.exit ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bh ], [ %i.hb, %bb.bi ], [ %i.hb, %bb.bj ], [ %i.hb, %bb.bk ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.loopexit ] ; 2 uses
  %.3 = phi ptr [ %i.hb, %bb.bg ], [ %i.m, %bb.g ], [ %i.hb, %bb.bg ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit187 ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit205 ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.ae ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.af ], [ %i.cb, %bb.ag ], [ %i.cb, %bb.ah ], [ %i.cb, %bb.ai ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.aj ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE15on_24_hour_timeEv.exit ], [ %i.cb, %bb.am ], [ %i.cb, %bb.an ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE17on_duration_valueEv.exit ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE16on_duration_unitEv.exit ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.cb, %bb.u ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.gu, %bb.ay ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bg ], [ %i.hb, %bb.bh ], [ %i.hb, %bb.bi ], [ %i.hb, %bb.bj ], [ %i.hb, %bb.bk ], [ %i.cb, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.loopexit ] ; 3 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.thread, label %bb.f

_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.thread: ; preds = %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169, %bb.f
  %.0135.lcssa.ph = phi ptr [ %.1136, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169 ], [ %.0135243, %bb.f ] ; 2 uses
  %.0129.lcssa.ph = phi ptr [ %.3, %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169 ], [ %.0129244, %bb.f ] ; 5 uses
  %.not149 = icmp eq ptr %.0135.lcssa.ph, %.0129.lcssa.ph
  br i1 %.not149, label %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit224, label %.lr.ph27.i.i.i209

.lr.ph27.i.i.i209:                                ; preds = %_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl3600ELl1EEE7on_textEPKcS7_.exit169.thread
  %.sroa.01.0.copyload.i207 = load ptr, ptr %2, align 8, !tbaa !297 ; 5 uses
  %i.ho = ptrtoint ptr %.0129.lcssa.ph to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i207, i64 8 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i207, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i207, i64 24
  %.pre.i.i.i210 = load i64, ptr %i.hp, align 8, !tbaa !220
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge.i.i.i220, %.lr.ph27.i.i.i209
  %i.hs = phi i64 [ %.pre.i.i.i210, %.lr.ph27.i.i.i209 ], [ %i.ja, %._crit_edge.i.i.i220 ] ; 2 uses
  %.01825.i.i.i211 = phi ptr [ %.0135.lcssa.ph, %.lr.ph27.i.i.i209 ], [ %i.jb, %._crit_edge.i.i.i220 ] ; 9 uses
  %i.ht = ptrtoint ptr %.01825.i.i.i211 to i64    ; 2 uses
  %i.hu = sub i64 %i.ho, %i.ht                    ; 2 uses
  %i.hv = add i64 %i.hu, %i.hs                    ; 2 uses
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !222 ; 2 uses
  %i.hx = icmp ugt i64 %i.hv, %i.hw
  br i1 %i.hx, label %bb.bs, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i212

bb.bs:                                            ; preds = %bb.br
  %i.hy = load ptr, ptr %i.hr, align 8, !tbaa !223
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload.i207, i64 noundef %i.hv), !inline_history !334
  %.pre30.i.i.i222 = load i64, ptr %i.hq, align 8, !tbaa !222
  %.pre31.i.i.i223 = load i64, ptr %i.hp, align 8, !tbaa !220
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i212

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i212: ; preds = %bb.bs, %bb.br
  %i.hz = phi i64 [ %i.hs, %bb.br ], [ %.pre31.i.i.i223, %bb.bs ] ; 4 uses
  %i.ia = phi i64 [ %i.hw, %bb.br ], [ %.pre30.i.i.i222, %bb.bs ]
  %i.ib = sub i64 %i.ia, %i.hz
  %spec.select.i.i.i213 = call i64 @llvm.umin.i64(i64 %i.ib, i64 %i.hu) ; 13 uses
  %i.ic = load ptr, ptr %.sroa.01.0.copyload.i207, align 8, !tbaa !283 ; 2 uses
  %i.id = ptrtoaddr ptr %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hz ; 7 uses
  %.not29.i.i.i214 = icmp eq i64 %spec.select.i.i.i213, 0
end_hunk_1
