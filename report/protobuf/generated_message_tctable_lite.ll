inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1)
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %i.d to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 8, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !216
  %.pre90 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.g
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.t = icmp eq i32 %.pre-phi, 0
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %.0.v.i.i.i = select i1 %i.t, ptr %3, ptr %i.w
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.h, align 4, !tbaa !218
  %i.x = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.u
  %sext = shl i64 %i.d, 32
  %i.y = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %0, i64 %i.y, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.f:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !218 ; 3 uses
  %i.ae = add nsw i32 %i.ad, %i.z                 ; 3 uses
  %i.af = load i32, ptr %3, align 8, !tbaa !216
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.al = phi i32 [ %i.ak, %bb.h ], [ 8, %bb.g ]
  %i.am = icmp sgt i32 %i.ae, %i.al
  br i1 %i.am, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55, !prof !7

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ah, i32 noundef %i.ad, i32 noundef %i.ae)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !216
  %.pre88 = load i32, ptr %i.ac, align 4, !tbaa !218 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.z
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ae, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.an = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  store i32 %.pre-phi97, ptr %i.ac, align 4, !tbaa !218
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55
  %i.aq = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.aq, ptr %3, ptr %i.ap ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.ar ; 6 uses
  %i.at = sub i64 %i.b, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.au = add i64 %.0.v.i.i.i57129, %i.ar
  %4 = sub i64 %i.au, %i.c
  %5 = add i64 %4, 7
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 28
  %n.vec = and i64 %i.at, -32                     ; 5 uses
  %i.av = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !39
  %wide.load132 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !39
  %i.ay = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.az = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.ba = zext <16 x i1> %i.ay to <16 x i8>
  %i.bb = zext <16 x i1> %i.az to <16 x i8>
  %i.bc = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.ba, ptr %next.gep131, align 1, !tbaa !70
  store <16 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !529

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !532

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.at, -4                   ; 4 uses
  %i.be = getelementptr i8, ptr %0, i64 %n.vec135 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 %n.vec135
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep137 = getelementptr i8, ptr %0, i64 %index136
  %next.gep138 = getelementptr i8, ptr %i.as, i64 %index136
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !39
  %i.bg = icmp ne <4 x i8> %wide.load139, zeroinitializer
  %i.bh = zext <4 x i1> %i.bg to <4 x i8>
  store <4 x i8> %i.bh, ptr %next.gep138, align 1, !tbaa !70
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !533

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.at, %n.vec135
  br i1 %cmp.n141, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.as, %iter.check ], [ %i.as, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph151 = ptrtoint ptr %.04881.ph to i64  ; 2 uses
  %i.bj = sub i64 %i.b, %.04881.ph151
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bn, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bk = load i8, ptr %.04881.prol, align 1, !tbaa !39
  %i.bl = icmp ne i8 %i.bk, 0
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %.05080.prol, align 1, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !534

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %i.bp = sub i64 %.04881.ph151, %i.b
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.ck, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.cj, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.br = load i8, ptr %.04881, align 1, !tbaa !39
  %i.bs = icmp ne i8 %i.br, 0
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %.05080, align 1, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = icmp ne i8 %i.bw, 0
  %i.by = zext i1 %i.bx to i8
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %i.cc = icmp ne i8 %i.cb, 0
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39
  %i.ch = icmp ne i8 %i.cg, 0
  %i.ci = zext i1 %i.ch to i8
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.ck, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !535

bb.j:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cm, 7
  %i.cn = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.z, %i.cn          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !218 ; 3 uses
  %i.cq = add nsw i32 %spec.select, %i.cp         ; 3 uses
  %i.cr = load i32, ptr %3, align 8, !tbaa !216
  %i.cs = and i32 %i.cr, 1                        ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0                    ; 2 uses
  br i1 %i.ct, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cx = phi i32 [ %i.cw, %bb.k ], [ 8, %bb.j ]
  %i.cy = icmp sgt i32 %i.cq, %i.cx
  br i1 %i.cy, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, !prof !7

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ct, i32 noundef %i.cp, i32 noundef %i.cq)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre83 = load i32, ptr %i.co, align 4, !tbaa !218 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cz = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.da = icmp eq i32 %.pre-phi99, 0
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.da, ptr %3, ptr %i.dd
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.co, align 4, !tbaa !218
  %i.de = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.db ; 2 uses
  %i.df = icmp ult ptr %0, %1
  br i1 %i.df, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, %bb.m
  %.073 = phi ptr [ %i.dr, %bb.m ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %i.dg = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dh = icmp sgt i8 %i.dg, -1
  br i1 %i.dh, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.di = zext nneg i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dk = zext i8 %i.dg to i32
  %i.dl = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dk) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.di, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dp = icmp ne i64 %.sink.i10.i, 0
  %i.dq = zext i1 %i.dp to i8
  store i8 %i.dq, ptr %.073, align 1, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.ds = icmp ult ptr %.0.i11.i, %1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1)
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %i.d to i32                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !218  ; 3 uses
  %i.j = add nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !216
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.m, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 8, %bb.c ]
  %i.r = icmp sgt i32 %i.j, %i.q
  br i1 %i.r, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.m, i32 noundef %i.i, i32 noundef %i.j)
  %.pre89 = load i32, ptr %3, align 8, !tbaa !216
  %.pre90 = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  %.pre91 = and i32 %.pre89, 1
  %.pre92 = add nsw i32 %.pre90, %i.g
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.s = phi i32 [ %i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i ], [ %.pre90, %bb.e ]
  %i.t = icmp eq i32 %.pre-phi, 0
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %.0.v.i.i.i = select i1 %i.t, ptr %3, ptr %i.w
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.h, align 4, !tbaa !218
  %i.x = getelementptr inbounds i8, ptr %.0.i.i.i, i64 %i.u
  %sext = shl i64 %i.d, 32
  %i.y = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %0, i64 %i.y, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit

