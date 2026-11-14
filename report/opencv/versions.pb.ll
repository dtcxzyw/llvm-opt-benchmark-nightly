Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/versions.pb?download=true
inline.NumInlined: 163
inline.NumDeleted: 97
begin_hunk_0_@_ZN17opencv_tensorflow10VersionDef14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE:bb.a
  store i32 %.fca.1.extract.i.i.i, ptr %i.g, align 4, !tbaa !33
  %.not9 = icmp eq ptr %.fca.0.extract.i.i.i, null
  br i1 %.not9, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !51

bb.l:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.az = and i32 %.026, 255
  %i.ba = icmp eq i32 %i.az, 16
  br i1 %i.ba, label %bb.m, label %bb.s, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.bb = load i8, ptr %.1.i, align 1, !tbaa !27  ; 2 uses
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %.not.i.i17 = icmp sgt i8 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  br i1 %.not.i.i17, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !27  ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 7
  %i.bh = add nsw i32 %i.bc, -128
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  %.not16.i.i18 = icmp sgt i8 %i.be, -1
  br i1 %.not16.i.i18, label %bb.o, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23.thread

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23.thread: ; preds = %bb.o, %bb.m
  %.0.i21.ph = phi i32 [ %i.bc, %bb.m ], [ %i.bi, %bb.o ]
  %.1.i.i22.ph = phi ptr [ %i.bd, %bb.m ], [ %i.bj, %bb.o ] ; 2 uses
  store ptr %.1.i.i22.ph, ptr %i.a, align 8, !tbaa !25
  store i32 %.0.i21.ph, ptr %i.f, align 8, !tbaa !34
  br label %.backedge

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23: ; preds = %bb.n
  %i.bk = call { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef nonnull %.1.i, i32 noundef %i.bi) ; 2 uses
  %.fca.0.extract.i.i.i19 = extractvalue { ptr, i32 } %i.bk, 0 ; 3 uses
  %.fca.1.extract.i.i.i20 = extractvalue { ptr, i32 } %i.bk, 1
  store ptr %.fca.0.extract.i.i.i19, ptr %i.a, align 8, !tbaa !25
  store i32 %.fca.1.extract.i.i.i20, ptr %i.f, align 8, !tbaa !34
  %.not8 = icmp eq ptr %.fca.0.extract.i.i.i19, null
  br i1 %.not8, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !51

bb.p:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %trunc = trunc i32 %.026 to i8
  switch i8 %trunc, label %bb.s [
    i8 26, label %bb.q
    i8 24, label %bb.r
  ], !prof !52

bb.q:                                             ; preds = %bb.p
  %i.bl = call noundef ptr @_ZN6google8protobuf8internal17PackedInt32ParserEPvPKcPNS1_12ParseContextE(ptr noundef nonnull %i.e, ptr noundef %.1.i, ptr noundef nonnull %2) ; 3 uses
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !25
  %.not7 = icmp eq ptr %i.bl, null
  br i1 %.not7, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !20

.backedge:                                        ; preds = %bb.q, %bb.r, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23.thread, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit
  %.be = phi ptr [ %i.bl, %bb.q ], [ %i.bn, %bb.r ], [ %.1.i.i22.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23.thread ], [ %.1.i.i16.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread ], [ %.fca.0.extract.i.i.i19, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23 ], [ %.fca.0.extract.i.i.i, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %i.cb, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit ]
  br label %bb.b

bb.r:                                             ; preds = %bb.p
  %i.bm = call noundef i32 @_ZN6google8protobuf8internal12ReadVarint32EPPKc(ptr noundef nonnull %i.a)
  call void @_ZN17opencv_tensorflow10VersionDef27_internal_add_bad_consumersEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bm)
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !20

bb.s:                                             ; preds = %bb.p, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.l, %bb.h
  %i.bo = icmp eq i32 %.026, 0
  %i.bp = and i32 %.026, 7
  %i.bq = icmp eq i32 %i.bp, 4
  %or.cond = or i1 %i.bo, %i.bq
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not11 = icmp eq ptr %.1.i, null
  br i1 %.not11, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.thread33, !prof !20

