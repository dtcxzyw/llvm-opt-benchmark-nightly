Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/generated_message_tctable_lite?download=true
inline.NumInlined: 5347
inline.NumDeleted: 912
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55: ; preds = %bb.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !141
  %.not5279 = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %.not5279, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %4 = sext i32 %i.am to i64                      ; 2 uses
  %5 = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %4 ; 6 uses
  %6 = sub i64 %i.a, %i.b                         ; 7 uses
  %min.iters.check = icmp ult i64 %6, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.ap = add i64 %.0.v.i.i.i57129, %4
  %i.aq = sub i64 %i.ap, %i.b
  %i.ar = add i64 %i.aq, 7
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %6, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %6, 24
  %n.vec = and i64 %6, -32                        ; 5 uses
  %i.at = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.au = getelementptr i8, ptr %5, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %5, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !55
  %wide.load132 = load <16 x i8>, ptr %i.av, align 1, !tbaa !55
  %i.aw = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ax = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.ay = zext <16 x i1> %i.aw to <16 x i8>
  %i.az = zext <16 x i1> %i.ax to <16 x i8>
  %i.ba = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.ay, ptr %next.gep131, align 1, !tbaa !80
  store <16 x i8> %i.az, ptr %i.ba, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %6, -8                      ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 %n.vec134 ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136.a = getelementptr i8, ptr %0, i64 %index135
  %next.gep137 = getelementptr i8, ptr %5, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep136.a, align 1, !tbaa !55
  %i.be = icmp ne <8 x i8> %wide.load138, zeroinitializer
  %i.bf = zext <8 x i1> %i.be to <8 x i8>
  store <8 x i8> %i.bf, ptr %next.gep137, align 1, !tbaa !80
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %6, %n.vec134
  br i1 %cmp.n140, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55 ], [ %0, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %5, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55 ], [ %5, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph150 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bh = sub i64 %i.a, %.04881.ph150
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bm, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bl, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %.04881.prol, align 1, !tbaa !55
  %i.bj = icmp ne i8 %i.bi, 0
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %.05080.prol, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !544

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %i.bn = sub i64 %.04881.ph150, %i.a
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.ci, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ch, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bp = load i8, ptr %.04881, align 1, !tbaa !55
  %i.bq = icmp ne i8 %i.bp, 0
  %i.br = zext i1 %i.bq to i8
  store i8 %i.br, ptr %.05080, align 1, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !55
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = zext i1 %i.bv to i8
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !55
  %i.ca = icmp ne i8 %i.bz, 0
  %i.cb = zext i1 %i.ca to i8
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !55
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = zext i1 %i.cf to i8
  store i8 %i.cg, ptr %i.cc, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.ci, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !545

bb.j:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !55
  %.lobit = lshr i8 %i.ck, 7
  %i.cl = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.cl          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !141 ; 3 uses
  %i.co = add nsw i32 %spec.select, %i.cn         ; 3 uses
  %i.cp = load i32, ptr %3, align 8, !tbaa !139
  %i.cq = and i32 %i.cp, 1                        ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0                    ; 2 uses
  br i1 %i.cr, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !55
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cv = phi i32 [ %i.cu, %bb.k ], [ 8, %bb.j ]
  %i.cw = icmp sgt i32 %i.co, %i.cv
  br i1 %i.cw, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, !prof !23

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cr, i32 noundef %i.cn, i32 noundef %i.co)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre83 = load i32, ptr %i.cm, align 4, !tbaa !141 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.co, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cx = phi i32 [ %i.cn, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.cy = icmp eq i32 %.pre-phi99, 0
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.cy, ptr %3, ptr %i.db
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cm, align 4, !tbaa !141
  %i.dc = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.cz ; 2 uses
  %i.dd = icmp ult ptr %0, %1
  br i1 %i.dd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, %bb.m
  %.073 = phi ptr [ %i.dp, %bb.m ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %i.de = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dg = zext nneg i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.di = zext i8 %i.de to i32
  %i.dj = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.di) ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  %i.dm = icmp eq ptr %i.dk, null
  br i1 %i.dm, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dn = icmp ne i64 %.sink.i10.i, 0
  %i.do = zext i1 %i.dn to i8
  store i8 %i.do, ptr %.073, align 1, !tbaa !80
  %i.dp = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dq = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dp, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !139
  %.pre85 = load ptr, ptr %i.da, align 8
  %.pre86 = load i32, ptr %i.cm, align 4, !tbaa !141
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.dr = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.ds = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 2 uses
  %i.dt = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.dt, ptr %3, ptr %i.ds
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.du = ptrtoint ptr %.1 to i64
  %i.dv = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = icmp sgt i32 %i.dr, %i.dx
  br i1 %i.dy, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dx, ptr %i.cm, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.dz = icmp ult ptr %0, %1
  br i1 %i.dz, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ec = load i8, ptr %.0714.i66, align 1, !tbaa !55 ; 3 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.ee = zext nneg i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.eg = zext i8 %i.ec to i32
  %i.eh = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.eg) ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.ef, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.ee, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ej, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.el = icmp ne i64 %.sink.i10.i69, 0
  %i.em = load i32, ptr %3, align 8, !tbaa !139
  %i.en = and i32 %i.em, 1
  %i.eo = icmp eq i32 %i.en, 0                    ; 2 uses
  %i.ep = load i32, ptr %i.ea, align 4, !tbaa !141 ; 8 uses
  br i1 %i.eo, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.p
  %i.eq = icmp eq i32 %i.ep, 8
  br i1 %i.eq, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.p
  %i.er = load ptr, ptr %i.eb, align 8, !tbaa !55 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !55
  %i.et = icmp eq i32 %i.ep, %i.es
  br i1 %i.et, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.ep, 1
  br label %bb.q

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.eu = add nsw i32 %i.ep, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.eo, i32 noundef %i.ep, i32 noundef %i.eu)
  %i.ev = load ptr, ptr %i.eb, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ea, align 4, !tbaa !141
  br label %bb.q

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.ep, 1
  br label %bb.q

