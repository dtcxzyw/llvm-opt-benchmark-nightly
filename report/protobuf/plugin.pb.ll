inline.NumInlined: 518
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6google8protobuf8compiler7Version18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.y = load ptr, ptr %2, align 8, !tbaa !37
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.2 to i64
  %reass.sub = sub i64 %i.z, %i.aa
  %i.ab = add i64 %reass.sub, 14
  %i.ac = icmp slt i64 %i.ab, %i.w
  br i1 %i.ac, label %.critedge.i, label %bb.j, !prof !21

.critedge.i:                                      ; preds = %bb.i, %bb.h
  %i.ad = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 4, i64 %i.w, ptr %i.u, ptr noundef %.2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 34, ptr %.2, align 1, !tbaa !20
  %i.af = trunc i64 %i.w to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.u, i64 %i.w, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.w
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.j, %.critedge.i, %bb.g
  %.3 = phi ptr [ %.2, %bb.g ], [ %i.ad, %.critedge.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = trunc i64 %i.aj to i1
  br i1 %i.ak, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.k, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.al = add nsw i64 %i.aj, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef %.3, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.4 = phi ptr [ %i.ao, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.3, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi1EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 8, ptr %.0.i, align 1, !tbaa !20
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !41

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !20
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !42, !llvm.loop !43

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !20
  ret ptr %i.l
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi2EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 16, ptr %.0.i, align 1, !tbaa !20
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !41

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !20
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !42, !llvm.loop !43

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !20
  ret ptr %i.l
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi3EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 24, ptr %.0.i, align 1, !tbaa !20
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !41

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !20
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !42, !llvm.loop !43

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !20
  ret ptr %i.l
}

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK6google8protobuf8compiler7Version12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4    ; 5 uses
  %i.n = and i32 %i.m, 15
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = or i32 %i.w, 1
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = mul nuw nsw i32 %i.z, 9
  %i.ab = add nuw nsw i32 %i.aa, 73
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add i64 %i.v, 1
  %i.af = add i64 %i.ae, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.af, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.ag = and i32 %i.m, 2
  %.not19 = icmp eq i32 %i.ag, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !20
  %i.aj = or i32 %i.ai, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 137
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add i64 %i.ap, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.aq, %bb.d ], [ %.0, %bb.c ]  ; 2 uses
  %i.ar = and i32 %i.m, 4
  %.not20 = icmp eq i32 %i.ar, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !20
  %i.au = or i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 137
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add i64 %i.ba, %.1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.bb, %bb.f ], [ %.1, %bb.e ]  ; 2 uses
  %i.bc = and i32 %i.m, 8
  %.not21 = icmp eq i32 %i.bc, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !20
  %i.bf = or i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = xor i64 %i.bh, 63
  %i.bj = mul nuw nsw i64 %i.bi, 9
  %i.bk = add nuw nsw i64 %i.bj, 137
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = add i64 %i.bl, %.2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.3 = phi i64 [ %i.bm, %bb.h ], [ %.2, %bb.g ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bo = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.3, ptr noundef nonnull %i.bn)
  ret i64 %i.bo
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler7Version8CopyFromERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf8compiler7Version9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler7Version5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !4    ; 6 uses
  %i.d = and i32 %i.c, 15
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1
  %.not19.i.i = icmp eq i32 %i.e, 0
  br i1 %.not19.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %i.m to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.r, %bb.f ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %.0.i.i.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %bb.c
  %i.s = and i32 %i.c, 2
  %.not20.i.i = icmp eq i32 %i.s, 0
  br i1 %.not20.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.u, ptr %i.v, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = and i32 %i.c, 4
  %.not21.i.i = icmp eq i32 %i.w, 0
  br i1 %.not21.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.y, ptr %i.z, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = and i32 %i.c, 8
  %.not22.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not22.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4
  %i.ag = or i32 %i.af, %i.c
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf8compiler7Version9MergeFromERKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = add nsw i64 %i.ai, -1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  br label %_ZN6google8protobuf8compiler7Version9MergeFromERKS2_.exit