.thread33:                                        ; preds = %bb.t
  %i.br = add i32 %.026, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !53
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bt = zext i32 %.026 to i64
  %i.bu = load i64, ptr %i.h, align 8, !tbaa !10  ; 2 uses
  %i.bv = trunc i64 %i.bu to i1
  br i1 %i.bv, label %bb.v, label %bb.w, !prof !26

bb.v:                                             ; preds = %bb.u
  %i.bw = and i64 %i.bu, -4
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.v, %bb.w
  %i.ca = phi ptr [ %.1.i, %bb.v ], [ %.pre, %bb.w ]
  %.0.i = phi ptr [ %i.by, %bb.v ], [ %i.bz, %bb.w ]
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef %i.bt, ptr noundef %.0.i, ptr noundef %i.ca, ptr noundef nonnull %2) ; 3 uses
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !25
  %.not10 = icmp eq ptr %i.cb, null
  br i1 %.not10, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !20

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.q, %bb.r, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.d, %bb.t, %.thread33
  %i.cc = phi ptr [ %.1.i, %.thread33 ], [ null, %bb.t ], [ %spec.select, %bb.d ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit23 ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit ], [ null, %bb.r ], [ null, %bb.q ]
  ret ptr %i.cc
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6google8protobuf8internal12ReadVarint32EPPKc(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZN6google8protobuf8internal11VarintParseIjEEPKcS4_PT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = add nsw i32 %i.c, -128
  %i.i = or disjoint i32 %i.g, %i.h               ; 2 uses
  %.not16.i = icmp sgt i8 %i.e, -1
  br i1 %.not16.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %_ZN6google8protobuf8internal11VarintParseIjEEPKcS4_PT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef nonnull %i.a, i32 noundef %i.i) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract.i.i = extractvalue { ptr, i32 } %i.k, 1
  br label %_ZN6google8protobuf8internal11VarintParseIjEEPKcS4_PT_.exit

_ZN6google8protobuf8internal11VarintParseIjEEPKcS4_PT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ %.fca.1.extract.i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.a ]
  %.1.i = phi ptr [ %.fca.0.extract.i.i, %bb.d ], [ %i.j, %bb.c ], [ %i.d, %bb.a ]
  store ptr %.1.i, ptr %0, align 8, !tbaa !25
  ret i32 %.0
}

declare noundef ptr @_ZN6google8protobuf8internal17PackedInt32ParserEPvPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN17opencv_tensorflow10VersionDef27_internal_add_bad_consumersEi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %i.b, 1                          ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = zext i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  store i32 %1, ptr %i.j, align 4, !tbaa !35
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = zext i32 %i.b to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 %1, ptr %i.n, align 4, !tbaa !35
  %.pre.i = add i32 %i.b, 1
  br label %_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit

