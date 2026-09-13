Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_tctable_lite?download=true
inline.NumInlined: 5347
inline.NumDeleted: 912
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateINS2_9SelfArenaEEEvT_bii:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bp, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bi, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bo, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = icmp ne i64 %.sink.i10.i, 0
  %i.ao = load i32, ptr %3, align 8, !tbaa !139
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !55
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.aw = add nsw i32 %i.ar, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink111.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.aw, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.ar, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.ar, %.thread52.i.i.i ]
  %i.ay = phi ptr [ %3, %.thread.i.i.i ], [ %i.ax, %.thread41.i.i.i ], [ %i.at, %.thread52.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i1 %i.an to i8
  store i32 %.sink111.sink, ptr %i.ac, align 4, !tbaa !141
  %i.bb = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !80
  %i.bd = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bf, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.bg = trunc i64 %i.t to i32
  %i.bh = add i32 %.03275, %i.bg
  %i.bi = sub i32 %.02874, %i.bh                  ; 3 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bk = icmp slt i32 %i.bj, 17
  br i1 %i.bk, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bn = ashr exact i64 %sext, 32
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.032 = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bi, %.032
  br i1 %i.bt, label %bb.c, label %._crit_edge, !llvm.loop !541

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bo, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bi, %bb.k ]
  %i.bu = sext i32 %.028.lcssa to i64
  %i.bv = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bu ; 2 uses
  %i.bw = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bv, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = select i1 %i.bx, ptr %i.bw, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.by, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1)
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !141  ; 3 uses
  %i.i = add nsw i32 %i.h, %i.f                   ; 3 uses
  %i.j = load i32, ptr %3, align 8, !tbaa !139
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ 8, %bb.c ]
  %i.q = icmp sgt i32 %i.i, %i.p
  br i1 %i.q, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.l, i32 noundef %i.h, i32 noundef %i.i)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !139
  %.pre90 = load i32, ptr %i.g, align 4, !tbaa !141 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.r = phi i32 [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.s = icmp eq i32 %.pre-phi, 0
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %i.v
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.g, align 4, !tbaa !141
  %i.w = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.t
  %sext = shl i64 %i.c, 32
  %i.x = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %0, i64 %i.x, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.f:                                             ; preds = %bb.b
  %i.y = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i64 %i.c, %i.z
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !141 ; 3 uses
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 3 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !139
  %i.af = and i32 %i.ae, 1                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ 8, %bb.g ]
  %i.al = icmp sgt i32 %i.ad, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55, !prof !23

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ag, i32 noundef %i.ac, i32 noundef %i.ad)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !139
  %.pre88 = load i32, ptr %i.ab, align 4, !tbaa !141 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.y
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !141
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55
  %i.ap = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.ap, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.aq ; 6 uses
  %i.as = sub i64 %i.a, %i.b                      ; 7 uses
  %min.iters.check.a = icmp ult i64 %i.as, 8
  br i1 %min.iters.check.a, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %4 = add i64 %.0.v.i.i.i57129, %i.aq
  %5 = sub i64 %4, %i.b
  %6 = add i64 %5, 7
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.as, 24
  %n.vec = and i64 %i.as, -32                     ; 5 uses
  %i.au = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !55
  %wide.load132 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !55
  %i.ax = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ay = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.az = zext <16 x i1> %i.ax to <16 x i8>
  %i.ba = zext <16 x i1> %i.ay to <16 x i8>
  %i.bb = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.az, ptr %next.gep131, align 1, !tbaa !80
  store <16 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.as, -8                   ; 4 uses
  %i.bd = getelementptr i8, ptr %0, i64 %n.vec134 ; 2 uses
  %i.be = getelementptr i8, ptr %i.ar, i64 %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136.a = getelementptr i8, ptr %0, i64 %index135
  %next.gep137 = getelementptr i8, ptr %i.ar, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep136.a, align 1, !tbaa !55
  %i.bf = icmp ne <8 x i8> %wide.load138, zeroinitializer
  %i.bg = zext <8 x i1> %i.bf to <8 x i8>
  store <8 x i8> %i.bg, ptr %next.gep137, align 1, !tbaa !80
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %i.as, %n.vec134
  br i1 %cmp.n140, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph150 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bi = sub i64 %i.a, %.04881.ph150
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bn, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bm, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = load i8, ptr %.04881.prol, align 1, !tbaa !55
  %i.bk = icmp ne i8 %i.bj, 0
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %.05080.prol, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !544

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %i.bo = sub i64 %.04881.ph150, %i.a
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.cj, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ci, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bq = load i8, ptr %.04881, align 1, !tbaa !55
  %i.br = icmp ne i8 %i.bq, 0
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %.05080, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %i.bw = icmp ne i8 %i.bv, 0
  %i.bx = zext i1 %i.bw to i8
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !80
  %i.by = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %i.cb = icmp ne i8 %i.ca, 0
  %i.cc = zext i1 %i.cb to i8
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.ce = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !55
  %i.cg = icmp ne i8 %i.cf, 0
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.cj, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !545

bb.j:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !55
  %.lobit = lshr i8 %i.cl, 7
  %i.cm = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.cm          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !141 ; 3 uses
  %i.cp = add nsw i32 %spec.select, %i.co         ; 3 uses
  %i.cq = load i32, ptr %3, align 8, !tbaa !139
  %i.cr = and i32 %i.cq, 1                        ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0                    ; 2 uses
  br i1 %i.cs, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cw = phi i32 [ %i.cv, %bb.k ], [ 8, %bb.j ]
  %i.cx = icmp sgt i32 %i.cp, %i.cw
  br i1 %i.cx, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, !prof !23

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cs, i32 noundef %i.co, i32 noundef %i.cp)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre83 = load i32, ptr %i.cn, align 4, !tbaa !141 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cy = phi i32 [ %i.co, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.cz = icmp eq i32 %.pre-phi99, 0
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.cz, ptr %3, ptr %i.dc
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cn, align 4, !tbaa !141
  %i.dd = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.da ; 2 uses
  %i.de = icmp ult ptr %0, %1
  br i1 %i.de, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, %bb.m
  %.073 = phi ptr [ %i.dq, %bb.m ], [ %i.dd, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %i.df = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.dg = icmp sgt i8 %i.df, -1
  br i1 %i.dg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dh = zext nneg i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dj = zext i8 %i.df to i32
  %i.dk = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dj) ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  %i.dn = icmp eq ptr %i.dl, null
  br i1 %i.dn, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.di, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.do = icmp ne i64 %.sink.i10.i, 0
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %.073, align 1, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dr = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dr, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dq, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !139
  %.pre85 = load ptr, ptr %i.db, align 8
  %.pre86 = load i32, ptr %i.cn, align 4, !tbaa !141
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.ds = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.dt = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dd, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 2 uses
  %i.du = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.du, ptr %3, ptr %i.dt
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dv = ptrtoint ptr %.1 to i64
  %i.dw = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = icmp sgt i32 %i.ds, %i.dy
  br i1 %i.dz, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dy, ptr %i.cn, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.ea = icmp ult ptr %0, %1
  br i1 %i.ea, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ed = load i8, ptr %.0714.i66, align 1, !tbaa !55 ; 3 uses
  %i.ee = icmp sgt i8 %i.ed, -1
  br i1 %i.ee, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.ef = zext nneg i8 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.eh = zext i8 %i.ed to i32
  %i.ei = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.eh) ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.eg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ej, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.ef, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ek, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.em = icmp ne i64 %.sink.i10.i69, 0
  %i.en = load i32, ptr %3, align 8, !tbaa !139
  %i.eo = and i32 %i.en, 1
  %i.ep = icmp eq i32 %i.eo, 0                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_

