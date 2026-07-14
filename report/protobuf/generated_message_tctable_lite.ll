inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 2, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi73, ptr %i.i, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 2
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !542
  %wide.load105 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !542
  %i.ak = zext <4 x i8> %wide.load to <4 x i32>
  %i.al = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.am = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ak, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !545, !noalias !542
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !3, !alias.scope !545, !noalias !542
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoint ptr %.03563.ph to i64  ; 2 uses
  %i.ao = sub i64 %5, %.03563.ph110
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.as, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ar, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ap = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.aq = zext i8 %i.ap to i32
  store i32 %i.aq, ptr %.03762.prol, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !548

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.as, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.as, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %i.at = sub i64 %.03563.ph110, %5
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.ca, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bz, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.av = load i8, ptr %.03563, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  store i32 %i.aw, ptr %.03762, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = zext i8 %i.az to i32
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.be = zext i8 %i.bd to i32
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i32
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = zext i8 %i.bl to i32
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.ca, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !549

bb.f:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cc, 7
  %i.cd = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cd          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !218 ; 3 uses
  %i.cg = add nsw i32 %spec.select, %i.cf         ; 3 uses
  %i.ch = load i32, ptr %3, align 8, !tbaa !216
  %i.ci = and i32 %i.ch, 1                        ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0                    ; 2 uses
  br i1 %i.cj, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !39
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ 2, %bb.f ]
  %i.co = icmp sgt i32 %i.cg, %i.cn
  br i1 %i.co, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cj, i32 noundef %i.cf, i32 noundef %i.cg)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.ce, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cg, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ci, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cp = phi i32 [ %i.cf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cq = icmp eq i32 %.pre-phi75, 0
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cq, ptr %3, ptr %i.ct
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.ce, align 4, !tbaa !218
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cr ; 2 uses
  %i.cv = icmp ult ptr %0, %1
  br i1 %i.cv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dg, %bb.i ], [ %i.cu, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cw = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cy = zext nneg i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.da = zext i8 %i.cw to i32
  %i.db = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.da) ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1
  %i.de = icmp eq ptr %i.dc, null
  br i1 %i.de, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cz, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dd, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.df = trunc i64 %.sink.i10.i to i32
  store i32 %i.df, ptr %.056, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dh = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dg, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.cs, align 8
  %.pre68 = load i32, ptr %i.ce, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.di = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dj = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cu, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dk = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dk, ptr %3, ptr %i.dj
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dl = ptrtoint ptr %.1 to i64
  %i.dm = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 2
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp sgt i32 %i.di, %i.dp
  br i1 %i.dq, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dp, ptr %i.ce, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dr = icmp ult ptr %0, %1
  br i1 %i.dr, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.du = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dw = zext nneg i8 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dy = zext i8 %i.du to i32
  %i.dz = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dy) ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  %i.ec = icmp eq ptr %i.ea, null
  br i1 %i.ec, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.dx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ea, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eb, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.ed = trunc i64 %.sink.i10.i51 to i32
  %i.ee = load i32, ptr %3, align 8, !tbaa !216
  %i.ef = and i32 %i.ee, 1
  %i.eg = icmp eq i32 %i.ef, 0                    ; 3 uses
  %i.eh = load i32, ptr %i.ds, align 4, !tbaa !218 ; 4 uses
  br i1 %i.eg, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !39 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 2, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi73, ptr %i.i, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 32
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 2
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !551
  %wide.load105 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !551
  %i.ak = zext <4 x i8> %wide.load to <4 x i32>
  %i.al = zext <4 x i8> %wide.load105 to <4 x i32>
  %i.am = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.ak, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !554, !noalias !551
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !3, !alias.scope !554, !noalias !551
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoint ptr %.03563.ph to i64  ; 2 uses
  %i.ao = sub i64 %5, %.03563.ph110
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.as, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.ar, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ap = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.aq = zext i8 %i.ap to i32
  store i32 %i.aq, ptr %.03762.prol, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !557

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.as, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.as, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.ar, %.lr.ph.prol ]
  %i.at = sub i64 %.03563.ph110, %5
  %i.au = icmp ugt i64 %i.at, -8
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.ca, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03762 = phi ptr [ %i.bz, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.av = load i8, ptr %.03563, align 1, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  store i32 %i.aw, ptr %.03762, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.ba = zext i8 %i.az to i32
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.be = zext i8 %i.bd to i32
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i32
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.03563, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = zext i8 %i.bl to i32
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.03762, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %.03563, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %.03762, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.03563, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.03762, i64 28
  %i.bw = getelementptr inbounds nuw i8, ptr %.03563, i64 7
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i32
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.03762, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.03563, i64 8 ; 3 uses
  %.not39.7 = icmp eq ptr %i.ca, %1
  br i1 %.not39.7, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %.lr.ph, !llvm.loop !558

bb.f:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds i8, ptr %1, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !39
  %.lobit = lshr i8 %i.cc, 7
  %i.cd = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cd          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !218 ; 3 uses
  %i.cg = add nsw i32 %spec.select, %i.cf         ; 3 uses
  %i.ch = load i32, ptr %3, align 8, !tbaa !216
  %i.ci = and i32 %i.ch, 1                        ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0                    ; 2 uses
  br i1 %i.cj, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !39
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cn = phi i32 [ %i.cm, %bb.g ], [ 2, %bb.f ]
  %i.co = icmp sgt i32 %i.cg, %i.cn
  br i1 %i.co, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cj, i32 noundef %i.cf, i32 noundef %i.cg)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.ce, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cg, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.ci, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.cp = phi i32 [ %i.cf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.cq = icmp eq i32 %.pre-phi75, 0
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.cq, ptr %3, ptr %i.ct
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.ce, align 4, !tbaa !218
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.cr ; 2 uses
  %i.cv = icmp ult ptr %0, %1
  br i1 %i.cv, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dg, %bb.i ], [ %i.cu, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.cw = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.cy = zext nneg i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.da = zext i8 %i.cw to i32
  %i.db = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.da) ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1
  %i.de = icmp eq ptr %i.dc, null
  br i1 %i.de, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.cz, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.cy, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dd, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.df = trunc i64 %.sink.i10.i to i32
  store i32 %i.df, ptr %.056, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dh = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dg, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.cs, align 8
  %.pre68 = load i32, ptr %i.ce, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.di = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dj = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.ct, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.cu, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dk = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.dk, ptr %3, ptr %i.dj
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.dl = ptrtoint ptr %.1 to i64
  %i.dm = ptrtoint ptr %.0.i.i.i.i to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 2
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp sgt i32 %i.di, %i.dp
  br i1 %i.dq, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIjtLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_jEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.dp, ptr %i.ce, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.dr = icmp ult ptr %0, %1
  br i1 %i.dr, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.du = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.dw = zext nneg i8 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.dy = zext i8 %i.du to i32
  %i.dz = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.dy) ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  %i.ec = icmp eq ptr %i.ea, null
  br i1 %i.ec, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.dx, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.ea, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.dw, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eb, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.ed = trunc i64 %.sink.i10.i51 to i32
  %i.ee = load i32, ptr %3, align 8, !tbaa !216
  %i.ef = and i32 %i.ee, 1
  %i.eg = icmp eq i32 %i.ef, 0                    ; 3 uses
  %i.eh = load i32, ptr %i.ds, align 4, !tbaa !218 ; 4 uses
  br i1 %i.eg, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !39 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.m, %bb.l
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 2, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi73, ptr %i.i, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 2
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !566
  %wide.load105 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !566
  %i.ak = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.al = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.am = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.an = lshr <4 x i32> %i.al, splat (i32 1)
  %i.ao = and <4 x i32> %i.ak, splat (i32 1)
  %i.ap = and <4 x i32> %i.al, splat (i32 1)
  %i.aq = sub nsw <4 x i32> zeroinitializer, %i.ao
  %i.ar = sub nsw <4 x i32> zeroinitializer, %i.ap
  %i.as = xor <4 x i32> %i.am, %i.aq
  %i.at = xor <4 x i32> %i.an, %i.ar
  %i.au = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.as, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !569, !noalias !566
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !3, !alias.scope !569, !noalias !566
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoint ptr %.03563.ph to i64  ; 2 uses
  %i.aw = sub i64 %5, %.03563.ph110
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.be, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ax = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 1
  %i.ba = and i32 %i.ay, 1
  %i.bb = sub nsw i32 0, %i.ba
  %i.bc = xor i32 %i.az, %i.bb
  store i32 %i.bc, ptr %.03762.prol, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !572

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.be, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.be, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %i.bf = sub i64 %.03563.ph110, %5
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.cm, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.cl, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.03563, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 1
  %i.bk = and i32 %i.bi, 1
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = xor i32 %i.bj, %i.bl
  store i32 %i.bm, ptr %.03762, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.bq, 1
  %i.bt = sub nsw i32 0, %i.bs
  %i.bu = xor i32 %i.br, %i.bt
  store i32 %i.bu, ptr %i.bn, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = lshr i32 %i.by, 1
  %i.ca = and i32 %i.by, 1
  %i.cb = sub nsw i32 0, %i.ca
  %i.cc = xor i32 %i.bz, %i.cb
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !39
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = and i32 %i.cg, 1
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = xor i32 %i.ch, %i.cj
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cm, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !573

