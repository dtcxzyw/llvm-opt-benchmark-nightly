inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ao = load i32, ptr %3, align 8, !tbaa !216
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.aw = add nsw i32 %i.ar, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink111.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.aw, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.ar, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.ar, %.thread54.i.i.i ]
  %i.ay = phi ptr [ %3, %.thread.i.i.i ], [ %i.ax, %.thread43.i.i.i ], [ %i.at, %.thread54.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i1 %i.an to i8
  store i32 %.sink111.sink, ptr %i.ac, align 4, !tbaa !218
  %i.bb = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !70
  %i.bd = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.032 = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bi, %.032
  br i1 %i.bt, label %bb.c, label %._crit_edge, !llvm.loop !528

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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218  ; 3 uses
  %i.i = add nsw i32 %i.h, %i.f                   ; 3 uses
  %i.j = load i32, ptr %3, align 8, !tbaa !216
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ 8, %bb.c ]
  %i.q = icmp sgt i32 %i.i, %i.p
  br i1 %i.q, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.l, i32 noundef %i.h, i32 noundef %i.i)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !216
  %.pre90 = load i32, ptr %i.g, align 4, !tbaa !218 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.r = phi i32 [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.s = icmp eq i32 %.pre-phi, 0
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %i.v
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.g, align 4, !tbaa !218
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !218 ; 3 uses
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 3 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !216
  %i.af = and i32 %i.ae, 1                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ 8, %bb.g ]
  %i.al = icmp sgt i32 %i.ad, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55, !prof !7

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ag, i32 noundef %i.ac, i32 noundef %i.ad)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !216
  %.pre88 = load i32, ptr %i.ab, align 4, !tbaa !218 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.y
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !218
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55
  %i.ap = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.ap, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.aq ; 6 uses
  %i.as = sub i64 %i.a, %i.b                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.at = add i64 %.0.v.i.i.i57129, %i.aq
  %i.au = sub i64 %i.at, %i.b
  %i.av = add i64 %i.au, 7
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 28
  %n.vec = and i64 %i.as, -32                     ; 5 uses
  %i.aw = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !39
  %wide.load132 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !39
  %i.az = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ba = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.bb = zext <16 x i1> %i.az to <16 x i8>
  %i.bc = zext <16 x i1> %i.ba to <16 x i8>
  %i.bd = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.bb, ptr %next.gep131, align 1, !tbaa !70
  store <16 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !529

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !532

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.as, -4                   ; 4 uses
  %i.bf = getelementptr i8, ptr %0, i64 %n.vec135 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ar, i64 %n.vec135
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep137 = getelementptr i8, ptr %0, i64 %index136
  %next.gep138 = getelementptr i8, ptr %i.ar, i64 %index136
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !39
  %i.bh = icmp ne <4 x i8> %wide.load139, zeroinitializer
  %i.bi = zext <4 x i1> %i.bh to <4 x i8>
  store <4 x i8> %i.bi, ptr %next.gep138, align 1, !tbaa !70
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !533

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.as, %n.vec135
  br i1 %cmp.n141, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph151 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bk = sub i64 %i.a, %.04881.ph151
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bp, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bl = load i8, ptr %.04881.prol, align 1, !tbaa !39
  %i.bm = icmp ne i8 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %.05080.prol, align 1, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !534

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %i.bq = sub i64 %.04881.ph151, %i.a
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.cl, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ck, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bs = load i8, ptr %.04881, align 1, !tbaa !39
  %i.bt = icmp ne i8 %i.bs, 0
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %.05080, align 1, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = icmp ne i8 %i.bx, 0
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  %i.cd = icmp ne i8 %i.cc, 0
  %i.ce = zext i1 %i.cd to i8
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !39
  %i.ci = icmp ne i8 %i.ch, 0
  %i.cj = zext i1 %i.ci to i8
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.cl, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !535

