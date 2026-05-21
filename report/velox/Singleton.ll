inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN3fmt3v116detail7to_utf8IDiNS0_19basic_memory_bufferIcLm128ENS1_9allocatorIcEEEEE7convertERS6_NS0_17basic_string_viewIDiEENS1_20to_utf8_error_policyE:bb.a

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.sink.split: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %bb.c
  %.sink118 = phi i64 [ %i.bh, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58 ], [ %i.ab, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46 ], [ %i.i, %bb.c ], [ %i.cy, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74 ]
  %.sink.ph = phi i8 [ %i.bf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58 ], [ %i.z, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46 ], [ %i.g, %bb.c ], [ %i.cw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74 ]
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !3345
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sink118)
  %.pre.i76 = load i64, ptr %i.b, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i77 = add i64 %.pre.i76, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.sink.split, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %bb.c
  %.pre-phi.i47.sink = phi i64 [ %i.ab, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46 ], [ %i.bh, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58 ], [ %i.cy, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74 ], [ %i.i, %bb.c ], [ %.pre2.i77, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.sink.split ]
  %.sink117 = phi i64 [ %i.aa, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46 ], [ %i.bg, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58 ], [ %i.cx, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74 ], [ %i.h, %bb.c ], [ %.pre.i76, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.sink.split ]
  %.sink = phi i8 [ %i.z, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46 ], [ %i.bf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58 ], [ %i.cw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit74 ], [ %i.g, %bb.c ], [ %.sink.ph, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.sink.split ]
  %i.dc = load ptr, ptr %0, align 8, !tbaa !3347
  store i64 %.pre-phi.i47.sink, ptr %i.b, align 8, !tbaa !3349
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sink117
  store i8 %.sink, ptr %i.dd, align 1, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.04090, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.a
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !3567

.critedge:                                        ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.k, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.k ], [ true, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3396 ; 3 uses
  %i.i = icmp slt i32 %i.h, 12
  %i.j = add nsw i32 %i.h, -12
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 12, i32 %i.k
  tail call void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.m, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !3356
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.q = load ptr, ptr %0, align 8, !tbaa !3476, !nonnull !35, !align !3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.s, align 8, !tbaa !3345
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !3347
  store i64 500, ptr %i.r, align 8, !tbaa !3348
  invoke void @_ZN3fmt3v116detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext 73, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %3, align 8, !tbaa !3347
  %i.w = load i64, ptr %i.t, align 8, !tbaa !3349
  %i.x = invoke ptr @_ZN3fmt3v116detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.v, i64 %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.y) #28
  br label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %3, align 8, !tbaa !3347  ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.aa) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.z

_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.x, ptr %i.n, align 8, !tbaa !3356
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3398
  tail call void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !3356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.l = load ptr, ptr %0, align 8, !tbaa !3476, !nonnull !35, !align !3096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.n, align 8, !tbaa !3345
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !3347
  store i64 500, ptr %i.m, align 8, !tbaa !3348
  invoke void @_ZN3fmt3v116detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 77, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %3, align 8, !tbaa !3347
  %i.r = load i64, ptr %i.o, align 8, !tbaa !3349
  %i.s = invoke ptr @_ZN3fmt3v116detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.q, i64 %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.t) #28
  br label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.v) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.u

_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.s, ptr %i.i, align 8, !tbaa !3356
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %.fr = freeze i64 %1
  %i.a = urem i64 %.fr, 1000                      ; 7 uses
  %i.b = or i64 %i.a, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10.const, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 7 uses
  %3 = sub nsw i32 3, %i.l
  %4 = icmp slt i32 %i.l, 3                       ; 2 uses
  %.sroa.speculated = select i1 %4, i32 %3, i32 0 ; 3 uses
  %i.m = icmp slt i32 %2, 0
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !3356 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !3349 ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !3348
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3345
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.p), !inline_history !3454
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.p, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.v = phi i64 [ %i.o, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i, ptr %i.n, align 8, !tbaa !3349
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 46, ptr %i.x, align 1, !tbaa !18
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 7 uses
  br i1 %4, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !3349 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !3348
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !3345
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ac), !inline_history !3568
  %.pre.i.i.i = load i64, ptr %i.y, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ac, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ag = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.ah = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i, ptr %i.y, align 8, !tbaa !3349
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 48, ptr %i.ai, align 1, !tbaa !18
  %i.aj = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aj, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !3463

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !3356
  %i.ak = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !3356 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !3349 ; 2 uses
  %i.an = add i64 %i.am, 1                        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !3348
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3345
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.an), !inline_history !3454
  %.pre.i.i68 = load i64, ptr %i.al, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70

