Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffered_read_stream?download=true
inline.NumInlined: 4510
inline.NumDeleted: 1908
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeE:bb.a

bb.k:                                             ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferES2_EEmRKT_RKT0_m.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.j, %bb.k
  %.sink.i = phi ptr [ %i.ar, %bb.k ], [ %i.aq, %bb.j ]
  store ptr %.sink.i, ptr %i.an, align 8, !tbaa !407
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !416
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.as, align 8, !tbaa !416
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load i8, ptr %i.k, align 8, !tbaa !227, !range !114, !noundef !115
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i15, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.av

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread: ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.o   ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !94, !noalias !1139
  %i.bd = and i64 %i.bc, -2
  %switch.i.i.i.i = icmp eq i64 %i.bd, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.o:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS5_14mutable_bufferEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESA_.exit.thread
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #34
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !89, !noalias !1139
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1139
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(52) %i.ba, i32 noundef 2) #33, !noalias !1139, !inline_history !28
  br i1 %i.bj, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.p

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.bk = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.bl = or disjoint i64 %i.bk, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i16, align 8, !tbaa !81
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ %i.aj, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.p ]
  %i.bm = load i8, ptr %i.k, align 8, !tbaa !227, !range !114, !noundef !115
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i17, label %_ZNSt11unique_lockISt5mutexED2Ev.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bo) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit18