bb.f:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !39
  %.lobit = lshr i8 %i.co, 7
  %i.cp = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cp          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218 ; 3 uses
  %i.cs = add nsw i32 %spec.select, %i.cr         ; 3 uses
  %i.ct = load i32, ptr %3, align 8, !tbaa !216
  %i.cu = and i32 %i.ct, 1                        ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %i.cv, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.cy, %bb.g ], [ 2, %bb.f ]
  %i.da = icmp sgt i32 %i.cs, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cv, i32 noundef %i.cr, i32 noundef %i.cs)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cq, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cu, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.db = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.dc = icmp eq i32 %.pre-phi75, 0
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.dc, ptr %3, ptr %i.df
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cq, align 4, !tbaa !218
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.dd ; 2 uses
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dw, %bb.i ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.di = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dr = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.ds = lshr i32 %i.dr, 1
  %i.dt = and i32 %i.dr, 1
  %i.du = sub nsw i32 0, %i.dt
  %i.dv = xor i32 %i.ds, %i.du
  store i32 %i.dv, ptr %.056, align 4, !tbaa !3
  %i.dw = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dx = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dw, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.de, align 8
  %.pre68 = load i32, ptr %i.cq, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dz = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.ea = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.ea, ptr %3, ptr %i.dz
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.eb = ptrtoint ptr %.1 to i64
  %i.ec = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr exact i64 %i.ed, 2
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = icmp sgt i32 %i.dy, %i.ef
  br i1 %i.eg, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIihLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ef, ptr %i.cq, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eh = icmp ult ptr %0, %1
  br i1 %i.eh, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ek = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.em = zext nneg i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.eo = zext i8 %i.ek to i32
  %i.ep = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.eo) ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.en, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.er, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.et = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.eu = lshr i32 %i.et, 1
  %i.ev = and i32 %i.et, 1
  %i.ew = sub nsw i32 0, %i.ev
  %i.ex = xor i32 %i.eu, %i.ew
  %i.ey = load i32, ptr %3, align 8, !tbaa !216
  %i.ez = and i32 %i.ey, 1
  %i.fa = icmp eq i32 %i.ez, 0                    ; 3 uses
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !218 ; 4 uses
  br i1 %i.fa, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fc = load ptr, ptr %i.ej, align 8, !tbaa !39 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a
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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 2, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre69 = load i32, ptr %3, align 8, !tbaa !216
  %.pre70 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre71 = and i32 %.pre69, 1
  %.pre72 = add nsw i32 %.pre70, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i, %bb.e
  %.pre-phi73 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre72, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi73, ptr %i.i, align 4, !tbaa !218
  %.not3961 = icmp eq ptr %0, %1
  br i1 %.not3961, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 2
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 2
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 2
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 2
  %next.gep104 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !575
  %wide.load105 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !575
  %i.ak = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.al = zext <4 x i8> %wide.load105 to <4 x i32> ; 2 uses
  %i.am = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.an = lshr <4 x i32> %i.al, splat (i32 1)
  %i.ao = and <4 x i32> %i.ak, splat (i32 1)
  %i.ap = and <4 x i32> %i.al, splat (i32 1)
  %i.aq = sub nsw <4 x i32> zeroinitializer, %i.ao
  %i.ar = sub nsw <4 x i32> zeroinitializer, %i.ap
  %i.as = xor <4 x i32> %i.am, %i.aq
  %i.at = xor <4 x i32> %i.an, %i.ar
  %i.au = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %i.as, ptr %next.gep104, align 4, !tbaa !3, !alias.scope !578, !noalias !575
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !3, !alias.scope !578, !noalias !575
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !580

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03563.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03762.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03563.ph110 = ptrtoint ptr %.03563.ph to i64  ; 2 uses
  %i.aw = sub i64 %5, %.03563.ph110
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader108, %.lr.ph.prol
  %.03563.prol = phi ptr [ %i.be, %.lr.ph.prol ], [ %.03563.ph, %.lr.ph.preheader108 ] ; 2 uses
  %.03762.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03762.ph, %.lr.ph.preheader108 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader108 ]
  %i.ax = load i8, ptr %.03563.prol, align 1, !tbaa !39
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 1
  %i.ba = and i32 %i.ay, 1
  %i.bb = sub nsw i32 0, %i.ba
  %i.bc = xor i32 %i.az, %i.bb
  store i32 %i.bc, ptr %.03762.prol, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.03762.prol, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03563.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !581

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader108
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader108 ], [ %i.be, %.lr.ph.prol ]
  %.03563.unr = phi ptr [ %.03563.ph, %.lr.ph.preheader108 ], [ %i.be, %.lr.ph.prol ]
  %.03762.unr = phi ptr [ %.03762.ph, %.lr.ph.preheader108 ], [ %i.bd, %.lr.ph.prol ]
  %i.bf = sub i64 %.03563.ph110, %5
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03563 = phi ptr [ %i.cm, %.lr.ph ], [ %.03563.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03762 = phi ptr [ %i.cl, %.lr.ph ], [ %.03762.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.03563, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 1
  %i.bk = and i32 %i.bi, 1
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = xor i32 %i.bj, %i.bl
  store i32 %i.bm, ptr %.03762, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %.03762, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.03563, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.bq, 1
  %i.bt = sub nsw i32 0, %i.bs
  %i.bu = xor i32 %i.br, %i.bt
  store i32 %i.bu, ptr %i.bn, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %.03762, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.03563, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = lshr i32 %i.by, 1
  %i.ca = and i32 %i.by, 1
  %i.cb = sub nsw i32 0, %i.ca
  %i.cc = xor i32 %i.bz, %i.cb
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.03762, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %.03563, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !39
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = and i32 %i.cg, 1
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = xor i32 %i.ch, %i.cj
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.03762, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.03563, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cm, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %.lr.ph, !llvm.loop !582

bb.f:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !39
  %.lobit = lshr i8 %i.co, 7
  %i.cp = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cp          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218 ; 3 uses
  %i.cs = add nsw i32 %spec.select, %i.cr         ; 3 uses
  %i.ct = load i32, ptr %3, align 8, !tbaa !216
  %i.cu = and i32 %i.ct, 1                        ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %i.cv, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.cy, %bb.g ], [ 2, %bb.f ]
  %i.da = icmp sgt i32 %i.cs, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cv, i32 noundef %i.cr, i32 noundef %i.cs)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre65 = load i32, ptr %i.cq, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre76 = add nsw i32 %.pre65, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41, %bb.h
  %.pre-phi77 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre76, %bb.h ] ; 2 uses
  %.pre-phi75 = phi i32 [ %i.cu, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre74, %bb.h ] ; 2 uses
  %i.db = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i41 ], [ %.pre65, %bb.h ]
  %i.dc = icmp eq i32 %.pre-phi75, 0
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.dc, ptr %3, ptr %i.df
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi77, ptr %i.cq, align 4, !tbaa !218
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0.i.i.i45, i64 %i.dd ; 2 uses
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.056 = phi ptr [ %i.dw, %bb.i ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.di = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.dr = trunc i64 %.sink.i10.i to i32           ; 2 uses
  %i.ds = lshr i32 %i.dr, 1
  %i.dt = and i32 %i.dr, 1
  %i.du = sub nsw i32 0, %i.dt
  %i.dv = xor i32 %i.ds, %i.du
  store i32 %i.dv, ptr %.056, align 4, !tbaa !3
  %i.dw = getelementptr inbounds nuw i8, ptr %.056, i64 4 ; 2 uses
  %i.dx = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dw, %bb.i ], [ %.056, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre66 = load i32, ptr %3, align 8, !tbaa !216
  %.pre67 = load ptr, ptr %i.de, align 8
  %.pre68 = load i32, ptr %i.cq, align 4, !tbaa !218
  %.pre78 = and i32 %.pre66, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi79 = phi i32 [ %.pre78, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi75, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi i32 [ %.pre68, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi77, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dz = phi ptr [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIiE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.ea = icmp eq i32 %.pre-phi79, 0
  %.0.v.i.i.i.i = select i1 %i.ea, ptr %3, ptr %i.dz
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.eb = ptrtoint ptr %.1 to i64
  %i.ec = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = lshr exact i64 %i.ed, 2
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = icmp sgt i32 %i.dy, %i.ef
  br i1 %i.eg, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ef, ptr %i.cq, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eh = icmp ult ptr %0, %1
  br i1 %i.eh, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.thread.i.i.i
  %.0714.i48 = phi ptr [ %.0.i11.i50, %.thread.i.i.i ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ek = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53: ; preds = %.lr.ph.i47
  %i.em = zext nneg i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.eo = zext i8 %i.ek to i32
  %i.ep = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.eo) ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, i64 } %i.ep, 1
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53
  %.0.i11.i50 = phi ptr [ %i.en, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i53 ], [ %i.er, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.et = trunc i64 %.sink.i10.i51 to i32         ; 2 uses
  %i.eu = lshr i32 %i.et, 1
  %i.ev = and i32 %i.et, 1
  %i.ew = sub nsw i32 0, %i.ev
  %i.ex = xor i32 %i.eu, %i.ew
  %i.ey = load i32, ptr %3, align 8, !tbaa !216
  %i.ez = and i32 %i.ey, 1
  %i.fa = icmp eq i32 %i.ez, 0                    ; 3 uses
  %i.fb = load i32, ptr %i.ei, align 4, !tbaa !218 ; 4 uses
  br i1 %i.fa, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fc = load ptr, ptr %i.ej, align 8, !tbaa !39 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIitLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_iEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 1, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi72, ptr %i.i, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 20
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 3
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 3
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep103 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !584
  %wide.load104 = load <2 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !584
  %i.ak = zext <2 x i8> %wide.load to <2 x i64>   ; 2 uses
  %i.al = zext <2 x i8> %wide.load104 to <2 x i64> ; 2 uses
  %i.am = lshr <2 x i64> %i.ak, splat (i64 1)
  %i.an = lshr <2 x i64> %i.al, splat (i64 1)
  %i.ao = and <2 x i64> %i.ak, splat (i64 1)
  %i.ap = and <2 x i64> %i.al, splat (i64 1)
  %i.aq = sub nsw <2 x i64> zeroinitializer, %i.ao
  %i.ar = sub nsw <2 x i64> zeroinitializer, %i.ap
  %i.as = xor <2 x i64> %i.am, %i.aq
  %i.at = xor <2 x i64> %i.an, %i.ar
  %i.au = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x i64> %i.as, ptr %next.gep103, align 8, !tbaa !73, !alias.scope !587, !noalias !584
  store <2 x i64> %i.at, ptr %i.au, align 8, !tbaa !73, !alias.scope !587, !noalias !584
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03562.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03761.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03562.ph112 = ptrtoint ptr %.03562.ph to i64  ; 2 uses
  %i.aw = sub i64 %5, %.03562.ph112
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader110, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.be, %.lr.ph.prol ], [ %.03562.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.03761.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03761.ph, %.lr.ph.preheader110 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader110 ]
  %i.ax = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = lshr i64 %i.ay, 1
  %i.ba = and i64 %i.ay, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = xor i64 %i.az, %i.bb
  store i64 %i.bc, ptr %.03761.prol, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !590

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader110
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader110 ], [ %i.be, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %.03562.ph, %.lr.ph.preheader110 ], [ %i.be, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %.03761.ph, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %i.bf = sub i64 %.03562.ph112, %5
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.cm, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.cl, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.03562, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = and i64 %i.bi, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %.03761, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.bq, 1
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.br, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i64                    ; 2 uses
  %i.bz = lshr i64 %i.by, 1
  %i.ca = and i64 %i.by, 1
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = xor i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bv, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !39
  %i.cg = zext i8 %i.cf to i64                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = and i64 %i.cg, 1
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = xor i64 %i.ch, %i.cj
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cm, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !591

bb.f:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !39
  %.lobit = lshr i8 %i.co, 7
  %i.cp = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cp          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218 ; 3 uses
  %i.cs = add nsw i32 %spec.select, %i.cr         ; 3 uses
  %i.ct = load i32, ptr %3, align 8, !tbaa !216
  %i.cu = and i32 %i.ct, 1                        ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %i.cv, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.cy, %bb.g ], [ 1, %bb.f ]
  %i.da = icmp sgt i32 %i.cs, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cv, i32 noundef %i.cr, i32 noundef %i.cs)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.cq, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.cu, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.db = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.dc = icmp eq i32 %.pre-phi74, 0
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.dc, ptr %3, ptr %i.df
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.cq, align 4, !tbaa !218
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.dd ; 2 uses
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.dv, %bb.i ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.di = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.dr = lshr i64 %.sink.i10.i, 1
  %i.ds = and i64 %.sink.i10.i, 1
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = xor i64 %i.dr, %i.dt
  store i64 %i.du, ptr %.055, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.dw = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dw, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dv, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.de, align 8
  %.pre67 = load i32, ptr %i.cq, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dz = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.dz, ptr %3, ptr %i.dy
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ea = ptrtoint ptr %.1 to i64
  %i.eb = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = lshr exact i64 %i.ec, 3
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = icmp sgt i32 %i.dx, %i.ee
  br i1 %i.ef, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ee, ptr %i.cq, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eg = icmp ult ptr %0, %1
  br i1 %i.eg, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ej = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.el = zext nneg i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.en = zext i8 %i.ej to i32
  %i.eo = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.en) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.es = lshr i64 %.sink.i10.i51, 1
  %i.et = and i64 %.sink.i10.i51, 1
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.es, %i.eu
  %i.ew = load i32, ptr %3, align 8, !tbaa !216
  %i.ex = and i32 %i.ew, 1
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  %i.ez = load i32, ptr %i.eh, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ey, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIlhLb1EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE:bb.a

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
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) ; 4 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !218  ; 3 uses
  %i.k = add nsw i32 %i.j, %i.f                   ; 3 uses
  %i.l = load i32, ptr %3, align 8, !tbaa !216
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.q, %bb.d ], [ 1, %bb.c ]
  %i.s = icmp sgt i32 %i.k, %i.r
  br i1 %i.s, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !7

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.n, i32 noundef %i.j, i32 noundef %i.k)
  %.pre68 = load i32, ptr %3, align 8, !tbaa !216
  %.pre69 = load i32, ptr %i.i, align 4, !tbaa !218 ; 2 uses
  %.pre70 = and i32 %.pre68, 1
  %.pre71 = add nsw i32 %.pre69, %i.f
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i, %bb.e
  %.pre-phi72 = phi i32 [ %i.k, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre71, %bb.e ]
  %.pre-phi = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre70, %bb.e ]
  %i.t = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i ], [ %.pre69, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  store i32 %.pre-phi72, ptr %i.i, align 4, !tbaa !218
  %.not3960 = icmp eq ptr %0, %1
  br i1 %.not3960, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.w = icmp eq i32 %.pre-phi, 0
  %.0.v.i.i.i = select i1 %i.w, ptr %3, ptr %i.v  ; 2 uses
  %.0.i.i.i = getelementptr i8, ptr %.0.v.i.i.i, i64 8
  %i.x = sext i32 %i.t to i64                     ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.x ; 5 uses
  %i.z = sub i64 %5, %4                           ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 20
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = add i64 %i.b, %i.x
  %i.ab = shl i64 %i.aa, 3
  %i.ac = add i64 %i.ab, 8
  %i.ad = shl i64 %i.a, 3
  %i.ae = sub i64 %i.ac, %i.ad
  %scevgep = getelementptr i8, ptr %.0.v.i.i.i, i64 %i.ae
  %bound0 = icmp ult ptr %i.y, %1
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %n.vec    ; 2 uses
  %i.ag = shl i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.ai = shl i64 %index, 3
  %next.gep103 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !593
  %wide.load104 = load <2 x i8>, ptr %i.aj, align 1, !tbaa !39, !alias.scope !593
  %i.ak = zext <2 x i8> %wide.load to <2 x i64>   ; 2 uses
  %i.al = zext <2 x i8> %wide.load104 to <2 x i64> ; 2 uses
  %i.am = lshr <2 x i64> %i.ak, splat (i64 1)
  %i.an = lshr <2 x i64> %i.al, splat (i64 1)
  %i.ao = and <2 x i64> %i.ak, splat (i64 1)
  %i.ap = and <2 x i64> %i.al, splat (i64 1)
  %i.aq = sub nsw <2 x i64> zeroinitializer, %i.ao
  %i.ar = sub nsw <2 x i64> zeroinitializer, %i.ap
  %i.as = xor <2 x i64> %i.am, %i.aq
  %i.at = xor <2 x i64> %i.an, %i.ar
  %i.au = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x i64> %i.as, ptr %next.gep103, align 8, !tbaa !73, !alias.scope !596, !noalias !593
  store <2 x i64> %i.at, ptr %i.au, align 8, !tbaa !73, !alias.scope !596, !noalias !593
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03562.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.af, %middle.block ] ; 3 uses
  %.03761.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %.03562.ph112 = ptrtoint ptr %.03562.ph to i64  ; 2 uses
  %i.aw = sub i64 %5, %.03562.ph112
  %xtraiter = and i64 %i.aw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader110, %.lr.ph.prol
  %.03562.prol = phi ptr [ %i.be, %.lr.ph.prol ], [ %.03562.ph, %.lr.ph.preheader110 ] ; 2 uses
  %.03761.prol = phi ptr [ %i.bd, %.lr.ph.prol ], [ %.03761.ph, %.lr.ph.preheader110 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader110 ]
  %i.ax = load i8, ptr %.03562.prol, align 1, !tbaa !39
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  %i.az = lshr i64 %i.ay, 1
  %i.ba = and i64 %i.ay, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = xor i64 %i.az, %i.bb
  store i64 %i.bc, ptr %.03761.prol, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %.03761.prol, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.03562.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !599

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader110
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader110 ], [ %i.be, %.lr.ph.prol ]
  %.03562.unr = phi ptr [ %.03562.ph, %.lr.ph.preheader110 ], [ %i.be, %.lr.ph.prol ]
  %.03761.unr = phi ptr [ %.03761.ph, %.lr.ph.preheader110 ], [ %i.bd, %.lr.ph.prol ]
  %i.bf = sub i64 %.03562.ph112, %5
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03562 = phi ptr [ %i.cm, %.lr.ph ], [ %.03562.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03761 = phi ptr [ %i.cl, %.lr.ph ], [ %.03761.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bh = load i8, ptr %.03562, align 1, !tbaa !39
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = and i64 %i.bi, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bj, %i.bl
  store i64 %i.bm, ptr %.03761, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %.03761, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.03562, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = and i64 %i.bq, 1
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = xor i64 %i.br, %i.bt
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw i8, ptr %.03761, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %.03562, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %i.by = zext i8 %i.bx to i64                    ; 2 uses
  %i.bz = lshr i64 %i.by, 1
  %i.ca = and i64 %i.by, 1
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = xor i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bv, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %.03761, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %.03562, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !39
  %i.cg = zext i8 %i.cf to i64                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = and i64 %i.cg, 1
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = xor i64 %i.ch, %i.cj
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !73
  %i.cl = getelementptr inbounds nuw i8, ptr %.03761, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.03562, i64 4 ; 3 uses
  %.not39.3 = icmp eq ptr %i.cm, %1
  br i1 %.not39.3, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %.lr.ph, !llvm.loop !600

bb.f:                                             ; preds = %bb.b
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !39
  %.lobit = lshr i8 %i.co, 7
  %i.cp = zext nneg i8 %.lobit to i32
  %spec.select = add nsw i32 %i.f, %i.cp          ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218 ; 3 uses
  %i.cs = add nsw i32 %spec.select, %i.cr         ; 3 uses
  %i.ct = load i32, ptr %3, align 8, !tbaa !216
  %i.cu = and i32 %i.ct, 1                        ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  br i1 %i.cv, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41: ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.cy, %bb.g ], [ 1, %bb.f ]
  %i.da = icmp sgt i32 %i.cs, %i.cz
  br i1 %i.da, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, !prof !7

bb.h:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.cv, i32 noundef %i.cr, i32 noundef %i.cs)
  %.pre = load i32, ptr %3, align 8, !tbaa !216
  %.pre64 = load i32, ptr %i.cq, align 4, !tbaa !218 ; 2 uses
  %.pre73 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre64, %spec.select
  br label %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42