_ZN6google8protobuf8compiler7Version9MergeFromERKS2_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %bb.m, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_ZN6google8protobuf8compiler7Version12InternalSwapEPS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  store i64 %i.b, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4
  %i.h = load i32, ptr %i.f, align 8, !tbaa !4
  store i32 %i.h, ptr %i.e, align 8, !tbaa !4
  store i32 %i.g, ptr %i.f, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  store i64 %i.k, ptr %i.j, align 8, !tbaa !46
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.n = load <8 x i8>, ptr %i.m, align 8, !tbaa !20, !alias.scope !50, !noalias !47
  %i.o = load <8 x i8>, ptr %i.l, align 8, !tbaa !20, !alias.scope !47, !noalias !50
  store <8 x i8> %i.n, ptr %i.l, align 8, !tbaa !20, !alias.scope !47, !noalias !50
  store <8 x i8> %i.o, ptr %i.m, align 8, !tbaa !20, !alias.scope !50, !noalias !47
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load <4 x i8>, ptr %i.p, align 8, !tbaa !20, !alias.scope !50, !noalias !47
  %i.r = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !20, !alias.scope !47, !noalias !50
  store <4 x i8> %i.q, ptr %.079.i.ptr.8.i, align 8, !tbaa !20, !alias.scope !47, !noalias !50
  store <4 x i8> %i.r, ptr %i.p, align 8, !tbaa !20, !alias.scope !50, !noalias !47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZNK6google8protobuf8compiler7Version11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf8compiler7Version12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler20CodeGeneratorRequest16clear_proto_fileEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19FileDescriptorProtoEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19FileDescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19FileDescriptorProtoEE5ClearEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = and i32 %i.f, -3
  store i32 %i.g, ptr %i.e, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler20CodeGeneratorRequest29clear_source_file_descriptorsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19FileDescriptorProtoEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler20CodeGeneratorRequest18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32 ; 6 uses
  %i.ao = icmp sgt i64 %i.an, 127
  br i1 %i.ao, label %.critedge.i56, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %2, align 8, !tbaa !37
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.1 to i64
  %reass.sub76 = sub i64 %i.aq, %i.ar
  %i.as = add i64 %reass.sub76, 14
  %i.at = icmp slt i64 %i.as, %i.an
  br i1 %i.at, label %.critedge.i56, label %bb.g, !prof !21

.critedge.i56:                                    ; preds = %bb.f, %bb.e
  %i.au = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 2, i64 %i.an, ptr %i.al, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 18, ptr %.1, align 1, !tbaa !20
  %i.aw = trunc i64 %i.an to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.al, i64 %i.an, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.an
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.g, %.critedge.i56, %.loopexit65
  %.2 = phi ptr [ %.1, %.loopexit65 ], [ %i.au, %.critedge.i56 ], [ %i.ay, %bb.g ] ; 2 uses
  %i.az = and i32 %i.b, 8
  %.not60 = icmp eq i32 %i.az, 0
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4
  %i.be = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i32 noundef %i.bd, ptr noundef %.2, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.3 = phi ptr [ %i.be, %bb.h ], [ %.2, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ] ; 3 uses
  %i.bf = and i32 %i.b, 2
  %.not61 = icmp eq i32 %i.bf, 0
  br i1 %.not61, label %.loopexit64, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %.not77 = icmp eq i32 %i.bh, 0
  br i1 %.not77, label %.loopexit64, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph70, %bb.k
  %.469 = phi ptr [ %.3, %.lr.ph70 ], [ %i.bv, %bb.k ]
  %.05068 = phi i32 [ 0, %.lr.ph70 ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = add i64 %i.bk, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = sext i32 %.05068 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %.0.i.i.i.i57 = select i1 %i.bm, ptr %i.bi, ptr %i.br
  %i.bs = load ptr, ptr %.0.i.i.i.i57, align 8, !tbaa !46 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bv = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i32 noundef %i.bu, ptr noundef %.469, ptr noundef %2) ; 2 uses
  %i.bw = add nuw i32 %.05068, 1                  ; 2 uses
  %exitcond81.not = icmp eq i32 %i.bw, %i.bh
  br i1 %exitcond81.not, label %.loopexit64, label %bb.k, !llvm.loop !59

.loopexit64:                                      ; preds = %bb.k, %bb.j, %bb.i
  %.5 = phi ptr [ %.3, %bb.i ], [ %.3, %bb.j ], [ %i.bv, %bb.k ] ; 3 uses
  %i.bx = and i32 %i.b, 16
  %.not62 = icmp eq i32 %i.bx, 0
  br i1 %.not62, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.loopexit64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !52 ; 2 uses
  %.not78 = icmp eq i32 %i.bz, 0
  br i1 %.not78, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph74, %bb.m
  %.673 = phi ptr [ %.5, %.lr.ph74 ], [ %i.cn, %bb.m ]
  %.04872 = phi i32 [ 0, %.lr.ph74 ], [ %i.co, %bb.m ] ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !56
  %i.cc = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.cd = and i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = add i64 %i.cc, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = sext i32 %.04872 to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %.0.i.i.i.i58 = select i1 %i.ce, ptr %i.ca, ptr %i.cj
  %i.ck = load ptr, ptr %.0.i.i.i.i58, align 8, !tbaa !46 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.cm = load atomic i32, ptr %i.cl monotonic, align 4
  %i.cn = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 17, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i32 noundef %i.cm, ptr noundef %.673, ptr noundef %2) ; 2 uses
  %i.co = add nuw i32 %.04872, 1                  ; 2 uses
  %exitcond82.not = icmp eq i32 %i.co, %i.bz
  br i1 %exitcond82.not, label %.loopexit, label %bb.m, !llvm.loop !60