_ZNSt11unique_lockISt5mutexED2Ev.exit18:          ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit18, %bb.d
  %.1 = phi i64 [ %.0, %_ZNSt11unique_lockISt5mutexED2Ev.exit18 ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i = alloca ptr, align 8                ; 4 uses
  %3 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !202    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !414
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !414
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !279  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.g, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !385, !noalias !1159 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385, !noalias !1160 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !257
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.sroa.5.010.i.i.i = phi ptr [ %.sroa.5.0.i.i.i, %.lr.ph.split.i.i.i ], [ %i.i, %.lr.ph.i.i.i ] ; 4 uses
  %.09.i.i.i = phi i64 [ %i.u, %.lr.ph.split.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.q = icmp eq ptr %.sroa.5.010.i.i.i, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.010.i.i.i, i64 16
  %.sroa.6.0.in.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.r
  %.sroa.6.0.i.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.s = icmp eq ptr %.sroa.5.010.i.i.i, %i.i
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.6.0.i.i.i.i, i64 %i.p)
  %.sroa.6.1.i.i.i.i = select i1 %i.s, i64 %i.t, i64 %.sroa.6.0.i.i.i.i
  %i.u = add i64 %.sroa.6.1.i.i.i.i, %.09.i.i.i   ; 2 uses
  %.sroa.5.0.i.i.i = load ptr, ptr %.sroa.5.010.i.i.i, align 8, !tbaa !264 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.5.0.i.i.i, %i.k
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !29

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.thread, label %bb.d

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.thread: ; preds = %bb.c, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.v

bb.d:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.w = load ptr, ptr %0, align 8, !tbaa !202
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !226
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #33 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i12, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.z) #35
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.d
  store i8 1, ptr %i.y, align 8, !tbaa !227
  %i.aa = load ptr, ptr %0, align 8, !tbaa !202   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !407 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !405 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i2.i, label %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit

_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.noexc
  %i.ag = phi ptr [ %i.aj, %.noexc ], [ %i.aa, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !290
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit.thread

bb.f:                                             ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !202   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !407 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !405 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i13, label %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit, !llvm.loop !1148

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit: ; preds = %.noexc, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ao = phi ptr [ %i.af, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.an, %.noexc ] ; 2 uses
  %i.ap = phi ptr [ %i.ad, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.al, %.noexc ] ; 3 uses
  %i.aq = phi ptr [ %i.aa, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ], [ %i.aj, %.noexc ] ; 2 uses
  %.not11 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not11, label %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !415 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !385, !noalias !1163
  store ptr %i.at, ptr %.sroa.2.i, align 8, !tbaa !258, !alias.scope !1163
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !385, !noalias !1164
  %.not18.i.i = icmp eq i64 %i.as, 0
  br i1 %.not18.i.i, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = sub i64 %i.av, %i.aw
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.as)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %.lr.ph.i.i
  %.sroa.5.022.in.i.i = phi ptr [ %.sroa.2.i, %.lr.ph.i.i ], [ %.sroa.5.022.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.09.020.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %i.bk, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i ], [ %i.bl, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ] ; 2 uses
  %.sroa.5.022.i.i = load ptr, ptr %.sroa.5.022.in.i.i, align 8, !tbaa !264 ; 6 uses
  %.not.i14 = icmp eq ptr %.sroa.5.022.i.i, %i.au
  br i1 %.not.i14, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !257
  %i.bb = icmp eq ptr %.sroa.5.022.i.i, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 16
  %.sroa.6.0.in.i.i.i = select i1 %i.bb, ptr %i.n, ptr %i.bc
  %.sroa.6.0.i.i.i = load i64, ptr %.sroa.6.0.in.i.i.i, align 8, !tbaa !81 ; 3 uses
  %.sroa.07.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.022.i.i, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !385
  %i.be = icmp eq ptr %.sroa.5.022.i.i, %i.bd
  br i1 %i.be, label %bb.j, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !388
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %.sroa.6.0.i.i.i) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 %..i.i.i.i
  %i.bh = sub i64 %.sroa.6.0.i.i.i, %..i.i.i.i
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i: ; preds = %bb.j, %bb.i
  %.sroa.07.1.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.i.i.i, %bb.i ]
  %.sroa.6.1.i.i.i = phi i64 [ %i.bh, %bb.j ], [ %.sroa.6.0.i.i.i, %bb.i ] ; 2 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i, i64 %.sroa.6.019.i.i) ; 4 uses
  %.not.i.i.i15 = icmp eq i64 %.sroa.6.1.i.i.i, 0
  br i1 %.not.i.i.i15, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.07.1.i.i.i, ptr align 1 %.sroa.09.020.i.i, i64 %i.bi, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i: ; preds = %bb.k, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i
  %i.bj = add i64 %i.bi, %.021.i.i                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i.i, i64 %i.bi
  %i.bl = sub nuw i64 %.sroa.6.019.i.i, %i.bi     ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i16, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit, label %bb.h, !llvm.loop !30

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i, %bb.h
  %.0.lcssa.i.i.ph = phi i64 [ %.021.i.i, %bb.h ], [ %i.bj, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i ]
  %.pre27 = load ptr, ptr %0, align 8, !tbaa !202
  br label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit, %bb.g
  %i.bm = phi ptr [ %i.aq, %bb.g ], [ %.pre27, %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.g ], [ %.0.lcssa.i.i.ph, %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit.loopexit ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  %4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 120 ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !407      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 128 ; 2 uses
  %6 = load ptr, ptr %i.bn, align 8, !tbaa !405
  %i.bo = ptrtoint ptr %6 to i64
  %i.bp = ptrtoint ptr %5 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.not.i17 = icmp ult i64 %.0.lcssa.i.i, %i.bq
  br i1 %.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !408 ; 2 uses
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !405
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

bb.m:                                             ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_14mutable_bufferEEEmRKT_RKT0_m.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 %.0.lcssa.i.i
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi ptr [ %i.bt, %bb.m ], [ %i.bs, %bb.l ]
  store ptr %.sink.i, ptr %4, align 8, !tbaa !407
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 240 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !416
  %i.bw = add i64 %i.bv, %.0.lcssa.i.i
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !416
  br label %bb.s

bb.n:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load i8, ptr %i.y, align 8, !tbaa !227, !range !114, !noundef !115
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.o, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i18, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ca) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.bx

_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit.thread: ; preds = %_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEENKUlvE_clEv.exit.i, %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit
  %i.cc = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.q   ; 4 uses