_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41, %bb.h
  %.pre-phi76 = phi i32 [ %i.cs, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre75, %bb.h ] ; 2 uses
  %.pre-phi74 = phi i32 [ %i.cu, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre73, %bb.h ] ; 2 uses
  %i.db = phi i32 [ %i.cr, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i41 ], [ %.pre64, %bb.h ]
  %i.dc = icmp eq i32 %.pre-phi74, 0
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.0.v.i.i.i44 = select i1 %i.dc, ptr %3, ptr %i.df
  %.0.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i44, i64 8
  store i32 %.pre-phi76, ptr %i.cq, align 4, !tbaa !218
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0.i.i.i45, i64 %i.dd ; 2 uses
  %i.dh = icmp ult ptr %0, %1
  br i1 %i.dh, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42, %bb.i
  %.055 = phi ptr [ %i.dv, %bb.i ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %.0714.i = phi ptr [ %.0.i11.i, %bb.i ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 3 uses
  %i.di = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.dj = icmp sgt i8 %i.di, -1
  br i1 %i.dj, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.dk = zext nneg i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.dm = zext i8 %i.di to i32
  %i.dn = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.dm) ; 2 uses
  %i.do = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.dn, 1
  %i.dq = icmp eq ptr %i.do, null
  br i1 %i.dq, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.dl, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.do, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.dk, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.dp, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 2 uses
  %i.dr = lshr i64 %.sink.i10.i, 1
  %i.ds = and i64 %.sink.i10.i, 1
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = xor i64 %i.dr, %i.dt
  store i64 %i.du, ptr %.055, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %i.dw = icmp ult ptr %.0.i11.i, %1
  br i1 %i.dw, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit: ; preds = %bb.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i
  %.1.ph = phi ptr [ %i.dv, %bb.i ], [ %.055, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.2.i.ph = phi ptr [ %.0.i11.i, %bb.i ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %.pre65 = load i32, ptr %3, align 8, !tbaa !216
  %.pre66 = load ptr, ptr %i.de, align 8
  %.pre67 = load i32, ptr %i.cq, align 4, !tbaa !218
  %.pre77 = and i32 %.pre65, 1
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42
  %.pre-phi78 = phi i32 [ %.pre77, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi74, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dx = phi i32 [ %.pre67, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %.pre-phi76, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %i.dy = phi ptr [ %.pre66, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.df, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.1 = phi ptr [ %.1.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %i.dg, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ]
  %.2.i = phi ptr [ %.2.i.ph, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.loopexit ], [ %0, %_ZN6google8protobuf13RepeatedFieldIlE16ReserveWithArenaEPNS0_5ArenaEi.exit42 ] ; 2 uses
  %i.dz = icmp eq i32 %.pre-phi78, 0
  %.0.v.i.i.i.i = select i1 %i.dz, ptr %3, ptr %i.dy
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ea = ptrtoint ptr %.1 to i64
  %i.eb = ptrtoint ptr %.0.i.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = lshr exact i64 %i.ec, 3
  %i.ee = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ef = icmp sgt i32 %i.dx, %i.ee
  br i1 %i.ef, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIltLb1EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_lEES8_S8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  store i32 %i.ee, ptr %i.cq, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

bb.k:                                             ; preds = %bb.a
  %i.eg = icmp ult ptr %0, %1
  br i1 %i.eg, label %.lr.ph.i47.preheader, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit

.lr.ph.i47.preheader:                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %bb.m
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.m ], [ %0, %.lr.ph.i47.preheader ] ; 3 uses
  %i.ej = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52: ; preds = %.lr.ph.i47
  %i.el = zext nneg i8 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.l

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.en = zext i8 %i.ej to i32
  %i.eo = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.en) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  %i.er = icmp eq ptr %i.ep, null
  br i1 %i.er, label %_ZN6google8protobuf13RepeatedFieldIlE8TruncateEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52
  %.0.i11.i50 = phi ptr [ %i.em, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.ep, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.el, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i52 ], [ %i.eq, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 2 uses
  %i.es = lshr i64 %.sink.i10.i51, 1
  %i.et = and i64 %.sink.i10.i51, 1
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.es, %i.eu
  %i.ew = load i32, ptr %3, align 8, !tbaa !216
  %i.ex = and i32 %i.ew, 1
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  %i.ez = load i32, ptr %i.eh, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ey, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.l
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

end_hunk_5