declare noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bp, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bi, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bo, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = icmp ne i64 %.sink.i10.i, 0
  %i.ao = load i32, ptr %3, align 8, !tbaa !139
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !55
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.aw = add nsw i32 %i.ar, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink111.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.aw, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.ar, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.ar, %.thread52.i.i.i ]
  %i.ay = phi ptr [ %3, %.thread.i.i.i ], [ %i.ax, %.thread41.i.i.i ], [ %i.at, %.thread52.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i1 %i.an to i8
  store i32 %.sink111.sink, ptr %i.ac, align 4, !tbaa !141
  %i.bb = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !80
  %i.bd = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bf, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.bg = trunc i64 %i.t to i32
  %i.bh = add i32 %.03275, %i.bg
  %i.bi = sub i32 %.02874, %i.bh                  ; 3 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bk = icmp slt i32 %i.bj, 17
  br i1 %i.bk, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bn = ashr exact i64 %sext, 32
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.032 = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bi, %.032
  br i1 %i.bt, label %bb.c, label %._crit_edge, !llvm.loop !546

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bo, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bi, %bb.k ]
  %i.bu = sext i32 %.028.lcssa to i64
  %i.bv = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bu ; 2 uses
  %i.bw = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bv, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  %i.by = select i1 %i.bx, ptr %i.bw, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.by, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1)
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !141  ; 3 uses
  %i.i = add nsw i32 %i.h, %i.f                   ; 3 uses
  %i.j = load i32, ptr %3, align 8, !tbaa !139
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = load i32, ptr %i.n, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ 8, %bb.c ]
  %i.q = icmp sgt i32 %i.i, %i.p
  br i1 %i.q, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.l, i32 noundef %i.h, i32 noundef %i.i)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !139
  %.pre90 = load i32, ptr %i.g, align 4, !tbaa !141 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.r = phi i32 [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.s = icmp eq i32 %.pre-phi, 0
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %i.v
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.g, align 4, !tbaa !141
  %i.w = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.t
  %sext = shl i64 %i.c, 32
  %i.x = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %0, i64 %i.x, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.f:                                             ; preds = %bb.b
  %i.y = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i64 %i.c, %i.z
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !141 ; 3 uses
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 3 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !139
  %i.af = and i32 %i.ae, 1                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ 8, %bb.g ]
  %i.al = icmp sgt i32 %i.ad, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55, !prof !23

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ag, i32 noundef %i.ac, i32 noundef %i.ad)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !139
  %.pre88 = load i32, ptr %i.ab, align 4, !tbaa !141 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.y
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !141
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55
  %i.ap = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.ap, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.aq ; 6 uses
  %i.as = sub i64 %i.a, %i.b                      ; 7 uses
  %min.iters.check.a = icmp ult i64 %i.as, 8
  br i1 %min.iters.check.a, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %4 = add i64 %.0.v.i.i.i57129, %i.aq
  %5 = sub i64 %4, %i.b
  %6 = add i64 %5, 7
  %diff.check = icmp ult i64 %6, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.as, 24
  %n.vec = and i64 %i.as, -32                     ; 5 uses
  %i.au = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !55
  %wide.load132 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !55
  %i.ax = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ay = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.az = zext <16 x i1> %i.ax to <16 x i8>
  %i.ba = zext <16 x i1> %i.ay to <16 x i8>
  %i.bb = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.az, ptr %next.gep131, align 1, !tbaa !80
  store <16 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.as, -8                   ; 4 uses
  %i.bd = getelementptr i8, ptr %0, i64 %n.vec134 ; 2 uses
  %i.be = getelementptr i8, ptr %i.ar, i64 %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136.a = getelementptr i8, ptr %0, i64 %index135
  %next.gep137 = getelementptr i8, ptr %i.ar, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep136.a, align 1, !tbaa !55
  %i.bf = icmp ne <8 x i8> %wide.load138, zeroinitializer
  %i.bg = zext <8 x i1> %i.bf to <8 x i8>
  store <8 x i8> %i.bg, ptr %next.gep137, align 1, !tbaa !80
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !548

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %i.as, %n.vec134
  br i1 %cmp.n140, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph150 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bi = sub i64 %i.a, %.04881.ph150
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bn, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bm, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = load i8, ptr %.04881.prol, align 1, !tbaa !55
  %i.bk = icmp ne i8 %i.bj, 0
  %i.bl = zext i1 %i.bk to i8
  store i8 %i.bl, ptr %.05080.prol, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !549

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %i.bo = sub i64 %.04881.ph150, %i.a
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.cj, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ci, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bq = load i8, ptr %.04881, align 1, !tbaa !55
  %i.br = icmp ne i8 %i.bq, 0
  %i.bs = zext i1 %i.br to i8
  store i8 %i.bs, ptr %.05080, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %i.bw = icmp ne i8 %i.bv, 0
  %i.bx = zext i1 %i.bw to i8
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !80
  %i.by = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %i.cb = icmp ne i8 %i.ca, 0
  %i.cc = zext i1 %i.cb to i8
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.ce = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !55
  %i.cg = icmp ne i8 %i.cf, 0
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.cj, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !550