bb.q:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink145.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.eu, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.ep, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.ep, %.thread52.i.i.i ]
  %i.ew = phi ptr [ %3, %.thread.i.i.i ], [ %i.ev, %.thread41.i.i.i ], [ %i.er, %.thread52.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = zext i1 %i.el to i8
  store i32 %.sink145.sink, ptr %i.ea, align 4, !tbaa !141
  %i.ez = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !80
  %i.fb = icmp ult ptr %.0.i11.i68, %1
  br i1 %i.fb, label %.lr.ph.i65, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit: ; preds = %bb.q, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.o, %bb.n, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %.0 = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %.2.i, %bb.n ], [ %i.ci, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.o ], [ %i.bc, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ], [ %.0.i11.i68, %bb.q ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #13

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

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55: ; preds = %bb.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !141
  %.not5279 = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %.not5279, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %4 = sext i32 %i.am to i64                      ; 2 uses
  %5 = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %4 ; 6 uses
  %6 = sub i64 %i.a, %i.b                         ; 7 uses
  %min.iters.check = icmp ult i64 %6, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.ap = add i64 %.0.v.i.i.i57129, %4
  %i.aq = sub i64 %i.ap, %i.b
  %i.ar = add i64 %i.aq, 7
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %6, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %6, 24
  %n.vec = and i64 %6, -32                        ; 5 uses
  %i.at = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.au = getelementptr i8, ptr %5, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %5, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !55
  %wide.load132 = load <16 x i8>, ptr %i.av, align 1, !tbaa !55
  %i.aw = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ax = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.ay = zext <16 x i1> %i.aw to <16 x i8>
  %i.az = zext <16 x i1> %i.ax to <16 x i8>
  %i.ba = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.ay, ptr %next.gep131, align 1, !tbaa !80
  store <16 x i8> %i.az, ptr %i.ba, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %6, -8                      ; 4 uses
  %i.bc = getelementptr i8, ptr %0, i64 %n.vec134 ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 %n.vec134
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 3 uses
  %next.gep136.a = getelementptr i8, ptr %0, i64 %index135
  %next.gep137 = getelementptr i8, ptr %5, i64 %index135
  %wide.load138 = load <8 x i8>, ptr %next.gep136.a, align 1, !tbaa !55
  %i.be = icmp ne <8 x i8> %wide.load138, zeroinitializer
  %i.bf = zext <8 x i1> %i.be to <8 x i8>
  store <8 x i8> %i.bf, ptr %next.gep137, align 1, !tbaa !80
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !548

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %6, %n.vec134
  br i1 %cmp.n140, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55 ], [ %0, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %5, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit55 ], [ %5, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph150 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bh = sub i64 %i.a, %.04881.ph150
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bm, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bl, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %.04881.prol, align 1, !tbaa !55
  %i.bj = icmp ne i8 %i.bi, 0
  %i.bk = zext i1 %i.bj to i8
  store i8 %i.bk, ptr %.05080.prol, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !549

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bl, %.lr.ph.prol ]
  %i.bn = sub i64 %.04881.ph150, %i.a
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.ci, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ch, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bp = load i8, ptr %.04881, align 1, !tbaa !55
  %i.bq = icmp ne i8 %i.bp, 0
  %i.br = zext i1 %i.bq to i8
  store i8 %i.br, ptr %.05080, align 1, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !55
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = zext i1 %i.bv to i8
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !55
  %i.ca = icmp ne i8 %i.bz, 0
  %i.cb = zext i1 %i.ca to i8
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !55
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = zext i1 %i.cf to i8
  store i8 %i.cg, ptr %i.cc, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.ci, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !550

bb.j:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !55
  %.lobit = lshr i8 %i.ck, 7
  %i.cl = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.cl          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !141 ; 3 uses
  %i.co = add nsw i32 %spec.select, %i.cn         ; 3 uses
  %i.cp = load i32, ptr %3, align 8, !tbaa !139
  %i.cq = and i32 %i.cp, 1                        ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0                    ; 2 uses
  br i1 %i.cr, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !55
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cv = phi i32 [ %i.cu, %bb.k ], [ 8, %bb.j ]
  %i.cw = icmp sgt i32 %i.co, %i.cv
  br i1 %i.cw, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, !prof !23

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cr, i32 noundef %i.cn, i32 noundef %i.co)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre83 = load i32, ptr %i.cm, align 4, !tbaa !141 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.co, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cx = phi i32 [ %i.cn, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.cy = icmp eq i32 %.pre-phi99, 0
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.cy, ptr %3, ptr %i.db
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cm, align 4, !tbaa !141
  %i.dc = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.cz ; 2 uses
  %i.dd = icmp ult ptr %0, %1
  br i1 %i.dd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60, %bb.m
  %.073 = phi ptr [ %i.dp, %bb.m ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 3 uses
  %i.de = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dg = zext nneg i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.di = zext i8 %i.de to i32
  %i.dj = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.di) ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { ptr, i64 } %i.dj, 1
  %i.dm = icmp eq ptr %i.dk, null
  br i1 %i.dm, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dn = icmp ne i64 %.sink.i10.i, 0
  %i.do = zext i1 %i.dn to i8
  store i8 %i.do, ptr %.073, align 1, !tbaa !80
  %i.dp = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dq = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dp, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !139
  %.pre85 = load ptr, ptr %i.da, align 8
  %.pre86 = load i32, ptr %i.cm, align 4, !tbaa !141
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.dr = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %i.ds = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.db, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dc, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit60 ] ; 2 uses
  %i.dt = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.dt, ptr %3, ptr %i.ds
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.du = ptrtoint ptr %.1 to i64
  %i.dv = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = icmp sgt i32 %i.dr, %i.dx
  br i1 %i.dy, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dx, ptr %i.cm, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.dz = icmp ult ptr %0, %1
  br i1 %i.dz, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ec = load i8, ptr %.0714.i66, align 1, !tbaa !55 ; 3 uses
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.ee = zext nneg i8 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.eg = zext i8 %i.ec to i32
  %i.eh = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.eg) ; 2 uses
  %i.ei = extractvalue { ptr, i64 } %i.eh, 0      ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.eh, 1
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.ef, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.ee, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.ej, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.el = icmp ne i64 %.sink.i10.i69, 0
  %i.em = load i32, ptr %3, align 8, !tbaa !139
  %i.en = and i32 %i.em, 1
  %i.eo = icmp eq i32 %i.en, 0                    ; 2 uses
  %i.ep = load i32, ptr %i.ea, align 4, !tbaa !141 ; 8 uses
  br i1 %i.eo, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.p
  %i.eq = icmp eq i32 %i.ep, 8
  br i1 %i.eq, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.p
  %i.er = load ptr, ptr %i.eb, align 8, !tbaa !55 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !55
  %i.et = icmp eq i32 %i.ep, %i.es
  br i1 %i.et, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.ep, 1
  br label %bb.q

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.eu = add nsw i32 %i.ep, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.eo, i32 noundef %i.ep, i32 noundef %i.eu)
  %i.ev = load ptr, ptr %i.eb, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ea, align 4, !tbaa !141
  br label %bb.q

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.ep, 1
  br label %bb.q

bb.q:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink145.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.eu, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.ep, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.ep, %.thread52.i.i.i ]
  %i.ew = phi ptr [ %3, %.thread.i.i.i ], [ %i.ev, %.thread41.i.i.i ], [ %i.er, %.thread52.i.i.i ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = zext i1 %i.el to i8
  store i32 %.sink145.sink, ptr %i.ea, align 4, !tbaa !141
  %i.ez = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !80
  %i.fb = icmp ult ptr %.0.i11.i68, %1
  br i1 %i.fb, label %.lr.ph.i65, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit: ; preds = %bb.q, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.o, %bb.n, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %.0 = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %.2.i, %bb.n ], [ %i.ci, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.o ], [ %i.bc, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ], [ %.0.i11.i68, %bb.q ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %.not3961, ptr %3, ptr %i.u ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %4 = sext i32 %i.s to i64                       ; 2 uses
  %5 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %4 ; 5 uses
  %6 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %6, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = add i64 %i.a, %4
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %5, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %5, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %5, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !558
  %wide.load105 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !55, !alias.scope !558
  %i.af = zext <4 x i8> %wide.load to <4 x i32>
  %i.ag = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.ah = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.af, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !559, !noalias !558
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !29, !alias.scope !559, !noalias !558
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.ac, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.aj = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.an, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.am, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ak = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %.03762.prol, align 4, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !556

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.an, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.an, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.am, %.lr.ph.prol ]
  %i.ao = sub i64 %.03563.ph110, %i.a
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.bv, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bu, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.aq = load i8, ptr %.03563, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  store i32 %i.ar, ptr %.03762, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 4, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !55
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !55
  %i.bt = zext i8 %i.bs to i32
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bv, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !557