_ZN6google8protobuf13RepeatedFieldIiE3AddERKi.exit: ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  store i32 %.pre-phi.i, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEmPNS0_15UnknownFieldSetEPKcPNS1_12ParseContextE(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK17opencv_tensorflow10VersionDef18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !60
  %.not.i = icmp ult ptr %1, %i.c
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %1)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !33
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.b, %bb.b ], [ %.pr, %bb.c ] ; 4 uses
  %.0.i18 = phi ptr [ %1, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  store i8 8, ptr %.0.i18, align 1, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i18, i64 1 ; 2 uses
  %i.g = trunc i32 %i.e to i8                     ; 2 uses
  store i8 %i.g, ptr %i.f, align 1, !tbaa !27
  %i.h = icmp ult i32 %i.e, 128
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i18, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.j = sext i32 %i.e to i64
  %i.k = or i8 %i.g, -128
  store i8 %i.k, ptr %i.f, align 1, !tbaa !27
  %i.l = lshr i64 %i.j, 7                         ; 2 uses
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i18, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !27
  %i.o = icmp ult i32 %i.e, 16384
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i18, i64 3 ; 2 uses
  br i1 %i.o, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %scevgep67 = getelementptr i8, ptr %.0.i18, i64 2
  %load_initial68 = load i8, ptr %scevgep67, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %store_forwarded69 = phi i8 [ %load_initial68, %.preheader.i.preheader ], [ %i.t, %.preheader.i ]
  %.018.i.i.i = phi i64 [ %i.l, %.preheader.i.preheader ], [ %i.s, %.preheader.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.p, %.preheader.i.preheader ], [ %i.u, %.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1
  %i.r = or i8 %store_forwarded69, -128
  store i8 %i.r, ptr %i.q, align 1, !tbaa !27
  %i.s = lshr i64 %.018.i.i.i, 7                  ; 2 uses
  %i.t = trunc i64 %i.s to i8                     ; 2 uses
  store i8 %i.t, ptr %.0.i.i.i, align 1, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %i.v = icmp samesign ugt i64 %.018.i.i.i, 16383
  br i1 %i.v, label %.preheader.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.preheader.i, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.i, %bb.d ], [ %i.p, %bb.e ], [ %i.u, %.preheader.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !34   ; 2 uses
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !60
  %.not.i20 = icmp ult ptr %.0, %i.y
  br i1 %.not.i20, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit22, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %.0)
  %.pr35 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit22

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit22: ; preds = %bb.f, %bb.g
  %i.aa = phi i32 [ %i.x, %bb.f ], [ %.pr35, %bb.g ] ; 4 uses
  %.0.i21 = phi ptr [ %.0, %bb.f ], [ %i.z, %bb.g ] ; 6 uses
  store i8 16, ptr %.0.i21, align 1, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i21, i64 1 ; 2 uses
  %i.ac = trunc i32 %i.aa to i8                   ; 2 uses
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !27
  %i.ad = icmp ult i32 %i.aa, 128
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit22
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i21, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28

bb.i:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit22
  %i.af = sext i32 %i.aa to i64
  %i.ag = or i8 %i.ac, -128
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !27
  %i.ah = lshr i64 %i.af, 7                       ; 2 uses
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i21, i64 2
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !27
  %i.ak = icmp ult i32 %i.aa, 16384
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i21, i64 3 ; 2 uses
  br i1 %i.ak, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28, label %.preheader.i24.preheader

.preheader.i24.preheader:                         ; preds = %bb.i
  %scevgep64 = getelementptr i8, ptr %.0.i21, i64 2
  %load_initial65 = load i8, ptr %scevgep64, align 1
  br label %.preheader.i24

.preheader.i24:                                   ; preds = %.preheader.i24.preheader, %.preheader.i24
  %store_forwarded66 = phi i8 [ %load_initial65, %.preheader.i24.preheader ], [ %i.ap, %.preheader.i24 ]
  %.018.i.i.i25 = phi i64 [ %i.ah, %.preheader.i24.preheader ], [ %i.ao, %.preheader.i24 ] ; 2 uses
  %.0.i.i.i26 = phi ptr [ %i.al, %.preheader.i24.preheader ], [ %i.aq, %.preheader.i24 ] ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.0.i.i.i26, i64 -1
  %i.an = or i8 %store_forwarded66, -128
  store i8 %i.an, ptr %i.am, align 1, !tbaa !27
  %i.ao = lshr i64 %.018.i.i.i25, 7               ; 2 uses
  %i.ap = trunc i64 %i.ao to i8                   ; 2 uses
  store i8 %i.ap, ptr %.0.i.i.i26, align 1, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 1 ; 2 uses
  %i.ar = icmp samesign ugt i64 %.018.i.i.i25, 16383
  br i1 %i.ar, label %.preheader.i24, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28: ; preds = %.preheader.i24, %bb.i, %bb.h, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %.1 = phi ptr [ %.0, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %i.ae, %bb.h ], [ %i.al, %bb.i ], [ %i.aq, %.preheader.i24 ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load atomic i32, ptr %i.as monotonic, align 8 ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit

bb.j:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %2, align 8, !tbaa !60
  %.not.i29 = icmp ult ptr %.1, %i.aw
  br i1 %.not.i29, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31: ; preds = %bb.j, %bb.k
  %.0.i30 = phi ptr [ %i.ax, %bb.k ], [ %.1, %bb.j ] ; 3 uses
  store i8 26, ptr %.0.i30, align 1, !tbaa !27
  %.0.i1738 = getelementptr inbounds nuw i8, ptr %.0.i30, i64 1 ; 2 uses
  %i.ay = icmp samesign ugt i32 %i.at, 127
  br i1 %i.ay, label %.lr.ph.a, label %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit, !prof !62

.lr.ph.a:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31, %.lr.ph.a
  %.0.i1740 = phi ptr [ %.0.i17.a, %.lr.ph.a ], [ %.0.i1738, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31 ] ; 3 uses
  %.07.i39 = phi i32 [ %i.bb, %.lr.ph.a ], [ %i.at, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31 ] ; 3 uses
  %i.az = trunc i32 %.07.i39 to i8
  %i.ba = or i8 %i.az, -128
  store i8 %i.ba, ptr %.0.i1740, align 1, !tbaa !27
  %i.bb = lshr i32 %.07.i39, 7                    ; 2 uses
  %.0.i17.a = getelementptr inbounds nuw i8, ptr %.0.i1740, i64 1 ; 2 uses
  %i.bc = icmp samesign ugt i32 %.07.i39, 16383
  br i1 %i.bc, label %.lr.ph.a, label %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit, !prof !63, !llvm.loop !55

_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit: ; preds = %.lr.ph.a, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31
  %.07.i.lcssa = phi i32 [ %i.at, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31 ], [ %i.bb, %.lr.ph.a ]
  %.0.i30.pn.lcssa = phi ptr [ %.0.i30, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31 ], [ %.0.i1740, %.lr.ph.a ]
  %.0.i17.lcssa = phi ptr [ %.0.i1738, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit31 ], [ %.0.i17.a, %.lr.ph.a ]
  %i.bd = trunc nuw nsw i32 %.07.i.lcssa to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i30.pn.lcssa, i64 2
  store i8 %i.bd, ptr %.0.i17.lcssa, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bh = load i32, ptr %i.av, align 8, !tbaa !15
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i, %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit
  %.014.i = phi ptr [ %i.be, %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit ], [ %.019.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i ] ; 3 uses
  %.0.i15 = phi ptr [ %i.bg, %_ZN6google8protobuf2io19EpsCopyOutputStream15UnsafeWriteSizeEjPh.exit ], [ %i.bm, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i ] ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !60
  %.not.i32 = icmp ult ptr %.014.i, %i.bk
  br i1 %.not.i32, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit34, label %bb.m, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.bl = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef nonnull %.014.i)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit34

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit34: ; preds = %bb.l, %bb.m
  %.0.i33 = phi ptr [ %i.bl, %bb.m ], [ %.014.i, %bb.l ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i15, i64 4 ; 2 uses
  %i.bn = load i32, ptr %.0.i15, align 4, !tbaa !35 ; 4 uses
  %i.bo = trunc i32 %i.bn to i8                   ; 2 uses
  store i8 %i.bo, ptr %.0.i33, align 1, !tbaa !27
  %i.bp = icmp ult i32 %i.bn, 128
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit34
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i33, i64 1
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i

bb.o:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit34
  %i.br = sext i32 %i.bn to i64
  %i.bs = or i8 %i.bo, -128
  store i8 %i.bs, ptr %.0.i33, align 1, !tbaa !27
  %i.bt = lshr i64 %i.br, 7                       ; 2 uses
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i33, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !27
  %i.bw = icmp ult i32 %i.bn, 16384
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i33, i64 2 ; 2 uses
  br i1 %i.bw, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.o
  %scevgep = getelementptr i8, ptr %.0.i33, i64 1
  %load_initial = load i8, ptr %scevgep, align 1
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %store_forwarded = phi i8 [ %load_initial, %.preheader ], [ %i.cb, %bb.p ]
  %.018.i.i = phi i64 [ %i.bt, %.preheader ], [ %i.ca, %bb.p ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bx, %.preheader ], [ %i.cc, %bb.p ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.0.i.i, i64 -1
  %i.bz = or i8 %store_forwarded, -128
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !27
  %i.ca = lshr i64 %.018.i.i, 7                   ; 2 uses
  %i.cb = trunc i64 %i.ca to i8                   ; 2 uses
  store i8 %i.cb, ptr %.0.i.i, align 1, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %i.cd = icmp samesign ugt i64 %.018.i.i, 16383
  br i1 %i.cd, label %bb.p, label %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i, !llvm.loop !54

_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %.019.i.i = phi ptr [ %i.bq, %bb.n ], [ %i.bx, %bb.o ], [ %i.cc, %bb.p ] ; 2 uses
  %i.ce = icmp ult ptr %i.bm, %i.bj
  br i1 %i.ce, label %bb.l, label %_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit, !llvm.loop !56

_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28
  %.2 = phi ptr [ %.1, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit28 ], [ %.019.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintImEEPhT_S4_.exit.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !10 ; 2 uses
  %i.ch = trunc i64 %i.cg to i1
  br i1 %i.ch, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.q, !prof !20

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit
  %i.ci = and i64 %i.cg, -4
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef %.2, ptr noundef %2)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit
  %.3 = phi ptr [ %i.cl, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.2, %_ZN6google8protobuf2io19EpsCopyOutputStream17WriteVarintPackedINS0_13RepeatedFieldIiEEFmmEEEPhiRKT_iS7_RKT0_.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZNK17opencv_tensorflow10VersionDef12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %i.b, 32
  %sext = ashr exact i64 %i.c, 32
  %i.d = or i64 %sext, 1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = trunc i64 %i.b to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i32 %i.k, ptr %i.l monotonic, align 8
  %i.m = add i64 %.0, %i.b                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33   ; 2 uses
  %.not11 = icmp eq i32 %i.o, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = or i32 %i.o, 1
  %i.q = sext i32 %i.p to i64
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = mul nuw nsw i64 %i.s, 9
  %i.u = add nuw nsw i64 %i.t, 137
  %i.v = lshr i64 %i.u, 6
  %i.w = add i64 %i.v, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.w, %bb.d ], [ %i.m, %bb.c ]  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %.not12 = icmp eq i32 %i.y, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = or i32 %i.y, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = mul nuw nsw i64 %i.ac, 9
  %i.ae = add nuw nsw i64 %i.ad, 137
  %i.af = lshr i64 %i.ae, 6
  %i.ag = add i64 %i.af, %.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.ag, %bb.f ], [ %.1, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.2, ptr noundef nonnull %i.ah)
  ret i64 %i.ai
}

declare noundef i64 @_ZN6google8protobuf8internal14WireFormatLite9Int32SizeERKNS0_13RepeatedFieldIiEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf7Message17CopyWithSizeCheckEPS1_RKS1_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow10VersionDef9MergeImplEPN6google8protobuf7MessageERKS3_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.c, align 8, !tbaa !15
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = load i32, ptr %i.a, align 8, !tbaa !15
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.s, ptr %i.t, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %.not7.i = icmp eq i32 %i.v, 0
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.v, ptr %i.w, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, label %_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = and i64 %i.y, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit

_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK17opencv_tensorflow10VersionDef12GetClassDataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @_ZN17opencv_tensorflow10VersionDef12_class_data_E
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.e)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.j = add nsw i32 %i.i, %i.f
  store i32 %i.j, ptr %i.c, align 8, !tbaa !15
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = load i32, ptr %i.a, align 8, !tbaa !15
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.s, ptr %i.t, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %.not7 = icmp eq i32 %i.v, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.v, ptr %i.w, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = and i64 %i.y, -4
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.f, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow10VersionDef8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i64 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN17opencv_tensorflow10VersionDef5ClearEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN17opencv_tensorflow10VersionDef5ClearEv.exit