bb.j:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cy = phi i32 [ %i.cx, %bb.k ], [ 8, %bb.j ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, !prof !7

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre83 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.db = icmp eq i32 %.pre-phi99, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, %bb.m
  %.073 = phi ptr [ %i.ds, %bb.m ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dq = icmp ne i64 %.sink.i10.i, 0
  %i.dr = zext i1 %i.dq to i8
  store i8 %i.dr, ptr %.073, align 1, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dt = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.ds, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !216
  %.pre85 = load ptr, ptr %i.dd, align 8
  %.pre86 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %i.du = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %i.dv = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 2 uses
  %i.dw = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.dw, ptr %3, ptr %i.dv
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dx = ptrtoint ptr %.1 to i64
  %i.dy = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = icmp sgt i32 %i.du, %i.ea
  br i1 %i.eb, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ea, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.ec = icmp ult ptr %0, %1
  br i1 %i.ec, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.0714.i66, align 1, !tbaa !39 ; 3 uses
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.eh = zext nneg i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.ej = zext i8 %i.ef to i32
  %i.ek = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.ej) ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.ek, 1
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.eh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.eo = icmp ne i64 %.sink.i10.i69, 0
  %i.ep = load i32, ptr %3, align 8, !tbaa !216
  %i.eq = and i32 %i.ep, 1
  %i.er = icmp eq i32 %i.eq, 0                    ; 2 uses
  %i.es = load i32, ptr %i.ed, align 4, !tbaa !218 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_

declare noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ao = load i32, ptr %3, align 8, !tbaa !216
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.aw = add nsw i32 %i.ar, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink111.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.aw, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.ar, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.ar, %.thread54.i.i.i ]
  %i.ay = phi ptr [ %3, %.thread.i.i.i ], [ %i.ax, %.thread43.i.i.i ], [ %i.at, %.thread54.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i1 %i.an to i8
  store i32 %.sink111.sink, ptr %i.ac, align 4, !tbaa !218
  %i.bb = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !70
  %i.bd = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.032 = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bi, %.032
  br i1 %i.bt, label %bb.c, label %._crit_edge, !llvm.loop !536

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
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218  ; 3 uses
  %i.i = add nsw i32 %i.h, %i.f                   ; 3 uses
  %i.j = load i32, ptr %3, align 8, !tbaa !216
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %i.l, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ 8, %bb.c ]
  %i.q = icmp sgt i32 %i.i, %i.p
  br i1 %i.q, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.l, i32 noundef %i.h, i32 noundef %i.i)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !216
  %.pre90 = load i32, ptr %i.g, align 4, !tbaa !218 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.r = phi i32 [ %i.h, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.s = icmp eq i32 %.pre-phi, 0
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.0.v.i.i.i = select i1 %i.s, ptr %3, ptr %i.v
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.g, align 4, !tbaa !218
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !218 ; 3 uses
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 3 uses
  %i.ae = load i32, ptr %3, align 8, !tbaa !216
  %i.af = and i32 %i.ae, 1                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ 8, %bb.g ]
  %i.al = icmp sgt i32 %i.ad, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55, !prof !7

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ag, i32 noundef %i.ac, i32 noundef %i.ad)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !216
  %.pre88 = load i32, ptr %i.ab, align 4, !tbaa !218 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.y
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.am = phi i32 [ %i.ac, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  store i32 %.pre-phi97, ptr %i.ab, align 4, !tbaa !218
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55
  %i.ap = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.ap, ptr %3, ptr %i.ao ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.aq ; 6 uses
  %i.as = sub i64 %i.a, %i.b                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.at = add i64 %.0.v.i.i.i57129, %i.aq
  %i.au = sub i64 %i.at, %i.b
  %i.av = add i64 %i.au, 7
  %diff.check = icmp ult i64 %i.av, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 28
  %n.vec = and i64 %i.as, -32                     ; 5 uses
  %i.aw = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !39
  %wide.load132 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !39
  %i.az = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ba = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.bb = zext <16 x i1> %i.az to <16 x i8>
  %i.bc = zext <16 x i1> %i.ba to <16 x i8>
  %i.bd = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.bb, ptr %next.gep131, align 1, !tbaa !70
  store <16 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !532

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.as, -4                   ; 4 uses
  %i.bf = getelementptr i8, ptr %0, i64 %n.vec135 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ar, i64 %n.vec135
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep137 = getelementptr i8, ptr %0, i64 %index136
  %next.gep138 = getelementptr i8, ptr %i.ar, i64 %index136
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !39
  %i.bh = icmp ne <4 x i8> %wide.load139, zeroinitializer
  %i.bi = zext <4 x i1> %i.bh to <4 x i8>
  store <4 x i8> %i.bi, ptr %next.gep138, align 1, !tbaa !70
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !538

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.as, %n.vec135
  br i1 %cmp.n141, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph151 = ptrtoaddr ptr %.04881.ph to i64 ; 2 uses
  %i.bk = sub i64 %i.a, %.04881.ph151
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bp, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bl = load i8, ptr %.04881.prol, align 1, !tbaa !39
  %i.bm = icmp ne i8 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %.05080.prol, align 1, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !539

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %i.bq = sub i64 %.04881.ph151, %i.a
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.cl, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.ck, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bs = load i8, ptr %.04881, align 1, !tbaa !39
  %i.bt = icmp ne i8 %i.bs, 0
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %.05080, align 1, !tbaa !70
  %i.bv = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = icmp ne i8 %i.bx, 0
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  %i.cd = icmp ne i8 %i.cc, 0
  %i.ce = zext i1 %i.cd to i8
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !39
  %i.ci = icmp ne i8 %i.ch, 0
  %i.cj = zext i1 %i.ci to i8
  store i8 %i.cj, ptr %i.cf, align 1, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.cl, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !540

bb.j:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.y, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cy = phi i32 [ %i.cx, %bb.k ], [ 8, %bb.j ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, !prof !7

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre83 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.db = icmp eq i32 %.pre-phi99, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, %bb.m
  %.073 = phi ptr [ %i.ds, %bb.m ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dq = icmp ne i64 %.sink.i10.i, 0
  %i.dr = zext i1 %i.dq to i8
  store i8 %i.dr, ptr %.073, align 1, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.dt = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.ds, %bb.m ], [ %.073, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.m ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre84 = load i32, ptr %3, align 8, !tbaa !216
  %.pre85 = load ptr, ptr %i.dd, align 8
  %.pre86 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre102 = and i32 %.pre84, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60
  %.pre-phi103 = phi i32 [ %.pre102, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi99, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %i.du = phi i32 [ %.pre86, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi101, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %i.dv = phi ptr [ %.pre85, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 2 uses
  %i.dw = icmp eq i32 %.pre-phi103, 0
  %.0.v.i.i.i.i = select i1 %i.dw, ptr %3, ptr %i.dv
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dx = ptrtoint ptr %.1 to i64
  %i.dy = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = icmp sgt i32 %i.du, %i.ea
  br i1 %i.eb, label %bb.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ea, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.o:                                             ; preds = %bb.a
  %i.ec = icmp ult ptr %0, %1
  br i1 %i.ec, label %.lr.ph.i65.preheader, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

.lr.ph.i65.preheader:                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %.lr.ph.i65.preheader, %bb.q
  %.0714.i66 = phi ptr [ %.0.i11.i68, %bb.q ], [ %0, %.lr.ph.i65.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.0714.i66, align 1, !tbaa !39 ; 3 uses
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70: ; preds = %.lr.ph.i65
  %i.eh = zext nneg i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0714.i66, i64 1
  br label %bb.p

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67: ; preds = %.lr.ph.i65
  %i.ej = zext i8 %i.ef to i32
  %i.ek = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i66, i32 noundef %i.ej) ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %i.em = extractvalue { ptr, i64 } %i.ek, 1
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70
  %.0.i11.i68 = phi ptr [ %i.ei, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ] ; 3 uses
  %.sink.i10.i69 = phi i64 [ %i.eh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i70 ], [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i67 ]
  %i.eo = icmp ne i64 %.sink.i10.i69, 0
  %i.ep = load i32, ptr %3, align 8, !tbaa !216
  %i.eq = and i32 %i.ep, 1
  %i.er = icmp eq i32 %i.eq, 0                    ; 2 uses
  %i.es = load i32, ptr %i.ed, align 4, !tbaa !218 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ao = load i32, ptr %3, align 8, !tbaa !216
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 3 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !218 ; 4 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %3, %bb.f ]
  %i.au = phi i32 [ %i.at, %bb.g ], [ 2, %bb.f ]
  %i.av = icmp eq i32 %i.ar, %i.au
  %i.aw = add nsw i32 %i.ar, 1                    ; 3 uses
  br i1 %i.av, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ay = phi i32 [ %.pre38.i.i.i, %bb.h ], [ %i.ar, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.aq, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.aw, ptr %i.ac, align 4, !tbaa !218
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.az
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !218
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
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !541

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 2
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 2
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !542
  %wide.load105 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !542
  %i.aj = zext <4 x i8> %wide.load to <4 x i32>
  %i.ak = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.al = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.aj, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !545, !noalias !542
  store <4 x i32> %i.ak, ptr %i.al, align 4, !tbaa !3, !alias.scope !545, !noalias !542
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.an = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.ar, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.aq, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ao = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i32
  store i32 %i.ap, ptr %.03762.prol, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !548

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %i.as = sub i64 %.03563.ph110, %i.a
  %i.at = icmp ugt i64 %i.as, -8
  br i1 %i.at, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.bz, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.by, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.au = load i8, ptr %.03563, align 1, !tbaa !39
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %.03762, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !39
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !39
  %i.bt = zext i8 %i.bs to i32
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i32
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bz, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !549

bb.f:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cb, 7
  %i.cc = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.cc          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !218 ; 3 uses
  %i.cf = add nsw i32 %spec.select, %i.ce         ; 3 uses
  %i.cg = load i32, ptr %3, align 8, !tbaa !216
  %i.ch = and i32 %i.cg, 1                        ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ci, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cm = phi i32 [ %i.cl, %bb.g ], [ 2, %bb.f ]
  %i.cn = icmp sgt i32 %i.cf, %i.cm
  br i1 %i.cn, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ci, i32 noundef %i.ce, i32 noundef %i.cf)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cd, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ch, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.co = phi i32 [ %i.ce, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cp = icmp eq i32 %.pre-phi75, 0
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cp, ptr %3, ptr %i.cs
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cd, align 4, !tbaa !218
  %i.ct = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cq ; 2 uses
  %i.cu = icmp ult ptr %0, %1
  br i1 %i.cu, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.df, %bb.i ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cv = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cx = zext nneg i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cz = zext i8 %i.cv to i32
  %i.da = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cz) ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.da, 1
  %i.dd = icmp eq ptr %i.db, null
  br i1 %i.dd, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.db, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.de = trunc i64 %.sink.i10.i to i32
  store i32 %i.de, ptr %.056, align 4, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dg = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.df, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.cr, align 8
  %.pre68 = load i32, ptr %i.cd, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dh = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.di = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dj = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dj, ptr %3, ptr %i.di
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dk = ptrtoint ptr %.1 to i64
  %i.dl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 2
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = icmp sgt i32 %i.dh, %i.do
  br i1 %i.dp, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.do, ptr %i.cd, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dq = icmp ult ptr %0, %1
  br i1 %i.dq, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dt = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dv = zext nneg i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dx = zext i8 %i.dt to i32
  %i.dy = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dx) ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  %i.eb = icmp eq ptr %i.dz, null
  br i1 %i.eb, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dz, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dv, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ea, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.ec = trunc i64 %.sink.i10.i51 to i32
  %i.ed = load i32, ptr %3, align 8, !tbaa !216
  %i.ee = and i32 %i.ed, 1
  %i.ef = icmp eq i32 %i.ee, 0                    ; 3 uses
  %i.eg = load i32, ptr %i.dr, align 4, !tbaa !218 ; 4 uses
  br i1 %i.ef, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !39 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ao = load i32, ptr %3, align 8, !tbaa !216
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 3 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !218 ; 4 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.as, %bb.g ], [ %3, %bb.f ]
  %i.au = phi i32 [ %i.at, %bb.g ], [ 2, %bb.f ]
  %i.av = icmp eq i32 %i.ar, %i.au
  %i.aw = add nsw i32 %i.ar, 1                    ; 3 uses
  br i1 %i.av, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %i.ay = phi i32 [ %.pre38.i.i.i, %bb.h ], [ %i.ar, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.ax, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.aq, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.aw, ptr %i.ac, align 4, !tbaa !218
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.az
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !218
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
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !550

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 2
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 2
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !551
  %wide.load105 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !551
  %i.aj = zext <4 x i8> %wide.load to <4 x i32>
  %i.ak = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.al = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.aj, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !554, !noalias !551
  store <4 x i32> %i.ak, ptr %i.al, align 4, !tbaa !3, !alias.scope !554, !noalias !551
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.an = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.ar, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.aq, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ao = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ap = zext i8 %i.ao to i32
  store i32 %i.ap, ptr %.03762.prol, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !557

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.aq, %.lr.ph.prol ]
  %i.as = sub i64 %.03563.ph110, %i.a
  %i.at = icmp ugt i64 %i.as, -8
  br i1 %i.at, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.bz, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.by, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.au = load i8, ptr %.03563, align 1, !tbaa !39
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %.03762, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !39
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !39
  %i.bt = zext i8 %i.bs to i32
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i32
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bz, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !558

bb.f:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cb, 7
  %i.cc = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.cc          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !218 ; 3 uses
  %i.cf = add nsw i32 %spec.select, %i.ce         ; 3 uses
  %i.cg = load i32, ptr %3, align 8, !tbaa !216
  %i.ch = and i32 %i.cg, 1                        ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ci, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cm = phi i32 [ %i.cl, %bb.g ], [ 2, %bb.f ]
  %i.cn = icmp sgt i32 %i.cf, %i.cm
  br i1 %i.cn, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ci, i32 noundef %i.ce, i32 noundef %i.cf)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cd, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ch, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.co = phi i32 [ %i.ce, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cp = icmp eq i32 %.pre-phi75, 0
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cp, ptr %3, ptr %i.cs
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cd, align 4, !tbaa !218
  %i.ct = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cq ; 2 uses
  %i.cu = icmp ult ptr %0, %1
  br i1 %i.cu, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.df, %bb.i ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cv = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cx = zext nneg i8 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.cz = zext i8 %i.cv to i32
  %i.da = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.cz) ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.da, 1
  %i.dd = icmp eq ptr %i.db, null
  br i1 %i.dd, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.db, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.de = trunc i64 %.sink.i10.i to i32
  store i32 %i.de, ptr %.056, align 4, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dg = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.df, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.cr, align 8
  %.pre68 = load i32, ptr %i.cd, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dh = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.di = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cs, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dj = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dj, ptr %3, ptr %i.di
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dk = ptrtoint ptr %.1 to i64
  %i.dl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 2
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  %i.dp = icmp sgt i32 %i.dh, %i.do
  br i1 %i.dp, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.do, ptr %i.cd, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dq = icmp ult ptr %0, %1
  br i1 %i.dq, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dt = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dv = zext nneg i8 %i.dt to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dx = zext i8 %i.dt to i32
  %i.dy = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dx) ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  %i.eb = icmp eq ptr %i.dz, null
  br i1 %i.eb, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.dz, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dv, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ea, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.ec = trunc i64 %.sink.i10.i51 to i32
  %i.ed = load i32, ptr %3, align 8, !tbaa !216
  %i.ee = and i32 %i.ed, 1
  %i.ef = icmp eq i32 %i.ee, 0                    ; 3 uses
  %i.eg = load i32, ptr %i.dr, align 4, !tbaa !218 ; 4 uses
  br i1 %i.ef, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !39 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %.thread.i.i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bz, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit ], [ %i.ae, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %.thread.i.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.an = load i32, ptr %3, align 8, !tbaa !216
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0                    ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ap, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.av = add nsw i32 %i.aq, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ap, i32 noundef %i.aq, i32 noundef %i.av)
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.av, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.aq, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.aq, %.thread54.i.i.i ]
  %i.ax = phi ptr [ %3, %.thread.i.i.i ], [ %i.aw, %.thread43.i.i.i ], [ %i.as, %.thread54.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !218
  %i.az = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store i64 %.sink.i10.i, ptr %i.ba, align 8, !tbaa !73
  %i.bb = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bb, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bh = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.032 = trunc i64 %i.bq to i32                  ; 2 uses
  %i.br = icmp sgt i32 %i.bg, %.032
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !559

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ac, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.aa = zext i8 %i.z to i64
  store i64 %i.aa, ptr %.03761.prol, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !560

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %i.ad = sub i64 %i.b, %i.a
  %i.ae = icmp ugt i64 %i.ad, -8
  br i1 %i.ae, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bk, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bj, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.af = load i8, ptr %.03562, align 1, !tbaa !39
  %i.ag = zext i8 %i.af to i64
  store i64 %i.ag, ptr %.03761, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !39
  %i.ak = zext i8 %i.aj to i64
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39
  %i.ao = zext i8 %i.an to i64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.as = zext i8 %i.ar to i64
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i64
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = zext i8 %i.az to i64
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.be = zext i8 %i.bd to i64
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i64
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bk, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !561

bb.f:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %.lobit = lshr i8 %i.bm, 7
  %i.bn = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bn          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !218 ; 3 uses
  %i.bq = add nsw i32 %spec.select, %i.bp         ; 3 uses
  %i.br = load i32, ptr %3, align 8, !tbaa !216
  %i.bs = and i32 %i.br, 1                        ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0                    ; 2 uses
  br i1 %i.bt, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bx = phi i32 [ %i.bw, %bb.g ], [ 1, %bb.f ]
  %i.by = icmp sgt i32 %i.bq, %i.bx
  br i1 %i.by, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bt, i32 noundef %i.bp, i32 noundef %i.bq)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.bo, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bq, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bs, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.bz = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.ca = icmp eq i32 %.pre-phi74, 0
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.ca, ptr %3, ptr %i.cd
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bo, align 4, !tbaa !218
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.cb ; 2 uses
  %i.cf = icmp ult ptr %0, %1
  br i1 %i.cf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.cp, %bb.i ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cg = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ci = zext nneg i8 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ck = zext i8 %i.cg to i32
  %i.cl = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ck) ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  %i.co = icmp eq ptr %i.cm, null
  br i1 %i.co, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ci, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cq = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cp, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.cc, align 8
  %.pre67 = load i32, ptr %i.bo, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.cr = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.cs = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.ct = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.ct, ptr %3, ptr %i.cs
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cu = ptrtoint ptr %.1 to i64
  %i.cv = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = lshr exact i64 %i.cw, 3
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cy, ptr %i.bo, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.da = icmp ult ptr %0, %1
  br i1 %i.da, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dd = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dh = zext i8 %i.dd to i32
  %i.di = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.df, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dm = load i32, ptr %3, align 8, !tbaa !216
  %i.dn = and i32 %i.dm, 1
  %i.do = icmp eq i32 %i.dn, 0                    ; 2 uses
  %i.dp = load i32, ptr %i.db, align 4, !tbaa !218 ; 8 uses
  br i1 %i.do, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !39 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !39
  %i.dt = icmp eq i32 %i.dp, %i.ds
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %.lr.ph.prol.loopexit, %.lr.ph, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit, %bb.k, %bb.j, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %.0 = phi ptr [ %.2.i, %bb.j ], [ %i.bk, %.lr.ph ], [ %.2.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ %0, %bb.k ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ], [ %.0.i11.i50, %bb.m ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.an = load i32, ptr %3, align 8, !tbaa !216
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0                    ; 2 uses
  %i.aq = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ap, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39
  %i.au = icmp eq i32 %i.aq, %i.at
  br i1 %i.au, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.av = add nsw i32 %i.aq, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ap, i32 noundef %i.aq, i32 noundef %i.av)
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.aq, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.av, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.aq, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.aq, %.thread54.i.i.i ]
  %i.ax = phi ptr [ %3, %.thread.i.i.i ], [ %i.aw, %.thread43.i.i.i ], [ %i.as, %.thread54.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !218
  %i.az = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  store i64 %.sink.i10.i, ptr %i.ba, align 8, !tbaa !73
  %i.bb = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bb, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bh = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.032 = trunc i64 %i.bq to i32                  ; 2 uses
  %i.br = icmp sgt i32 %i.bg, %.032
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !562

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 2 uses
  %i.y = sub i64 %i.a, %i.b
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.ac, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03761.prol = phi ptr [ %i.ab, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.aa = zext i8 %i.z to i64
  store i64 %i.aa, ptr %.03761.prol, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !563

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %i.x, %.lr.ph.preheader ], [ %i.ab, %.lr.ph.prol ]
  %i.ad = sub i64 %i.b, %i.a
  %i.ae = icmp ugt i64 %i.ad, -8
  br i1 %i.ae, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.bk, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03761 = phi ptr [ %i.bj, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.af = load i8, ptr %.03562, align 1, !tbaa !39
  %i.ag = zext i8 %i.af to i64
  store i64 %i.ag, ptr %.03761, align 8, !tbaa !73
  %i.ah = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !39
  %i.ak = zext i8 %i.aj to i64
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39
  %i.ao = zext i8 %i.an to i64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.as = zext i8 %i.ar to i64
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.03562, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i64
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %.03761, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.03562, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = zext i8 %i.az to i64
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %.03761, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.03562, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.be = zext i8 %i.bd to i64
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %.03761, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %.03562, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i64
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !73
  %i.bj = getelementptr inbounds nuw i8, ptr %.03761, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.03562, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.bk, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %.lr.ph, !llvm.loop !564

bb.f:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %.lobit = lshr i8 %i.bm, 7
  %i.bn = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.bn          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !218 ; 3 uses
  %i.bq = add nsw i32 %spec.select, %i.bp         ; 3 uses
  %i.br = load i32, ptr %3, align 8, !tbaa !216
  %i.bs = and i32 %i.br, 1                        ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0                    ; 2 uses
  br i1 %i.bt, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.bx = phi i32 [ %i.bw, %bb.g ], [ 1, %bb.f ]
  %i.by = icmp sgt i32 %i.bq, %i.bx
  br i1 %i.by, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.bt, i32 noundef %i.bp, i32 noundef %i.bq)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.bo, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.bq, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.bs, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.bz = phi i32 [ %i.bp, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.ca = icmp eq i32 %.pre-phi74, 0
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.ca, ptr %3, ptr %i.cd
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.bo, align 4, !tbaa !218
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.cb ; 2 uses
  %i.cf = icmp ult ptr %0, %1
  br i1 %i.cf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.cp, %bb.i ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cg = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ci = zext nneg i8 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ck = zext i8 %i.cg to i32
  %i.cl = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ck) ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  %i.co = icmp eq ptr %i.cm, null
  br i1 %i.co, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ci, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.cn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  store i64 %.sink.i10.i, ptr %.055, align 8, !tbaa !73
  %i.cp = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.cq = icmp ult ptr %.0.i11.i, %1
  br i1 %i.cq, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.cp, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.cc, align 8
  %.pre67 = load i32, ptr %i.bo, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.cr = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.cs = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cd, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ce, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldImE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.ct = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.ct, ptr %3, ptr %i.cs
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cu = ptrtoint ptr %.1 to i64
  %i.cv = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = lshr exact i64 %i.cw, 3
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintImtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_mEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.cy, ptr %i.bo, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.da = icmp ult ptr %0, %1
  br i1 %i.da, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dd = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dh = zext i8 %i.dd to i32
  %i.di = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %i.dl = icmp eq ptr %i.dj, null
  br i1 %i.dl, label %_ZN6google8protobuf13RepeatedFieldImE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.dg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.df, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.dm = load i32, ptr %3, align 8, !tbaa !216
  %i.dn = and i32 %i.dm, 1
  %i.do = icmp eq i32 %i.dn, 0                    ; 2 uses
  %i.dp = load i32, ptr %i.db, align 4, !tbaa !218 ; 8 uses
  br i1 %i.do, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.l
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !39 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !39
  %i.dt = icmp eq i32 %i.dp, %i.ds
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.as = load i32, ptr %3, align 8, !tbaa !216
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0                    ; 3 uses
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !218 ; 4 uses
  br i1 %i.au, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %3, %bb.f ]
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ 2, %bb.f ]
  %i.az = icmp eq i32 %i.av, %i.ay
  %i.ba = add nsw i32 %i.av, 1                    ; 3 uses
  br i1 %i.az, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.au, i32 noundef %i.av, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.bc = phi i32 [ %.pre38.i.i.i, %bb.h ], [ %i.av, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.au, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !218
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.bd
  store i32 %i.ar, ptr %i.be, align 4, !tbaa !3
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !218
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
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.032 = trunc i64 %i.by to i32                  ; 2 uses
  %i.bz = icmp sgt i32 %i.bo, %.032
  br i1 %i.bz, label %bb.c, label %._crit_edge, !llvm.loop !565

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 2
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 2
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !566
  %wide.load105 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !566
  %i.aj = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.ak = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.al = lshr <4 x i32> %i.aj, splat (i32 1)
  %i.am = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.an = and <4 x i32> %i.aj, splat (i32 1)
  %i.ao = and <4 x i32> %i.ak, splat (i32 1)
  %i.ap = sub nsw <4 x i32> zeroinitializer, %i.an
  %i.aq = sub nsw <4 x i32> zeroinitializer, %i.ao
  %i.ar = xor <4 x i32> %i.al, %i.ap
  %i.as = xor <4 x i32> %i.am, %i.aq
  %i.at = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ar, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !569, !noalias !566
  store <4 x i32> %i.as, ptr %i.at, align 4, !tbaa !3, !alias.scope !569, !noalias !566
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.av = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.bc, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.aw = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 1
  %i.az = and i32 %i.ax, 1
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = xor i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %.03762.prol, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !572

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.bc, %.lr.ph.prol ]
  %i.be = sub i64 %.03563.ph110, %i.a
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.cl, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.ck, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.03563, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bh, 1
  %i.bk = sub nsw i32 0, %i.bj
  %i.bl = xor i32 %i.bi, %i.bk
  store i32 %i.bl, ptr %.03762, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bp, 1
  %i.bs = sub nsw i32 0, %i.br
  %i.bt = xor i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = lshr i32 %i.bx, 1
  %i.bz = and i32 %i.bx, 1
  %i.ca = sub nsw i32 0, %i.bz
  %i.cb = xor i32 %i.by, %i.ca
  store i32 %i.cb, ptr %i.bu, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = and i32 %i.cf, 1
  %i.ci = sub nsw i32 0, %i.ch
  %i.cj = xor i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.cc, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !573