bb.f:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bx, 7
  %i.by = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.by          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !141 ; 3 uses
  %i.cb = add nsw i32 %spec.select, %i.ca         ; 3 uses
  %i.cc = load i32, ptr %3, align 8, !tbaa !139
  %i.cd = and i32 %i.cc, 1                        ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0                    ; 2 uses
  br i1 %i.ce, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.ci = phi i32 [ %i.ch, %bb.g ], [ 2, %bb.f ]
  %i.cj = icmp sgt i32 %i.cb, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ce, i32 noundef %i.ca, i32 noundef %i.cb)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.bz, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cb, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.ck = phi i32 [ %i.ca, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cl = icmp eq i32 %.pre-phi75, 0
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cl, ptr %3, ptr %i.co
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.bz, align 4, !tbaa !141
  %i.cp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cm ; 2 uses
  %i.cq = icmp ult ptr %0, %1
  br i1 %i.cq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.db, %bb.i ], [ %i.cp, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cr = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ct = zext nneg i8 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cv = zext i8 %i.cr to i32
  %i.cw = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cv) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  %i.cz = icmp eq ptr %i.cx, null
  br i1 %i.cz, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cu, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ct, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.da = trunc i64 %.sink.i10.i to i32
  store i32 %i.da, ptr %.056, align 4, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dc = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.db, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cn, align 8
  %.pre68 = load i32, ptr %i.bz, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dd = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.de = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.co, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cp, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.df = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.df, ptr %3, ptr %i.de
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dg = ptrtoint ptr %.1 to i64
  %i.dh = ptrtoint ptr %.0.i.i.i.i to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = icmp sgt i32 %i.dd, %i.dk
  br i1 %i.dl, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dk, ptr %i.bz, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dm = icmp ult ptr %0, %1
  br i1 %i.dm, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dq = icmp sgt i8 %i.dp, -1
  br i1 %i.dq, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dr = zext nneg i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dt = zext i8 %i.dp to i32
  %i.du = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dt) ; 2 uses
  %i.dv = extractvalue { ptr, i64 } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.du, 1
  %i.dx = icmp eq ptr %i.dv, null
  br i1 %i.dx, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.ds, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dv, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dr, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dy = trunc i64 %.sink.i10.i51 to i32
  %i.dz = load i32, ptr %3, align 8, !tbaa !139
  %i.ea = and i32 %i.dz, 1
  %i.eb = icmp eq i32 %i.ea, 0                    ; 3 uses
  %i.ec = load i32, ptr %i.dn, align 4, !tbaa !141 ; 4 uses
  br i1 %i.eb, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !55 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.v.i.i.i.i.i = phi ptr [ %i.ed, %bb.m ], [ %3, %bb.l ]
  %i.ef = phi i32 [ %i.ee, %bb.m ], [ 2, %bb.l ]
  %i.eg = icmp eq i32 %i.ec, %i.ef
  %i.eh = add nsw i32 %i.ec, 1                    ; 3 uses
  br i1 %i.eg, label %bb.n, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.n:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.eb, i32 noundef %i.ec, i32 noundef %i.eh)
  %i.ei = load ptr, ptr %i.do, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.dn, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.n, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ej = phi i32 [ %.pre36.i.i.i, %bb.n ], [ %i.ec, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ei, %bb.n ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i52 = phi i1 [ false, %bb.n ], [ %i.eb, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.eh, ptr %i.dn, align 4, !tbaa !141
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.ek
  store i32 %i.dy, ptr %i.el, align 4, !tbaa !29
  %i.em = load i32, ptr %i.dn, align 4, !tbaa !141
  %i.en = icmp eq i32 %i.eh, %i.em
  tail call void @llvm.assume(i1 %i.en)
  br i1 %.0.i.i.i52, label %.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i
  %i.eo = load ptr, ptr %i.do, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, %bb.o
  %.sink107 = phi ptr [ %i.eo, %bb.o ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.ep = icmp eq ptr %.pn.i.i.i, %.sink107
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.eq, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bv, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %i.aa, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %.not3961, ptr %3, ptr %i.u ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %4 = sext i32 %i.s to i64                       ; 2 uses
  %5 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %4 ; 5 uses
  %6 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %6, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = add i64 %i.a, %4
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %5, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %5, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %5, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55, !alias.scope !567
  %wide.load105 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !55, !alias.scope !567
  %i.af = zext <4 x i8> %wide.load to <4 x i32>
  %i.ag = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.ah = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.af, ptr %next.gep104, align 4, !tbaa !29, !alias.scope !568, !noalias !567
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !29, !alias.scope !568, !noalias !567
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.ac, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.aj = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.an, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.am, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ak = load i8, ptr %.03563.prol, align 1, !tbaa !55
  %i.al = zext i8 %i.ak to i32
  store i32 %i.al, ptr %.03762.prol, align 4, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !565

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.an, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.an, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.am, %.lr.ph.prol ]
  %i.ao = sub i64 %.03563.ph110, %i.a
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.bv, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bu, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.aq = load i8, ptr %.03563, align 1, !tbaa !55
  %i.ar = zext i8 %i.aq to i32
  store i32 %i.ar, ptr %.03762, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !55
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.as, align 4, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !55
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !55
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !55
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !55
  %i.bt = zext i8 %i.bs to i32
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bv, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !566

bb.f:                                             ; preds = %bb.b
  %i.bw = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bx, 7
  %i.by = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.by          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !141 ; 3 uses
  %i.cb = add nsw i32 %spec.select, %i.ca         ; 3 uses
  %i.cc = load i32, ptr %3, align 8, !tbaa !139
  %i.cd = and i32 %i.cc, 1                        ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0                    ; 2 uses
  br i1 %i.ce, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.ci = phi i32 [ %i.ch, %bb.g ], [ 2, %bb.f ]
  %i.cj = icmp sgt i32 %i.cb, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ce, i32 noundef %i.ca, i32 noundef %i.cb)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre65 = load i32, ptr %i.bz, align 4, !tbaa !141 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cb, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.ck = phi i32 [ %i.ca, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cl = icmp eq i32 %.pre-phi75, 0
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cl, ptr %3, ptr %i.co
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.bz, align 4, !tbaa !141
  %i.cp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cm ; 2 uses
  %i.cq = icmp ult ptr %0, %1
  br i1 %i.cq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.056 = phi ptr [ %i.db, %bb.i ], [ %i.cp, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cr = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ct = zext nneg i8 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cv = zext i8 %i.cr to i32
  %i.cw = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cv) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  %i.cz = icmp eq ptr %i.cx, null
  br i1 %i.cz, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cu, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ct, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.da = trunc i64 %.sink.i10.i to i32
  store i32 %i.da, ptr %.056, align 4, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dc = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.db, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !139
  %.pre67 = load ptr, ptr %i.cn, align 8
  %.pre68 = load i32, ptr %i.bz, align 4, !tbaa !141
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.dd = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.de = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.co, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cp, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.df = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.df, ptr %3, ptr %i.de
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dg = ptrtoint ptr %.1 to i64
  %i.dh = ptrtoint ptr %.0.i.i.i.i to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = icmp sgt i32 %i.dd, %i.dk
  br i1 %i.dl, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dk, ptr %i.bz, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dm = icmp ult ptr %0, %1
  br i1 %i.dm, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dq = icmp sgt i8 %i.dp, -1
  br i1 %i.dq, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dr = zext nneg i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dt = zext i8 %i.dp to i32
  %i.du = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dt) ; 2 uses
  %i.dv = extractvalue { ptr, i64 } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.du, 1
  %i.dx = icmp eq ptr %i.dv, null
  br i1 %i.dx, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.ds, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dv, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dr, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dy = trunc i64 %.sink.i10.i51 to i32
  %i.dz = load i32, ptr %3, align 8, !tbaa !139
  %i.ea = and i32 %i.dz, 1
  %i.eb = icmp eq i32 %i.ea, 0                    ; 3 uses
  %i.ec = load i32, ptr %i.dn, align 4, !tbaa !141 ; 4 uses
  br i1 %i.eb, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !55 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.v.i.i.i.i.i = phi ptr [ %i.ed, %bb.m ], [ %3, %bb.l ]
  %i.ef = phi i32 [ %i.ee, %bb.m ], [ 2, %bb.l ]
  %i.eg = icmp eq i32 %i.ec, %i.ef
  %i.eh = add nsw i32 %i.ec, 1                    ; 3 uses
  br i1 %i.eg, label %bb.n, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.n:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.eb, i32 noundef %i.ec, i32 noundef %i.eh)
  %i.ei = load ptr, ptr %i.do, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.dn, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.n, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ej = phi i32 [ %.pre36.i.i.i, %bb.n ], [ %i.ec, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ei, %bb.n ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i52 = phi i1 [ false, %bb.n ], [ %i.eb, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.eh, ptr %i.dn, align 4, !tbaa !141
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.ek
  store i32 %i.dy, ptr %i.el, align 4, !tbaa !29
  %i.em = load i32, ptr %i.dn, align 4, !tbaa !141
  %i.en = icmp eq i32 %i.eh, %i.em
  tail call void @llvm.assume(i1 %i.en)
  br i1 %.0.i.i.i52, label %.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i
  %i.eo = load ptr, ptr %i.do, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, %bb.o
  %.sink107 = phi ptr [ %i.eo, %bb.o ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.ep = icmp eq ptr %.pn.i.i.i, %.sink107
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.eq, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bv, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %i.aa, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
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
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %4 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %i.s = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %6
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.t ; 2 uses
  %i.v = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.z, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.y, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.x = zext i8 %i.w to i64
  store i64 %i.x, ptr %.03761.prol, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !570

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.aa = sub i64 %i.b, %i.a
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bh, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bg, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ac = load i8, ptr %.03562, align 1, !tbaa !55
  %i.ad = zext i8 %i.ac to i64
  store i64 %i.ad, ptr %.03761, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !55
  %i.ah = zext i8 %i.ag to i64
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !55
  %i.al = zext i8 %i.ak to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i64
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !55
  %i.at = zext i8 %i.as to i64
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %i.ax = zext i8 %i.aw to i64
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !55
  %i.bb = zext i8 %i.ba to i64
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !55
  %i.bf = zext i8 %i.be to i64
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bh, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !571

bb.f:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bj, 7
  %i.bk = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bk          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141 ; 3 uses
  %i.bn = add nsw i32 %spec.select, %i.bm         ; 3 uses
  %i.bo = load i32, ptr %3, align 8, !tbaa !139
  %i.bp = and i32 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0                    ; 2 uses
  br i1 %i.bq, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bu = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %i.bv = icmp sgt i32 %i.bn, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bq, i32 noundef %i.bm, i32 noundef %i.bn)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bl, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bn, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.bw = phi i32 [ %i.bm, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.bx = icmp eq i32 %.pre-phi74, 0
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.bx, ptr %3, ptr %i.ca
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bl, align 4, !tbaa !141
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.by ; 2 uses
  %i.cc = icmp ult ptr %0, %1
  br i1 %i.cc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cm, %bb.i ], [ %i.cb, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cd = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ch = zext i8 %i.cd to i32
  %i.ci = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ch) ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cf, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ck, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cn = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cn, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cm, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.bz, align 8
  %.pre67 = load i32, ptr %i.bl, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.co = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cp = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ca, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cb, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cq = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cq, ptr %3, ptr %i.cp
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cr = ptrtoint ptr %.1 to i64
  %i.cs = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.ct, 3
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = icmp sgt i32 %i.co, %i.cv
  br i1 %i.cw, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cv, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.cx = icmp ult ptr %0, %1
  br i1 %i.cx, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.da = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dc = zext nneg i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.de = zext i8 %i.da to i32
  %i.df = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  %i.di = icmp eq ptr %i.dg, null
  br i1 %i.di, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dd, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dj = load i32, ptr %3, align 8, !tbaa !139
  %i.dk = and i32 %i.dj, 1
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  %i.dm = load i32, ptr %i.cy, align 4, !tbaa !141 ; 8 uses
  br i1 %i.dl, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.do = load ptr, ptr %i.cz, align 8, !tbaa !55 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !55
  %i.dq = icmp eq i32 %i.dm, %i.dp
  br i1 %i.dq, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.dm, 1
  br label %bb.m

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.dr = add nsw i32 %i.dm, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.dl, i32 noundef %i.dm, i32 noundef %i.dr)
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !141
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.dm, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.dr, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.dm, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.dm, %.thread52.i.i.i ]
  %i.dt = phi ptr [ %3, %.thread.i.i.i ], [ %i.ds, %.thread41.i.i.i ], [ %i.do, %.thread52.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %.sink.sink, ptr %i.cy, align 4, !tbaa !141
  %i.dv = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  store i64 %.sink.i10.i51, ptr %i.dw, align 8, !tbaa !83
  %i.dx = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.dx, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bh, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
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
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %4 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %i.s = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %6
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.t ; 2 uses
  %i.v = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.z, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.y, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.x = zext i8 %i.w to i64
  store i64 %i.x, ptr %.03761.prol, align 8, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !573

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.y, %.lr.ph.prol ]
  %i.aa = sub i64 %i.b, %i.a
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bh, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bg, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ac = load i8, ptr %.03562, align 1, !tbaa !55
  %i.ad = zext i8 %i.ac to i64
  store i64 %i.ad, ptr %.03761, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !55
  %i.ah = zext i8 %i.ag to i64
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !55
  %i.al = zext i8 %i.ak to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i64
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !55
  %i.at = zext i8 %i.as to i64
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %i.ax = zext i8 %i.aw to i64
  store i64 %i.ax, ptr %i.au, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !55
  %i.bb = zext i8 %i.ba to i64
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !55
  %i.bf = zext i8 %i.be to i64
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bh, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !574