_ZN3fmt3v1114basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.an, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.at = phi i64 [ %i.am, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.au = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i67, ptr %i.al, align 8, !tbaa !3349
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 46, ptr %i.av, align 1, !tbaa !18
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 2 uses
  %i.ax = sub nsw i32 %2, %i.aw                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 9 uses
  %.not97 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not97, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73 ]
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !3349 ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !3348
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.j, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !3345
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.bc), !inline_history !3568
  %.pre.i.i.i76 = load i64, ptr %i.ay, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.bc, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bg = phi i64 [ %i.bb, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bh = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i74, ptr %i.ay, align 8, !tbaa !3349
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 48, ptr %i.bi, align 1, !tbaa !18
  %i.bj = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bj, %i.aw
  br i1 %exitcond.not.i75, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !3463

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !3356
  %.not65 = icmp slt i32 %i.ax, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bk = sub nsw i32 %i.l, %i.ax                 ; 11 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v116detail5pow10Ej.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check, label %tailrecurse.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %i.bk, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bk, 12
  %n.vec = and i32 %i.bk, -16                     ; 3 uses
  %i.bm = and i32 %i.bk, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i64> [ splat (i64 1), %vector.ph ], [ %bin.rdx124, %vector.body ]
  %bin.rdx124 = mul <4 x i64> %reduced.phi, splat (i64 10000) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.bn = icmp eq i32 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !3569

middle.block:                                     ; preds = %vector.body
  %i.bo = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx124) ; 3 uses
  %cmp.n = icmp eq i32 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail5pow10Ej.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %tailrecurse.i.preheader, label %vec.epilog.ph, !prof !3266

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bo, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec126 = and i32 %i.bk, -4                   ; 2 uses
  %i.bp = and i32 %i.bk, 3
  %i.bq = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ]
  %vec.phi128 = phi <4 x i64> [ %i.bq, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %i.br = mul <4 x i64> %vec.phi128, splat (i64 10) ; 2 uses
  %index.next129 = add nuw i32 %index127, 4       ; 2 uses
  %i.bs = icmp eq i32 %index.next129, %n.vec126
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.br) ; 2 uses
  %cmp.n130 = icmp eq i32 %i.bk, %n.vec126
  br i1 %cmp.n130, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.tr3.i.ph = phi i32 [ %i.bk, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %accumulator.tr2.i.ph = phi i64 [ 1, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %tailrecurse.i
  %.tr3.i = phi i32 [ %i.bu, %tailrecurse.i ], [ %.tr3.i.ph, %tailrecurse.i.preheader ]
  %accumulator.tr2.i = phi i64 [ %i.bv, %tailrecurse.i ], [ %accumulator.tr2.i.ph, %tailrecurse.i.preheader ]
  %i.bu = add i32 %.tr3.i, -1                     ; 2 uses
  %i.bv = mul nuw nsw i64 %accumulator.tr2.i, 10  ; 2 uses
  %i.bw = icmp eq i32 %i.bu, 0
  br i1 %i.bw, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i, !llvm.loop !3571

_ZN3fmt3v116detail5pow10Ej.exit:                  ; preds = %tailrecurse.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.bv, %tailrecurse.i ] ; 2 uses
  %.not64 = icmp samesign ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail5pow10Ej.exit
  %i.bx = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.by = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.bx, i32 noundef %i.ax)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.bz, ptr %0, align 8, !tbaa !3356
  %i.ca = sub nsw i32 %i.ax, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.bz, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.0 = phi i32 [ %i.ca, %bb.n ], [ %i.ax, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i32 %.0, 0
  br i1 %i.cb, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.cn, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !3349 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !3348
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !3345
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.cg), !inline_history !3568
  %.pre.i.i.i84 = load i64, ptr %i.cc, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.cg, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.ck = phi i64 [ %i.cf, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cl = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i82, ptr %i.cc, align 8, !tbaa !3349
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 48, ptr %i.cm, align 1, !tbaa !18
  %i.cn = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.cn, %.0
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !3463

.sink.split:                                      ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.ak, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.by, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
  store ptr %.sroa.0.0.copyload.sink, ptr %0, align 8, !tbaa !3356
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZN3fmt3v116detail5pow10Ej.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v11::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3469, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3399
  tail call void @_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6write2EiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.g, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !3356
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3475, !nonnull !35, !align !3096
  %i.k = load ptr, ptr %0, align 8, !tbaa !3476, !nonnull !35, !align !3096 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm:bb.a
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !30
  %i.z = icmp ult i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !30
  %i.ab = icmp ult i64 %1, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !30
  %i.ad = icmp ult i64 %1, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !30
  %i.af = icmp ult i64 %1, %i.ae
  br i1 %i.af, label %.lr.ph.preheader, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !30
  %i.ah = icmp ult i64 %1, %i.ag
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !30
  %i.aj = icmp ult i64 %1, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.q, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !30
  %i.al = icmp ult i64 %1, %i.ak
  br i1 %i.al, label %.lr.ph.preheader, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !30
  %i.an = icmp ult i64 %1, %i.am
  br i1 %i.an, label %.lr.ph.preheader, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !30
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !21

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 5 uses
  %i.aq = add nsw i64 %.ph, -3                    ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = add nsw i64 %.ph, -2                    ; 3 uses
  %i.at = udiv i64 %1, 100                        ; 2 uses
  %i.au = urem i64 %1, 100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !3621
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.aw, ptr %i.ax, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i6.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.014.i5.unr = phi i64 [ %.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.aq, 2
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i6 = phi i64 [ %i.bg, %.lr.ph ], [ %.0.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.014.i5 = phi i64 [ %i.bf, %.lr.ph ], [ %.014.i5.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.az = udiv i64 %.0.i6, 100
  %i.ba = urem i64 %.0.i6, 100
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !3621
  %i.bd = getelementptr i8, ptr %0, i64 %.014.i5
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i16 %i.bc, ptr %i.be, align 1
  %i.bf = add i64 %.014.i5, -4                    ; 4 uses
  %i.bg = udiv i64 %.0.i6, 10000                  ; 2 uses
  %i.bh = urem i64 %i.az, 100
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !3621
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i16 %i.bj, ptr %i.bk, align 1
  %i.bl = icmp ugt i64 %i.bf, 2
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !3622

._crit_edge.thread:                               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !3621
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa20 = phi i64 [ %.lcssa20.unr, %.lr.ph.prol.loopexit ], [ %i.bf, %.lr.ph ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.lcssa
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !3621 ; 2 uses
  %i.bq = icmp eq i64 %.lcssa20, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.br = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.bp, %._crit_edge ]
  %i.bs = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.br, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bt = phi i16 [ %i.bn, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !18
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bx = phi i64 [ %i.bs, %bb.t ], [ %i.bu, %bb.u ]
  ret i64 %i.bx
}

; Function Attrs: cold mustprogress noinline noreturn nounwind optsize uwtable
define linkonce_odr void @_ZN5folly6detail15terminate_with_ISt13runtime_errorJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #37 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::runtime_error", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #46
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt13runtime_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 2 uses
  tail call void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #28
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #42
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC1EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.105() #38 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #4 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__I_000101() #39 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly12_GLOBAL__N_111FatalHelperD2Ev, ptr nonnull @_ZN5folly12_GLOBAL__N_111fatalHelperE, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.mul.v4i64(<4 x i64>) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nounwind }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { cold mustprogress noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #42 = { noreturn }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { cold nounwind }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { noreturn nounwind }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { cold noreturn nounwind }
attributes #49 = { builtin nounwind }
attributes #50 = { cold }
attributes #51 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt10type_index", !13, i64 0}
!13 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSSt9type_info", !17, i64 8}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !17, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!23, !17, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !24, i64 8, !9, i64 16}
!24 = !{!"long", !9, i64 0}
!25 = !{!23, !24, i64 8}
!26 = !{!"branch_weights", i32 2002, i32 2000}
!27 = !{!28, !24, i64 16}
!28 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !17, i64 0, !24, i64 8, !24, i64 16}
!29 = !{!"branch_weights", i32 1, i32 4001}
!30 = !{!24, !24, i64 0}
!31 = !{!"branch_weights", i32 1, i32 1048575}
!32 = !{!33, !33, i64 0}
!33 = !{!"bool", !9, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !10, i64 0}
!38 = !{i64 0, i64 8, !39, i64 8, i64 8, !30, i64 16, i64 8, !30}
!39 = !{!17, !17, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!42 = distinct !{!42, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!45 = distinct !{!45, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!48 = distinct !{!48, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_NS0_7fstringIJDpT_EE1tEDpOS9_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN5folly10symbolizer16getStackTraceStrB5cxx11Ebm: argument 0"}
!51 = distinct !{!51, !"_ZN5folly10symbolizer16getStackTraceStrB5cxx11Ebm"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN5folly8demangleERKSt9type_info: argument 0"}
!54 = distinct !{!54, !"_ZN5folly8demangleERKSt9type_info"}
!55 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!58 = distinct !{!58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSN5folly6detail14TypeDescriptorE", !14, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!63 = distinct !{!63, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!66 = distinct !{!66, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!67 = !{!68, !60, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!69 = !{!68, !60, i64 16}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSSt10_HashtableIN5folly6detail14TypeDescriptorESt4pairIKS2_PNS1_19SingletonHolderBaseEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!72 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !73, i64 0}
!73 = !{!"any p2 pointer", !14, i64 0}
!74 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !75, i64 0}
!75 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!76 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !77, i64 0, !24, i64 8}
!77 = !{!"float", !9, i64 0}
!78 = !{!71, !24, i64 8}
!79 = !{!76, !77, i64 0}
!80 = !{!81, !72, i64 0}
!81 = !{!"_ZTSSt10_HashtableIPN5folly6detail19SingletonHolderBaseES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!82 = !{!81, !24, i64 8}
!83 = !{!84, !72, i64 0}
!84 = !{!"_ZTSSt10_HashtableIN5folly6detail14TypeDescriptorES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS1_20TypeDescriptorHasherENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !72, i64 0, !24, i64 8, !74, i64 16, !24, i64 24, !76, i64 32, !75, i64 48}
!85 = !{!84, !24, i64 8}
!86 = !{!87, !8, i64 0}
!87 = !{!"_ZTSSt13__atomic_baseIjE", !8, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSSt6atomicIN5folly14SingletonVault4TypeEE", !90, i64 0}
!90 = !{!"_ZTSN5folly14SingletonVault4TypeE", !9, i64 0}
!91 = !{!92, !33, i64 0}
!92 = !{!"_ZTSSt13__atomic_baseIbE", !33, i64 0}
!93 = !{!94, !24, i64 0}
!94 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000EEEE", !24, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5folly6detail17CancellationState6createEv: argument 0"}
!97 = distinct !{!97, !"_ZN5folly6detail17CancellationState6createEv"}
!98 = !{!99, !24, i64 0}
!99 = !{!"_ZTSSt13__atomic_baseImE", !24, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !14, i64 0}
!102 = !{!103, !33, i64 424}
!103 = !{!"_ZTSN5folly14SingletonVaultE", !104, i64 0, !108, i64 64, !108, i64 128, !110, i64 192, !114, i64 224, !109, i64 288, !116, i64 344, !89, i64 356, !120, i64 360, !94, i64 368, !121, i64 376, !128, i64 408, !33, i64 424}
!104 = !{!"_ZTSN5folly12SynchronizedISt13unordered_mapINS_6detail14TypeDescriptorEPNS2_19SingletonHolderBaseENS2_20TypeDescriptorHasherESt8equal_toIS3_ESaISt4pairIKS3_S5_EEENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !105, i64 0, !106, i64 56}
!105 = !{!"_ZTSSt13unordered_mapIN5folly6detail14TypeDescriptorEPNS1_19SingletonHolderBaseENS1_20TypeDescriptorHasherESt8equal_toIS2_ESaISt4pairIKS2_S4_EEE", !71, i64 0}
!106 = !{!"_ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEE", !107, i64 0}
!107 = !{!"_ZTSSt6atomicIjE", !87, i64 0}
!108 = !{!"_ZTSN5folly12SynchronizedISt13unordered_setIPNS_6detail19SingletonHolderBaseESt4hashIS4_ESt8equal_toIS4_ESaIS4_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !109, i64 0, !106, i64 56}
!109 = !{!"_ZTSSt13unordered_setIPN5folly6detail19SingletonHolderBaseESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !81, i64 0}
!110 = !{!"_ZTSN5folly12SynchronizedISt6vectorINS_6detail14TypeDescriptorESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !111, i64 0, !106, i64 24}
!111 = !{!"_ZTSSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE12_Vector_implE", !68, i64 0}
!114 = !{!"_ZTSN5folly12SynchronizedISt13unordered_setINS_6detail14TypeDescriptorENS2_20TypeDescriptorHasherESt8equal_toIS3_ESaIS3_EENS_15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEEEEE", !115, i64 0, !106, i64 56}
!115 = !{!"_ZTSSt13unordered_setIN5folly6detail14TypeDescriptorENS1_20TypeDescriptorHasherESt8equal_toIS2_ESaIS2_EE", !84, i64 0}
!116 = !{!"_ZTSN5folly12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !117, i64 0, !119, i64 8}
!117 = !{!"_ZTSN5folly6detail19SingletonVaultStateE", !118, i64 0, !33, i64 4}
!118 = !{!"_ZTSN5folly6detail19SingletonVaultState4TypeE", !9, i64 0}
!119 = !{!"_ZTSN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !107, i64 0}
!120 = !{!"_ZTSSt6atomicIbE", !92, i64 0}
!121 = !{!"_ZTSN5folly12SynchronizedISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEE", !122, i64 0, !127, i64 24}
!122 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !123, i64 0}
end_hunk_1