_ZN17opencv_tensorflow10VersionDef5ClearEv.exit:  ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN17opencv_tensorflow10VersionDef5ClearEv.exit
  %i.i = load i32, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.j = add nsw i32 %i.i, %i.h
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.j)
  %i.k = load i32, ptr %i.g, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load i32, ptr %i.b, align 8, !tbaa !15
  %i.o = add nsw i32 %i.n, %i.k
  store i32 %i.o, ptr %i.b, align 8, !tbaa !15
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = load i32, ptr %i.g, align 8, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.q, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i: ; preds = %bb.d, %_ZN17opencv_tensorflow10VersionDef5ClearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i
  store i32 %i.x, ptr %i.c, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %.not7.i = icmp eq i32 %i.z, 0
  br i1 %.not7.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, label %_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i: ; preds = %bb.h
  %i.ae = and i64 %i.ac, -4
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  br label %_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit

_ZN17opencv_tensorflow10VersionDef9MergeFromERKS0_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK17opencv_tensorflow10VersionDef13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN17opencv_tensorflow10VersionDef12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !64
  %i.d = load i64, ptr %i.b, align 8, !tbaa !64
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.g, align 4
  %i.i = load i64, ptr %i.h, align 4
  store i64 %i.i, ptr %i.g, align 4
  store i64 %.0.copyload.i.i, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK17opencv_tensorflow10VersionDef11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z40descriptor_table_versions_2eproto_getterv, ptr noundef nonnull @_ZL38descriptor_table_versions_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) @_ZL36file_level_metadata_versions_2eproto)
  ret { ptr, ptr } %i.a
}