bb.f:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bj, 7
  %i.bk = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bk          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141 ; 3 uses
  %i.bn = add nsw i32 %spec.select, %i.bm         ; 3 uses
  %i.bo = load i32, ptr %3, align 8, !tbaa !139
  %i.bp = and i32 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0                    ; 2 uses
  br i1 %i.bq, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bu = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %i.bv = icmp sgt i32 %i.bn, %i.bu
  br i1 %i.bv, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bq, i32 noundef %i.bm, i32 noundef %i.bn)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bl, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bn, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.bw = phi i32 [ %i.bm, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.bx = icmp eq i32 %.pre-phi74, 0
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.bx, ptr %3, ptr %i.ca
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bl, align 4, !tbaa !141
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.by ; 2 uses
  %i.cc = icmp ult ptr %0, %1
  br i1 %i.cc, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cm, %bb.i ], [ %i.cb, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.cd = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ch = zext i8 %i.cd to i32
  %i.ci = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ch) ; 2 uses
  %i.cj = extractvalue { ptr, i64 } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.ci, 1
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cf, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ck, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cn = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cn, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cm, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.bz, align 8
  %.pre67 = load i32, ptr %i.bl, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.co = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cp = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ca, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cb, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cq = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cq, ptr %3, ptr %i.cp
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cr = ptrtoint ptr %.1 to i64
  %i.cs = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.ct, 3
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = icmp sgt i32 %i.co, %i.cv
  br i1 %i.cw, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cv, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.cx = icmp ult ptr %0, %1
  br i1 %i.cx, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.da = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dc = zext nneg i8 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.de = zext i8 %i.da to i32
  %i.df = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  %i.di = icmp eq ptr %i.dg, null
  br i1 %i.di, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dd, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dj = load i32, ptr %3, align 8, !tbaa !139
  %i.dk = and i32 %i.dj, 1
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  %i.dm = load i32, ptr %i.cy, align 4, !tbaa !141 ; 8 uses
  br i1 %i.dl, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.do = load ptr, ptr %i.cz, align 8, !tbaa !55 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !55
  %i.dq = icmp eq i32 %i.dm, %i.dp
  br i1 %i.dq, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.dm, 1
  br label %bb.m

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.dr = add nsw i32 %i.dm, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.dl, i32 noundef %i.dm, i32 noundef %i.dr)
  %i.ds = load ptr, ptr %i.cz, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !141
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.dm, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.dr, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.dm, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.dm, %.thread52.i.i.i ]
  %i.dt = phi ptr [ %3, %.thread.i.i.i ], [ %i.ds, %.thread41.i.i.i ], [ %i.do, %.thread52.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %.sink.sink, ptr %i.cy, align 4, !tbaa !141
  %i.dv = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  store i64 %.sink.i10.i51, ptr %i.dw, align 8, !tbaa !83
  %i.dx = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.dx, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bh, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %.not3961, ptr %3, ptr %i.u ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %4 = sext i32 %i.s to i64                       ; 2 uses
  %5 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %4 ; 5 uses
  %6 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = add i64 %i.a, %4
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %5, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %5, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %5, i64 %i.ad ; 2 uses
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
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.ac, %middle.block ] ; 2 uses
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
  %i.eh = zext nneg i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.ej = zext i8 %i.ef to i32
  %i.ek = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.ej) ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.ek, 1
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.eh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.eo = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = and i32 %i.eo, 1
  %i.er = sub nsw i32 0, %i.eq
  %i.es = xor i32 %i.ep, %i.er
  %i.et = load i32, ptr %3, align 8, !tbaa !139
  %i.eu = and i32 %i.et, 1
  %i.ev = icmp eq i32 %i.eu, 0                    ; 3 uses
  %i.ew = load i32, ptr %i.ed, align 4, !tbaa !141 ; 4 uses
  br i1 %i.ev, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ex = load ptr, ptr %i.ee, align 8, !tbaa !55 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.v.i.i.i.i.i = phi ptr [ %i.ex, %bb.m ], [ %3, %bb.l ]
  %i.ez = phi i32 [ %i.ey, %bb.m ], [ 2, %bb.l ]
  %i.fa = icmp eq i32 %i.ew, %i.ez
  %i.fb = add nsw i32 %i.ew, 1                    ; 3 uses
  br i1 %i.fa, label %bb.n, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.n:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ev, i32 noundef %i.ew, i32 noundef %i.fb)
  %i.fc = load ptr, ptr %i.ee, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ed, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.n, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.fd = phi i32 [ %.pre36.i.i.i, %bb.n ], [ %i.ew, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.fc, %bb.n ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i52 = phi i1 [ false, %bb.n ], [ %i.ev, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.fb, ptr %i.ed, align 4, !tbaa !141
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.fe
  store i32 %i.es, ptr %i.ff, align 4, !tbaa !29
  %i.fg = load i32, ptr %i.ed, align 4, !tbaa !141
  %i.fh = icmp eq i32 %i.fb, %i.fg
  tail call void @llvm.assume(i1 %i.fh)
  br i1 %.0.i.i.i52, label %.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.fi = load ptr, ptr %i.ee, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.o
  %.sink107 = phi ptr [ %i.fi, %bb.o ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.fj = icmp eq ptr %.pn.i.i.i, %.sink107
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.fk, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.ch, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %i.aa, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !216

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !179
  %i.o = load i64, ptr %1, align 8, !tbaa !205
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !206
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.t = add nuw nsw i64 %i.j, 8
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = add nuw nsw i64 %i.j, 12
  %i.w = and i64 %i.v, 17179869176                ; 4 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 62) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = sub nuw nsw i64 60, %i.y                 ; 2 uses
  %i.aa = load i8, ptr %.0.i.i.i, align 8, !tbaa !243
  %i.ab = zext i8 %i.aa to i64
  %.not.i.i = icmp samesign ult i64 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !244
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i

_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i: ; preds = %bb.g
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !248
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !246
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !249 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  %.not.i = icmp slt i64 %i.ao, %i.w
  br i1 %.not.i, label %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.w ; 4 uses
  store atomic ptr %i.ap, ptr %i.ai monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !250 ; 6 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp sgt i64 %i.au, 1024
  br i1 %i.av, label %.loopexit.i, label %bb.j, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp ult ptr %i.ar, %i.al
  br i1 %i.aw, label %bb.k, label %.loopexit.i, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.ax = icmp ult ptr %i.ap, %i.ar
  %.sroa.speculated17.i.i = select i1 %i.ax, ptr %i.ar, ptr %i.ap ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.speculated17.i.i, i64 1024 ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.al
  %.sroa.speculated.i.i = select i1 %i.az, ptr %i.ay, ptr %i.al ; 2 uses
  %i.ba = icmp ult ptr %.sroa.speculated17.i.i, %.sroa.speculated.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.122.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.sroa.speculated17.i.i, %bb.k ] ; 2 uses
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.122.i.i) #26, !srcloc !220
  %i.bb = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 64 ; 3 uses
  %i.bc = icmp ult ptr %i.bb, %.sroa.speculated.i.i
  br i1 %i.bc, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i24 = phi ptr [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.bb, %.lr.ph.i.i ]
  store ptr %.0.i.i.i24, ptr %i.aq, align 8, !tbaa !250
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bd = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.w)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink48 = phi ptr [ %i.u, %bb.e ], [ %i.af, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.aj, %.loopexit.i ], [ %i.bd, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i32 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink48, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !55
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bi
  %.0.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bj = zext nneg i32 %3 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 4 %.0.i.i.i25, i64 %i.bk, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !55 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !55
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = add nsw i64 %i.bp, 8                    ; 5 uses
  br i1 %i.k, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.br = icmp ugt i64 %i.bq, 15
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bt = sub nuw nsw i64 59, %i.bs               ; 2 uses
  %i.bu = load i8, ptr %.0.i.i32, align 8, !tbaa !243 ; 3 uses
  %i.bv = zext i8 %i.bu to i64                    ; 2 uses
  %.not.i.i26 = icmp samesign ult i64 %i.bt, %i.bv
  br i1 %.not.i.i26, label %bb.t, label %bb.q, !prof !46

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bq, 3                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !244 ; 2 uses
  %i.bz = icmp ugt i8 %i.bu, 1
  br i1 %i.bz, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i8 %i.bu, 1
  br i1 %i.ca, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit: ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !141
  %.not3961 = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %.not3961, ptr %3, ptr %i.u ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %4 = sext i32 %i.s to i64                       ; 2 uses
  %5 = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %4 ; 5 uses
  %6 = sub i64 %i.a, %i.b                         ; 3 uses
  %min.iters.check = icmp ult i64 %6, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit
  %i.v = add i64 %i.a, %4
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 8
  %i.y = shl i64 %i.b, 2
  %i.z = sub i64 %i.x, %i.y
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.z
  %bound0 = icmp ult ptr %5, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, -8                         ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %5, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %5, i64 %i.ad ; 2 uses
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
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.aa, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit ], [ %i.ac, %middle.block ] ; 2 uses
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
  %i.eh = zext nneg i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.ej = zext i8 %i.ef to i32
  %i.ek = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.ej) ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.ek, 1
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.eh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.eo = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = and i32 %i.eo, 1
  %i.er = sub nsw i32 0, %i.eq
  %i.es = xor i32 %i.ep, %i.er
  %i.et = load i32, ptr %3, align 8, !tbaa !139
  %i.eu = and i32 %i.et, 1
  %i.ev = icmp eq i32 %i.eu, 0                    ; 3 uses
  %i.ew = load i32, ptr %i.ed, align 4, !tbaa !141 ; 4 uses
  br i1 %i.ev, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ex = load ptr, ptr %i.ee, align 8, !tbaa !55 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.v.i.i.i.i.i = phi ptr [ %i.ex, %bb.m ], [ %3, %bb.l ]
  %i.ez = phi i32 [ %i.ey, %bb.m ], [ 2, %bb.l ]
  %i.fa = icmp eq i32 %i.ew, %i.ez
  %i.fb = add nsw i32 %i.ew, 1                    ; 3 uses
  br i1 %i.fa, label %bb.n, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.n:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ev, i32 noundef %i.ew, i32 noundef %i.fb)
  %i.fc = load ptr, ptr %i.ee, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.ed, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.n, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.fd = phi i32 [ %.pre36.i.i.i, %bb.n ], [ %i.ew, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.fc, %bb.n ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i52 = phi i1 [ false, %bb.n ], [ %i.ev, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.fb, ptr %i.ed, align 4, !tbaa !141
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.fe
  store i32 %i.es, ptr %i.ff, align 4, !tbaa !29
  %i.fg = load i32, ptr %i.ed, align 4, !tbaa !141
  %i.fh = icmp eq i32 %i.fb, %i.fg
  tail call void @llvm.assume(i1 %i.fh)
  br i1 %.0.i.i.i52, label %.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.fi = load ptr, ptr %i.ee, align 8
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.o
  %.sink107 = phi ptr [ %i.fi, %bb.o ], [ %3, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.fj = icmp eq ptr %.pn.i.i.i, %.sink107
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.fk, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.ch, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %i.aa, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
  ret ptr %.0
}

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
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %4 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %i.s = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %6
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.t ; 2 uses
  %i.v = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ad, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ac, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = and i64 %i.x, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = xor i64 %i.y, %i.aa
  store i64 %i.ab, ptr %.03761.prol, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !594

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %i.ae = sub i64 %i.b, %i.a
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bl, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.bk, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ag = load i8, ptr %.03562, align 1, !tbaa !55
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = and i64 %i.ah, 1
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = xor i64 %i.ai, %i.ak
  store i64 %i.al, ptr %.03761, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = and i64 %i.ap, 1
  %i.as = sub nsw i64 0, %i.ar
  %i.at = xor i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = and i64 %i.ax, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.au, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !55
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = and i64 %i.bf, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bg, %i.bi
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.bl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !595

bb.f:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bn, 7
  %i.bo = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bo          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !141 ; 3 uses
  %i.br = add nsw i32 %spec.select, %i.bq         ; 3 uses
  %i.bs = load i32, ptr %3, align 8, !tbaa !139
  %i.bt = and i32 %i.bs, 1                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0                    ; 2 uses
  br i1 %i.bu, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !55
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.by = phi i32 [ %i.bx, %bb.g ], [ 1, %bb.f ]
  %i.bz = icmp sgt i32 %i.br, %i.by
  br i1 %i.bz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bu, i32 noundef %i.bq, i32 noundef %i.br)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bp, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.br, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bt, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.ca = phi i32 [ %i.bq, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.cb = icmp eq i32 %.pre-phi74, 0
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cb, ptr %3, ptr %i.ce
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bp, align 4, !tbaa !141
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.cc ; 2 uses
  %i.cg = icmp ult ptr %0, %1
  br i1 %i.cg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cu, %bb.i ], [ %i.cf, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.ch = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cj = zext nneg i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cl = zext i8 %i.ch to i32
  %i.cm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cl) ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cm, 1
  %i.cp = icmp eq ptr %i.cn, null
  br i1 %i.cp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ck, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.co, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.cq = lshr i64 %.sink.i10.i, 1
  %i.cr = and i64 %.sink.i10.i, 1
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = xor i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %.055, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cu, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cd, align 8
  %.pre67 = load i32, ptr %i.bp, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cw = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cx = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cf, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cy = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cy, ptr %3, ptr %i.cx
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cz = ptrtoint ptr %.1 to i64
  %i.da = ptrtoint ptr %.0.i.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = icmp sgt i32 %i.cw, %i.dd
  br i1 %i.de, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dd, ptr %i.bp, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.df = icmp ult ptr %0, %1
  br i1 %i.df, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.di = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.dr = lshr i64 %.sink.i10.i51, 1
  %i.ds = and i64 %.sink.i10.i51, 1
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = xor i64 %i.dr, %i.dt
  %i.dv = load i32, ptr %3, align 8, !tbaa !139
  %i.dw = and i32 %i.dv, 1
  %i.dx = icmp eq i32 %i.dw, 0                    ; 2 uses
  %i.dy = load i32, ptr %i.dg, align 4, !tbaa !141 ; 8 uses
  br i1 %i.dx, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.ea = load ptr, ptr %i.dh, align 8, !tbaa !55 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !55
  %i.ec = icmp eq i32 %i.dy, %i.eb
  br i1 %i.ec, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.dy, 1
  br label %bb.m

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.ed = add nsw i32 %i.dy, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.dx, i32 noundef %i.dy, i32 noundef %i.ed)
  %i.ee = load ptr, ptr %i.dh, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.dg, align 4, !tbaa !141
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.dy, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.ed, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.dy, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.dy, %.thread52.i.i.i ]
  %i.ef = phi ptr [ %3, %.thread.i.i.i ], [ %i.ee, %.thread41.i.i.i ], [ %i.ea, %.thread52.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.sink.sink, ptr %i.dg, align 4, !tbaa !141
  %i.eh = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  store i64 %i.du, ptr %i.ei, align 8, !tbaa !83
  %i.ej = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.ej, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bl, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !216

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 8                  ; 4 uses
  %i.l = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !179
  %i.p = load i64, ptr %1, align 8, !tbaa !205
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !206
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.t = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #33
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.t, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = or disjoint i64 %i.j, 7
  %i.w = tail call range(i64 30, 62) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = sub nuw nsw i64 60, %i.w                 ; 2 uses
  %i.y = load i8, ptr %.0.i.i.i, align 8, !tbaa !243
  %i.z = zext i8 %i.y to i64
  %.not.i.i = icmp samesign ult i64 %i.x, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !244
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !246 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i

_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i: ; preds = %bb.g
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !248
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !246
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.ah = load atomic ptr, ptr %i.ag monotonic, align 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !249 ; 4 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %.not.i = icmp slt i64 %i.am, %i.k
  br i1 %.not.i, label %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.k ; 4 uses
  store atomic ptr %i.an, ptr %i.ag monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !250 ; 6 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp sgt i64 %i.as, 1024
  br i1 %i.at, label %.loopexit.i, label %bb.j, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.au = icmp ult ptr %i.ap, %i.aj
  br i1 %i.au, label %bb.k, label %.loopexit.i, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.av = icmp ult ptr %i.an, %i.ap
  %.sroa.speculated17.i.i = select i1 %i.av, ptr %i.ap, ptr %i.an ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.speculated17.i.i, i64 1024 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.aj
  %.sroa.speculated.i.i = select i1 %i.ax, ptr %i.aw, ptr %i.aj ; 2 uses
  %i.ay = icmp ult ptr %.sroa.speculated17.i.i, %.sroa.speculated.i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.122.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.sroa.speculated17.i.i, %bb.k ] ; 2 uses
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.122.i.i) #26, !srcloc !220
  %i.az = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 64 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %.sroa.speculated.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !14

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i23 = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.az, %.lr.ph.i.i ]
  store ptr %.0.i.i.i23, ptr %i.ao, align 8, !tbaa !250
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bb = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.k)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink47 = phi ptr [ %i.u, %bb.e ], [ %i.ad, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.ah, %.loopexit.i ], [ %i.bb, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i31 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink47, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !55
  %i.bd = icmp sgt i32 %3, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bg
  %.0.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bh = zext nneg i32 %3 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %.0.i.i.i24, i64 %i.bi, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !55 ; 8 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !55
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = add nsw i64 %i.bn, 8                    ; 5 uses
  br i1 %i.l, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #26
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = icmp ugt i64 %i.bo, 15
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.br = sub nuw nsw i64 59, %i.bq               ; 2 uses
  %i.bs = load i8, ptr %.0.i.i31, align 8, !tbaa !243 ; 3 uses
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %.not.i.i25 = icmp samesign ult i64 %i.br, %i.bt
  br i1 %.not.i.i25, label %bb.t, label %bb.q, !prof !46

bb.q:                                             ; preds = %bb.p
  %i.bu = lshr exact i64 %i.bo, 3                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !244 ; 2 uses
  %i.bx = icmp ugt i8 %i.bs, 1
  br i1 %i.bx, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i8 %i.bs, 1
  br i1 %i.by, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !246
  store ptr %i.bz, ptr %i.bk, align 8, !tbaa !246
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader, !prof !23

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !139
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !141 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %4 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = load ptr, ptr %5, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !141
  %i.s = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %6
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = sext i32 %4 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.t ; 2 uses
  %i.v = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ad, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ac, %.lr.ph.prol ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.w = load i8, ptr %.03562.prol, align 1, !tbaa !55
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = and i64 %i.x, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = xor i64 %i.y, %i.aa
  store i64 %i.ab, ptr %.03761.prol, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !597

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ad, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %i.ae = sub i64 %i.b, %i.a
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bl, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.bk, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ag = load i8, ptr %.03562, align 1, !tbaa !55
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = and i64 %i.ah, 1
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = xor i64 %i.ai, %i.ak
  store i64 %i.al, ptr %.03761, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !55
  %i.ap = zext i8 %i.ao to i64                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = and i64 %i.ap, 1
  %i.as = sub nsw i64 0, %i.ar
  %i.at = xor i64 %i.aq, %i.as
  store i64 %i.at, ptr %i.am, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = and i64 %i.ax, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.au, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !55
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = and i64 %i.bf, 1
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = xor i64 %i.bg, %i.bi
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.bl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !598

bb.f:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !55
  %.lobit = lshr i8 %i.bn, 7
  %i.bo = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bo          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !141 ; 3 uses
  %i.br = add nsw i32 %spec.select, %i.bq         ; 3 uses
  %i.bs = load i32, ptr %3, align 8, !tbaa !139
  %i.bt = and i32 %i.bs, 1                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0                    ; 2 uses
  br i1 %i.bu, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !55
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.by = phi i32 [ %i.bx, %bb.g ], [ 1, %bb.f ]
  %i.bz = icmp sgt i32 %i.br, %i.by
  br i1 %i.bz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bu, i32 noundef %i.bq, i32 noundef %i.br)
  %.pre = load i32, ptr %3, align 8, !tbaa !139
  %.pre64 = load i32, ptr %i.bp, align 4, !tbaa !141 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.br, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bt, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.ca = phi i32 [ %i.bq, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.cb = icmp eq i32 %.pre-phi74, 0
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cb, ptr %3, ptr %i.ce
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bp, align 4, !tbaa !141
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.cc ; 2 uses
  %i.cg = icmp ult ptr %0, %1
  br i1 %i.cg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42, %bb.i
  %.055 = phi ptr [ %i.cu, %bb.i ], [ %i.cf, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 3 uses
  %i.ch = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cj = zext nneg i8 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cl = zext i8 %i.ch to i32
  %i.cm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cl) ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cm, 1
  %i.cp = icmp eq ptr %i.cn, null
  br i1 %i.cp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ck, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.co, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.cq = lshr i64 %.sink.i10.i, 1
  %i.cr = and i64 %.sink.i10.i, 1
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = xor i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %.055, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cv = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cu, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !139
  %.pre66 = load ptr, ptr %i.cd, align 8
  %.pre67 = load i32, ptr %i.bp, align 4, !tbaa !141
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cw = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %i.cx = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cf, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaIPNS0_5ArenaEEEvT_i.exit42 ] ; 2 uses
  %i.cy = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.cy, ptr %3, ptr %i.cx
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cz = ptrtoint ptr %.1 to i64
  %i.da = ptrtoint ptr %.0.i.i.i.i to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = lshr exact i64 %i.db, 3
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = icmp sgt i32 %i.cw, %i.dd
  br i1 %i.de, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dd, ptr %i.bp, align 4, !tbaa !141
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.df = icmp ult ptr %0, %1
  br i1 %i.df, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.di = load i8, ptr %.0714.i48, align 1, !tbaa !55 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.dr = lshr i64 %.sink.i10.i51, 1
  %i.ds = and i64 %.sink.i10.i51, 1
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = xor i64 %i.dr, %i.dt
  %i.dv = load i32, ptr %3, align 8, !tbaa !139
  %i.dw = and i32 %i.dv, 1
  %i.dx = icmp eq i32 %i.dw, 0                    ; 2 uses
  %i.dy = load i32, ptr %i.dg, align 4, !tbaa !141 ; 8 uses
  br i1 %i.dx, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %.thread41.i.i.i, label %.thread.i.i.i, !prof !23

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.ea = load ptr, ptr %i.dh, align 8, !tbaa !55 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !55
  %i.ec = icmp eq i32 %i.dy, %i.eb
  br i1 %i.ec, label %.thread41.i.i.i, label %.thread52.i.i.i, !prof !23