bb.j:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !55
  %.lobit = lshr i8 %i.cl, 7
  %i.cm = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.cm          ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !141 ; 3 uses
  %i.cp = add nsw i32 %spec.select, %i.co         ; 3 uses
  %i.cq = load i32, ptr %3, align 8, !tbaa !139
  %i.cr = and i32 %i.cq, 1                        ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0                    ; 2 uses
  br i1 %i.cs, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !55
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cw = phi i32 [ %i.cv, %bb.k ], [ 8, %bb.j ]
  %i.cx = icmp sgt i32 %i.cp, %i.cw
  br i1 %i.cx, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, !prof !23

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cs, i32 noundef %i.co, i32 noundef %i.cp)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre83 = load i32, ptr %i.cn, align 4, !tbaa !141 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cy = phi i32 [ %i.co, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.cz = icmp eq i32 %.pre-phi99, 0
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.cz, ptr %3, ptr %i.dc
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cn, align 4, !tbaa !141
  %i.dd = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.da ; 2 uses
  %i.de = icmp ult ptr %0, %1
  br i1 %i.de, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, %bb.m
  %.073 = phi ptr [ %i.dq, %bb.m ], [ %i.dd, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %i.df = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.dg = icmp sgt i8 %i.df, -1
  br i1 %i.dg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dh = zext nneg i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dj = zext i8 %i.df to i32
  %i.dk = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dj) ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  %i.dn = icmp eq ptr %i.dl, null
  br i1 %i.dn, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.di, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.do = icmp ne i64 %.sink.i10.i, 0
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %.073, align 1, !tbaa !80
  %i.dq = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dr = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dr, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dq, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !139
  %.pre85 = load ptr, ptr %i.db, align 8
  %.pre86 = load i32, ptr %i.cn, align 4, !tbaa !141
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.ds = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.dt = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dd, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 2 uses
  %i.du = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.du, ptr %3, ptr %i.dt
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dv = ptrtoint ptr %.1 to i64
  %i.dw = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = icmp sgt i32 %i.ds, %i.dy
  br i1 %i.dz, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dy, ptr %i.cn, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.ea = icmp ult ptr %0, %1
  br i1 %i.ea, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ed = load i8, ptr %.0714.i66, align 1, !tbaa !55 ; 3 uses
  %i.ee = icmp sgt i8 %i.ed, -1
  br i1 %i.ee, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.ef = zext nneg i8 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.eh = zext i8 %i.ed to i32
  %i.ei = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.eh) ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0      ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1
  %i.el = icmp eq ptr %i.ej, null
  br i1 %i.el, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.eg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ej, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.ef, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ek, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.em = icmp ne i64 %.sink.i10.i69, 0
  %i.en = load i32, ptr %3, align 8, !tbaa !139
  %i.eo = and i32 %i.en, 1
  %i.ep = icmp eq i32 %i.eo, 0                    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.br, %bb.m ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.m ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bk, %bb.m ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bq, %bb.m ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i.i.i
  %.0714.i = phi ptr [ %.0.i11.i, %.thread.i.i.i ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = trunc i64 %.sink.i10.i to i32
  %i.ao = load i32, ptr %3, align 8, !tbaa !139
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 3 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !141 ; 4 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %3, %bb.f ]
  %i.au = phi i32 [ %i.at, %bb.g ], [ 2, %bb.f ]
  %i.av = icmp eq i32 %i.ar, %i.au
  %i.aw = add nsw i32 %i.ar, 1                    ; 3 uses
  br i1 %i.av, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ay = phi i32 [ %.pre36.i.i.i, %bb.h ], [ %i.ar, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.aq, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.aw, ptr %i.ac, align 4, !tbaa !141
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.az
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !29
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.bc = icmp eq i32 %i.aw, %i.bb
  call void @llvm.assume(i1 %i.bc)
  br i1 %.0.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i
  %i.bd = load ptr, ptr %i.ad, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, %bb.i
  %.sink109 = phi ptr [ %i.bd, %bb.i ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.be = icmp eq ptr %.pn.i.i.i, %.sink109
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %.thread.i.i.i, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %.thread.i.i.i ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.j, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.j
  %.1 = phi ptr [ %i.bh, %bb.j ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.bi = trunc i64 %i.t to i32
  %i.bj = add i32 %.03275, %i.bi
  %i.bk = sub i32 %.02874, %i.bj                  ; 3 uses
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bm = icmp slt i32 %i.bl, 17
  br i1 %i.bm, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.t, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !551

._crit_edge:                                      ; preds = %bb.m, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bq, %bb.m ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bk, %bb.m ]
  %i.bw = sext i32 %.028.lcssa to i64
  %i.bx = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bw ; 2 uses
  %i.by = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bx, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = select i1 %i.bz, ptr %i.by, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ca, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !139
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %4 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = add i64 %i.a, %i.w
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 8
  %i.ab = shl i64 %i.b, 2
  %i.ac = sub i64 %i.aa, %i.ab
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ac
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -8                         ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ae = shl i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ag = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !558
  %wide.load105 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !55, !alias.scope !558
  %i.ai = zext <4 x i8> %wide.load to <4 x i32>
  %i.aj = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.ak = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ai, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !559, !noalias !558
  store <4 x i32> %i.aj, ptr %i.ak, align 4, !tbaa !29, !alias.scope !559, !noalias !558
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.am = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.aq, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ap, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.an = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.ao = zext i8 %i.an to i32
  store i32 %i.ao, ptr %.03762.prol, align 4, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !556

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ap, %.lr.ph.prol ]
  %i.ar = sub i64 %.03563.ph110, %i.a
  %i.as = icmp ugt i64 %i.ar, -8
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.by, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bx, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.at = load i8, ptr %.03563, align 1, !tbaa !55
  %i.au = zext i8 %i.at to i32
  store i32 %i.au, ptr %.03762, align 4, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !55
  %i.ay = zext i8 %i.ax to i32
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = zext i8 %i.bf to i32
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !55
  %i.bk = zext i8 %i.bj to i32
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !55
  %i.bo = zext i8 %i.bn to i32
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !55
  %i.bs = zext i8 %i.br to i32
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %i.bw = zext i8 %i.bv to i32
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.by, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !557

bb.f:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %.lobit = lshr i8 %i.ca, 7
  %i.cb = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.cb          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !141 ; 3 uses
  %i.ce = add nsw i32 %spec.select, %i.cd         ; 3 uses
  %i.cf = load i32, ptr %3, align 8, !tbaa !139
  %i.cg = and i32 %i.cf, 1                        ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.ch, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cl = phi i32 [ %i.ck, %bb.g ], [ 2, %bb.f ]
  %i.cm = icmp sgt i32 %i.ce, %i.cl
  br i1 %i.cm, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ch, i32 noundef %i.cd, i32 noundef %i.ce)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.cc, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.ce, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cg, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cn = phi i32 [ %i.cd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.co = icmp eq i32 %.pre-phi75, 0
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.co, ptr %3, ptr %i.cr
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cc, align 4, !tbaa !141
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cp ; 2 uses
  %i.ct = icmp ult ptr %0, %1
  br i1 %i.ct, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.de, %bb.i ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cu = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cw = zext nneg i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cy = zext i8 %i.cu to i32
  %i.cz = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cy) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = icmp eq ptr %i.da, null
  br i1 %i.dc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.da, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.db, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dd = trunc i64 %.sink.i10.i to i32
  store i32 %i.dd, ptr %.056, align 4, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.df = icmp ult ptr %.0.i11.i, %1
  br i1 %i.df, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.de, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cq, align 8
  %.pre68 = load i32, ptr %i.cc, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dg = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dh = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cr, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.di = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.di, ptr %3, ptr %i.dh
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dj = ptrtoint ptr %.1 to i64
  %i.dk = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = icmp sgt i32 %i.dg, %i.dn
  br i1 %i.do, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dn, ptr %i.cc, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dp = icmp ult ptr %0, %1
  br i1 %i.dp, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ds = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.br, %bb.m ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.m ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bk, %bb.m ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bq, %bb.m ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i.i.i
  %.0714.i = phi ptr [ %.0.i11.i, %.thread.i.i.i ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = trunc i64 %.sink.i10.i to i32
  %i.ao = load i32, ptr %3, align 8, !tbaa !139
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 3 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !141 ; 4 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %3, %bb.f ]
  %i.au = phi i32 [ %i.at, %bb.g ], [ 2, %bb.f ]
  %i.av = icmp eq i32 %i.ar, %i.au
  %i.aw = add nsw i32 %i.ar, 1                    ; 3 uses
  br i1 %i.av, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ay = phi i32 [ %.pre36.i.i.i, %bb.h ], [ %i.ar, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.aq, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.aw, ptr %i.ac, align 4, !tbaa !141
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.az
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !29
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.bc = icmp eq i32 %i.aw, %i.bb
  call void @llvm.assume(i1 %i.bc)
  br i1 %.0.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i
  %i.bd = load ptr, ptr %i.ad, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, %bb.i
  %.sink109 = phi ptr [ %i.bd, %bb.i ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.be = icmp eq ptr %.pn.i.i.i, %.sink109
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %.thread.i.i.i, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %.thread.i.i.i ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.j, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.j
  %.1 = phi ptr [ %i.bh, %bb.j ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.bi = trunc i64 %i.t to i32
  %i.bj = add i32 %.03275, %i.bi
  %i.bk = sub i32 %.02874, %i.bj                  ; 3 uses
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bm = icmp slt i32 %i.bl, 17
  br i1 %i.bm, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.t, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !560

._crit_edge:                                      ; preds = %bb.m, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bq, %bb.m ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bk, %bb.m ]
  %i.bw = sext i32 %.028.lcssa to i64
  %i.bx = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bw ; 2 uses
  %i.by = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bx, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = select i1 %i.bz, ptr %i.by, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ca, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !139
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %4 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = add i64 %i.a, %i.w
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 8
  %i.ab = shl i64 %i.b, 2
  %i.ac = sub i64 %i.aa, %i.ab
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ac
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -8                         ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ae = shl i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ag = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !567
  %wide.load105 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !55, !alias.scope !567
  %i.ai = zext <4 x i8> %wide.load to <4 x i32>
  %i.aj = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.ak = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ai, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !568, !noalias !567
  store <4 x i32> %i.aj, ptr %i.ak, align 4, !tbaa !29, !alias.scope !568, !noalias !567
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.am = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.aq, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ap, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.an = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.ao = zext i8 %i.an to i32
  store i32 %i.ao, ptr %.03762.prol, align 4, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !565

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ap, %.lr.ph.prol ]
  %i.ar = sub i64 %.03563.ph110, %i.a
  %i.as = icmp ugt i64 %i.ar, -8
  br i1 %i.as, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.by, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bx, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.at = load i8, ptr %.03563, align 1, !tbaa !55
  %i.au = zext i8 %i.at to i32
  store i32 %i.au, ptr %.03762, align 4, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !55
  %i.ay = zext i8 %i.ax to i32
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !55
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = zext i8 %i.bf to i32
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !55
  %i.bk = zext i8 %i.bj to i32
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !55
  %i.bo = zext i8 %i.bn to i32
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !55
  %i.bs = zext i8 %i.br to i32
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !55
  %i.bw = zext i8 %i.bv to i32
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.by, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !566

bb.f:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %.lobit = lshr i8 %i.ca, 7
  %i.cb = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.cb          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !141 ; 3 uses
  %i.ce = add nsw i32 %spec.select, %i.cd         ; 3 uses
  %i.cf = load i32, ptr %3, align 8, !tbaa !139
  %i.cg = and i32 %i.cf, 1                        ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.ch, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cl = phi i32 [ %i.ck, %bb.g ], [ 2, %bb.f ]
  %i.cm = icmp sgt i32 %i.ce, %i.cl
  br i1 %i.cm, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ch, i32 noundef %i.cd, i32 noundef %i.ce)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.cc, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.ce, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cg, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cn = phi i32 [ %i.cd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.co = icmp eq i32 %.pre-phi75, 0
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.co, ptr %3, ptr %i.cr
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cc, align 4, !tbaa !141
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cp ; 2 uses
  %i.ct = icmp ult ptr %0, %1
  br i1 %i.ct, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.de, %bb.i ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cu = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cw = zext nneg i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cy = zext i8 %i.cu to i32
  %i.cz = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cy) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = icmp eq ptr %i.da, null
  br i1 %i.dc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.da, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.db, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dd = trunc i64 %.sink.i10.i to i32
  store i32 %i.dd, ptr %.056, align 4, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.df = icmp ult ptr %.0.i11.i, %1
  br i1 %i.df, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.de, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cq, align 8
  %.pre68 = load i32, ptr %i.cc, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dg = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dh = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cr, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.di = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.di, ptr %3, ptr %i.dh
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dj = ptrtoint ptr %.1 to i64
  %i.dk = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = icmp sgt i32 %i.dg, %i.dn
  br i1 %i.do, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dn, ptr %i.cc, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dp = icmp ult ptr %0, %1
  br i1 %i.dp, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ds = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.by, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.ad, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bn, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bg, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bm, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = load i32, ptr %3, align 8, !tbaa !139
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0                    ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.ap, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.av = add nsw i32 %i.aq, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ap, i32 noundef %i.aq, i32 noundef %i.av)
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.av, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.aq, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.aq, %.thread52.i.i.i ]
  %i.ax = phi ptr [ %3, %.thread.i.i.i ], [ %i.aw, %.thread41.i.i.i ], [ %i.as, %.thread52.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !141
  %i.az = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store i64 %.sink.i10.i, ptr %i.ba, align 8, !tbaa !83
  %i.bb = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bb, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bd, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.be = trunc i64 %i.t to i32
  %i.bf = add i32 %.03275, %i.be
  %i.bg = sub i32 %.02874, %i.bf                  ; 3 uses
  %i.bh = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bi = icmp slt i32 %i.bh, 17
  br i1 %i.bi, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl ; 3 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.032 = trunc i64 %i.bq to i32                  ; 2 uses
  %i.br = icmp sgt i32 %i.bg, %.032
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !569

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bm, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bg, %bb.k ]
  %i.bs = sext i32 %.028.lcssa to i64
  %i.bt = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bs ; 2 uses
  %i.bu = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bt, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = select i1 %i.bv, ptr %i.bu, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.bw, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %4 = sub i64 %i.a, %i.b
  %xtraiter = and i64 %4, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.aa, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.z = zext i8 %i.y to i64
  store i64 %i.z, ptr %.03761.prol, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !570

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ac = sub i64 %i.b, %i.a
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bj, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bi, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ae = load i8, ptr %.03562, align 1, !tbaa !55
  %i.af = zext i8 %i.ae to i64
  store i64 %i.af, ptr %.03761, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !55
  %i.aj = zext i8 %i.ai to i64
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !55
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i64
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = zext i8 %i.au to i64
  store i64 %i.av, ptr %i.as, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i64
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i64
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i64
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bj, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !571