declare { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define hidden noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN17opencv_tensorflow10VersionDefEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6google8protobuf5Arena14InternalHelperIN17opencv_tensorflow10VersionDefEE3NewEv.exit, label %bb.b

_ZN6google8protobuf5Arena14InternalHelperIN17opencv_tensorflow10VersionDefEE3NewEv.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN17opencv_tensorflow10VersionDefE, i64 16), ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i64 0, ptr %i.f, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN17opencv_tensorflow10VersionDefEEEPT_PS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 48, ptr noundef nonnull @_ZTIN17opencv_tensorflow10VersionDefE) ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = ptrtoint ptr %0 to i64
  store i64 %i.i, ptr %i.h, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN17opencv_tensorflow10VersionDefE, i64 16), ptr %i.g, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i64 0, ptr %i.n, align 4
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN17opencv_tensorflow10VersionDefEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN17opencv_tensorflow10VersionDefEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperIN17opencv_tensorflow10VersionDefEE3NewEv.exit, %bb.b
  %.0.i = phi ptr [ %i.b, %_ZN6google8protobuf5Arena14InternalHelperIN17opencv_tensorflow10VersionDefEE3NewEv.exit ], [ %i.g, %bb.b ]
  ret ptr %.0.i
}

declare void @_ZNK6google8protobuf7Message11GetTypeNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK17opencv_tensorflow10VersionDef3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN17opencv_tensorflow10VersionDefEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !65
  ret ptr %i.a
}