bb.f:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !218 ; 3 uses
  %i.ae = add nsw i32 %i.ad, %i.z                 ; 3 uses
  %i.af = load i32, ptr %3, align 8, !tbaa !216
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54: ; preds = %bb.h, %bb.g
  %i.al = phi i32 [ %i.ak, %bb.h ], [ 8, %bb.g ]
  %i.am = icmp sgt i32 %i.ae, %i.al
  br i1 %i.am, label %bb.i, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55, !prof !7

bb.i:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ah, i32 noundef %i.ad, i32 noundef %i.ae)
  %.pre87 = load i32, ptr %3, align 8, !tbaa !216
  %.pre88 = load i32, ptr %i.ac, align 4, !tbaa !218 ; 2 uses
  %.pre94 = and i32 %.pre87, 1
  %.pre96 = add nsw i32 %.pre88, %i.z
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54, %bb.i
  %.pre-phi97 = phi i32 [ %i.ae, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre96, %bb.i ]
  %.pre-phi95 = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre94, %bb.i ]
  %i.an = phi i32 [ %i.ad, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i54 ], [ %.pre88, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  store i32 %.pre-phi97, ptr %i.ac, align 4, !tbaa !218
  %.not5279 = icmp eq ptr %0, %1
  br i1 %.not5279, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %iter.check

iter.check:                                       ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit55
  %i.aq = icmp eq i32 %.pre-phi95, 0
  %.0.v.i.i.i57 = select i1 %i.aq, ptr %3, ptr %i.ap ; 2 uses
  %.0.i.i.i58 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i57, i64 8
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.0.i.i.i58, i64 %i.ar ; 6 uses
  %i.at = sub i64 %i.b, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0.v.i.i.i57129 = ptrtoaddr ptr %.0.v.i.i.i57 to i64
  %i.au = add i64 %.0.v.i.i.i57129, %i.ar
  %4 = sub i64 %i.au, %i.c
  %5 = add i64 %4, 7
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.at, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 28
  %n.vec = and i64 %i.at, -32                     ; 5 uses
  %i.av = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !39
  %wide.load132 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !39
  %i.ay = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.az = icmp ne <16 x i8> %wide.load132, zeroinitializer
  %i.ba = zext <16 x i1> %i.ay to <16 x i8>
  %i.bb = zext <16 x i1> %i.az to <16 x i8>
  %i.bc = getelementptr i8, ptr %next.gep131, i64 16
  store <16 x i8> %i.ba, ptr %next.gep131, align 1, !tbaa !70
  store <16 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !70
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !532

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.at, -4                   ; 4 uses
  %i.be = getelementptr i8, ptr %0, i64 %n.vec135 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 %n.vec135
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %next.gep137 = getelementptr i8, ptr %0, i64 %index136
  %next.gep138 = getelementptr i8, ptr %i.as, i64 %index136
  %wide.load139 = load <4 x i8>, ptr %next.gep137, align 1, !tbaa !39
  %i.bg = icmp ne <4 x i8> %wide.load139, zeroinitializer
  %i.bh = zext <4 x i1> %i.bg to <4 x i8>
  store <4 x i8> %i.bh, ptr %next.gep138, align 1, !tbaa !70
  %index.next140 = add nuw i64 %index136, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !538

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.at, %n.vec135
  br i1 %cmp.n141, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04881.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ] ; 3 uses
  %.05080.ph = phi ptr [ %i.as, %iter.check ], [ %i.as, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ] ; 2 uses
  %.04881.ph151 = ptrtoint ptr %.04881.ph to i64  ; 2 uses
  %i.bj = sub i64 %i.b, %.04881.ph151
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.04881.prol = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.04881.ph, %.lr.ph.preheader ] ; 2 uses
  %.05080.prol = phi ptr [ %i.bn, %.lr.ph.prol ], [ %.05080.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bk = load i8, ptr %.04881.prol, align 1, !tbaa !39
  %i.bl = icmp ne i8 %i.bk, 0
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %.05080.prol, align 1, !tbaa !70
  %i.bn = getelementptr inbounds nuw i8, ptr %.05080.prol, i64 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.04881.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !539

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.04881.unr = phi ptr [ %.04881.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.05080.unr = phi ptr [ %.05080.ph, %.lr.ph.preheader ], [ %i.bn, %.lr.ph.prol ]
  %i.bp = sub i64 %.04881.ph151, %i.b
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.04881 = phi ptr [ %i.ck, %.lr.ph ], [ %.04881.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.05080 = phi ptr [ %i.cj, %.lr.ph ], [ %.05080.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.br = load i8, ptr %.04881, align 1, !tbaa !39
  %i.bs = icmp ne i8 %i.br, 0
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %.05080, align 1, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %.05080, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04881, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = icmp ne i8 %i.bw, 0
  %i.by = zext i1 %i.bx to i8
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %.05080, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.04881, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %i.cc = icmp ne i8 %i.cb, 0
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %.05080, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.04881, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !39
  %i.ch = icmp ne i8 %i.cg, 0
  %i.ci = zext i1 %i.ch to i8
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %.05080, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.04881, i64 4 ; 3 uses
  %.not52.3 = icmp eq ptr %i.ck, %1
  br i1 %.not52.3, label %_ZN6google8protobuf13RepeatedFieldIbE8TruncateEi.exit, label %.lr.ph, !llvm.loop !540

bb.j:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cm, 7
  %i.cn = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.z, %i.cn          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !218 ; 3 uses
  %i.cq = add nsw i32 %spec.select, %i.cp         ; 3 uses
  %i.cr = load i32, ptr %3, align 8, !tbaa !216
  %i.cs = and i32 %i.cr, 1                        ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0                    ; 2 uses
  br i1 %i.ct, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59: ; preds = %bb.k, %bb.j
  %i.cx = phi i32 [ %i.cw, %bb.k ], [ 8, %bb.j ]
  %i.cy = icmp sgt i32 %i.cq, %i.cx
  br i1 %i.cy, label %bb.l, label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, !prof !7

bb.l:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.ct, i32 noundef %i.cp, i32 noundef %i.cq)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre83 = load i32, ptr %i.co, align 4, !tbaa !218 ; 2 uses
  %.pre98 = and i32 %.pre, 1
  %.pre100 = add nsw i32 %.pre83, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60

_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59, %bb.l
  %.pre-phi101 = phi i32 [ %i.cq, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre100, %bb.l ] ; 2 uses
  %.pre-phi99 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre98, %bb.l ] ; 2 uses
  %i.cz = phi i32 [ %i.cp, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i59 ], [ %.pre83, %bb.l ]
  %i.da = icmp eq i32 %.pre-phi99, 0
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.0.v.i.i.i62 = select i1 %i.da, ptr %3, ptr %i.dd
  %.0.i.i.i63 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i62, i64 8
  store i32 %.pre-phi101, ptr %i.co, align 4, !tbaa !218
  %i.de = getelementptr inbounds i8, ptr %.0.i.i.i63, i64 %i.db ; 2 uses
  %i.df = icmp ult ptr %0, %1
  br i1 %i.df, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60, %bb.m
  %.073 = phi ptr [ %i.dr, %bb.m ], [ %i.de, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.m ], [ %0, %_ZN6google8protobuf13RepeatedFieldIbE16ReserveWithArenaEPNS0_5ArenaEi.exit60 ] ; 3 uses
  %i.dg = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dh = icmp sgt i8 %i.dg, -1
  br i1 %i.dh, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.di = zext nneg i8 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.m

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dk = zext i8 %i.dg to i32
  %i.dl = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dk) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dj, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dm, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.di, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dn, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dp = icmp ne i64 %.sink.i10.i, 0
  %i.dq = zext i1 %i.dp to i8
  store i8 %i.dq, ptr %.073, align 1, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %.073, i64 1 ; 2 uses
  %i.ds = icmp ult ptr %.0.i11.i, %1
  br i1 %i.ds, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit
end_hunk_1