bb.f:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bl, 7
  %i.bm = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bm          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141 ; 3 uses
  %i.bp = add nsw i32 %spec.select, %i.bo         ; 3 uses
  %i.bq = load i32, ptr %3, align 8, !tbaa !139
  %i.br = and i32 %i.bq, 1                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0                    ; 2 uses
  br i1 %i.bs, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bw = phi i32 [ %i.bv, %bb.g ], [ 1, %bb.f ]
  %i.bx = icmp sgt i32 %i.bp, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bs, i32 noundef %i.bo, i32 noundef %i.bp)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bn, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.br, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.by = phi i32 [ %i.bo, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.bz = icmp eq i32 %.pre-phi74, 0
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.bz, ptr %3, ptr %i.cc
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bn, align 4, !tbaa !141
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.ca ; 2 uses
  %i.ce = icmp ult ptr %0, %1
  br i1 %i.ce, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.co, %bb.i ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cf = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ch = zext nneg i8 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cj = zext i8 %i.cf to i32
  %i.ck = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cj) ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0      ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ci, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ch, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cp = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.co, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cb, align 8
  %.pre67 = load i32, ptr %i.bn, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cq = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cr = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cc, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cs = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cs, ptr %3, ptr %i.cr
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ct = ptrtoint ptr %.1 to i64
  %i.cu = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 3
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = icmp sgt i32 %i.cq, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cx, ptr %i.bn, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.cz = icmp ult ptr %0, %1
  br i1 %i.cz, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.de = zext nneg i8 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dg = zext i8 %i.dc to i32
  %i.dh = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dg) ; 2 uses
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bj, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bn, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bg, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bm, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = load i32, ptr %3, align 8, !tbaa !139
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0                    ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.ap, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.av = add nsw i32 %i.aq, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ap, i32 noundef %i.aq, i32 noundef %i.av)
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.av, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.aq, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.aq, %.thread52.i.i.i ]
  %i.ax = phi ptr [ %3, %.thread.i.i.i ], [ %i.aw, %.thread41.i.i.i ], [ %i.as, %.thread52.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !141
  %i.az = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store i64 %.sink.i10.i, ptr %i.ba, align 8, !tbaa !83
  %i.bb = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bb, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bd, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.be = trunc i64 %i.t to i32
  %i.bf = add i32 %.03275, %i.be
  %i.bg = sub i32 %.02874, %i.bf                  ; 3 uses
  %i.bh = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bi = icmp slt i32 %i.bh, 17
  br i1 %i.bi, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl ; 3 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.032 = trunc i64 %i.bq to i32                  ; 2 uses
  %i.br = icmp sgt i32 %i.bg, %.032
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bm, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bg, %bb.k ]
  %i.bs = sext i32 %.028.lcssa to i64
  %i.bt = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bs ; 2 uses
  %i.bu = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bt, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = select i1 %i.bv, ptr %i.bu, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.bw, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %4 = sub i64 %i.a, %i.b
  %xtraiter = and i64 %4, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.aa, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.z = zext i8 %i.y to i64
  store i64 %i.z, ptr %.03761.prol, align 8, !tbaa !83
  %i.aa = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !573

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %i.ac = sub i64 %i.b, %i.a
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bj, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bi, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ae = load i8, ptr %.03562, align 1, !tbaa !55
  %i.af = zext i8 %i.ae to i64
  store i64 %i.af, ptr %.03761, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !55
  %i.aj = zext i8 %i.ai to i64
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !83
  %i.ak = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !55
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i64
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = zext i8 %i.au to i64
  store i64 %i.av, ptr %i.as, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i64
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i64
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i64
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bj, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !574