declare void @_ZNK6google8protobuf7Message25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN6google8protobuf7Message21CheckTypeAndMergeFromERKNS0_11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK17opencv_tensorflow10VersionDef13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf11MessageLite16InternalGetTableEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZN6google8protobuf7Message8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN6google8protobuf7Message9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf7Message13SpaceUsedLongEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #3

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

declare void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.g = and i64 %i.a, -4                         ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i unwind label %bb.g

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i: ; preds = %bb.e
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i: ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i, %bb.d
  %i.o = phi ptr [ %.pr.i.i, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #19
  unreachable

_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit: ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit, %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  ret void
}

declare void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = load ptr, ptr %.0.i, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit
  tail call void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
  br label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.g = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = tail call { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 noundef 32, ptr noundef nonnull @_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEEE) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINS0_15UnknownFieldSetEEEEEvPv, ptr %i.k, align 8, !tbaa !68
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit: ; preds = %bb.c, %bb.d
  %.sink8 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sink8, i8 0, i64 32, i1 false)
  %i.l = load i64, ptr %0, align 8, !tbaa !10
  %i.m = and i64 %i.l, 2
  %i.n = ptrtoint ptr %.sink8 to i64
  %i.o = or i64 %i.m, %i.n
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %0, align 8, !tbaa !10
  store ptr %.0.i, ptr %.sink8, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %.sink8, i64 8
  ret ptr %i.q
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINS0_15UnknownFieldSetEEEEEvPv(ptr noundef %0) #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf15UnknownFieldSet13ClearFallbackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i unwind label %bb.d

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i: ; preds = %bb.b
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i