.loopexit:                                        ; preds = %bb.m, %bb.l, %.loopexit64
  %.7 = phi ptr [ %.5, %.loopexit64 ], [ %.5, %bb.l ], [ %i.cn, %bb.m ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !11 ; 2 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.n, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef %.7, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.8 = phi ptr [ %i.cv, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.7, %.loopexit ]
  ret ptr %.8
}

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK6google8protobuf8compiler20CodeGeneratorRequest12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4    ; 6 uses
  %i.n = and i32 %i.m, 31
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not46 = icmp eq i32 %i.o, 0
  br i1 %.not46, label %.loopexit54, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52   ; 5 uses
  %i.r = zext i32 %i.q to i64                     ; 6 uses
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph, label %.loopexit54

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56
  %.fr69 = freeze ptr %i.u                        ; 2 uses
  %i.v = ptrtoint ptr %.fr69 to i64               ; 2 uses
  %i.w = and i64 %i.v, 1
  %i.x = icmp eq i64 %i.w, 0
  %i.y = add i64 %i.v, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  br i1 %i.x, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.r, 1
  %i.ab = icmp eq i32 %i.q, 1
  br i1 %i.ab, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.r, 2147483646
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.fr69, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %invariant.op = add i64 %i.ad, %i.al
  %i.am = zext nneg i32 %i.q to i64
  %i.an = mul i64 %invariant.op, %i.am
  %i.ao = add i64 %i.an, %i.r
  br label %.loopexit54

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %.057 = phi i64 [ %i.r, %.lr.ph.split.preheader.new ], [ %i.br, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !32 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = or i32 %i.at, 1
  %i.av = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.au, i1 true)
  %i.aw = xor i32 %i.av, 31
  %i.ax = mul nuw nsw i32 %i.aw, 9
  %i.ay = add nuw nsw i32 %i.ax, 73
  %i.az = lshr i32 %i.ay, 6
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add i64 %i.as, %.057
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !32 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = or i32 %i.bi, 1
  %i.bk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bl = xor i32 %i.bk, 31
  %i.bm = mul nuw nsw i32 %i.bl, 9
  %i.bn = add nuw nsw i32 %i.bm, 73
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = add i64 %i.bh, %i.bc
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit54.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !61

.loopexit54.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit54, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit54.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.loopexit54.loopexit.unr-lcssa ]
  %.057.epil.init = phi i64 [ %i.r, %.lr.ph.split.preheader ], [ %i.br, %.loopexit54.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = or i32 %i.bw, 1
  %i.by = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.bz = xor i32 %i.by, 31
  %i.ca = mul nuw nsw i32 %i.bz, 9
  %i.cb = add nuw nsw i32 %i.ca, 73
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = add i64 %i.bv, %.057.epil.init
  %i.cf = add i64 %i.ce, %i.cd
  br label %.loopexit54

.loopexit54:                                      ; preds = %.lr.ph.split.epil.preheader, %.loopexit54.loopexit.unr-lcssa, %.lr.ph.split.us, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ], [ %i.ao, %.lr.ph.split.us ], [ %i.br, %.loopexit54.loopexit.unr-lcssa ], [ %i.cf, %.lr.ph.split.epil.preheader ] ; 2 uses
  %i.cg = and i32 %i.m, 2
  %.not47 = icmp eq i32 %i.cg, 0
  br i1 %.not47, label %.loopexit53, label %bb.c

bb.c:                                             ; preds = %.loopexit54
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !52 ; 2 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = add i64 %.1, %i.cj                      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = add i64 %i.cn, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = select i1 %i.cp, ptr %i.cl, ptr %i.cs   ; 2 uses
  %.idx = shl nsw i64 %i.cj, 3
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %.idx
  %.not4858 = icmp eq i32 %i.ci, 0
  br i1 %.not4858, label %.loopexit53, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c, %.lr.ph61
  %.260 = phi i64 [ %i.dg, %.lr.ph61 ], [ %i.ck, %bb.c ]
  %.sroa.043.059 = phi ptr [ %i.dh, %.lr.ph61 ], [ %i.ct, %bb.c ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.043.059, align 8, !tbaa !46
  %i.cw = tail call noundef i64 @_ZNK6google8protobuf19FileDescriptorProto12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cv) ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = or i32 %i.cx, 1
  %i.cz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cy, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = mul nuw nsw i32 %i.da, 9
  %i.dc = add nuw nsw i32 %i.db, 73
  %i.dd = lshr i32 %i.dc, 6
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %i.cw, %.260
  %i.dg = add i64 %i.df, %i.de                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.043.059, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.dh, %i.cu
  br i1 %.not48, label %.loopexit53, label %.lr.ph61