bb.f:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bl, 7
  %i.bm = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bm          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141 ; 3 uses
  %i.bp = add nsw i32 %spec.select, %i.bo         ; 3 uses
  %i.bq = load i32, ptr %3, align 8, !tbaa !139
  %i.br = and i32 %i.bq, 1                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0                    ; 2 uses
  br i1 %i.bs, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !55
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bw = phi i32 [ %i.bv, %bb.g ], [ 1, %bb.f ]
  %i.bx = icmp sgt i32 %i.bp, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bs, i32 noundef %i.bo, i32 noundef %i.bp)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bn, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.br, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.by = phi i32 [ %i.bo, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.bz = icmp eq i32 %.pre-phi74, 0
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.bz, ptr %3, ptr %i.cc
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bn, align 4, !tbaa !141
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.ca ; 2 uses
  %i.ce = icmp ult ptr %0, %1
  br i1 %i.ce, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.co, %bb.i ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cf = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cg = icmp sgt i8 %i.cf, -1
  br i1 %i.cg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ch = zext nneg i8 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cj = zext i8 %i.cf to i32
  %i.ck = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cj) ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0      ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ci, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ch, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !83
  %i.co = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cp = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.co, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cb, align 8
  %.pre67 = load i32, ptr %i.bn, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cq = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cr = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cc, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cs = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cs, ptr %3, ptr %i.cr
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ct = ptrtoint ptr %.1 to i64
  %i.cu = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = lshr exact i64 %i.cv, 3
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = icmp sgt i32 %i.cq, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cx, ptr %i.bn, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.cz = icmp ult ptr %0, %1
  br i1 %i.cz, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dd = icmp sgt i8 %i.dc, -1
  br i1 %i.dd, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.de = zext nneg i8 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dg = zext i8 %i.dc to i32
  %i.dh = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dg) ; 2 uses
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bv, %bb.m ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.m ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bo, %bb.m ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bu, %bb.m ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i.i.i
  %.0714.i = phi ptr [ %.0.i11.i, %.thread.i.i.i ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.an, 1
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = xor i32 %i.ao, %i.aq
  %i.as = load i32, ptr %3, align 8, !tbaa !139
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0                    ; 3 uses
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !141 ; 4 uses
  br i1 %i.au, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %3, %bb.f ]
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ 2, %bb.f ]
  %i.az = icmp eq i32 %i.av, %i.ay
  %i.ba = add nsw i32 %i.av, 1                    ; 3 uses
  br i1 %i.az, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.au, i32 noundef %i.av, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.bc = phi i32 [ %.pre36.i.i.i, %bb.h ], [ %i.av, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.au, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !141
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.bd
  store i32 %i.ar, ptr %i.be, align 4, !tbaa !29
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.bg = icmp eq i32 %i.ba, %i.bf
  call void @llvm.assume(i1 %i.bg)
  br i1 %.0.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.bh = load ptr, ptr %i.ad, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.i
  %.sink109 = phi ptr [ %i.bh, %bb.i ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.bi = icmp eq ptr %.pn.i.i.i, %.sink109
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bj, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %.thread.i.i.i, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %.thread.i.i.i ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.j, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.j
  %.1 = phi ptr [ %i.bl, %bb.j ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.bm = trunc i64 %i.t to i32
  %i.bn = add i32 %.03275, %i.bm
  %i.bo = sub i32 %.02874, %i.bn                  ; 3 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bq = icmp slt i32 %i.bp, 17
  br i1 %i.bq, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.t, 32
  %i.bt = ashr exact i64 %sext, 32
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt ; 3 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.032 = trunc i64 %i.by to i32                  ; 2 uses
  %i.bz = icmp sgt i32 %i.bo, %.032
  br i1 %i.bz, label %bb.c, label %._crit_edge, !llvm.loop !575

._crit_edge:                                      ; preds = %bb.m, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bu, %bb.m ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bo, %bb.m ]
  %i.ca = sext i32 %.028.lcssa to i64
  %i.cb = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.ca ; 2 uses
  %i.cc = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.cb, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  %i.ce = select i1 %i.cd, ptr %i.cc, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ce, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !139
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %4 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %4, ptr %3, ptr %i.u    ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %5 = sext i32 %i.s to i64                       ; 2 uses
  %6 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %5 ; 5 uses
  %7 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %7, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = add i64 %i.a, %5
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %6, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %6, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %6, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !582
  %wide.load105 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !55, !alias.scope !582
  %i.af = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.ag = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.ah = lshr <4 x i32> %i.af, splat (i32 1)
  %i.ai = lshr <4 x i32> %i.ag, splat (i32 1)
  %i.aj = and <4 x i32> %i.af, splat (i32 1)
  %i.ak = and <4 x i32> %i.ag, splat (i32 1)
  %i.al = sub nsw <4 x i32> zeroinitializer, %i.aj
  %i.am = sub nsw <4 x i32> zeroinitializer, %i.ak
  %i.an = xor <4 x i32> %i.ah, %i.al
  %i.ao = xor <4 x i32> %i.ai, %i.am
  %i.ap = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.an, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !583, !noalias !582
  store <4 x i32> %i.ao, ptr %i.ap, align 4, !tbaa !29, !alias.scope !583, !noalias !582
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %.lr.ph.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.ar = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.as = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.at, 1
  %i.aw = sub nsw i32 0, %i.av
  %i.ax = xor i32 %i.au, %i.aw
  store i32 %i.ax, ptr %.03762.prol, align 4, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !580

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.az, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.az, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = sub i64 %.03563.ph110, %i.a
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.ch, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.cg, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bc = load i8, ptr %.03563, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = lshr i32 %i.bd, 1
  %i.bf = and i32 %i.bd, 1
  %i.bg = sub nsw i32 0, %i.bf
  %i.bh = xor i32 %i.be, %i.bg
  store i32 %i.bh, ptr %.03762, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = and i32 %i.bl, 1
  %i.bo = sub nsw i32 0, %i.bn
  %i.bp = xor i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !55
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = and i32 %i.bt, 1
  %i.bw = sub nsw i32 0, %i.bv
  %i.bx = xor i32 %i.bu, %i.bw
  store i32 %i.bx, ptr %i.bq, align 4, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = and i32 %i.cb, 1
  %i.ce = sub nsw i32 0, %i.cd
  %i.cf = xor i32 %i.cc, %i.ce
  store i32 %i.cf, ptr %i.by, align 4, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.ch, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !581

bb.f:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !55
  %.lobit = lshr i8 %i.cj, 7
  %i.ck = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.ck          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !141 ; 3 uses
  %i.cn = add nsw i32 %spec.select, %i.cm         ; 3 uses
  %i.co = load i32, ptr %3, align 8, !tbaa !139
  %i.cp = and i32 %i.co, 1                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0                    ; 2 uses
  br i1 %i.cq, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cu = phi i32 [ %i.ct, %bb.g ], [ 2, %bb.f ]
  %i.cv = icmp sgt i32 %i.cn, %i.cu
  br i1 %i.cv, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cq, i32 noundef %i.cm, i32 noundef %i.cn)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.cl, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cn, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cw = phi i32 [ %i.cm, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cx = icmp eq i32 %.pre-phi75, 0
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cx, ptr %3, ptr %i.da
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cl, align 4, !tbaa !141
  %i.db = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cy ; 2 uses
  %i.dc = icmp ult ptr %0, %1
  br i1 %i.dc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.dr, %bb.i ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.dd = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dh = zext i8 %i.dd to i32
  %i.di = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.df, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dm = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.dn = lshr i32 %i.dm, 1
  %i.do = and i32 %i.dm, 1
  %i.dp = sub nsw i32 0, %i.do
  %i.dq = xor i32 %i.dn, %i.dp
  store i32 %i.dq, ptr %.056, align 4, !tbaa !29
  %i.dr = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.ds = icmp ult ptr %.0.i11.i, %1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dr, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cz, align 8
  %.pre68 = load i32, ptr %i.cl, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dt = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.du = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.da, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.dv = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dv, ptr %3, ptr %i.du
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dw = ptrtoint ptr %.1 to i64
  %i.dx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = lshr exact i64 %i.dy, 2
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = icmp sgt i32 %i.dt, %i.ea
  br i1 %i.eb, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ea, ptr %i.cl, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.ec = icmp ult ptr %0, %1
  br i1 %i.ec, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bv, %bb.m ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.m ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bo, %bb.m ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bu, %bb.m ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.thread.i.i.i
  %.0714.i = phi ptr [ %.0.i11.i, %.thread.i.i.i ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.an, 1
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = xor i32 %i.ao, %i.aq
  %i.as = load i32, ptr %3, align 8, !tbaa !139
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0                    ; 3 uses
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !141 ; 4 uses
  br i1 %i.au, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %3, %bb.f ]
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ 2, %bb.f ]
  %i.az = icmp eq i32 %i.av, %i.ay
  %i.ba = add nsw i32 %i.av, 1                    ; 3 uses
  br i1 %i.az, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.au, i32 noundef %i.av, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.bc = phi i32 [ %.pre36.i.i.i, %bb.h ], [ %i.av, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.au, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !141
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.bd
  store i32 %i.ar, ptr %i.be, align 4, !tbaa !29
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.bg = icmp eq i32 %i.ba, %i.bf
  call void @llvm.assume(i1 %i.bg)
  br i1 %.0.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.bh = load ptr, ptr %i.ad, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.i
  %.sink109 = phi ptr [ %i.bh, %bb.i ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.bi = icmp eq ptr %.pn.i.i.i, %.sink109
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bj, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %.thread.i.i.i, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %.thread.i.i.i ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.j, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.j
  %.1 = phi ptr [ %i.bl, %bb.j ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.bm = trunc i64 %i.t to i32
  %i.bn = add i32 %.03275, %i.bm
  %i.bo = sub i32 %.02874, %i.bn                  ; 3 uses
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bq = icmp slt i32 %i.bp, 17
  br i1 %i.bq, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.t, 32
  %i.bt = ashr exact i64 %sext, 32
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt ; 3 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.032 = trunc i64 %i.by to i32                  ; 2 uses
  %i.bz = icmp sgt i32 %i.bo, %.032
  br i1 %i.bz, label %bb.c, label %._crit_edge, !llvm.loop !584

._crit_edge:                                      ; preds = %bb.m, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bu, %bb.m ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bo, %bb.m ]
  %i.ca = sext i32 %.028.lcssa to i64
  %i.cb = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.ca ; 2 uses
  %i.cc = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.cb, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  %i.ce = select i1 %i.cd, ptr %i.cc, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ce, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !139
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %4 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %4, ptr %3, ptr %i.u    ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %5 = sext i32 %i.s to i64                       ; 2 uses
  %6 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %5 ; 5 uses
  %7 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %7, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.v = add i64 %i.a, %5
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %6, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %6, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %6, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !591
  %wide.load105 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !55, !alias.scope !591
  %i.af = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.ag = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.ah = lshr <4 x i32> %i.af, splat (i32 1)
  %i.ai = lshr <4 x i32> %i.ag, splat (i32 1)
  %i.aj = and <4 x i32> %i.af, splat (i32 1)
  %i.ak = and <4 x i32> %i.ag, splat (i32 1)
  %i.al = sub nsw <4 x i32> zeroinitializer, %i.aj
  %i.am = sub nsw <4 x i32> zeroinitializer, %i.ak
  %i.an = xor <4 x i32> %i.ah, %i.al
  %i.ao = xor <4 x i32> %i.ai, %i.am
  %i.ap = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.an, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !592, !noalias !591
  store <4 x i32> %i.ao, ptr %i.ap, align 4, !tbaa !29, !alias.scope !592, !noalias !591
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %6, %vector.memcheck ], [ %6, %.lr.ph.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.ar = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.az, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ay, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.as = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = lshr i32 %i.at, 1
  %i.av = and i32 %i.at, 1
  %i.aw = sub nsw i32 0, %i.av
  %i.ax = xor i32 %i.au, %i.aw
  store i32 %i.ax, ptr %.03762.prol, align 4, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !589

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.az, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.az, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ay, %.lr.ph.prol ]
  %i.ba = sub i64 %.03563.ph110, %i.a
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.ch, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.cg, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bc = load i8, ptr %.03563, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = lshr i32 %i.bd, 1
  %i.bf = and i32 %i.bd, 1
  %i.bg = sub nsw i32 0, %i.bf
  %i.bh = xor i32 %i.be, %i.bg
  store i32 %i.bh, ptr %.03762, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = and i32 %i.bl, 1
  %i.bo = sub nsw i32 0, %i.bn
  %i.bp = xor i32 %i.bm, %i.bo
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !55
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 1
  %i.bv = and i32 %i.bt, 1
  %i.bw = sub nsw i32 0, %i.bv
  %i.bx = xor i32 %i.bu, %i.bw
  store i32 %i.bx, ptr %i.bq, align 4, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !55
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = and i32 %i.cb, 1
  %i.ce = sub nsw i32 0, %i.cd
  %i.cf = xor i32 %i.cc, %i.ce
  store i32 %i.cf, ptr %i.by, align 4, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.ch, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !590

bb.f:                                             ; preds = %bb.b
  %i.ci = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !55
  %.lobit = lshr i8 %i.cj, 7
  %i.ck = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.ck          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !141 ; 3 uses
  %i.cn = add nsw i32 %spec.select, %i.cm         ; 3 uses
  %i.co = load i32, ptr %3, align 8, !tbaa !139
  %i.cp = and i32 %i.co, 1                        ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0                    ; 2 uses
  br i1 %i.cq, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cu = phi i32 [ %i.ct, %bb.g ], [ 2, %bb.f ]
  %i.cv = icmp sgt i32 %i.cn, %i.cu
  br i1 %i.cv, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cq, i32 noundef %i.cm, i32 noundef %i.cn)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.cl, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cn, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cw = phi i32 [ %i.cm, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cx = icmp eq i32 %.pre-phi75, 0
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cx, ptr %3, ptr %i.da
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cl, align 4, !tbaa !141
  %i.db = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cy ; 2 uses
  %i.dc = icmp ult ptr %0, %1
  br i1 %i.dc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.dr, %bb.i ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.dd = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dh = zext i8 %i.dd to i32
  %i.di = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.df, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dm = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.dn = lshr i32 %i.dm, 1
  %i.do = and i32 %i.dm, 1
  %i.dp = sub nsw i32 0, %i.do
  %i.dq = xor i32 %i.dn, %i.dp
  store i32 %i.dq, ptr %.056, align 4, !tbaa !29
  %i.dr = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.ds = icmp ult ptr %.0.i11.i, %1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dr, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cz, align 8
  %.pre68 = load i32, ptr %i.cl, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dt = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.du = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.da, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.dv = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dv, ptr %3, ptr %i.du
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dw = ptrtoint ptr %.1 to i64
  %i.dx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = lshr exact i64 %i.dy, 2
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = icmp sgt i32 %i.dt, %i.ea
  br i1 %i.eb, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ea, ptr %i.cl, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.ec = icmp ult ptr %0, %1
  br i1 %i.ec, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.br, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bk, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bq, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.an = lshr i64 %.sink.i10.i, 1
  %i.ao = and i64 %.sink.i10.i, 1
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = xor i64 %i.an, %i.ap
  %i.ar = load i32, ptr %3, align 8, !tbaa !139
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.at, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  %i.ay = icmp eq i32 %i.au, %i.ax
  br i1 %i.ay, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.az = add nsw i32 %i.au, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.at, i32 noundef %i.au, i32 noundef %i.az)
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.az, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.au, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.au, %.thread52.i.i.i ]
  %i.bb = phi ptr [ %3, %.thread.i.i.i ], [ %i.ba, %.thread41.i.i.i ], [ %i.aw, %.thread52.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !141
  %i.bd = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store i64 %i.aq, ptr %i.be, align 8, !tbaa !83
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bh, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.bi = trunc i64 %i.t to i32
  %i.bj = add i32 %.03275, %i.bi
  %i.bk = sub i32 %.02874, %i.bj                  ; 3 uses
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bm = icmp slt i32 %i.bl, 17
  br i1 %i.bm, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !593

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bq, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bk, %bb.k ]
  %i.bw = sext i32 %.028.lcssa to i64
  %i.bx = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bw ; 2 uses
  %i.by = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bx, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = select i1 %i.bz, ptr %i.by, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ca, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %4 = sub i64 %i.a, %i.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.af, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ae, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = xor i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %.03761.prol, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !594

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %i.ag = sub i64 %i.b, %i.a
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bn, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.bm, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ai = load i8, ptr %.03562, align 1, !tbaa !55
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = and i64 %i.aj, 1
  %i.am = sub nsw i64 0, %i.al
  %i.an = xor i64 %i.ak, %i.am
  store i64 %i.an, ptr %.03761, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = lshr i64 %i.ar, 1
  %i.at = and i64 %i.ar, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = xor i64 %i.as, %i.au
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = and i64 %i.az, 1
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = and i64 %i.bh, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.bn, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !595