_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i: ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i, %bb.a
  %i.f = phi ptr [ %.pr.i.i, %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #18
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZN6google8protobuf8internal16InternalMetadata9ContainerINS0_15UnknownFieldSetEED2Ev.exit: ; preds = %_ZN6google8protobuf15UnknownFieldSet5ClearEv.exit.i.i, %bb.c
  ret void
}

declare { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000102() #16 section ".text.startup" {
bb.a:
  tail call void @_ZN6google8protobuf8internal20AddDescriptorsRunnerC1EPKNS1_15DescriptorTableE(ptr noundef nonnull align 1 dereferenceable(1) @_ZL35dynamic_init_dummy_versions_2eproto, ptr noundef nonnull @descriptor_table_versions_2eproto)
  ret void
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"_ZTSN6google8protobuf13RepeatedFieldIiEE", !5, i64 0, !5, i64 4, !13, i64 8}
!15 = !{!14, !5, i64 0}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !13, i64 8}
!18 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!19 = !{!18, !5, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !13, i64 0}
!22 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!4, !4, i64 0}
!28 = !{!"_ZTSN6google8protobuf11MessageLiteE", !9, i64 8}
!29 = !{!"_ZTSN6google8protobuf7MessageE", !28, i64 0}
!30 = !{!"_ZTSSt6atomicIiE", !18, i64 0}
!31 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !30, i64 0}
!32 = !{!"_ZTSN17opencv_tensorflow10VersionDefE", !29, i64 0, !14, i64 16, !30, i64 32, !5, i64 36, !5, i64 40, !31, i64 44}
!33 = !{!32, !5, i64 36}
!34 = !{!32, !5, i64 40}
!35 = !{!5, !5, i64 0}
!36 = !{!"p1 _ZTSN6google8protobuf12UnknownFieldE", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf12UnknownFieldESaIS2_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!39 = !{!38, !36, i64 0}
!40 = !{!38, !36, i64 16}
!41 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !13, i64 0}
!42 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !24, i64 0, !24, i64 8, !24, i64 16, !5, i64 24, !5, i64 28, !41, i64 32, !4, i64 40, !8, i64 72, !5, i64 80, !5, i64 84}
!43 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !13, i64 0}
!44 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !13, i64 0}
!45 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !43, i64 0, !44, i64 8, !21, i64 16}
!46 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !42, i64 0, !5, i64 88, !5, i64 92, !45, i64 96}
!47 = !{!46, !5, i64 92}
!48 = !{!42, !24, i64 0}
!49 = !{!42, !24, i64 8}
!50 = !{!42, !5, i64 28}
!51 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!52 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!53 = !{!42, !5, i64 80}
!54 = distinct !{!54, !61}
!55 = distinct !{!55, !61}
!56 = distinct !{!56, !61}
!57 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !13, i64 0}
!58 = !{!"bool", !4, i64 0}
!59 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !24, i64 0, !24, i64 8, !4, i64 16, !57, i64 48, !58, i64 56, !58, i64 57, !58, i64 58}
!60 = !{!59, !24, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"branch_weights", i32 1, i32 1999}
!63 = !{!"branch_weights", i32 0, i32 1}
!64 = !{!8, !8, i64 0}
!65 = distinct !{null}
!66 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CleanupNodeE", !13, i64 0, !13, i64 8}
!67 = !{!66, !13, i64 0}
!68 = !{!66, !13, i64 8}
end_hunk_0
