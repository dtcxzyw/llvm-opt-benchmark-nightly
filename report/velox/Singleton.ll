inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN3fmt3v116detail7to_utf8IDiNS0_19basic_memory_bufferIcLm128ENS1_9allocatorIcEEEEE7convertERS6_NS0_17basic_string_viewIDiEENS1_20to_utf8_error_policyE:bb.a
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
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 8 uses
  %i.m = icmp slt i32 %i.l, 3
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.l, i32 3)
  %.sroa.speculated = sub nsw i32 3, %i.n         ; 2 uses
  %i.o = icmp slt i32 %2, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !3356 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !3349 ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3348
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3345
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.r), !inline_history !3454
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.r, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i, ptr %i.p, align 8, !tbaa !3349
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 46, ptr %i.z, align 1, !tbaa !18
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 7 uses
  br i1 %i.m, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.al, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !3349 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !3348
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !3345
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.0.copyload, i64 noundef %i.ae), !inline_history !3568
  %.pre.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.pre2.i.i.i, %bb.e ]
  %i.ai = phi i64 [ %i.ad, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.aj = load ptr, ptr %.sroa.016.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i, ptr %i.aa, align 8, !tbaa !3349
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 48, ptr %i.ak, align 1, !tbaa !18
  %i.al = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.d, !llvm.loop !3463

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  store ptr %.sroa.016.0.copyload, ptr %0, align 8, !tbaa !3356
  %i.am = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.016.0.copyload, i64 noundef %i.a, i32 noundef %i.l)
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i66 = load ptr, ptr %0, align 8, !tbaa !3356 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !3349 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !3348
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i66, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3345
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i66, i64 noundef %i.ap), !inline_history !3454
  %.pre.i.i68 = load i64, ptr %i.an, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i69 = add i64 %.pre.i.i68, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70

_ZN3fmt3v1114basic_appenderIcEaSEc.exit70:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i67 = phi i64 [ %i.ap, %bb.g ], [ %.pre2.i.i69, %bb.h ]
  %i.av = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i68, %bb.h ]
  %i.aw = load ptr, ptr %.sroa.0.0.copyload.i66, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i67, ptr %i.an, align 8, !tbaa !3349
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 46, ptr %i.ax, align 1, !tbaa !18
  %i.ay = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 2 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 9 uses
  %.not97 = icmp sgt i32 %i.l, 2
  br i1 %.not97, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73, %.lr.ph.i71
  %.04.i72 = phi i32 [ 0, %.lr.ph.i71 ], [ %i.bl, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73 ]
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !3349 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !3348
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !3345
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.07.0.copyload, i64 noundef %i.be), !inline_history !3568
  %.pre.i.i.i76 = load i64, ptr %i.ba, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i77 = add i64 %.pre.i.i.i76, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73:      ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i74 = phi i64 [ %i.be, %bb.i ], [ %.pre2.i.i.i77, %bb.j ]
  %i.bi = phi i64 [ %i.bd, %bb.i ], [ %.pre.i.i.i76, %bb.j ]
  %i.bj = load ptr, ptr %.sroa.07.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i74, ptr %i.ba, align 8, !tbaa !3349
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 48, ptr %i.bk, align 1, !tbaa !18
  %i.bl = add nuw nsw i32 %.04.i72, 1             ; 2 uses
  %exitcond.not.i75 = icmp eq i32 %i.bl, %i.ay
  br i1 %exitcond.not.i75, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %bb.i, !llvm.loop !3463

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i73, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70
  store ptr %.sroa.07.0.copyload, ptr %0, align 8, !tbaa !3356
  %.not65 = icmp slt i32 %i.az, %i.l
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %i.bm = sub nsw i32 %i.l, %i.az                 ; 11 uses
  %3 = icmp eq i32 %i.bm, 0
  br i1 %3, label %_ZN3fmt3v116detail5pow10Ej.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i32 %i.bm, 4
  br i1 %min.iters.check, label %tailrecurse.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %i.bm, 16
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.bm, 12
  %n.vec = and i32 %i.bm, -16                     ; 3 uses
  %i.bn = and i32 %i.bm, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i64> [ splat (i64 1), %vector.ph ], [ %bin.rdx124, %vector.body ]
  %bin.rdx124 = mul <4 x i64> %reduced.phi, splat (i64 10000) ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.bo = icmp eq i32 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !3569