bb.f:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bp, 7
  %i.bq = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bq          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !141 ; 3 uses
  %i.bt = add nsw i32 %spec.select, %i.bs         ; 3 uses
  %i.bu = load i32, ptr %3, align 8, !tbaa !139
  %i.bv = and i32 %i.bu, 1                        ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0                    ; 2 uses
  br i1 %i.bw, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.ca = phi i32 [ %i.bz, %bb.g ], [ 1, %bb.f ]
  %i.cb = icmp sgt i32 %i.bt, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bw, i32 noundef %i.bs, i32 noundef %i.bt)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.br, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bt, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bv, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.cc = phi i32 [ %i.bs, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.cd = icmp eq i32 %.pre-phi74, 0
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cd, ptr %3, ptr %i.cg
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.br, align 4, !tbaa !141
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.ce ; 2 uses
  %i.ci = icmp ult ptr %0, %1
  br i1 %i.ci, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cw, %bb.i ], [ %i.ch, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cj = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cl = zext nneg i8 %i.cj to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cn = zext i8 %i.cj to i32
  %i.co = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cn) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.cs = lshr i64 %.sink.i10.i, 1
  %i.ct = and i64 %.sink.i10.i, 1
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = xor i64 %i.cs, %i.cu
  store i64 %i.cv, ptr %.055, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cx = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cw, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cf, align 8
  %.pre67 = load i32, ptr %i.br, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cy = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cz = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ch, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.da = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.da, ptr %3, ptr %i.cz
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.db = ptrtoint ptr %.1 to i64
  %i.dc = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = icmp sgt i32 %i.cy, %i.df
  br i1 %i.dg, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.df, ptr %i.br, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dk = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dm = zext nneg i8 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