.noexc.i:                                         ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !94, !noalias !1165
  %i.cf = and i64 %i.ce, -2
  %switch.i.i.i.i = icmp eq i64 %i.cf, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.q:                                             ; preds = %_ZNSt18condition_variable4waitIZN5boost5beast4test12basic_streamINS1_4asio15any_io_executorEE9read_someINS2_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS1_6system10error_codeEEUlvE_EEvRSt11unique_lockISt5mutexESE_.exit.thread
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #34
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !89, !noalias !1165
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1165
  %i.cl = call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(52) %i.cc, i32 noundef 2) #33, !noalias !1165, !inline_history !28
  br i1 %i.cl, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.r

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %.noexc.i, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cm = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.cn = or disjoint i64 %i.cm, ptrtoint (ptr @_ZZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEEEmRKT_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 2, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx.i19, align 8, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit
  %.0 = phi i64 [ %.0.lcssa.i.i, %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit ], [ 0, %bb.r ]
  %i.co = load i8, ptr %i.y, align 8, !tbaa !227, !range !114, !noundef !115
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.t, label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i20, label %_ZNSt11unique_lockISt5mutexED2Ev.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cq) #33 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit21

_ZNSt11unique_lockISt5mutexED2Ev.exit21:          ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit21, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.thread
  %.1 = phi i64 [ %.0, %_ZNSt11unique_lockISt5mutexED2Ev.exit21 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb1EEEvEEmRKT_.exit.thread ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %i.a
  %i.d = or i1 %.not.i.i, %i.c
  br i1 %i.d, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !263
  %.not2228 = icmp eq ptr %i.b, %i.f
  br i1 %.not2228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.i = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.c ] ; 4 uses
  %.01429 = phi i64 [ %1, %.lr.ph ], [ %i.r, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !222  ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !260  ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp ult i64 %.01429, %i.m
  br i1 %i.n, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !259
  %i.p = sub i64 %i.o, %.01429
  store i64 %i.p, ptr %i.h, align 8, !tbaa !259
  %i.q = add i64 %i.l, %.01429
  store i64 %i.q, ptr %i.g, align 8, !tbaa !260
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw i64 %.01429, %i.m                ; 2 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !259
  %i.t = sub i64 %i.s, %i.m
  store i64 %i.t, ptr %i.h, align 8, !tbaa !259
  store i64 0, ptr %i.g, align 8, !tbaa !260
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !217, !noalias !1172 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !257, !noalias !1172 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !217, !noalias !1172
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !257, !noalias !1172
  %i.y = add i64 %i.k, 31
  %i.z = and i64 %i.y, -8
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.z) #36
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !217, !noalias !1173 ; 3 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !263
  %.not22 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not22, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.014.lcssa = phi i64 [ %1, %.preheader ], [ %i.r, %bb.c ] ; 3 uses
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.aa, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !261 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !260 ; 2 uses
  %i.ag = sub i64 %i.ad, %i.af
  %i.ah = icmp ult i64 %.014.lcssa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !259
  %i.ak = sub i64 %i.aj, %.014.lcssa
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !259
  %i.al = add i64 %i.af, %.014.lcssa
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !260
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.ai, align 8, !tbaa !259
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !257
  %.not23 = icmp eq ptr %.lcssa, %i.an
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !262
  %.not = icmp eq i64 %i.ad, %i.ap
  br i1 %.not, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !260
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.d, %bb.g, %.critedge, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5boost5beast4test10fail_count4failERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail19spawned_thread_base4callINS0_12async_resultINS0_19basic_yield_contextINS0_15any_io_executorEEEJFvNS_6system10error_codeEmEEE19suspend_with_helperINS1_19initiate_async_readINS_5beast20buffered_read_streamIRNSE_4test12basic_streamIS6_EENSE_18basic_multi_bufferISaIcEEEEEEEJRKNS0_14mutable_bufferENS1_14transfer_all_tEEEEEEvPv(ptr noundef %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::asio::detail::spawn_handler", align 8 ; 9 uses
end_hunk_0