bb.f:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cy = phi i32 [ %i.cx, %bb.g ], [ 2, %bb.f ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.db = icmp eq i32 %.pre-phi75, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dv, %bb.i ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dq = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = and i32 %i.dq, 1
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = xor i32 %i.dr, %i.dt
  store i32 %i.du, ptr %.056, align 4, !tbaa !3
  %i.dv = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dw = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dw, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dv, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.dd, align 8
  %.pre68 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dz = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dz, ptr %3, ptr %i.dy
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ea = ptrtoint ptr %.1 to i64
  %i.eb = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = lshr exact i64 %i.ec, 2
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = icmp sgt i32 %i.dx, %i.ee
  br i1 %i.ef, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ee, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eg = icmp ult ptr %0, %1
  br i1 %i.eg, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ej = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.el = zext nneg i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.en = zext i8 %i.ej to i32
  %i.eo = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.en) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.es = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.et = lshr i32 %i.es, 1
  %i.eu = and i32 %i.es, 1
  %i.ev = sub nsw i32 0, %i.eu
  %i.ew = xor i32 %i.et, %i.ev
  %i.ex = load i32, ptr %3, align 8, !tbaa !216
  %i.ey = and i32 %i.ex, 1
  %i.ez = icmp eq i32 %i.ey, 0                    ; 3 uses
  %i.fa = load i32, ptr %i.eh, align 4, !tbaa !218 ; 4 uses
  br i1 %i.ez, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.as = load i32, ptr %3, align 8, !tbaa !216
  %i.at = and i32 %i.as, 1
  %i.au = icmp eq i32 %i.at, 0                    ; 3 uses
  %i.av = load i32, ptr %i.ac, align 4, !tbaa !218 ; 4 uses
  br i1 %i.au, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.v.i.i.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %3, %bb.f ]
  %i.ay = phi i32 [ %i.ax, %bb.g ], [ 2, %bb.f ]
  %i.az = icmp eq i32 %i.av, %i.ay
  %i.ba = add nsw i32 %i.av, 1                    ; 3 uses
  br i1 %i.az, label %bb.h, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.au, i32 noundef %i.av, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.h, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.bc = phi i32 [ %.pre38.i.i.i, %bb.h ], [ %i.av, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %bb.h ], [ %i.au, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !218
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.bd
  store i32 %i.ar, ptr %i.be, align 4, !tbaa !3
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !218
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
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %.032 = trunc i64 %i.by to i32                  ; 2 uses
  %i.bz = icmp sgt i32 %i.bo, %.032
  br i1 %i.bz, label %bb.c, label %._crit_edge, !llvm.loop !574

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 2, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi73, ptr %i.h, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 2
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 2
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -8                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !575
  %wide.load105 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !575
  %i.aj = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.ak = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.al = lshr <4 x i32> %i.aj, splat (i32 1)
  %i.am = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.an = and <4 x i32> %i.aj, splat (i32 1)
  %i.ao = and <4 x i32> %i.ak, splat (i32 1)
  %i.ap = sub nsw <4 x i32> zeroinitializer, %i.an
  %i.aq = sub nsw <4 x i32> zeroinitializer, %i.ao
  %i.ar = xor <4 x i32> %i.al, %i.ap
  %i.as = xor <4 x i32> %i.am, %i.aq
  %i.at = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ar, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !578, !noalias !575
  store <4 x i32> %i.as, ptr %i.at, align 4, !tbaa !3, !alias.scope !578, !noalias !575
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoaddr ptr %.03563.ph to i64 ; 2 uses
  %i.av = sub i64 %i.a, %.03563.ph110
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.bc, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.aw = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 1
  %i.az = and i32 %i.ax, 1
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = xor i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %.03762.prol, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !581

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.bc, %.lr.ph.prol ]
  %i.be = sub i64 %.03563.ph110, %i.a
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.cl, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.ck, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.03563, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bh, 1
  %i.bk = sub nsw i32 0, %i.bj
  %i.bl = xor i32 %i.bi, %i.bk
  store i32 %i.bl, ptr %.03762, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bp, 1
  %i.bs = sub nsw i32 0, %i.br
  %i.bt = xor i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = lshr i32 %i.bx, 1
  %i.bz = and i32 %i.bx, 1
  %i.ca = sub nsw i32 0, %i.bz
  %i.cb = xor i32 %i.by, %i.ca
  store i32 %i.cb, ptr %i.bu, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = and i32 %i.cf, 1
  %i.ci = sub nsw i32 0, %i.ch
  %i.cj = xor i32 %i.cg, %i.ci
  store i32 %i.cj, ptr %i.cc, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !582