.loopexit53:                                      ; preds = %.lr.ph61, %bb.c, %.loopexit54
  %.3 = phi i64 [ %.1, %.loopexit54 ], [ %i.ck, %bb.c ], [ %i.dg, %.lr.ph61 ] ; 2 uses
  %i.di = and i32 %i.m, 4
  %.not49 = icmp eq i32 %i.di, 0
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit53
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !18
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, -4
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !32 ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = or i32 %i.dq, 1
  %i.ds = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dr, i1 true)
  %i.dt = xor i32 %i.ds, 31
  %i.du = mul nuw nsw i32 %i.dt, 9
  %i.dv = add nuw nsw i32 %i.du, 73
  %i.dw = lshr i32 %i.dv, 6
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = add i64 %.3, 1
  %i.dz = add i64 %i.dy, %i.dp
  %i.ea = add i64 %i.dz, %i.dx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit53
  %.4 = phi i64 [ %i.ea, %bb.d ], [ %.3, %.loopexit53 ] ; 2 uses
  %i.eb = and i32 %i.m, 8
  %.not50 = icmp eq i32 %i.eb, 0
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !20
  %i.ee = tail call noundef i64 @_ZNK6google8protobuf8compiler7Version12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ed) ; 2 uses
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = or i32 %i.ef, 1
  %i.eh = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eg, i1 true)
  %i.ei = xor i32 %i.eh, 31
  %i.ej = mul nuw nsw i32 %i.ei, 9
  %i.ek = add nuw nsw i32 %i.ej, 73
  %i.el = lshr i32 %i.ek, 6
  %i.em = zext nneg i32 %i.el to i64
  %i.en = add i64 %.4, 1
  %i.eo = add i64 %i.en, %i.ee
  %i.ep = add i64 %i.eo, %i.em
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5 = phi i64 [ %i.ep, %bb.f ], [ %.4, %bb.e ]  ; 2 uses
  %i.eq = and i32 %i.m, 16
  %.not51 = icmp eq i32 %i.eq, 0
  br i1 %.not51, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.es = load i32, ptr %i.er, align 8, !tbaa !52 ; 2 uses
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = shl nsw i64 %i.et, 1
  %i.ev = add i64 %i.eu, %.5                      ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !56
  %i.ey = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.ez = and i64 %i.ey, 1
  %i.fa = icmp eq i64 %i.ez, 0
  %i.fb = add i64 %i.ey, -1
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = select i1 %i.fa, ptr %i.ew, ptr %i.fd   ; 2 uses
  %.idx70 = shl nsw i64 %i.et, 3
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %.idx70
  %.not5263 = icmp eq i32 %i.es, 0
  br i1 %.not5263, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.h, %.lr.ph66
  %.665 = phi i64 [ %i.fr, %.lr.ph66 ], [ %i.ev, %bb.h ]
  %.sroa.039.064 = phi ptr [ %i.fs, %.lr.ph66 ], [ %i.fe, %bb.h ] ; 2 uses
  %i.fg = load ptr, ptr %.sroa.039.064, align 8, !tbaa !46
  %i.fh = tail call noundef i64 @_ZNK6google8protobuf19FileDescriptorProto12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fg) ; 2 uses
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = or i32 %i.fi, 1
  %i.fk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fj, i1 true)
  %i.fl = xor i32 %i.fk, 31
  %i.fm = mul nuw nsw i32 %i.fl, 9
  %i.fn = add nuw nsw i32 %i.fm, 73
  %i.fo = lshr i32 %i.fn, 6
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = add i64 %i.fh, %.665
  %i.fr = add i64 %i.fq, %i.fp                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.039.064, i64 8 ; 2 uses
  %.not52 = icmp eq ptr %i.fs, %i.ff
  br i1 %.not52, label %.loopexit, label %.lr.ph66