.thread52.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre3854.i.i.i = add nsw i32 %i.dy, 1
  br label %bb.m

.thread41.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.ed = add nsw i32 %i.dy, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.dx, i32 noundef %i.dy, i32 noundef %i.ed)
  %i.ee = load ptr, ptr %i.dh, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.dg, align 4, !tbaa !141
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre38.i.i.i = add nsw i32 %i.dy, 1
  br label %bb.m

bb.m:                                             ; preds = %.thread52.i.i.i, %.thread41.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i, %.thread.i.i.i ], [ %i.ed, %.thread41.i.i.i ], [ %.pre3854.i.i.i, %.thread52.i.i.i ]
  %.pre36.i.i.i.sink.sink = phi i32 [ %i.dy, %.thread.i.i.i ], [ %.pre36.i.i.i, %.thread41.i.i.i ], [ %i.dy, %.thread52.i.i.i ]
  %i.ef = phi ptr [ %3, %.thread.i.i.i ], [ %i.ee, %.thread41.i.i.i ], [ %i.ea, %.thread52.i.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %.sink.sink, ptr %i.dg, align 4, !tbaa !141
  %i.eh = sext i32 %.pre36.i.i.i.sink.sink to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  store i64 %i.du, ptr %i.ei, align 8, !tbaa !83
  %i.ej = icmp ult ptr %.0.i11.i50, %1
  br i1 %i.ej, label %.lr.ph.i47, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bl, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef byval(%class.anon.240) align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %.0.i132 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i131 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i131 to i64
  %i.k = sub i64 %i.i, %i.j
  %.030167 = trunc i64 %i.k to i32                ; 2 uses
  %i.l = icmp sgt i32 %.0.i132, %.030167
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.dd, %bb.t ] ; 3 uses
  %.030170 = phi i32 [ %.030167, %.lr.ph ], [ %.030, %bb.t ] ; 2 uses
  %.026169 = phi i32 [ %.0.i132, %.lr.ph ], [ %i.cw, %bb.t ] ; 2 uses
  %.0126168 = phi ptr [ %storemerge.i131, %.lr.ph ], [ %i.dc, %bb.t ] ; 3 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !57
  %.sroa.696.0.copyload = load ptr, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !257 ; 6 uses
  %.sroa.797.0.copyload = load ptr, ptr %.sroa.797.0..sroa_idx, align 8, !tbaa !226
  %i.o = icmp ult ptr %.0126168, %i.n
  br i1 %i.o, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134