bb.f:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cy = phi i32 [ %i.cx, %bb.g ], [ 2, %bb.f ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.db = icmp eq i32 %.pre-phi75, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dv, %bb.i ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dq = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = and i32 %i.dq, 1
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = xor i32 %i.dr, %i.dt
  store i32 %i.du, ptr %.056, align 4, !tbaa !3
  %i.dv = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dw = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dw, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dv, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.dd, align 8
  %.pre68 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dz = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dz, ptr %3, ptr %i.dy
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ea = ptrtoint ptr %.1 to i64
  %i.eb = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = lshr exact i64 %i.ec, 2
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = icmp sgt i32 %i.dx, %i.ee
  br i1 %i.ef, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ee, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eg = icmp ult ptr %0, %1
  br i1 %i.eg, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ej = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.el = zext nneg i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.en = zext i8 %i.ej to i32
  %i.eo = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.en) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.es = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.et = lshr i32 %i.es, 1
  %i.eu = and i32 %i.es, 1
  %i.ev = sub nsw i32 0, %i.eu
  %i.ew = xor i32 %i.et, %i.ev
  %i.ex = load i32, ptr %3, align 8, !tbaa !216
  %i.ey = and i32 %i.ex, 1
  %i.ez = icmp eq i32 %i.ey, 0                    ; 3 uses
  %i.fa = load i32, ptr %i.eh, align 4, !tbaa !218 ; 4 uses
  br i1 %i.ez, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fb = load ptr, ptr %i.ei, align 8, !tbaa !39 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ar = load i32, ptr %3, align 8, !tbaa !216
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.at, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ay = icmp eq i32 %i.au, %i.ax
  br i1 %i.ay, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.az = add nsw i32 %i.au, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.at, i32 noundef %i.au, i32 noundef %i.az)
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.az, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.au, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.au, %.thread54.i.i.i ]
  %i.bb = phi ptr [ %3, %.thread.i.i.i ], [ %i.ba, %.thread43.i.i.i ], [ %i.aw, %.thread54.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !218
  %i.bd = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store i64 %i.aq, ptr %i.be, align 8, !tbaa !73
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !583

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 20
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 3
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 3
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -4                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 3
  %next.gep103 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !584
  %wide.load104 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !584
  %i.aj = zext <2 x i8> %wide.load to <2 x i64>   ; 2 uses
  %i.ak = zext <2 x i8> %wide.load104 to <2 x i64> ; 2 uses
  %i.al = lshr <2 x i64> %i.aj, splat (i64 1)
  %i.am = lshr <2 x i64> %i.ak, splat (i64 1)
  %i.an = and <2 x i64> %i.aj, splat (i64 1)
  %i.ao = and <2 x i64> %i.ak, splat (i64 1)
  %i.ap = sub nsw <2 x i64> zeroinitializer, %i.an
  %i.aq = sub nsw <2 x i64> zeroinitializer, %i.ao
  %i.ar = xor <2 x i64> %i.al, %i.ap
  %i.as = xor <2 x i64> %i.am, %i.aq
  %i.at = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x i64> %i.ar, ptr %next.gep103, align 8, !tbaa !73, !alias.scope !587, !noalias !584
  store <2 x i64> %i.as, ptr %i.at, align 8, !tbaa !73, !alias.scope !587, !noalias !584
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03562.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03761.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03562.ph112 = ptrtoaddr ptr %.03562.ph to i64 ; 2 uses
  %i.av = sub i64 %i.a, %.03562.ph112
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader110, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03562.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.03761.prol = phi ptr [ %i.bc, %.lr.ph.prol ], [ %.03761.ph, %.lr.ph.preheader110 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader110 ]
  %i.aw = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = and i64 %i.ax, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %.03761.prol, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !590

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader110
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %.03562.ph, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %.03761.ph, %.lr.ph.preheader110 ], [ %i.bc, %.lr.ph.prol ]
  %i.be = sub i64 %.03562.ph112, %i.a
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.cl, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.ck, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.03562, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = and i64 %i.bh, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %.03761, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i64                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = and i64 %i.bp, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = xor i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i64                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = and i64 %i.bx, 1
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.bu, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = and i64 %i.cf, 1
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = xor i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !591