end_hunk_8
begin_hunk_9_@_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.br, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bk, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bq, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.an = lshr i64 %.sink.i10.i, 1
  %i.ao = and i64 %.sink.i10.i, 1
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = xor i64 %i.an, %i.ap
  %i.ar = load i32, ptr %3, align 8, !tbaa !139
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !141 ; 8 uses
  br i1 %i.at, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !55
  %i.ay = icmp eq i32 %i.au, %i.ax
  br i1 %i.ay, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.az = add nsw i32 %i.au, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.at, i32 noundef %i.au, i32 noundef %i.az)
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !141
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.az, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.au, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.au, %.thread52.i.i.i ]
  %i.bb = phi ptr [ %3, %.thread.i.i.i ], [ %i.ba, %.thread41.i.i.i ], [ %i.aw, %.thread52.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !141
  %i.bd = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store i64 %i.aq, ptr %i.be, align 8, !tbaa !83
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bh, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.bi = trunc i64 %i.t to i32
  %i.bj = add i32 %.03275, %i.bi
  %i.bk = sub i32 %.02874, %i.bj                  ; 3 uses
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !98
  %i.bm = icmp slt i32 %i.bl, 17
  br i1 %i.bm, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !596

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bq, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bk, %bb.k ]
  %i.bw = sext i32 %.028.lcssa to i64
  %i.bx = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bw ; 2 uses
  %i.by = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bx, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  %i.ca = select i1 %i.bz, ptr %i.by, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, %._crit_edge, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.4 = phi ptr [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.ca, %._crit_edge ], [ %.1, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread ], [ null, %bb.c ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !139
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %4 = sub i64 %i.a, %i.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.af, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ae, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.z = zext i8 %i.y to i64                      ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = and i64 %i.z, 1
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = xor i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %.03761.prol, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !597

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.ae, %.lr.ph.prol ]
  %i.ag = sub i64 %i.b, %i.a
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bn, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.bm, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ai = load i8, ptr %.03562, align 1, !tbaa !55
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = and i64 %i.aj, 1
  %i.am = sub nsw i64 0, %i.al
  %i.an = xor i64 %i.ak, %i.am
  store i64 %i.an, ptr %.03761, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = lshr i64 %i.ar, 1
  %i.at = and i64 %i.ar, 1
  %i.au = sub nsw i64 0, %i.at
  %i.av = xor i64 %i.as, %i.au
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = and i64 %i.az, 1
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = and i64 %i.bh, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.bn, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !598