middle.block:                                     ; preds = %vector.body
  %i.bp = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %bin.rdx124) ; 3 uses
  %cmp.n = icmp eq i32 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail5pow10Ej.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %tailrecurse.i.preheader, label %vec.epilog.ph, !prof !3266

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bp, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec126 = and i32 %i.bm, -4                   ; 2 uses
  %i.bq = and i32 %i.bm, 3
  %i.br = insertelement <4 x i64> <i64 poison, i64 1, i64 1, i64 1>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index127 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ]
  %vec.phi128 = phi <4 x i64> [ %i.br, %vec.epilog.ph ], [ %i.bs, %vec.epilog.vector.body ]
  %i.bs = mul <4 x i64> %vec.phi128, splat (i64 10) ; 2 uses
  %index.next129 = add nuw i32 %index127, 4       ; 2 uses
  %i.bt = icmp eq i32 %index.next129, %n.vec126
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bu = tail call i64 @llvm.vector.reduce.mul.v4i64(<4 x i64> %i.bs) ; 2 uses
  %cmp.n130 = icmp eq i32 %i.bm, %n.vec126
  br i1 %cmp.n130, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.tr3.i.ph = phi i32 [ %i.bm, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %accumulator.tr2.i.ph = phi i64 [ 1, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader, %tailrecurse.i
  %.tr3.i = phi i32 [ %i.bv, %tailrecurse.i ], [ %.tr3.i.ph, %tailrecurse.i.preheader ]
  %accumulator.tr2.i = phi i64 [ %i.bw, %tailrecurse.i ], [ %accumulator.tr2.i.ph, %tailrecurse.i.preheader ]
  %i.bv = add i32 %.tr3.i, -1                     ; 2 uses
  %i.bw = mul i64 %accumulator.tr2.i, 10          ; 2 uses
  %i.bx = icmp eq i32 %i.bv, 0
  br i1 %i.bx, label %_ZN3fmt3v116detail5pow10Ej.exit, label %tailrecurse.i, !llvm.loop !3571

_ZN3fmt3v116detail5pow10Ej.exit:                  ; preds = %tailrecurse.i, %middle.block, %vec.epilog.middle.block, %bb.k
  %accumulator.tr.lcssa.i = phi i64 [ 1, %bb.k ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.bw, %tailrecurse.i ] ; 2 uses
  %.not64 = icmp ugt i64 %accumulator.tr.lcssa.i, %i.a
  br i1 %.not64, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail5pow10Ej.exit
  %i.by = udiv i64 %i.a, %accumulator.tr.lcssa.i
  %i.bz = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.by, i32 noundef %i.az)
  br label %.sink.split

bb.m:                                             ; preds = %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = tail call ptr @_ZN3fmt3v116detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.07.0.copyload, i64 noundef %i.a, i32 noundef %i.l) ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !3356
  %i.cb = sub nsw i32 %i.az, %i.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload = phi ptr [ %i.ca, %bb.n ], [ %.sroa.07.0.copyload, %bb.m ] ; 7 uses
  %.0 = phi i32 [ %i.cb, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.cc = icmp sgt i32 %.0, 0
  br i1 %i.cc, label %.lr.ph.i79, label %.sink.split

.lr.ph.i79:                                       ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %.lr.ph.i79
  %.04.i80 = phi i32 [ 0, %.lr.ph.i79 ], [ %i.co, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !3349 ; 2 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load i64, ptr %i.ce, align 8, !tbaa !3348
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.q, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !3345
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload, i64 noundef %i.ch), !inline_history !3568
  %.pre.i.i.i84 = load i64, ptr %i.cd, align 8, !tbaa !3349 ; 2 uses
  %.pre2.i.i.i85 = add i64 %.pre.i.i.i84, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81:      ; preds = %bb.q, %bb.p
  %.pre-phi.i.i.i82 = phi i64 [ %i.ch, %bb.p ], [ %.pre2.i.i.i85, %bb.q ]
  %i.cl = phi i64 [ %i.cg, %bb.p ], [ %.pre.i.i.i84, %bb.q ]
  %i.cm = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !3347
  store i64 %.pre-phi.i.i.i82, ptr %i.cd, align 8, !tbaa !3349
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  store i8 48, ptr %i.cn, align 1, !tbaa !18
  %i.co = add nuw nsw i32 %.04.i80, 1             ; 2 uses
  %exitcond.not.i83 = icmp eq i32 %i.co, %.0
  br i1 %exitcond.not.i83, label %.sink.split, label %bb.p, !llvm.loop !3463

.sink.split:                                      ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81, %bb.o, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %bb.l
  %.sroa.0.0.copyload.sink = phi ptr [ %i.am, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %i.bz, %bb.l ], [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i81 ]
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.m, align 8, !tbaa !3345
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !3347
  store i64 500, ptr %i.l, align 8, !tbaa !3348
  invoke void @_ZN3fmt3v116detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 83, i8 noundef signext 79)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !3347
  %i.q = load i64, ptr %i.n, align 8, !tbaa !3349
  %i.r = invoke ptr @_ZN3fmt3v116detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.p, i64 %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.s) #28
  br label %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !3347   ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.u) #28
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.t

_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.r, ptr %i.h, align 8, !tbaa !3356
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN3fmt3v116detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18duration_formatterIclSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvvEJEEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::detail::locale_ref", align 8 ; 5 uses
  %5 = alloca %"class.fmt::v11::detail::get_locale", align 8 ; 8 uses
  %6 = alloca %"class.fmt::v11::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3365, !range !34, !noundef !35 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !3092
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i8 %i.b, ptr %i.e, align 8, !tbaa !3465
  br i1 %i.c, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit, label %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br label %bb.b

_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit: ; preds = %bb.a
  call void @_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load i8, ptr %i.e, align 8, !tbaa !3465, !range !34
  %i.f = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  br i1 %i.f, label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit.thread, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.g = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %_ZN3fmt3v116detail18get_classic_localeEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale) #28
  br label %.body

_ZN3fmt3v116detail18get_classic_localeEv.exit.i:  ; preds = %bb.e, %bb.c, %bb.b
  %i.l = load ptr, ptr @_ZZN3fmt3v116detail18get_classic_localeEvE6locale, align 8, !tbaa !3467, !nonnull !35, !align !3096
  br label %_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v116detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v116detail18get_classic_localeEv.exit.i, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit
  %i.m = phi ptr [ %i.l, %_ZN3fmt3v116detail18get_classic_localeEv.exit.i ], [ %5, %_ZN3fmt3v116detail10get_localeC2EbNS1_10locale_refE.exit ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356
  store ptr %i.m, ptr %6, align 8, !tbaa !3467
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v116detail18get_classic_localeEvE6locale acquire, align 8
end_hunk_0