bb.f:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cy = phi i32 [ %i.cx, %bb.g ], [ 1, %bb.f ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.db = icmp eq i32 %.pre-phi74, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.du, %bb.i ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.dq = lshr i64 %.sink.i10.i, 1
  %i.dr = and i64 %.sink.i10.i, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = xor i64 %i.dq, %i.ds
  store i64 %i.dt, ptr %.055, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.du, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.dd, align 8
  %.pre67 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dw = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dy = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.dy, ptr %3, ptr %i.dx
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dz = ptrtoint ptr %.1 to i64
  %i.ea = ptrtoint ptr %.0.i.i.i.i to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = icmp sgt i32 %i.dw, %i.ed
  br i1 %i.ee, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ed, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.ef = icmp ult ptr %0, %1
  br i1 %i.ef, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ei = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.em = zext i8 %i.ei to i32
  %i.en = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.em) ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.en, 1
  %i.eq = icmp eq ptr %i.eo, null
  br i1 %i.eq, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.eo, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.ek, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.er = lshr i64 %.sink.i10.i51, 1
  %i.es = and i64 %.sink.i10.i51, 1
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.er, %i.et
  %i.ev = load i32, ptr %3, align 8, !tbaa !216
  %i.ew = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ew, 0                    ; 2 uses
  %i.ey = load i32, ptr %i.eg, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ex, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
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
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
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
  %i.ar = load i32, ptr %3, align 8, !tbaa !216
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.at, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !39
  %i.ay = icmp eq i32 %i.au, %i.ax
  br i1 %i.ay, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %i.az = add nsw i32 %i.au, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.at, i32 noundef %i.au, i32 noundef %i.az)
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.au, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.az, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.au, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.au, %.thread54.i.i.i ]
  %i.bb = phi ptr [ %3, %.thread.i.i.i ], [ %i.ba, %.thread43.i.i.i ], [ %i.aw, %.thread54.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %.sink.sink, ptr %i.ac, align 4, !tbaa !218
  %i.bd = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store i64 %i.aq, ptr %i.be, align 8, !tbaa !73
  %i.bf = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !109
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
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !110
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
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %.032 = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bv = icmp sgt i32 %i.bk, %.032
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !592

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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.e                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 1, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.e
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  store i32 %.pre-phi72, ptr %i.h, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.v = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.v, ptr %3, ptr %i.u  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.w = sext i32 %i.s to i64                     ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.w ; 5 uses
  %i.y = sub i64 %i.a, %i.b                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 20
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add i64 %i.a, %i.w
  %i.aa = shl i64 %i.z, 3
  %i.ab = add i64 %i.aa, 8
  %i.ac = shl i64 %i.b, 3
  %i.ad = sub i64 %i.ab, %i.ac
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.x, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -4                       ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ah = shl i64 %index, 3
  %next.gep103 = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !593
  %wide.load104 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !39, !alias.scope !593
  %i.aj = zext <2 x i8> %wide.load to <2 x i64>   ; 2 uses
  %i.ak = zext <2 x i8> %wide.load104 to <2 x i64> ; 2 uses
  %i.al = lshr <2 x i64> %i.aj, splat (i64 1)
  %i.am = lshr <2 x i64> %i.ak, splat (i64 1)
  %i.an = and <2 x i64> %i.aj, splat (i64 1)
  %i.ao = and <2 x i64> %i.ak, splat (i64 1)
  %i.ap = sub nsw <2 x i64> zeroinitializer, %i.an
  %i.aq = sub nsw <2 x i64> zeroinitializer, %i.ao
  %i.ar = xor <2 x i64> %i.al, %i.ap
  %i.as = xor <2 x i64> %i.am, %i.aq
  %i.at = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x i64> %i.ar, ptr %next.gep103, align 8, !tbaa !73, !alias.scope !596, !noalias !593
  store <2 x i64> %i.as, ptr %i.at, align 8, !tbaa !73, !alias.scope !596, !noalias !593
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03562.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ] ; 3 uses
  %.03761.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.03562.ph112 = ptrtoaddr ptr %.03562.ph to i64 ; 2 uses
  %i.av = sub i64 %i.a, %.03562.ph112
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader110, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03562.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.03761.prol = phi ptr [ %i.bc, %.lr.ph.prol ], [ %.03761.ph, %.lr.ph.preheader110 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader110 ]
  %i.aw = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.ax = zext i8 %i.aw to i64                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = and i64 %i.ax, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %.03761.prol, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !599

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader110
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %.03562.ph, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %.03761.ph, %.lr.ph.preheader110 ], [ %i.bc, %.lr.ph.prol ]
  %i.be = sub i64 %.03562.ph112, %i.a
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.cl, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.ck, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = load i8, ptr %.03562, align 1, !tbaa !39
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 1
  %i.bj = and i64 %i.bh, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bi, %i.bk
  store i64 %i.bl, ptr %.03761, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = zext i8 %i.bo to i64                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = and i64 %i.bp, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = xor i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !73
  %i.bu = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = zext i8 %i.bw to i64                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = and i64 %i.bx, 1
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.by, %i.ca
  store i64 %i.cb, ptr %i.bu, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = and i64 %i.cf, 1
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = xor i64 %i.cg, %i.ci
  store i64 %i.cj, ptr %i.cc, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cl, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !600