bb.f:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bp, 7
  %i.bq = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bq          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !141 ; 3 uses
  %i.bt = add nsw i32 %spec.select, %i.bs         ; 3 uses
  %i.bu = load i32, ptr %3, align 8, !tbaa !139
  %i.bv = and i32 %i.bu, 1                        ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0                    ; 2 uses
  br i1 %i.bw, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.ca = phi i32 [ %i.bz, %bb.g ], [ 1, %bb.f ]
  %i.cb = icmp sgt i32 %i.bt, %i.ca
  br i1 %i.cb, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bw, i32 noundef %i.bs, i32 noundef %i.bt)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.br, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bt, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bv, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.cc = phi i32 [ %i.bs, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.cd = icmp eq i32 %.pre-phi74, 0
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cd, ptr %3, ptr %i.cg
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.br, align 4, !tbaa !141
  %i.ch = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.ce ; 2 uses
  %i.ci = icmp ult ptr %0, %1
  br i1 %i.ci, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cw, %bb.i ], [ %i.ch, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cj = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cl = zext nneg i8 %i.cj to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cn = zext i8 %i.cj to i32
  %i.co = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cn) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.cs = lshr i64 %.sink.i10.i, 1
  %i.ct = and i64 %.sink.i10.i, 1
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = xor i64 %i.cs, %i.cu
  store i64 %i.cv, ptr %.055, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cx = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cw, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cf, align 8
  %.pre67 = load i32, ptr %i.br, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cy = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cz = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ch, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.da = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.da, ptr %3, ptr %i.cz
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.db = ptrtoint ptr %.1 to i64
  %i.dc = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = icmp sgt i32 %i.cy, %i.df
  br i1 %i.dg, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.df, ptr %i.br, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dk = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dm = zext nneg i8 %i.dk to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

end_hunk_9