.loopexit:                                        ; preds = %.lr.ph66, %bb.h, %bb.g, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.7 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ %.5, %bb.g ], [ %i.ev, %bb.h ], [ %i.fr, %.lr.ph66 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fu = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.7, ptr noundef nonnull %i.ft)
  ret i64 %i.fu
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler20CodeGeneratorRequest8CopyFromERKS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler20CodeGeneratorRequest5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  tail call void @_ZN6google8protobuf8compiler20CodeGeneratorRequest9MergeImplERNS0_11MessageLiteERKS3_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_ZN6google8protobuf8compiler20CodeGeneratorRequest12InternalSwapEPS2_(ptr nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  store i64 %i.b, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4
  %i.h = load i32, ptr %i.f, align 8, !tbaa !4
  store i32 %i.h, ptr %i.e, align 8, !tbaa !4
  store i32 %i.g, ptr %i.f, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !20, !alias.scope !73, !noalias !68
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !20, !alias.scope !68, !noalias !73
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !20, !alias.scope !68, !noalias !73
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !20, !alias.scope !73, !noalias !68
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !20, !alias.scope !73, !noalias !68
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !20, !alias.scope !68, !noalias !73
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !20, !alias.scope !68, !noalias !73
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !20, !alias.scope !73, !noalias !68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.r = load <8 x i8>, ptr %i.q, align 8, !tbaa !20, !alias.scope !85, !noalias !80
  %i.s = load <8 x i8>, ptr %i.p, align 8, !tbaa !20, !alias.scope !80, !noalias !85
  store <8 x i8> %i.r, ptr %i.p, align 8, !tbaa !20, !alias.scope !80, !noalias !85
  store <8 x i8> %i.s, ptr %i.q, align 8, !tbaa !20, !alias.scope !85, !noalias !80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i16 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load <4 x i8>, ptr %i.t, align 8, !tbaa !20, !alias.scope !85, !noalias !80
  %i.v = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i16, align 8, !tbaa !20, !alias.scope !80, !noalias !85
  store <4 x i8> %i.u, ptr %.079.i.ptr.8.i.i.i16, align 8, !tbaa !20, !alias.scope !80, !noalias !85
  store <4 x i8> %i.v, ptr %i.t, align 8, !tbaa !20, !alias.scope !85, !noalias !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ac = load <2 x ptr>, ptr %i.x, align 8, !tbaa !46
  store i64 %i.y, ptr %i.x, align 8, !tbaa !46
  store <2 x ptr> %i.ac, ptr %i.w, align 8, !tbaa !46
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.af = load <8 x i8>, ptr %i.ae, align 8, !tbaa !20, !alias.scope !99, !noalias !94
  %i.ag = load <8 x i8>, ptr %i.ad, align 8, !tbaa !20, !alias.scope !94, !noalias !99
  store <8 x i8> %i.af, ptr %i.ad, align 8, !tbaa !20, !alias.scope !94, !noalias !99
  store <8 x i8> %i.ag, ptr %i.ae, align 8, !tbaa !20, !alias.scope !99, !noalias !94
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.079.i.ptr.8.i.i.i27 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load <4 x i8>, ptr %i.ah, align 8, !tbaa !20, !alias.scope !99, !noalias !94
  %i.aj = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i27, align 8, !tbaa !20, !alias.scope !94, !noalias !99
  store <4 x i8> %i.ai, ptr %.079.i.ptr.8.i.i.i27, align 8, !tbaa !20, !alias.scope !94, !noalias !99
  store <4 x i8> %i.aj, ptr %i.ah, align 8, !tbaa !20, !alias.scope !99, !noalias !94
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZNK6google8protobuf8compiler20CodeGeneratorRequest11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf8compiler20CodeGeneratorRequest12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_File25clear_generated_code_infoEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf17GeneratedCodeInfo5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !4
  %i.e = and i32 %i.d, -9
  store i32 %i.e, ptr %i.c, align 8, !tbaa !4
  ret void
}

declare void @_ZN6google8protobuf17GeneratedCodeInfo5ClearEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_FileC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8compiler26CodeGeneratorResponse_FileE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_FileC2EPNS0_5ArenaERKS2_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8compiler26CodeGeneratorResponse_FileE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc12, label %bb.a

.noexc12:                                         ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.a

bb.a:                                             ; preds = %.noexc12, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  store i32 %i.k, ptr %i.i, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.noexc15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1)
  br label %.noexc15

.noexc15:                                         ; preds = %bb.b, %bb.a
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler26CodeGeneratorResponse_File5ClearEv:bb.a

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK6google8protobuf8compiler26CodeGeneratorResponse_File18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4    ; 4 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 6 uses
  %i.l = icmp sgt i64 %i.k, 127
  br i1 %i.l, label %.critedge.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %2, align 8, !tbaa !37
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.n, %i.o
  %i.p = add i64 %reass.sub, 14
  %i.q = icmp slt i64 %i.p, %i.k
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !21

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.r = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.k, ptr %i.i, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !20
  %i.t = trunc i64 %i.k to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.t, ptr %i.s, align 1, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.i, i64 %i.k, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.k
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.d, %.critedge.i, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.r, %.critedge.i ], [ %i.v, %bb.d ] ; 6 uses
  %i.w = and i32 %i.b, 2
  %.not43 = icmp eq i32 %i.w, 0
  br i1 %.not43, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -4
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32 ; 6 uses
  %i.af = icmp sgt i64 %i.ae, 127
  br i1 %i.af, label %.critedge.i35, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %2, align 8, !tbaa !37
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.0 to i64
  %reass.sub48 = sub i64 %i.ah, %i.ai
  %i.aj = add i64 %reass.sub48, 14
  %i.ak = icmp slt i64 %i.aj, %i.ae
  br i1 %i.ak, label %.critedge.i35, label %bb.g, !prof !21