bb.f:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cn, 7
  %i.co = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.e, %i.co          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !218 ; 3 uses
  %i.cr = add nsw i32 %spec.select, %i.cq         ; 3 uses
  %i.cs = load i32, ptr %3, align 8, !tbaa !216
  %i.ct = and i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0                    ; 2 uses
  br i1 %i.cu, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cy = phi i32 [ %i.cx, %bb.g ], [ 1, %bb.f ]
  %i.cz = icmp sgt i32 %i.cr, %i.cy
  br i1 %i.cz, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cu, i32 noundef %i.cq, i32 noundef %i.cr)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.cp, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.da = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.db = icmp eq i32 %.pre-phi74, 0
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.db, ptr %3, ptr %i.de
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.cp, align 4, !tbaa !218
  %i.df = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.dc ; 2 uses
  %i.dg = icmp ult ptr %0, %1
  br i1 %i.dg, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.du, %bb.i ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.dh = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dl = zext i8 %i.dh to i32
  %i.dm = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dm, 1
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.dq = lshr i64 %.sink.i10.i, 1
  %i.dr = and i64 %.sink.i10.i, 1
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = xor i64 %i.dq, %i.ds
  store i64 %i.dt, ptr %.055, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.dv = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.du, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.dd, align 8
  %.pre67 = load i32, ptr %i.cp, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dw = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dy = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.dy, ptr %3, ptr %i.dx
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dz = ptrtoint ptr %.1 to i64
  %i.ea = ptrtoint ptr %.0.i.i.i.i to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = lshr exact i64 %i.eb, 3
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = icmp sgt i32 %i.dw, %i.ed
  br i1 %i.ee, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ed, ptr %i.cp, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.ef = icmp ult ptr %0, %1
  br i1 %i.ef, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ei = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.em = zext i8 %i.ei to i32
  %i.en = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.em) ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.en, 1
  %i.eq = icmp eq ptr %i.eo, null
  br i1 %i.eq, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.eo, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.ek, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.er = lshr i64 %.sink.i10.i51, 1
  %i.es = and i64 %.sink.i10.i51, 1
  %i.et = sub nsw i64 0, %i.es
  %i.eu = xor i64 %i.er, %i.et
  %i.ev = load i32, ptr %3, align 8, !tbaa !216
  %i.ew = and i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ew, 0                    ; 2 uses
  %i.ey = load i32, ptr %i.eg, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ex, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

end_hunk_9