.lr.ph.i.preheader:                               ; preds = %bb.c
  %.sroa.494.0.copyload = load i8, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !55
  %.sroa.093.0.copyload = load ptr, ptr %2, align 8, !tbaa !55
  %i.p = ptrtoint ptr %.sroa.093.0.copyload to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.p to i32
  %.sroa.0.4.extract.shift.i.i.i = lshr i64 %i.p, 32
  %.sroa.0.4.extract.trunc.i.i.i = trunc nuw i64 %.sroa.0.4.extract.shift.i.i.i to i32
  %i.q = zext i8 %.sroa.494.0.copyload to i32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.696.0.copyload, i64 4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.696.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i
  %.0714.i = phi ptr [ %.0.i11.i, %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i ], [ %.0126168, %.lr.ph.i.preheader ] ; 3 uses
  %i.t = load i8, ptr %.0714.i, align 1, !tbaa !55 ; 3 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.v = zext nneg i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.d

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.x = zext i8 %i.t to i32
  %i.y = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.x) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.w, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.z, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.v, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.aa, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.ac = trunc i64 %.sink.i10.i to i32           ; 4 uses
  %i.ad = icmp sge i32 %i.ac, %.sroa.0.0.extract.trunc.i.i.i
  %i.ae = icmp sle i32 %i.ac, %.sroa.0.4.extract.trunc.i.i.i
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf8internal8TcParser14AddUnknownEnumEPNS0_11MessageLiteEPKNS1_16TcParseTableBaseEji(ptr noundef %.sroa.2.0.copyload, ptr noundef %.sroa.3.0.copyload, i32 noundef %i.q, i32 noundef %i.ac)
  br label %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %.sroa.696.0.copyload, align 4, !tbaa !139
  %i.ah = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ah, 0                    ; 3 uses
  %i.aj = load i32, ptr %i.r, align 4, !tbaa !141 ; 4 uses
  br i1 %i.ai, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !55  ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !55
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.ak, %bb.g ], [ %.sroa.696.0.copyload, %bb.f ]
  %i.am = phi i32 [ %i.al, %bb.g ], [ 2, %bb.f ]
  %i.an = icmp eq i32 %i.aj, %i.am
  %i.ao = add nsw i32 %i.aj, 1                    ; 3 uses
  br i1 %i.an, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !23

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.696.0.copyload, ptr noundef %.sroa.797.0.copyload, i1 noundef zeroext %i.ai, i32 noundef %i.aj, i32 noundef %i.ao)
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !55
  %.pre36.i.i.i = load i32, ptr %i.r, align 4, !tbaa !141
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.aq = phi i32 [ %.pre36.i.i.i, %bb.h ], [ %i.aj, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ap, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.ai, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.027.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.ao, ptr %i.r, align 4, !tbaa !141
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.027.i.i.i, i64 %i.ar
  store i32 %i.ac, ptr %i.as, align 4, !tbaa !29
  %i.at = load i32, ptr %i.r, align 4, !tbaa !141
  %i.au = icmp eq i32 %i.ao, %i.at
  tail call void @llvm.assume(i1 %i.au)
  br i1 %.0.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaIPNS0_5ArenaEEEPiT_i.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.av = load ptr, ptr %i.s, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaIPNS0_5ArenaEEEPiT_i.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaIPNS0_5ArenaEEEPiT_i.exit.i.i: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.i
  %.sink235 = phi ptr [ %i.av, %bb.i ], [ %.sroa.696.0.copyload, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.aw = icmp eq ptr %.pn.i.i.i, %.sink235
  tail call void @llvm.assume(i1 %i.aw)
  br label %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i

_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaIPNS0_5ArenaEEEPiT_i.exit.i.i, %bb.e
  %i.ax = icmp ult ptr %.0.i11.i, %i.n
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134.loopexit: ; preds = %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134.loopexit, %bb.c
  %i.ay = phi ptr [ %i.n, %bb.c ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134.loopexit ] ; 2 uses
  %.2.i136 = phi ptr [ %.0126168, %bb.c ], [ %.0.i11.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134.loopexit ]
  %i.az = ptrtoint ptr %.2.i136 to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = sub nsw i32 %.026169, %.030170          ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 17
  br i1 %i.bd, label %bb.j, label %bb.r

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit.thread134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.be = sext i32 %i.bc to i64                   ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.a, i64 %i.be ; 2 uses
  %sext39 = shl i64 %i.bb, 32
  %i.bg = ashr exact i64 %sext39, 32              ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.a, i64 %i.bg ; 2 uses
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !57
  %.sroa.6110.0.copyload = load ptr, ptr %.sroa.696.0..sroa_idx, align 8, !tbaa !257 ; 6 uses
  %.sroa.7111.0.copyload = load ptr, ptr %.sroa.797.0..sroa_idx, align 8, !tbaa !226
  %i.bi = icmp slt i64 %i.bg, %i.be
  br i1 %i.bi, label %.lr.ph.i42.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUliE_EES7_S7_S7_T_.exit63

.lr.ph.i42.preheader:                             ; preds = %bb.j
  %.sroa.4108.0.copyload = load i8, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !55
  %.sroa.0105.0.copyload = load ptr, ptr %2, align 8, !tbaa !55
  %i.bj = ptrtoint ptr %.sroa.0105.0.copyload to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i48 = trunc i64 %i.bj to i32
  %.sroa.0.4.extract.shift.i.i.i49 = lshr i64 %i.bj, 32
  %.sroa.0.4.extract.trunc.i.i.i50 = trunc nuw i64 %.sroa.0.4.extract.shift.i.i.i49 to i32
  %i.bk = zext i8 %.sroa.4108.0.copyload to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.6110.0.copyload, i64 4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.6110.0.copyload, i64 8 ; 3 uses
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i51
  %.0714.i43 = phi ptr [ %.0.i11.i45, %_ZZN6google8protobuf8internal8TcParser10PackedEnumIhLt1536EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUliE_clEi.exit.i51 ], [ %i.bh, %.lr.ph.i42.preheader ] ; 3 uses
  %i.bn = load i8, ptr %.0714.i43, align 1, !tbaa !55 ; 3 uses
  %i.bo = icmp sgt i8 %i.bn, -1
  br i1 %i.bo, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i62, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i44
end_hunk_2