.critedge.i35:                                    ; preds = %bb.f, %bb.e
  %i.al = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 2, i64 %i.ae, ptr %i.ac, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 18, ptr %.0, align 1, !tbaa !20
  %i.an = trunc i64 %i.ae to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  store i8 %i.an, ptr %i.am, align 1, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ac, i64 %i.ae, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ae
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36: ; preds = %bb.g, %.critedge.i35, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ], [ %i.al, %.critedge.i35 ], [ %i.ap, %bb.g ] ; 6 uses
  %i.aq = and i32 %i.b, 4
  %.not44 = icmp eq i32 %i.aq, 0
  br i1 %.not44, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -4
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32 ; 6 uses
  %i.az = icmp sgt i64 %i.ay, 127
  br i1 %i.az, label %.critedge.i41, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %2, align 8, !tbaa !37
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.1 to i64
  %reass.sub49 = sub i64 %i.bb, %i.bc
  %i.bd = add i64 %reass.sub49, 14
  %i.be = icmp slt i64 %i.bd, %i.ay
  br i1 %i.be, label %.critedge.i41, label %bb.j, !prof !21

.critedge.i41:                                    ; preds = %bb.i, %bb.h
  %i.bf = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 15, i64 %i.ay, ptr %i.aw, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 122, ptr %.1, align 1, !tbaa !20
  %i.bh = trunc i64 %i.ay to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.ay
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42: ; preds = %bb.j, %.critedge.i41, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36
  %.2 = phi ptr [ %.1, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit36 ], [ %i.bf, %.critedge.i41 ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bk = and i32 %i.b, 8
  %.not45 = icmp eq i32 %i.bk, 0
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = load atomic i32, ptr %i.bn monotonic, align 4
  %i.bp = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 16, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i32 noundef %i.bo, ptr noundef %.2, ptr noundef %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42
  %.3 = phi ptr [ %i.bp, %bb.k ], [ %.2, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit42 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11 ; 2 uses
  %i.bs = trunc i64 %i.br to i1
  br i1 %i.bs, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.m, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.l
  %i.bt = add nsw i64 %i.br, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef %.3, ptr noundef %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.l
  %.4 = phi ptr [ %i.bw, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.3, %bb.l ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK6google8protobuf8compiler26CodeGeneratorResponse_File12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4    ; 5 uses
  %i.n = and i32 %i.m, 15
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.i, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = or i32 %i.w, 1
  %i.y = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = mul nuw nsw i32 %i.z, 9
  %i.ab = add nuw nsw i32 %i.aa, 73
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add i64 %i.v, 1
  %i.af = add i64 %i.ae, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.af, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.ag = and i32 %i.m, 2
  %.not19 = icmp eq i32 %i.ag, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = or i32 %i.ao, 1
  %i.aq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ap, i1 true)
  %i.ar = xor i32 %i.aq, 31
  %i.as = mul nuw nsw i32 %i.ar, 9
  %i.at = add nuw nsw i32 %i.as, 73
  %i.au = lshr i32 %i.at, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = add i64 %.0, 1
  %i.ax = add i64 %i.aw, %i.an
  %i.ay = add i64 %i.ax, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.ay, %bb.d ], [ %.0, %bb.c ]  ; 2 uses
  %i.az = and i32 %i.m, 4
  %.not20 = icmp eq i32 %i.az, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !32 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = or i32 %i.bh, 1
  %i.bj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add i64 %.1, 1
  %i.bq = add i64 %i.bp, %i.bg
  %i.br = add i64 %i.bq, %i.bo
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i64 [ %i.br, %bb.f ], [ %.1, %bb.e ]  ; 2 uses
  %i.bs = and i32 %i.m, 8
  %.not21 = icmp eq i32 %i.bs, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = tail call noundef i64 @_ZNK6google8protobuf17GeneratedCodeInfo12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bu) ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = or i32 %i.bw, 1
  %i.by = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.bz = xor i32 %i.by, 31
  %i.ca = mul nuw nsw i32 %i.bz, 9
  %i.cb = add nuw nsw i32 %i.ca, 73
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = add i64 %.2, 2
  %i.cf = add i64 %i.ce, %i.bv
  %i.cg = add i64 %i.cf, %i.cd
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.3 = phi i64 [ %i.cg, %bb.h ], [ %.2, %bb.g ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ci = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.3, ptr noundef nonnull %i.ch)
  ret i64 %i.ci
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_File8CopyFromERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_File5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  tail call void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_File9MergeImplERNS0_11MessageLiteERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6google8protobuf8compiler26CodeGeneratorResponse_File12InternalSwapEPS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  store i64 %i.b, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4
  %i.h = load i32, ptr %i.f, align 8, !tbaa !4
  store i32 %i.h, ptr %i.e, align 8, !tbaa !4
  store i32 %i.g, ptr %i.f, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !46
  %i.l = load <2 x i64>, ptr %i.i, align 8, !tbaa !46
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !46
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.s = load <2 x ptr>, ptr %i.n, align 8, !tbaa !46
  store i64 %i.o, ptr %i.n, align 8, !tbaa !46
  store <2 x ptr> %i.s, ptr %i.m, align 8, !tbaa !46
  store ptr %i.r, ptr %i.q, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZNK6google8protobuf8compiler26CodeGeneratorResponse_File11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf8compiler26CodeGeneratorResponse_File12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6google8protobuf8compiler21CodeGeneratorResponseC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8compiler21CodeGeneratorResponseE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler21CodeGeneratorResponseC2EPNS0_5ArenaERKS2_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8compiler21CodeGeneratorResponseE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc8, label %.noexc14

.noexc8:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc8, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  store i32 %i.k, ptr %i.i, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_8compiler26CodeGeneratorResponse_FileEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_8compiler26CodeGeneratorResponse_FileEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_8compiler26CodeGeneratorResponse_FileEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_8compiler26CodeGeneratorResponse_FileEEEPvPS1_PKv)
  br label %.noexc12

.noexc12:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_8compiler26CodeGeneratorResponse_FileEE8GetArenaEv.exit.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.ad = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %1)
          to label %bb.e unwind label %.body

.body:                                            ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_8compiler26CodeGeneratorResponse_FileEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  resume { ptr, i32 } %i.ae

bb.e:                                             ; preds = %bb.d, %.noexc12
  %.sroa.0.0.i.i = phi ptr [ %i.z, %.noexc12 ], [ %i.ad, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.i.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6google8protobuf8compiler21CodeGeneratorResponseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.e

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN6google8protobuf8compiler21CodeGeneratorResponse10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8compiler21CodeGeneratorResponse18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i37, i64 1 ; 2 uses
  store i8 16, ptr %.0.i37, align 1, !tbaa !20
  %i.ac = icmp ugt i64 %i.aa, 127
  br i1 %i.ac, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !41

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ab, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i64 [ %i.af, %.lr.ph.i ], [ %i.aa, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.ad = trunc i64 %.07.i1.i to i8
  %i.ae = or i8 %i.ad, -128
  store i8 %i.ae, ptr %.0.i2.i, align 1, !tbaa !20
  %i.af = lshr i64 %.07.i1.i, 7                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.ah = icmp ugt i64 %.07.i1.i, 16383
  br i1 %i.ah, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !prof !42, !llvm.loop !43

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i64 [ %i.aa, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.af, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.ab, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.ai = trunc nuw nsw i64 %.07.i.lcssa.i to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.ai, ptr %.0.i.lcssa.i, align 1, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.aj, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ] ; 2 uses
  %i.ak = and i32 %i.b, 8
  %.not39 = icmp eq i32 %i.ak, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20
  %i.an = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi3EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %2, i32 noundef %i.am, ptr noundef %.1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi ptr [ %i.an, %bb.h ], [ %.1, %bb.g ]  ; 2 uses
  %i.ao = and i32 %i.b, 16
  %.not40 = icmp eq i32 %i.ao, 0
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  %i.ar = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi4EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %2, i32 noundef %i.aq, ptr noundef %.2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.ar, %bb.j ], [ %.2, %bb.i ]  ; 3 uses
  %i.as = and i32 %i.b, 1
  %.not41 = icmp eq i32 %i.as, 0
  br i1 %.not41, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !52 ; 2 uses
  %.not45 = icmp eq i32 %i.au, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.444 = phi ptr [ %.3, %.lr.ph ], [ %i.bi, %bb.m ]
  %.03543 = phi i32 [ 0, %.lr.ph ], [ %i.bj, %bb.m ] ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = add i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = sext i32 %.03543 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %.0.i.i.i.i = select i1 %i.az, ptr %i.av, ptr %i.be
  %i.bf = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4
  %i.bi = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i32 noundef %i.bh, ptr noundef %.444, ptr noundef %2) ; 2 uses
  %i.bj = add nuw i32 %.03543, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, %i.au
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !103

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.k
  %.5 = phi ptr [ %.3, %bb.k ], [ %.3, %bb.l ], [ %i.bi, %bb.m ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.n, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.bn = add nsw i64 %i.bl, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef %.5, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.6 = phi ptr [ %i.bq, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.5, %.loopexit ]
  ret ptr %.6
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi4EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 32, ptr %.0.i, align 1, !tbaa !20
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !41

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !20
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !42, !llvm.loop !43

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !20
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK6google8protobuf8compiler21CodeGeneratorResponse12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4    ; 6 uses
  %i.n = and i32 %i.m, 31
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = add i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = select i1 %i.w, ptr %i.s, ptr %i.z      ; 2 uses
  %.idx = shl nsw i64 %i.r, 3
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %.not3036 = icmp eq i32 %i.q, 0
  br i1 %.not3036, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.038 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.026.037 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.026.037, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf8compiler26CodeGeneratorResponse_File12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.038
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.026.037, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not30, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ap = and i32 %i.m, 2
  %.not31 = icmp eq i32 %i.ap, 0
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = or i32 %i.ax, 1
  %i.az = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %i.ba = xor i32 %i.az, 31
  %i.bb = mul nuw nsw i32 %i.ba, 9
  %i.bc = add nuw nsw i32 %i.bb, 73
  %i.bd = lshr i32 %i.bc, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.1, 1
  %i.bg = add i64 %i.bf, %i.aw
  %i.bh = add i64 %i.bg, %i.be
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.2 = phi i64 [ %i.bh, %bb.c ], [ %.1, %.loopexit ] ; 2 uses
  %i.bi = and i32 %i.m, 4
  %.not32 = icmp eq i32 %i.bi, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bl = or i64 %i.bk, 1
  %i.bm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = xor i64 %i.bm, 63
  %i.bo = mul nuw nsw i64 %i.bn, 9
  %i.bp = add nuw nsw i64 %i.bo, 137
  %i.bq = lshr i64 %i.bp, 6
  %i.br = add i64 %i.bq, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3 = phi i64 [ %i.br, %bb.e ], [ %.2, %bb.d ]  ; 2 uses
  %i.bs = and i32 %i.m, 8
  %.not33 = icmp eq i32 %i.bs, 0
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !20
  %i.bv = or i32 %i.bu, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = xor i64 %i.bx, 63
  %i.bz = mul nuw nsw i64 %i.by, 9
  %i.ca = add nuw nsw i64 %i.bz, 137
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = add i64 %i.cb, %.3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4 = phi i64 [ %i.cc, %bb.g ], [ %.3, %bb.f ]  ; 2 uses
  %i.cd = and i32 %i.m, 16
  %.not34 = icmp eq i32 %i.cd, 0
  br i1 %.not34, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !20
  %i.cg = or i32 %i.cf, 1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = xor i64 %i.ci, 63
  %i.ck = mul nuw nsw i64 %i.cj, 9
  %i.cl = add nuw nsw i64 %i.ck, 137
  %i.cm = lshr i64 %i.cl, 6
  %i.cn = add i64 %i.cm, %.4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.5 = phi i64 [ %i.cn, %bb.i ], [ %.4, %bb.h ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cp = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.5, ptr noundef nonnull %i.co)
  ret i64 %i.cp
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler21CodeGeneratorResponse8CopyFromERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8compiler21CodeGeneratorResponse5ClearEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  tail call void @_ZN6google8protobuf8compiler21CodeGeneratorResponse9MergeImplERNS0_11MessageLiteERKS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_ZN6google8protobuf8compiler21CodeGeneratorResponse12InternalSwapEPS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.d, ptr %i.a, align 8, !tbaa !45
  store i64 %i.b, ptr %i.c, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !4
  %i.h = load i32, ptr %i.f, align 8, !tbaa !4
  store i32 %i.h, ptr %i.e, align 8, !tbaa !4
  store i32 %i.g, ptr %i.f, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !20, !alias.scope !115, !noalias !110
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !20, !alias.scope !110, !noalias !115
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !20, !alias.scope !110, !noalias !115
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !20, !alias.scope !115, !noalias !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !20, !alias.scope !115, !noalias !110
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !20, !alias.scope !110, !noalias !115
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !20, !alias.scope !110, !noalias !115
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !20, !alias.scope !115, !noalias !110
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.r = load i64, ptr %i.p, align 8, !tbaa !46
  store i64 %i.r, ptr %i.q, align 8, !tbaa !46
  store ptr %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.u = load <16 x i8>, ptr %i.t, align 8, !tbaa !20, !alias.scope !119, !noalias !116
  %i.v = load <16 x i8>, ptr %i.s, align 8, !tbaa !20, !alias.scope !116, !noalias !119
  store <16 x i8> %i.u, ptr %i.s, align 8, !tbaa !20, !alias.scope !116, !noalias !119
  store <16 x i8> %i.v, ptr %i.t, align 8, !tbaa !20, !alias.scope !119, !noalias !116
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZNK6google8protobuf8compiler21CodeGeneratorResponse11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf8compiler21CodeGeneratorResponse12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, i64, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf16RepeatedPtrFieldINS0_19FileDescriptorProtoEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_19FileDescriptorProtoEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #8 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19FileDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 128
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19FileDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.f = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 200)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19FileDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.g = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf19FileDescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(200) %1)
  ret ptr %.0
}

declare void @_ZN6google8protobuf19FileDescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = and i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_3
