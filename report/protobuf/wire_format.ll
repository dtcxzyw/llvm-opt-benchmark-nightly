inline.NumInlined: 2614
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.cv = or i8 %i.cu, -128
  store i8 %i.cv, ptr %.0.i2.i53, align 1, !tbaa !21
  %i.cw = lshr i32 %.07.i1.i54, 7                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i2.i53, i64 1 ; 2 uses
  %i.cy = icmp ugt i32 %.07.i1.i54, 16383
  br i1 %i.cy, label %.lr.ph.i52, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit55, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit55: ; preds = %.lr.ph.i52, %bb.l
  %.07.i.lcssa.i50 = phi i32 [ %i.cs, %bb.l ], [ %i.cw, %.lr.ph.i52 ]
  %.0.i.lcssa.i51 = phi ptr [ %.0.i32, %bb.l ], [ %i.cx, %.lr.ph.i52 ] ; 2 uses
  %i.cz = trunc nuw nsw i32 %.07.i.lcssa.i50 to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i51, i64 1
  store i8 %i.cz, ptr %.0.i.lcssa.i51, align 1, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.dd = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull %i.da, ptr noundef nonnull %2) ; 3 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i56 = icmp ult ptr %i.dd, %i.de
  br i1 %.not.i56, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58, label %bb.m, !prof !20

bb.m:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit55
  %i.df = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.dd)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58: ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit55, %bb.m
  %.0.i57 = phi ptr [ %i.df, %bb.m ], [ %i.dd, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit55 ] ; 2 uses
  %i.dg = load i32, ptr %i.k, align 8, !tbaa !37
  %i.dh = shl i32 %i.dg, 3                        ; 2 uses
  %i.di = or disjoint i32 %i.dh, 4                ; 2 uses
  %i.dj = icmp ugt i32 %i.dh, 127
  br i1 %i.dj, label %.lr.ph.i61, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit64, !prof !38

.lr.ph.i61:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58, %.lr.ph.i61
  %.0.i2.i62 = phi ptr [ %i.dn, %.lr.ph.i61 ], [ %.0.i57, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58 ] ; 2 uses
  %.07.i1.i63 = phi i32 [ %i.dm, %.lr.ph.i61 ], [ %i.di, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58 ] ; 3 uses
  %i.dk = trunc i32 %.07.i1.i63 to i8
  %i.dl = or i8 %i.dk, -128
  store i8 %i.dl, ptr %.0.i2.i62, align 1, !tbaa !21
  %i.dm = lshr i32 %.07.i1.i63, 7                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i2.i62, i64 1 ; 2 uses
  %i.do = icmp ugt i32 %.07.i1.i63, 16383
  br i1 %i.do, label %.lr.ph.i61, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit64, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit64: ; preds = %.lr.ph.i61, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58
  %.07.i.lcssa.i59 = phi i32 [ %i.di, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58 ], [ %i.dm, %.lr.ph.i61 ]
  %.0.i.lcssa.i60 = phi ptr [ %.0.i57, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit58 ], [ %i.dn, %.lr.ph.i61 ] ; 2 uses
  %i.dp = trunc nuw nsw i32 %.07.i.lcssa.i59 to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i60, i64 1
  store i8 %i.dp, ptr %.0.i.lcssa.i60, align 1, !tbaa !21
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringISt17basic_string_viewIcSt11char_traitsIcEEEEPhjRKT_S8_.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11WriteStringISt17basic_string_viewIcSt11char_traitsIcEEEEPhjRKT_S8_.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit, %.critedge.i, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit64, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit49, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit43, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.1 = phi ptr [ %.0.i32, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.ai, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %i.aw, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit43 ], [ %i.bk, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit49 ], [ %i.dq, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit64 ], [ %i.cd, %.critedge.i ], [ %i.cp, %_ZN6google8protobuf2io19EpsCopyOutputStream12UnsafeVarintIjEEPhT_S4_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !28
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.b, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal10WireFormat46InternalSerializeUnknownMessageSetItemsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %bb.f ]
  ret ptr %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.ah, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.029 = phi ptr [ %1, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !31
  %i.h = and i32 %i.g, 1
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.i, ptr %i.e, ptr %i.k
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i = icmp ult ptr %.029, %i.p
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.029)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.q, %bb.d ], [ %.029, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 11, ptr %.0.i, align 1, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  store i8 16, ptr %i.r, align 1, !tbaa !21
  %i.t = load i32, ptr %i.l, align 8, !tbaa !37   ; 3 uses
  %i.u = icmp ugt i32 %i.t, 127
  br i1 %i.u, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !38

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i
  %.0.i2.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.s, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.t, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.v = trunc i32 %.07.i1.i to i8
  %i.w = or i8 %i.v, -128
  store i8 %i.w, ptr %.0.i2.i, align 1, !tbaa !21
  %i.x = lshr i32 %.07.i1.i, 7                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i2.i, i64 1 ; 2 uses
  %i.z = icmp ugt i32 %.07.i1.i, 16383
  br i1 %i.z, label %.lr.ph.i, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %.lr.ph.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i = phi i32 [ %i.t, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.x, %.lr.ph.i ]
  %.0.i.lcssa.i = phi ptr [ %i.s, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %i.aa = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1
  store i8 %i.aa, ptr %.0.i.lcssa.i, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 2
  store i8 26, ptr %i.ab, align 1, !tbaa !21
  %i.ad = tail call noundef ptr @_ZNK6google8protobuf12UnknownField37InternalSerializeLengthDelimitedNoTagEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.ac, ptr noundef nonnull %2) ; 3 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !32
  %.not.i22 = icmp ult ptr %i.ad, %i.ae
  br i1 %.not.i22, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24, label %bb.e, !prof !20

bb.e:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %i.af = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.ad)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24: ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %bb.e
  %.0.i23 = phi ptr [ %i.af, %bb.e ], [ %i.ad, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i23, i64 1
  store i8 12, ptr %.0.i23, align 1, !tbaa !21
  %.pre = load i32, ptr %i.a, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24, %bb.b
  %i.ah = phi i32 [ %.pre, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24 ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.ag, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit24 ], [ %.029, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !49
}

declare noundef ptr @_ZNK6google8protobuf12UnknownField37InternalSerializeLengthDelimitedNoTagEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.g, ptr %i.h, ptr %i.j
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.h ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.034 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.h ]  ; 6 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.k, align 8, !tbaa !37
  %i.o = shl i32 %i.n, 3
  %i.p = or disjoint i32 %i.o, 1
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = xor i32 %i.q, 31
  %i.s = mul nuw nsw i32 %i.r, 9
  %i.t = add nuw nsw i32 %i.s, 73
  %i.u = lshr i32 %i.t, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.ad, %.034
  %i.af = add i64 %i.ae, %i.v
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !37
  %i.ah = shl i32 %i.ag, 3
  %i.ai = or disjoint i32 %i.ah, 5
  %i.aj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true)
  %i.ak = xor i32 %i.aj, 31
  %i.al = mul nuw nsw i32 %i.ak, 9
  %i.am = add nuw nsw i32 %i.al, 73
  %i.an = lshr i32 %i.am, 6
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.034, 4
  %i.aq = add i64 %i.ap, %i.ao
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %i.k, align 8, !tbaa !37
  %i.as = shl i32 %i.ar, 3
  %i.at = or disjoint i32 %i.as, 1
  %i.au = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.at, i1 true)
  %i.av = xor i32 %i.au, 31
  %i.aw = mul nuw nsw i32 %i.av, 9
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add i64 %.034, 8
  %i.bb = add i64 %i.ba, %i.az
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.bc = load i32, ptr %i.k, align 8, !tbaa !37
  %i.bd = shl i32 %i.bc, 3
  %i.be = or disjoint i32 %i.bd, 3
  %i.bf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %i.bg = xor i32 %i.bf, 31
  %i.bh = mul nuw nsw i32 %i.bg, 9
  %i.bi = add nuw nsw i32 %i.bh, 73
  %i.bj = lshr i32 %i.bi, 6
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = or i32 %i.bp, 1
  %i.br = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true)
  %i.bs = xor i32 %i.br, 31
  %i.bt = mul nuw nsw i32 %i.bs, 9
  %i.bu = add nuw nsw i32 %i.bt, 73
  %i.bv = lshr i32 %i.bu, 6
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = add i64 %i.bo, %.034
  %i.by = add i64 %i.bx, %i.bk
  %i.bz = add i64 %i.by, %i.bw
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.ca = load i32, ptr %i.k, align 8, !tbaa !37
  %i.cb = shl i32 %i.ca, 3                        ; 2 uses
  %i.cc = or disjoint i32 %i.cb, 3
  %i.cd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.ce = xor i32 %i.cd, 31
  %i.cf = mul nuw nsw i32 %i.ce, 9
  %i.cg = add nuw nsw i32 %i.cf, 73
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !21
  %i.cl = tail call noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  %i.cm = or disjoint i32 %i.cb, 5
  %i.cn = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cm, i1 true)
  %i.co = xor i32 %i.cn, 31
  %i.cp = mul nuw nsw i32 %i.co, 9
  %i.cq = add nuw nsw i32 %i.cp, 73
  %i.cr = lshr i32 %i.cq, 6
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = add i64 %i.cl, %.034
  %i.cu = add i64 %i.ct, %i.ci
  %i.cv = add i64 %i.cu, %i.cs
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i64 [ %.034, %bb.b ], [ %i.af, %bb.c ], [ %i.aq, %bb.d ], [ %i.bb, %bb.e ], [ %i.bz, %bb.f ], [ %i.cv, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.0.i.i.i.i.i.i.i = select i1 %i.g, ptr %i.h, ptr %i.j
  %i.k = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.d ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, %.016
  %i.q = load i32, ptr %i.l, align 8, !tbaa !37
  %i.r = or i32 %i.q, 1
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = mul nuw nsw i32 %i.t, 9
  %i.v = add nuw nsw i32 %i.u, 73
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = or i32 %i.ac, 1
  %i.ae = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = xor i32 %i.ae, 31
  %i.ag = mul nuw nsw i32 %i.af, 9
  %i.ah = add nuw nsw i32 %i.ag, 73
  %i.ai = lshr i32 %i.ah, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %sext = shl i64 %i.ab, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = add i64 %i.p, %i.ak
  %i.am = add i64 %i.al, %i.x
  %i.an = add i64 %i.am, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.an, %bb.c ], [ %.016, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !51
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat20ParseAndMergePartialEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.fr61 = freeze { ptr, ptr } %i.a
  %i.b = extractvalue { ptr, ptr } %.fr61, 0      ; 5 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.thread45.us
  %i.i = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp ult ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %.split.us
  %i.l = load i8, ptr %i.i, align 1, !tbaa !21    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = icmp sgt i8 %i.l, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %.0.i.us = phi i32 [ %i.m, %bb.b ], [ 0, %.split.us ]
  %i.o = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i.us)
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.p, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us: ; preds = %bb.d, %bb.c
  %.05.i.us = phi i32 [ %i.m, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  store i32 %.05.i.us, ptr %i.f, align 8, !tbaa !26
  %i.q = icmp eq i32 %.05.i.us, 0
  %i.r = and i32 %.05.i.us, 7
  %i.s = icmp eq i32 %i.r, 4
  %or.cond57.us = or i1 %i.q, %i.s                ; 3 uses
  br i1 %or.cond57.us, label %.split60.us, label %.thread45.us

.thread45.us:                                     ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.05.i.us, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %0)
  br i1 %i.t, label %.split.us, label %.split60.us

.split:                                           ; preds = %bb.a, %.split.backedge
  %i.u = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.g, !prof !20

bb.e:                                             ; preds = %.split
  %i.x = load i8, ptr %i.u, align 1, !tbaa !21    ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = icmp sgt i8 %i.x, -1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.aa, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

bb.g:                                             ; preds = %bb.e, %.split
  %.0.i = phi i32 [ %i.y, %bb.e ], [ 0, %.split ]
  %i.ab = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i)
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit: ; preds = %bb.f, %bb.g
  %.05.i = phi i32 [ %i.y, %bb.f ], [ %i.ab, %bb.g ] ; 6 uses
  store i32 %.05.i, ptr %i.f, align 8, !tbaa !26
  %i.ac = icmp eq i32 %.05.i, 0
  %i.ad = and i32 %.05.i, 7
  %i.ae = icmp eq i32 %i.ad, 4
  %or.cond57 = or i1 %i.ac, %i.ae                 ; 4 uses
  br i1 %or.cond57, label %.split60.us, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit
  %i.af = lshr i32 %.05.i, 3                      ; 4 uses
  %i.ag = tail call noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i32 noundef %i.af) ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %.thread45

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call noundef ptr @_ZNK6google8protobuf10Descriptor34FindExtensionRangeContainingNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i32 noundef %i.af)
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !52  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i32 noundef %i.af)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull %i.b, i32 noundef %i.af)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.030 = phi ptr [ %i.al, %bb.k ], [ %i.am, %bb.l ] ; 2 uses
  %i.an = icmp eq ptr %.030, null
  br i1 %i.an, label %.thread, label %.thread45

.thread:                                          ; preds = %bb.i, %bb.m
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !21, !range !69, !noundef !70
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = icmp eq i32 %.05.i, 11
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.n, label %.thread45

bb.n:                                             ; preds = %.thread
  %i.at = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.at, label %.split.backedge, label %.split60.us

.thread45:                                        ; preds = %bb.h, %bb.m, %.thread
  %.131 = phi ptr [ %i.ag, %bb.h ], [ null, %.thread ], [ %.030, %bb.m ]
  %i.au = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.05.i, ptr noundef %.131, ptr noundef nonnull %1, ptr noundef nonnull %0)
  br i1 %i.au, label %.split.backedge, label %.split60.us

.split.backedge:                                  ; preds = %.thread45, %bb.n
  br label %.split

.split60.us:                                      ; preds = %.thread45, %bb.n, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us, %.thread45.us
  %.us-phi = phi i1 [ %or.cond57.us, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us ], [ %or.cond57.us, %.thread45.us ], [ %or.cond57, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit ], [ %or.cond57, %bb.n ], [ %or.cond57, %.thread45 ]
  ret i1 %.us-phi
}

declare noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.google::protobuf::io::CodedInputStream", align 8 ; 19 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %.thread.i.outer

.thread.i.outer:                                  ; preds = %.thread.i.outer.backedge, %bb.a
  %.048.i.ph = phi i32 [ 0, %bb.a ], [ %.048.i.ph.be, %.thread.i.outer.backedge ] ; 3 uses
  %.043.i.ph = phi i32 [ 0, %bb.a ], [ %.043.i.ph.be, %.thread.i.outer.backedge ] ; 3 uses
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.outer, %bb.af
  %i.q = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.s = icmp ult ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %bb.l, !prof !20

bb.b:                                             ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.jt2
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE:bb.a
bb.z:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bw, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i

bb.aa:                                            ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bx, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i

bb.ab:                                            ; preds = %bb.t, %bb.p
  %.08.i.i = phi i32 [ %i.bj, %bb.t ], [ 0, %bb.p ]
  %i.by = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.i)
          to label %.noexc67.i unwind label %.loopexit ; 2 uses

bb.ac:                                            ; preds = %bb.q, %bb.u
  %.08.i.i.jt2 = phi i32 [ 0, %bb.q ], [ %i.bm, %bb.u ]
  %i.bz = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.i.jt2)
          to label %.noexc67.i.jt2 unwind label %.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.v, %bb.r
  %.08.i.jt2.i = phi i32 [ 0, %bb.r ], [ %i.bp, %bb.v ]
  %i.ca = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.jt2.i)
          to label %.noexc67.jt2.i unwind label %.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.w, %bb.s
  %.08.i.jt3.i = phi i32 [ 0, %bb.s ], [ %i.bs, %bb.w ]
  %i.cb = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.jt3.i)
          to label %.noexc67.jt3.i unwind label %.loopexit.split-lp ; 2 uses

.noexc67.i:                                       ; preds = %bb.ab
  %i.cc = trunc i64 %i.by to i32
  %i.cd = icmp sgt i64 %i.by, -1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i

.noexc67.i.jt2:                                   ; preds = %bb.ac
  %i.ce = trunc i64 %i.bz to i32
  %i.cf = icmp sgt i64 %i.bz, -1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2

.noexc67.jt2.i:                                   ; preds = %bb.ad
  %i.cg = trunc i64 %i.ca to i32
  %i.ch = icmp sgt i64 %i.ca, -1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i

.noexc67.jt3.i:                                   ; preds = %bb.ae
  %i.ci = trunc i64 %i.cb to i32
  %i.cj = icmp sgt i64 %i.cb, -1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i: ; preds = %.noexc67.i, %bb.x
  %.091.i = phi i32 [ %i.bj, %bb.x ], [ %i.cc, %.noexc67.i ] ; 3 uses
  %.0.i66.i = phi i1 [ true, %bb.x ], [ %i.cd, %.noexc67.i ]
  %i.ck = icmp ne i32 %.091.i, 0
  %or.cond.not.i = and i1 %.0.i66.i, %i.ck
  br i1 %or.cond.not.i, label %bb.af, label %.thread96.i

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2: ; preds = %.noexc67.i.jt2, %bb.y
  %.091.i.jt2 = phi i32 [ %i.bm, %bb.y ], [ %i.ce, %.noexc67.i.jt2 ] ; 2 uses
  %.0.i66.i.jt2 = phi i1 [ true, %bb.y ], [ %i.cf, %.noexc67.i.jt2 ]
  %i.cl = icmp ne i32 %.091.i.jt2, 0
  %or.cond.not.i.jt2 = and i1 %.0.i66.i.jt2, %i.cl
  br i1 %or.cond.not.i.jt2, label %.loopexit93, label %.thread96.i

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i: ; preds = %.noexc67.jt2.i, %bb.z
  %.091.jt2.i = phi i32 [ %i.bp, %bb.z ], [ %i.cg, %.noexc67.jt2.i ] ; 2 uses
  %.0.i66.jt2.i = phi i1 [ true, %bb.z ], [ %i.ch, %.noexc67.jt2.i ]
  %i.cm = icmp ne i32 %.091.jt2.i, 0
  %or.cond.not.jt2.i = and i1 %.0.i66.jt2.i, %i.cm
  br i1 %or.cond.not.jt2.i, label %.loopexit93, label %.thread96.i

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i: ; preds = %.noexc67.jt3.i, %bb.aa
  %.091.jt3.i = phi i32 [ %i.bs, %bb.aa ], [ %i.ci, %.noexc67.jt3.i ]
  %.0.i66.jt3.i = phi i1 [ true, %bb.aa ], [ %i.cj, %.noexc67.jt3.i ]
  %i.cn = icmp ne i32 %.091.jt3.i, 0
  %or.cond.not.jt3.i = and i1 %.0.i66.jt3.i, %i.cn
  br i1 %or.cond.not.jt3.i, label %.thread.i.outer.backedge, label %.thread96.i

.loopexit:                                        ; preds = %bb.ab
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp:                               ; preds = %bb.ad, %bb.ae, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.af:                                            ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i
  switch i32 %.048.i.ph, label %.thread.i [
    i32 0, label %.loopexit92
    i32 2, label %.loopexit93
  ], !llvm.loop !72

.loopexit93:                                      ; preds = %bb.af, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i
  %.091139.i = phi i32 [ %.091.i.jt2, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2 ], [ %.091.jt2.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i ], [ %.091.i, %bb.af ] ; 2 uses
  %.043136.i = phi i32 [ %.043135.ph.i.ph, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2 ], [ %.043135.ph.i.ph, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i ], [ %.043.i.ph, %bb.af ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.co = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.cp = load i64, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  store ptr %i.co, ptr %3, align 8, !tbaa !12
  %sext.i = shl i64 %i.cp, 32
  %i.cr = ashr exact i64 %sext.i, 32
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  store ptr %i.cs, ptr %i.f, align 8, !tbaa !19
  store ptr null, ptr %i.g, align 8, !tbaa !73
  store i32 %i.cq, ptr %i.h, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.i, i8 0, i64 11, i1 false)
  store i32 %i.cq, ptr %i.j, align 8, !tbaa !75
  store i32 0, ptr %i.k, align 4, !tbaa !76
  store i32 2147483647, ptr %i.l, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.ct = load i32, ptr %i.p, align 4, !tbaa !24  ; 2 uses
  store i32 %i.ct, ptr %i.m, align 4, !tbaa !24
  store i32 %i.ct, ptr %i.n, align 8, !tbaa !27
  %i.cu = invoke noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i32 noundef %.091139.i)
          to label %.noexc68.i unwind label %bb.ag

.noexc68.i:                                       ; preds = %.loopexit93
  %i.cv = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat28ParseAndMergeMessageSetFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.091139.i, ptr noundef %i.cu, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i unwind label %bb.ag

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i: ; preds = %.noexc68.i
  br i1 %i.cv, label %.thread101.i, label %bb.ah

bb.ag:                                            ; preds = %.noexc68.i, %.loopexit93
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp.i

.thread101.i:                                     ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i
  store i64 0, ptr %i.d, align 8, !tbaa !46
  %i.cx = load ptr, ptr %2, align 8, !tbaa !43
  store i8 0, ptr %i.cx, align 1, !tbaa !21
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit92

bb.ah:                                            ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread96.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.i.preheader
  %.048132.i = phi i32 [ %.048132.ph.i.ph, %.preheader.i.preheader ], [ 2, %.preheader.i.backedge ] ; 3 uses
  switch i32 %.048132.i, label %bb.as [
    i32 1, label %bb.ai
    i32 0, label %bb.aj
  ]

bb.ai:                                            ; preds = %.preheader.i
  %i.cy = invoke noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i32 noundef %.043135.ph.i.ph)
          to label %.noexc70.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc70.i:                                       ; preds = %bb.ai
  %i.cz = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat28ParseAndMergeMessageSetFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.043135.ph.i.ph, ptr noundef %i.cy, ptr noundef nonnull %1, ptr noundef nonnull %0)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i: ; preds = %.noexc70.i
  br i1 %i.cz, label %.loopexit92, label %.thread96.i

bb.aj:                                            ; preds = %.preheader.i
  %i.da = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.dc = icmp ult ptr %i.da, %i.db
  br i1 %i.dc, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load i8, ptr %i.da, align 1, !tbaa !21  ; 2 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = icmp sgt i8 %i.dd, -1
  br i1 %i.df, label %.thread107.i, label %bb.al

.thread107.i:                                     ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.dg, ptr %0, align 8, !tbaa !12
  br label %bb.an

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.08.i73.i = phi i32 [ %i.de, %bb.ak ], [ 0, %bb.aj ]
  %i.dh = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i73.i)
          to label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i unwind label %bb.am ; 2 uses

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i: ; preds = %bb.al
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i64 %i.dh, -9223372034707292160
  %or.cond.not122.i = icmp eq i64 %i.dj, 0
  br i1 %or.cond.not122.i, label %bb.an, label %.thread96.i

bb.am:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.an:                                            ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i, %.thread107.i
  %.090106109.i = phi i32 [ %i.de, %.thread107.i ], [ %i.di, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i ] ; 6 uses
  %i.dl = or i32 %.090106109.i, 1
  %i.dm = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dl, i1 true)
  %i.dn = xor i32 %i.dm, 31
  %i.do = mul nuw nsw i32 %i.dn, 9
  %i.dp = add nuw nsw i32 %i.do, 73
  %i.dq = lshr i32 %i.dp, 6
  %i.dr = add nuw i32 %i.dq, %.090106109.i
  %i.ds = zext i32 %i.dr to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ds, i8 noundef signext 0)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.du = icmp samesign ugt i32 %.090106109.i, 127
  br i1 %i.du, label %.lr.ph.i.i, label %.loopexit.i, !prof !38

.lr.ph.i.i:                                       ; preds = %bb.ao, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dt, %bb.ao ] ; 2 uses
  %.07.i1.i.i = phi i32 [ %i.dx, %.lr.ph.i.i ], [ %.090106109.i, %bb.ao ] ; 3 uses
  %i.dv = trunc i32 %.07.i1.i.i to i8
  %i.dw = or i8 %i.dv, -128
  store i8 %i.dw, ptr %.0.i2.i.i, align 1, !tbaa !21
  %i.dx = lshr i32 %.07.i1.i.i, 7                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.dz = icmp ugt i32 %.07.i1.i.i, 16383
  br i1 %i.dz, label %.lr.ph.i.i, label %.loopexit.i, !prof !39, !llvm.loop !40

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.ao
  %.07.i.lcssa.i.i = phi i32 [ %.090106109.i, %bb.ao ], [ %i.dx, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.dt, %bb.ao ], [ %i.dy, %.lr.ph.i.i ] ; 2 uses
  %i.ea = trunc nuw nsw i32 %.07.i.lcssa.i.i to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.ea, ptr %.0.i.lcssa.i.i, align 1, !tbaa !21
  %i.ec = invoke noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.eb, i32 noundef %.090106109.i)
          to label %bb.ar unwind label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.aq:                                            ; preds = %.loopexit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ar:                                            ; preds = %.loopexit.i
  br i1 %i.ec, label %bb.c, label %.thread96.i

bb.as:                                            ; preds = %.preheader.i
  %i.ef = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.at, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3, !prof !20

bb.at:                                            ; preds = %bb.as
  %i.ei = load i8, ptr %i.ef, align 1, !tbaa !21  ; 2 uses
  %i.ej = zext i8 %i.ei to i32                    ; 2 uses
  %i.ek = icmp sgt i8 %i.ei, -1
  br i1 %i.ek, label %.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3

.thread:                                          ; preds = %bb.at
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store ptr %i.el, ptr %0, align 8, !tbaa !12
  br label %bb.au

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3: ; preds = %bb.at, %bb.as
  %.08.i.i4 = phi i32 [ %i.ej, %bb.at ], [ 0, %bb.as ]
  %i.em = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.i4)
          to label %.noexc unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !inline_history !78 ; 2 uses

.noexc:                                           ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3
  %i.en = and i64 %i.em, -9223372034707292160
  %or.cond.not = icmp eq i64 %i.en, 0
  br i1 %or.cond.not, label %.noexc._crit_edge, label %.thread96.i

.noexc._crit_edge:                                ; preds = %.noexc
  %i.eo = trunc i64 %i.em to i32
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.au

bb.au:                                            ; preds = %.noexc._crit_edge, %.thread
  %i.ep = phi ptr [ %i.el, %.thread ], [ %.pre37, %.noexc._crit_edge ] ; 2 uses
  %i.eq = phi ptr [ %i.eg, %.thread ], [ %.pre, %.noexc._crit_edge ]
  %.051.i7 = phi i32 [ %i.ej, %.thread ], [ %i.eo, %.noexc._crit_edge ] ; 3 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
  %.not.i.i = icmp sgt i32 %.051.i7, %i.eu
  br i1 %.not.i.i, label %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i, label %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i

_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i: ; preds = %bb.au
  %i.ev = zext nneg i32 %.051.i7 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ev
  store ptr %i.ew, ptr %0, align 8, !tbaa !12
  br label %.thread.i.outer.backedge

_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i: ; preds = %bb.au
  %i.ex = invoke noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.051.i7, i32 noundef %i.eu)
          to label %.noexc5 unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !inline_history !78

.noexc5:                                          ; preds = %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i
  br i1 %i.ex, label %.thread.i.outer.backedge, label %.thread96.i

.loopexit141.i:                                   ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i
  %.05.i138.i = phi i32 [ %.05.i.i.jt2, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2 ], [ %.05.i.jt3.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i ], [ %.05.i.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i ]
  %.043134.i = phi i32 [ %.043135.ph.i.ph, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2 ], [ %.346.jt3.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i ], [ %.043.i.ph, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i ]
  %.048131.i = phi i32 [ 2, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2 ], [ %.654.jt3.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i ], [ %.048.i.ph, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i ]
  %i.ey = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %.05.i138.i, ptr noundef null)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.loopexit141.i.jt2:                               ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt2.i
  %i.ez = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %.05.i.jt2.i, ptr noundef null)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.jt2 unwind label %.loopexit.split-lp.i.loopexit

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i: ; preds = %.loopexit141.i
  br i1 %i.ey, label %.thread.i.outer.backedge, label %.thread96.i

.thread.i.outer.backedge:                         ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i, %.noexc5
  %.048.i.ph.be = phi i32 [ %.048132.i, %.noexc5 ], [ %.048132.i, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i ], [ %.654.jt3.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i ], [ %.048131.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i ]
  %.043.i.ph.be = phi i32 [ %.043135.ph.i.ph, %.noexc5 ], [ %.043135.ph.i.ph, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i ], [ %.346.jt3.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i ], [ %.043134.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i ]
  br label %.thread.i.outer, !llvm.loop !72

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.jt2: ; preds = %.loopexit141.i.jt2
  br i1 %i.ez, label %bb.b, label %.thread96.i

.loopexit.split-lp.i:                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit, %bb.aq, %bb.ap, %bb.am, %bb.ag, %.loopexit140.i
  %.pn64.i = phi { ptr, i32 } [ %i.ed, %bb.ap ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.cw, %bb.ag ], [ %i.dk, %bb.am ], [ %i.ee, %bb.aq ], [ %lpad.loopexit.i, %.loopexit140.i ], [ %lpad.loopexit, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit87, %.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %lpad.loopexit90, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fa = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.c
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.i
  %i.fc = load i64, ptr %i.c, align 8, !tbaa !21
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn64.i

.thread96.i.loopexit:                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt2.i
  br label %.thread96.i

.thread96.i.loopexit86:                           ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i
  br label %.thread96.i

.thread96.i:                                      ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.jt2, %bb.ar, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt2.i, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i, %.noexc, %.noexc5, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i, %.thread96.i.loopexit86, %.thread96.i.loopexit, %bb.ah
  %.7.ph.i = phi i1 [ false, %bb.ah ], [ true, %.thread96.i.loopexit86 ], [ true, %.thread96.i.loopexit ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.jt2 ], [ false, %.noexc5 ], [ false, %.noexc ], [ false, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i ], [ false, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt3.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.jt2.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt3.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.jt2.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i ], [ false, %bb.ar ], [ false, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.jt2 ], [ false, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.jt2 ]
  %i.fe = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.c
  br i1 %i.ff, label %_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %.thread96.i
  %i.fg = load i64, ptr %i.c, align 8, !tbaa !21
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #26
  br label %_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit

_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit: ; preds = %.thread96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.7.ph.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.q = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.r = extractvalue { ptr, ptr } %i.q, 1        ; 54 uses
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %0, 7                            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !79    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf16DynamicMapSorter4SortERKNS0_7MessageEiPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.j, ptr noundef %i.ae)
          to label %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit unwind label %bb.u, !inline_history !215 ; 2 uses

_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEppEv.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  store ptr %i.ch, ptr %i.x, align 8, !tbaa !207
  br label %bb.c

.loopexit:                                        ; preds = %bb.o, %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.c, align 8
  store ptr %i.af, ptr %0, align 8
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cd, ptr %i.c, align 8
  store ptr %i.cc, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.n
  %i.cj = phi ptr [ %i.cc, %bb.u ], [ %i.af, %bb.n ], [ %i.af, %.loopexit ], [ %i.af, %.loopexit.split-lp ]
  %.pn15 = phi { ptr, i32 } [ %i.ci, %bb.u ], [ %.pn, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k
  %i.ck = phi ptr [ %i.cj, %bb.v ], [ %.promoted50, %bb.k ]
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.v ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.z

bb.x:                                             ; preds = %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !134
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_16DynamicMapSorter25MapEntryMessageComparatorEEEEvT_SH_T0_(ptr %i.af, ptr %i.ad, ptr %i.cm)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_16DynamicMapSorter25MapEntryMessageComparatorEEvT_SE_T0_.exit unwind label %bb.y

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_16DynamicMapSorter25MapEntryMessageComparatorEEvT_SE_T0_.exit: ; preds = %bb.x
  ret void

bb.y:                                             ; preds = %bb.x, %_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev.exit33
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !156
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %bb.w, %bb.y
  %i.co = phi ptr [ %.promoted50, %bb.j ], [ %i.ck, %bb.w ], [ %.pre, %bb.y ] ; 3 uses
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.j ], [ %.pn15.pn, %bb.w ], [ %i.cn, %bb.y ]
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !160
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #26
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit: ; preds = %bb.z, %bb.aa
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection24GetRepeatedFieldInternalIiEERKNS0_13RepeatedFieldIT_EERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !162
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162  ; 7 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i: ; preds = %bb.b
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, i32 noundef %i.f)
          to label %.thread.i unwind label %bb.c

.thread.i:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i25.i = select i1 %i.d, ptr %1, ptr %i.i
  %.0.i.i.i.i2426.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i25.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i28.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf13RepeatedFieldIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.0.v.i.i.i.i.i = select i1 %i.d, ptr %1, ptr %i.n
  %.0.i.i.i.i24.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  switch i32 %i.f, label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ], !prof !221

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.0.i.i30.i = phi ptr [ %.0.i.i28.i, %.thread.i ], [ %.0.i.i.i, %bb.d ]
  %.0.i.i.i.i2429.i = phi ptr [ %.0.i.i.i.i2426.i, %.thread.i ], [ %.0.i.i.i.i24.i, %bb.d ]
  %i.o = zext nneg i32 %i.f to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.0.i.i30.i, ptr nonnull align 4 %.0.i.i.i.i2429.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !222
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load i32, ptr %.0.i.i.i.i24.i, align 4, !tbaa !3, !alias.scope !216, !noalias !219
  store i32 %i.p, ptr %.0.i.i.i, align 8, !tbaa !3, !alias.scope !219, !noalias !216
  br label %_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 9 uses
  %3 = alloca %"class.google::protobuf::ConstMapIterator", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 16
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) ; 3 uses
  %i.g = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase10IsMapValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN6google8protobuf15MapIteratorBaseILb0EEC2EPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %1, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6google8protobuf15MapIteratorBaseILb0EEC2EPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull %1, ptr noundef nonnull %0)
  %i.h = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134
  call void @_ZNK6google8protobuf8internal12MapFieldBase13ConstMapBeginEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2)
  call void @_ZNK6google8protobuf8internal12MapFieldBase11ConstMapEndEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %3)
  %i.n = call noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr i8, ptr %i.m, i64 90
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0206249 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.d ]
  %i.r = call noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.o)
  %i.s = add i64 %i.r, 2
  %.val = load i8, ptr %i.q, align 2, !tbaa !79
  %i.t = call fastcc noundef i64 @_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE(i8 %.val, ptr noundef nonnull align 8 dereferenceable(12) %i.p)
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = or i32 %i.v, 1
  %i.x = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = mul nuw nsw i32 %i.y, 9
  %i.aa = add nuw nsw i32 %i.z, 73
  %i.ab = lshr i32 %i.aa, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add i64 %i.u, %.0206249
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf15MapIteratorBaseILb0EEppEv(ptr noundef nonnull align 8 dereferenceable(72) %2) ; 0 uses
  %i.ag = call noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  br i1 %i.ag, label %._crit_edge, label %bb.d, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0206.lcssa = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.loopexit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 11 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 32
  %.not214 = icmp eq i8 %i.aj, 0
  br i1 %.not214, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ak = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.al = zext i32 %i.ak to i64
  br label %bb.h

bb.f:                                             ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !142
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 51
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !21, !range !69, !noundef !70
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %spec.select = zext i1 %i.at to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0204 = phi i64 [ %i.al, %bb.e ], [ %spec.select, %bb.g ], [ 1, %bb.f ] ; 28 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = load i8, ptr %i.au, align 2, !tbaa !79
  switch i8 %i.av, label %.loopexit [
    i8 5, label %bb.i
    i8 3, label %bb.k
    i8 17, label %bb.m
    i8 18, label %bb.o
    i8 13, label %bb.q
    i8 4, label %bb.s
    i8 7, label %bb.u
    i8 6, label %bb.v
    i8 15, label %bb.w
    i8 16, label %bb.x
    i8 2, label %bb.y
    i8 1, label %bb.z
    i8 8, label %bb.aa
    i8 10, label %bb.ab
    i8 11, label %bb.ad
    i8 14, label %bb.ah
    i8 9, label %bb.aj
    i8 12, label %bb.aj
  ]

bb.i:                                             ; preds = %bb.h
  %i.aw = load i8, ptr %i.ah, align 1
  %i.ax = and i8 %i.aw, 32
  %.not225 = icmp eq i8 %i.ax, 0
  br i1 %.not225, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not304 = icmp eq i64 %.0204, 0
  br i1 %.not304, label %.loopexit, label %.lr.ph292

.lr.ph292:                                        ; preds = %.preheader, %.lr.ph292
  %.0203291 = phi i64 [ %i.bi, %.lr.ph292 ], [ 0, %.preheader ] ; 2 uses
  %.3290 = phi i64 [ %i.bh, %.lr.ph292 ], [ 0, %.preheader ]
  %i.ay = trunc i64 %.0203291 to i32
  %i.az = tail call noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.ay)
  %i.ba = or i32 %i.az, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true)
  %i.bd = xor i64 %i.bc, 63
  %i.be = mul nuw nsw i64 %i.bd, 9
  %i.bf = add nuw nsw i64 %i.be, 73
  %i.bg = lshr i64 %i.bf, 6
  %i.bh = add i64 %i.bg, %.3290                   ; 2 uses
  %i.bi = add nuw nsw i64 %.0203291, 1            ; 2 uses
  %exitcond336.not = icmp eq i64 %i.bi, %.0204
  br i1 %exitcond336.not, label %.loopexit, label %.lr.ph292, !llvm.loop !224

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.bk = or i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = xor i64 %i.bm, 63
  %i.bo = mul nuw nsw i64 %i.bn, 9
  %i.bp = add nuw nsw i64 %i.bo, 73
  %i.bq = lshr i64 %i.bp, 6
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.ah, align 1
  %i.bs = and i8 %i.br, 32
  %.not224 = icmp eq i8 %i.bs, 0
  br i1 %.not224, label %bb.l, label %.preheader226

.preheader226:                                    ; preds = %bb.k
  %.not303 = icmp eq i64 %.0204, 0
  br i1 %.not303, label %.loopexit, label %.lr.ph288

.lr.ph288:                                        ; preds = %.preheader226, %.lr.ph288
  %.0202287 = phi i64 [ %i.cc, %.lr.ph288 ], [ 0, %.preheader226 ] ; 2 uses
  %.4286 = phi i64 [ %i.cb, %.lr.ph288 ], [ 0, %.preheader226 ]
  %i.bt = trunc i64 %.0202287 to i32
  %i.bu = tail call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.bt)
  %i.bv = or i64 %i.bu, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = xor i64 %i.bw, 63
  %i.by = mul nuw nsw i64 %i.bx, 9
  %i.bz = add nuw nsw i64 %i.by, 73
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = add i64 %i.ca, %.4286                   ; 2 uses
  %i.cc = add nuw nsw i64 %.0202287, 1            ; 2 uses
  %exitcond335.not = icmp eq i64 %i.cc, %.0204
  br i1 %exitcond335.not, label %.loopexit, label %.lr.ph288, !llvm.loop !225

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.ce = or i64 %i.cd, 1
  %i.cf = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = xor i64 %i.cf, 63
  %i.ch = mul nuw nsw i64 %i.cg, 9
  %i.ci = add nuw nsw i64 %i.ch, 73
  %i.cj = lshr i64 %i.ci, 6
  br label %.loopexit

bb.m:                                             ; preds = %bb.h
  %i.ck = load i8, ptr %i.ah, align 1
  %i.cl = and i8 %i.ck, 32
  %.not223 = icmp eq i8 %i.cl, 0
  br i1 %.not223, label %bb.n, label %.preheader228

.preheader228:                                    ; preds = %bb.m
  %.not302 = icmp eq i64 %.0204, 0
  br i1 %.not302, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %.preheader228, %.lr.ph284
  %.0201283 = phi i64 [ %i.cz, %.lr.ph284 ], [ 0, %.preheader228 ] ; 2 uses
  %.5282 = phi i64 [ %i.cy, %.lr.ph284 ], [ 0, %.preheader228 ]
  %i.cm = trunc i64 %.0201283 to i32
  %i.cn = tail call noundef i32 @_ZNK6google8protobuf10Reflection16GetRepeatedInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.cm) ; 2 uses
  %i.co = shl i32 %i.cn, 1
  %i.cp = ashr i32 %i.cn, 31
  %i.cq = xor i32 %i.co, %i.cp
  %i.cr = or i32 %i.cq, 1
  %i.cs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = xor i32 %i.cs, 31
  %i.cu = mul nuw nsw i32 %i.ct, 9
  %i.cv = add nuw nsw i32 %i.cu, 73
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = add i64 %.5282, %i.cx                   ; 2 uses
  %i.cz = add nuw nsw i64 %.0201283, 1            ; 2 uses
  %exitcond334.not = icmp eq i64 %i.cz, %.0204
  br i1 %exitcond334.not, label %.loopexit, label %.lr.ph284, !llvm.loop !226

bb.n:                                             ; preds = %bb.m
  %i.da = tail call noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) ; 2 uses
  %i.db = shl i32 %i.da, 1
  %i.dc = ashr i32 %i.da, 31
  %i.dd = xor i32 %i.db, %i.dc
  %i.de = or i32 %i.dd, 1
  %i.df = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.de, i1 true)
  %i.dg = xor i32 %i.df, 31
  %i.dh = mul nuw nsw i32 %i.dg, 9
  %i.di = add nuw nsw i32 %i.dh, 73
  %i.dj = lshr i32 %i.di, 6
  %i.dk = zext nneg i32 %i.dj to i64
  br label %.loopexit

bb.o:                                             ; preds = %bb.h
  %i.dl = load i8, ptr %i.ah, align 1
  %i.dm = and i8 %i.dl, 32
  %.not222 = icmp eq i8 %i.dm, 0
  br i1 %.not222, label %bb.p, label %.preheader230

.preheader230:                                    ; preds = %bb.o
  %.not301 = icmp eq i64 %.0204, 0
  br i1 %.not301, label %.loopexit, label %.lr.ph280

.lr.ph280:                                        ; preds = %.preheader230, %.lr.ph280
  %.0200279 = phi i64 [ %i.dz, %.lr.ph280 ], [ 0, %.preheader230 ] ; 2 uses
  %.6278 = phi i64 [ %i.dy, %.lr.ph280 ], [ 0, %.preheader230 ]
  %i.dn = trunc i64 %.0200279 to i32
  %i.do = tail call noundef i64 @_ZNK6google8protobuf10Reflection16GetRepeatedInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.dn) ; 2 uses
  %i.dp = shl i64 %i.do, 1
  %i.dq = ashr i64 %i.do, 63
  %i.dr = xor i64 %i.dp, %i.dq
  %i.ds = or i64 %i.dr, 1
  %i.dt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = xor i64 %i.dt, 63
  %i.dv = mul nuw nsw i64 %i.du, 9
  %i.dw = add nuw nsw i64 %i.dv, 73
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = add i64 %i.dx, %.6278                   ; 2 uses
  %i.dz = add nuw nsw i64 %.0200279, 1            ; 2 uses
  %exitcond333.not = icmp eq i64 %i.dz, %.0204
  br i1 %exitcond333.not, label %.loopexit, label %.lr.ph280, !llvm.loop !227

bb.p:                                             ; preds = %bb.o
  %i.ea = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) ; 2 uses
  %i.eb = shl i64 %i.ea, 1
  %i.ec = ashr i64 %i.ea, 63
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = or i64 %i.ed, 1
  %i.ef = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = xor i64 %i.ef, 63
  %i.eh = mul nuw nsw i64 %i.eg, 9
  %i.ei = add nuw nsw i64 %i.eh, 73
  %i.ej = lshr i64 %i.ei, 6
  br label %.loopexit

bb.q:                                             ; preds = %bb.h
  %i.ek = load i8, ptr %i.ah, align 1
  %i.el = and i8 %i.ek, 32
  %.not221 = icmp eq i8 %i.el, 0
  br i1 %.not221, label %bb.r, label %.preheader232

.preheader232:                                    ; preds = %bb.q
  %.not300 = icmp eq i64 %.0204, 0
  br i1 %.not300, label %.loopexit, label %.lr.ph276

.lr.ph276:                                        ; preds = %.preheader232, %.lr.ph276
  %.0199275 = phi i64 [ %i.ew, %.lr.ph276 ], [ 0, %.preheader232 ] ; 2 uses
  %.7274 = phi i64 [ %i.ev, %.lr.ph276 ], [ 0, %.preheader232 ]
  %i.em = trunc i64 %.0199275 to i32
  %i.en = tail call noundef i32 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.em)
  %i.eo = or i32 %i.en, 1
  %i.ep = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eo, i1 true)
  %i.eq = xor i32 %i.ep, 31
  %i.er = mul nuw nsw i32 %i.eq, 9
  %i.es = add nuw nsw i32 %i.er, 73
  %i.et = lshr i32 %i.es, 6
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = add i64 %.7274, %i.eu                   ; 2 uses
  %i.ew = add nuw nsw i64 %.0199275, 1            ; 2 uses
  %exitcond332.not = icmp eq i64 %i.ew, %.0204
  br i1 %exitcond332.not, label %.loopexit, label %.lr.ph276, !llvm.loop !228

bb.r:                                             ; preds = %bb.q
  %i.ex = tail call noundef i32 @_ZNK6google8protobuf10Reflection9GetUInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.ey = or i32 %i.ex, 1
  %i.ez = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true)
  %i.fa = xor i32 %i.ez, 31
  %i.fb = mul nuw nsw i32 %i.fa, 9
  %i.fc = add nuw nsw i32 %i.fb, 73
  %i.fd = lshr i32 %i.fc, 6
  %i.fe = zext nneg i32 %i.fd to i64
  br label %.loopexit

bb.s:                                             ; preds = %bb.h
  %i.ff = load i8, ptr %i.ah, align 1
  %i.fg = and i8 %i.ff, 32
  %.not220 = icmp eq i8 %i.fg, 0
  br i1 %.not220, label %bb.t, label %.preheader234

.preheader234:                                    ; preds = %bb.s
  %.not299 = icmp eq i64 %.0204, 0
  br i1 %.not299, label %.loopexit, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader234, %.lr.ph272
  %.0198271 = phi i64 [ %i.fq, %.lr.ph272 ], [ 0, %.preheader234 ] ; 2 uses
  %.8270 = phi i64 [ %i.fp, %.lr.ph272 ], [ 0, %.preheader234 ]
  %i.fh = trunc i64 %.0198271 to i32
  %i.fi = tail call noundef i64 @_ZNK6google8protobuf10Reflection17GetRepeatedUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.fh)
  %i.fj = or i64 %i.fi, 1
  %i.fk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fj, i1 true)
  %i.fl = xor i64 %i.fk, 63
  %i.fm = mul nuw nsw i64 %i.fl, 9
  %i.fn = add nuw nsw i64 %i.fm, 73
  %i.fo = lshr i64 %i.fn, 6
  %i.fp = add i64 %i.fo, %.8270                   ; 2 uses
  %i.fq = add nuw nsw i64 %.0198271, 1            ; 2 uses
  %exitcond331.not = icmp eq i64 %i.fq, %.0204
  br i1 %exitcond331.not, label %.loopexit, label %.lr.ph272, !llvm.loop !229

bb.t:                                             ; preds = %bb.s
  %i.fr = tail call noundef i64 @_ZNK6google8protobuf10Reflection9GetUInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.fs = or i64 %i.fr, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = xor i64 %i.ft, 63
  %i.fv = mul nuw nsw i64 %i.fu, 9
  %i.fw = add nuw nsw i64 %i.fv, 73
  %i.fx = lshr i64 %i.fw, 6
  br label %.loopexit

bb.u:                                             ; preds = %bb.h
  %i.fy = shl nuw nsw i64 %.0204, 2
  br label %.loopexit

bb.v:                                             ; preds = %bb.h
  %i.fz = shl nuw nsw i64 %.0204, 3
  br label %.loopexit

bb.w:                                             ; preds = %bb.h
  %i.ga = shl nuw nsw i64 %.0204, 2
  br label %.loopexit

bb.x:                                             ; preds = %bb.h
  %i.gb = shl nuw nsw i64 %.0204, 3
  br label %.loopexit

bb.y:                                             ; preds = %bb.h
  %i.gc = shl nuw nsw i64 %.0204, 2
  br label %.loopexit

bb.z:                                             ; preds = %bb.h
  %i.gd = shl nuw nsw i64 %.0204, 3
  br label %.loopexit

bb.aa:                                            ; preds = %bb.h
  br label %.loopexit

bb.ab:                                            ; preds = %bb.h
  %i.ge = load i8, ptr %i.ah, align 1
  %i.gf = and i8 %i.ge, 32
  %.not219 = icmp eq i8 %i.gf, 0
  br i1 %.not219, label %bb.ac, label %.preheader236

.preheader236:                                    ; preds = %bb.ab
  %.not298 = icmp eq i64 %.0204, 0
  br i1 %.not298, label %.loopexit, label %.lr.ph268

.lr.ph268:                                        ; preds = %.preheader236, %.lr.ph268
  %.0197267 = phi i64 [ %i.gn, %.lr.ph268 ], [ 0, %.preheader236 ] ; 2 uses
  %.9266 = phi i64 [ %i.gm, %.lr.ph268 ], [ 0, %.preheader236 ]
  %i.gg = trunc i64 %.0197267 to i32
  %i.gh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.gg) ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !187
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call noundef i64 %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gh), !inline_history !230
  %i.gm = add i64 %i.gl, %.9266                   ; 2 uses
  %i.gn = add nuw nsw i64 %.0197267, 1            ; 2 uses
  %exitcond330.not = icmp eq i64 %i.gn, %.0204
  br i1 %exitcond330.not, label %.loopexit, label %.lr.ph268, !llvm.loop !231

bb.ac:                                            ; preds = %bb.ab
  %i.go = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !187
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef i64 %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.go), !inline_history !230
  br label %.loopexit

bb.ad:                                            ; preds = %bb.h
  %i.gt = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.gu = and i8 %i.gt, 32
  %.not217 = icmp eq i8 %i.gu, 0
  br i1 %.not217, label %bb.ae, label %.preheader238

.preheader238:                                    ; preds = %bb.ad
  %.not297 = icmp eq i64 %.0204, 0
  br i1 %.not297, label %.loopexit, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader238, %.lr.ph264
  %.0196263 = phi i64 [ %i.hl, %.lr.ph264 ], [ 0, %.preheader238 ] ; 2 uses
  %.10262 = phi i64 [ %i.hk, %.lr.ph264 ], [ 0, %.preheader238 ]
  %i.gv = trunc i64 %.0196263 to i32
  %i.gw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.gv) ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !187
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = tail call noundef i64 %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gw), !inline_history !232 ; 2 uses
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = or i32 %i.hb, 1
  %i.hd = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hc, i1 true)
  %i.he = xor i32 %i.hd, 31
  %i.hf = mul nuw nsw i32 %i.he, 9
  %i.hg = add nuw nsw i32 %i.hf, 73
  %i.hh = lshr i32 %i.hg, 6
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = add i64 %i.ha, %.10262
  %i.hk = add i64 %i.hj, %i.hi                    ; 2 uses
  %i.hl = add nuw nsw i64 %.0196263, 1            ; 2 uses
  %exitcond329.not = icmp eq i64 %i.hl, %.0204
  br i1 %exitcond329.not, label %.loopexit, label %.lr.ph264, !llvm.loop !233

bb.ae:                                            ; preds = %bb.ad
  %i.hm = and i8 %i.gt, 8
  %.not218 = icmp eq i8 %i.hm, 0
  br i1 %.not218, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection15GetExtensionSetERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !131
  %i.hq = tail call noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet22GetMessageByteSizeLongEi(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i32 noundef %i.hp) ; 2 uses
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = or i32 %i.hr, 1
  %i.ht = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hs, i1 true)
  %i.hu = xor i32 %i.ht, 31
  %i.hv = mul nuw nsw i32 %i.hu, 9
  %i.hw = add nuw nsw i32 %i.hv, 73
  %i.hx = lshr i32 %i.hw, 6
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = add i64 %i.hq, %i.hy
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ae
  %i.ia = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !187
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = tail call noundef i64 %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.ia), !inline_history !232 ; 2 uses
  %i.if = trunc i64 %i.ie to i32
  %i.ig = or i32 %i.if, 1
  %i.ih = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ig, i1 true)
  %i.ii = xor i32 %i.ih, 31
  %i.ij = mul nuw nsw i32 %i.ii, 9
  %i.ik = add nuw nsw i32 %i.ij, 73
  %i.il = lshr i32 %i.ik, 6
  %i.im = zext nneg i32 %i.il to i64
  %i.in = add i64 %i.ie, %i.im
  br label %.loopexit

bb.ah:                                            ; preds = %bb.h
  %i.io = load i8, ptr %i.ah, align 1
  %i.ip = and i8 %i.io, 32
  %.not216 = icmp eq i8 %i.ip, 0
  br i1 %.not216, label %bb.ai, label %.preheader240

.preheader240:                                    ; preds = %bb.ah
  %.not296 = icmp eq i64 %.0204, 0
  br i1 %.not296, label %.loopexit, label %.lr.ph260

.lr.ph260:                                        ; preds = %.preheader240, %.lr.ph260
  %.0195259 = phi i64 [ %i.jc, %.lr.ph260 ], [ 0, %.preheader240 ] ; 2 uses
  %.11258 = phi i64 [ %i.jb, %.lr.ph260 ], [ 0, %.preheader240 ]
  %i.iq = trunc i64 %.0195259 to i32
  %i.ir = tail call noundef ptr @_ZNK6google8protobuf10Reflection15GetRepeatedEnumERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.iq)
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !171
  %i.iu = or i32 %i.it, 1
  %i.iv = sext i32 %i.iu to i64
  %i.iw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.iv, i1 true)
  %i.ix = xor i64 %i.iw, 63
  %i.iy = mul nuw nsw i64 %i.ix, 9
  %i.iz = add nuw nsw i64 %i.iy, 73
  %i.ja = lshr i64 %i.iz, 6
  %i.jb = add i64 %i.ja, %.11258                  ; 2 uses
  %i.jc = add nuw nsw i64 %.0195259, 1            ; 2 uses
  %exitcond328.not = icmp eq i64 %i.jc, %.0204
  br i1 %exitcond328.not, label %.loopexit, label %.lr.ph260, !llvm.loop !234

bb.ai:                                            ; preds = %bb.ah
  %i.jd = tail call noundef ptr @_ZNK6google8protobuf10Reflection7GetEnumERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !171
  %i.jg = or i32 %i.jf, 1
  %i.jh = sext i32 %i.jg to i64
  %i.ji = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jh, i1 true)
  %i.jj = xor i64 %i.ji, 63
  %i.jk = mul nuw nsw i64 %i.jj, 9
  %i.jl = add nuw nsw i64 %i.jk, 73
  %i.jm = lshr i64 %i.jl, 6
  br label %.loopexit

bb.aj:                                            ; preds = %bb.h, %bb.h
  %i.jn = load i8, ptr %i.c, align 1
  %i.jo = and i8 %i.jn, 7
  %i.jp = icmp eq i8 %i.jo, 2
  %.not295 = icmp eq i64 %.0204, 0                ; 2 uses
  br i1 %i.jp, label %.preheader242, label %.preheader244

.preheader244:                                    ; preds = %bb.aj
  br i1 %.not295, label %.loopexit, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader244
  %i.jq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.aq

.preheader242:                                    ; preds = %bb.aj
  br i1 %.not295, label %.loopexit, label %.lr.ph256

.lr.ph256:                                        ; preds = %.preheader242
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph256, %_ZN4absl12lts_202505124CordD2Ev.exit
  %.0194255 = phi i64 [ 0, %.lr.ph256 ], [ %i.km, %_ZN4absl12lts_202505124CordD2Ev.exit ]
  %.12254 = phi i64 [ 0, %.lr.ph256 ], [ %i.kj, %_ZN4absl12lts_202505124CordD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK6google8protobuf10Reflection7GetCordERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Cord") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.jt = load i8, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.ju = trunc i8 %i.jt to i1                    ; 2 uses
  br i1 %i.ju, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jv = load ptr, ptr %i.js, align 8, !tbaa !21
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !235
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.jx = sext i8 %i.jt to i64
  %i.jy = lshr exact i64 %i.jx, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jz = phi i64 [ %i.jw, %bb.al ], [ %i.jy, %bb.am ] ; 2 uses
  %i.ka = trunc i64 %i.jz to i32
  %i.kb = or i32 %i.ka, 1
  %i.kc = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kb, i1 true)
  %i.kd = xor i32 %i.kc, 31
  %i.ke = mul nuw nsw i32 %i.kd, 9
  %i.kf = add nuw nsw i32 %i.ke, 73
  %i.kg = lshr i32 %i.kf, 6
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = add i64 %i.jz, %.12254
  %i.kj = add i64 %i.ki, %i.kh                    ; 2 uses
  br i1 %i.ju, label %bb.ao, label %_ZN4absl12lts_202505124CordD2Ev.exit

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202505124CordD2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #29
  unreachable

_ZN4absl12lts_202505124CordD2Ev.exit:             ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.km = add nuw nsw i64 %.0194255, 1            ; 2 uses
  %exitcond327.not = icmp eq i64 %i.km, %.0204
  br i1 %exitcond327.not, label %.loopexit, label %bb.ak, !llvm.loop !240

bb.aq:                                            ; preds = %.lr.ph252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0191251 = phi i64 [ 0, %.lr.ph252 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.13250 = phi i64 [ 0, %.lr.ph252 ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.jq, ptr %5, align 8, !tbaa !71
  store i64 0, ptr %i.jr, align 8, !tbaa !46
  store i8 0, ptr %i.jq, align 8, !tbaa !21
  %i.kn = load i8, ptr %i.ah, align 1
  %i.ko = and i8 %i.kn, 32
  %.not215 = icmp eq i8 %i.ko, 0
  br i1 %.not215, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = trunc i64 %.0191251 to i32
  %i.kq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection26GetRepeatedStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, i32 noundef %i.kp, ptr noundef nonnull %5)
          to label %bb.at unwind label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.kr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection18GetStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef nonnull %5)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ks = phi ptr [ %i.kq, %bb.ar ], [ %i.kr, %bb.as ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !46 ; 2 uses
  %i.kv = trunc i64 %i.ku to i32
  %i.kw = or i32 %i.kv, 1
  %i.kx = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.kw, i1 true)
  %i.ky = xor i32 %i.kx, 31
  %i.kz = mul nuw nsw i32 %i.ky, 9
  %i.la = add nuw nsw i32 %i.kz, 73
  %i.lb = lshr i32 %i.la, 6
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = add i64 %i.ku, %.13250
  %i.le = add i64 %i.ld, %i.lc                    ; 2 uses
  %i.lf = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.jq
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  %i.lh = load i64, ptr %i.jq, align 8, !tbaa !21
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.lj = add nuw nsw i64 %.0191251, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.lj, %.0204
  br i1 %exitcond.not, label %.loopexit, label %bb.aq, !llvm.loop !241

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.lk = landingpad { ptr, i32 }
          cleanup
  %i.ll = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.jq
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.au
  %i.ln = load i64, ptr %i.jq, align 8, !tbaa !21
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.lk

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_202505124CordD2Ev.exit, %.lr.ph260, %.lr.ph264, %.lr.ph268, %.lr.ph272, %.lr.ph276, %.lr.ph280, %.lr.ph284, %.lr.ph288, %.lr.ph292, %.preheader244, %.preheader242, %.preheader240, %.preheader238, %.preheader236, %.preheader234, %.preheader232, %.preheader230, %.preheader228, %.preheader226, %.preheader, %._crit_edge, %bb.h, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.af, %bb.ag, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.ac, %bb.ai
  %.1 = phi i64 [ %.0206.lcssa, %._crit_edge ], [ 0, %bb.h ], [ %i.kj, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ %i.bq, %bb.j ], [ %i.bh, %.lr.ph292 ], [ %i.cj, %bb.l ], [ %i.cb, %.lr.ph288 ], [ %i.dk, %bb.n ], [ %i.cy, %.lr.ph284 ], [ %i.ej, %bb.p ], [ %i.dy, %.lr.ph280 ], [ %i.fe, %bb.r ], [ %i.ev, %.lr.ph276 ], [ %i.fx, %bb.t ], [ %i.fy, %bb.u ], [ %i.fz, %bb.v ], [ %i.ga, %bb.w ], [ %i.gb, %bb.x ], [ %i.gc, %bb.y ], [ %i.gd, %bb.z ], [ %.0204, %bb.aa ], [ %i.fp, %.lr.ph272 ], [ %i.gs, %bb.ac ], [ %i.gm, %.lr.ph268 ], [ %i.hz, %bb.af ], [ %i.in, %bb.ag ], [ %i.hk, %.lr.ph264 ], [ %i.jm, %bb.ai ], [ %i.jb, %.lr.ph260 ], [ 0, %.preheader ], [ 0, %.preheader226 ], [ 0, %.preheader228 ], [ 0, %.preheader230 ], [ 0, %.preheader232 ], [ 0, %.preheader234 ], [ 0, %.preheader236 ], [ 0, %.preheader238 ], [ 0, %.preheader240 ], [ 0, %.preheader242 ], [ 0, %.preheader244 ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = add nsw i64 %i.h, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.i) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection24GetRepeatedFieldInternalIlEERKNS0_13RepeatedFieldIT_EERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !162
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162  ; 7 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 2
  br i1 %i.g, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i: ; preds = %bb.b
  invoke void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, i32 noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf13RepeatedFieldIlED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i.i21.i = select i1 %i.d, ptr %1, ptr %i.j
  %.0.i.i.i.i2022.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i21.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %.0.i.i24.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.m = zext nneg i32 %i.f to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.0.i.i24.i, ptr nonnull align 8 %.0.i.i.i.i2022.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !242
  br label %_ZN6google8protobuf13RepeatedFieldIlEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.e:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.p = icmp eq i32 %i.f, 1
  br i1 %i.p, label %bb.f, label %_ZN6google8protobuf13RepeatedFieldIlEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

bb.f:                                             ; preds = %bb.e
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.v.i.i.i.i.i = select i1 %i.d, ptr %1, ptr %i.o
  %.0.i.i.i.i20.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %.0.i.i.i.i20.i, align 8, !tbaa !22, !alias.scope !246, !noalias !247
  store i64 %i.q, ptr %.0.i.i.i, align 8, !tbaa !22, !alias.scope !247, !noalias !246
  br label %_ZN6google8protobuf13RepeatedFieldIlEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.i) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection24GetRepeatedFieldInternalIjEERKNS0_13RepeatedFieldIT_EERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !162
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162  ; 7 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIjEC2ENS0_8internal22InternalMetadataOffsetERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i: ; preds = %bb.b
  invoke void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i1 noundef zeroext true, i32 noundef 0, i32 noundef %i.f)
          to label %.thread.i unwind label %bb.c

.thread.i:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %.0.v.i.i.i.i21.i = select i1 %i.d, ptr %1, ptr %i.i
  %.0.i.i.i.i2022.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i21.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i24.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.c:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf13RepeatedFieldIjED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.a, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.0.v.i.i.i.i.i = select i1 %i.d, ptr %1, ptr %i.n
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal10WireFormat8ByteSizeERKNS0_7MessageE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !133  ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.r, %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  %.pre72 = phi i32 [ %i.k, %.lr.ph ], [ %.pre73, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.q = phi i32 [ %i.k, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.am, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit ] ; 8 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.s, align 8, !tbaa !135
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %1, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #31
          to label %.noexc29 unwind label %.loopexit36 ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.v, ptr %i.ah, align 8, !tbaa !135
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.t, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc29
  %.not.i17.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #26
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !133
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %.pre72, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d
  %.pre73 = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre72, %bb.d ]
  %i.ak = phi i32 [ %.pre, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.pn54 = phi ptr [ %i.ah, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ]
  %i.am = phi ptr [ %i.ag, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pn54, i64 8 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = sext i32 %i.ak to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.c, label %..loopexit_crit_edge, !llvm.loop !284

.loopexit36:                                      ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %i.n, align 8
  store ptr %i.r, ptr %i.o, align 8
  store ptr %i.t, ptr %1, align 8
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.i:                                             ; preds = %bb.a
  invoke void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %._crit_edge69 unwind label %bb.b

._crit_edge69:                                    ; preds = %bb.i
  %.pre70 = load ptr, ptr %1, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre71 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %bb.j

..loopexit_crit_edge:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit
  store ptr %i.an, ptr %i.n, align 8
  store ptr %i.al, ptr %i.o, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  %i.aq = phi ptr [ %i.an, %..loopexit_crit_edge ], [ null, %.preheader ]
  %.lcssa = phi ptr [ %i.am, %..loopexit_crit_edge ], [ null, %.preheader ] ; 2 uses
  store ptr %.lcssa, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge69, %.loopexit
  %i.ar = phi ptr [ %.pre71, %._crit_edge69 ], [ %i.aq, %.loopexit ] ; 2 uses
  %i.as = phi ptr [ %.pre70, %._crit_edge69 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %.not49 = icmp eq ptr %i.as, %i.ar
  br i1 %.not49, label %._crit_edge, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.j, %bb.k
  %.051 = phi i64 [ %i.av, %bb.k ], [ 0, %bb.j ]
  %.sroa.032.050 = phi ptr [ %i.aw, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.032.050, align 8, !tbaa !135
  %i.au = invoke noundef i64 @_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %i.at, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph52
  %i.av = add i64 %i.au, %.051                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.050, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.ar
  br i1 %.not, label %._crit_edge, label %.lr.ph52

bb.l:                                             ; preds = %.lr.ph52
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.0.lcssa = phi i64 [ 0, %bb.j ], [ %i.av, %bb.k ]
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !21, !range !69, !noundef !70
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %bb.r

bb.m:                                             ; preds = %._crit_edge
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.n unwind label %bb.b       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  %i.bi = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.0.i.i.i.i.i.i.i.i = select i1 %i.bj, ptr %i.bk, ptr %i.bm
  %i.bn = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.016.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i.i, i64 %indvars.iv.i ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.br = icmp eq i32 %i.bq, 3
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = add i64 %.016.i, %i.bn
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !37
  %i.bu = or i32 %i.bt, 1
  %i.bv = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bu, i1 true)
  %i.bw = xor i32 %i.bv, 31
  %i.bx = mul nuw nsw i32 %i.bw, 9
  %i.by = add nuw nsw i32 %i.bx, 73
  %i.bz = lshr i32 %i.by, 6
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = or i32 %i.cf, 1
  %i.ch = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ci = xor i32 %i.ch, 31
  %i.cj = mul nuw nsw i32 %i.ci, 9
  %i.ck = add nuw nsw i32 %i.cj, 73
  %i.cl = lshr i32 %i.ck, 6
  %i.cm = zext nneg i32 %i.cl to i64
  %sext.i = shl i64 %i.ce, 32
  %i.cn = ashr exact i64 %sext.i, 32
  %i.co = add i64 %i.bs, %i.cn
  %i.cp = add i64 %i.co, %i.ca
  %i.cq = add i64 %i.cp, %i.cm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i64 [ %i.cq, %bb.p ], [ %.016.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit, label %bb.o, !llvm.loop !51

bb.r:                                             ; preds = %._crit_edge
  %i.cr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.s unwind label %bb.b

bb.s:                                             ; preds = %bb.r
  %i.cs = call noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
  br label %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit

_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit: ; preds = %bb.q, %bb.s, %bb.n
  %.pn = phi i64 [ %i.cs, %bb.s ], [ 0, %bb.n ], [ %.1.i, %bb.q ]
  %i.ct = load ptr, ptr %1, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !141
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE.exit, %bb.t
  %.1 = add i64 %.pn, %.0.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i64 %.1

thread-pre-split:                                 ; preds = %bb.b, %bb.l, %.loopexit.split-lp
  %.pn27.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ax, %bb.l ], [ %i.p, %bb.b ]
  %.pr = load ptr, ptr %1, align 8, !tbaa !139
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split, %.loopexit36
  %i.cz = phi ptr [ %.pr, %thread-pre-split ], [ %i.t, %.loopexit36 ] ; 3 uses
  %.pn27 = phi { ptr, i32 } [ %.pn27.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit36 ]
  %.not.i.i.i30 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !141
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #26
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit31: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn27
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat13FieldByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  %i.e = and i8 %i.d, 8
  %.not43 = icmp eq i8 %i.e, 0
  br i1 %.not43, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !21, !range !69, !noundef !70
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !79
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !143
  %i.r = icmp ne i32 %i.q, 10
  %i.s = and i8 %i.d, 32
  %i.t = icmp ne i8 %i.s, 0
  %or.cond = or i1 %i.t, %i.r
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.v = extractvalue { ptr, ptr } %i.u, 1
  %i.w = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !131
  %i.z = or i32 %i.y, 1
  %i.aa = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = mul nuw nsw i32 %i.ab, 9
  %i.ad = add nuw nsw i32 %i.ac, 73
  %i.ae = lshr i32 %i.ad, 6
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !187
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ag), !inline_history !285 ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = xor i32 %i.an, 31
  %i.ap = mul nuw nsw i32 %i.ao, 9
  %i.aq = add nuw nsw i32 %i.ap, 73
  %i.ar = lshr i32 %i.aq, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %i.ak, %i.w
  %i.au = add i64 %i.at, %i.af
  %i.av = add i64 %i.au, %i.as
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.aw = and i8 %i.d, 32
  %.not44 = icmp eq i8 %i.aw, 0
  br i1 %.not44, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, 16
  %.not45 = icmp eq i8 %i.az, 0
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = tail call noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) ; 2 uses
  %i.bb = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12MapFieldBase10IsMapValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = tail call noundef i32 @_ZNK6google8protobuf8internal12MapFieldBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  %i.bd = zext i32 %i.bc to i64
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.be = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.bf = zext i32 %i.be to i64
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.bg = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %i.bh = zext i32 %i.bg to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21, !range !69, !noundef !70
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0)
  %spec.select = zext i1 %i.bp to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.i, %bb.j
  %.1 = phi i64 [ %spec.select, %bb.l ], [ %i.bh, %bb.j ], [ %i.bf, %bb.i ], [ 1, %bb.k ], [ %i.bd, %bb.h ]
  %i.bq = tail call noundef i64 @_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 4 uses
  %i.br = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %i.br, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !131
  %i.bu = shl i32 %i.bt, 3
  %i.bv = or disjoint i32 %i.bu, 1
  %i.bw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %i.bx = xor i32 %i.bw, 31
  %i.by = mul nuw nsw i32 %i.bx, 9
  %i.bz = add nuw nsw i32 %i.by, 73
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = trunc i64 %i.bq to i32
  %i.cd = or i32 %i.cc, 1
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = mul nuw nsw i32 %i.cf, 9
  %i.ch = add nuw nsw i32 %i.cg, 73
  %i.ci = lshr i32 %i.ch, 6
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = add i64 %i.bq, %i.cj
  %i.cl = add i64 %i.ck, %i.cb
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !131
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !79
  %i.cq = shl i32 %i.cn, 3
  %i.cr = or disjoint i32 %i.cq, 1
  %i.cs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.ct = xor i32 %i.cs, 31
  %i.cu = mul nuw nsw i32 %i.ct, 9
  %i.cv = add nuw nsw i32 %i.cu, 73
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp eq i8 %i.cp, 10
  %i.cz = zext i1 %i.cy to i64
  %.0.i.i = shl nuw nsw i64 %i.cx, %i.cz
  %i.da = mul nuw nsw i64 %.0.i.i, %.1
  %i.db = add i64 %i.da, %i.bq
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.d
  %.038 = phi i64 [ %i.av, %bb.d ], [ %i.cl, %bb.o ], [ 0, %bb.n ], [ %i.db, %bb.p ]
  ret i64 %.038
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6google8protobuf8internal10WireFormat22MessageSetItemByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1
  %i.c = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = or i32 %i.e, 1
  %i.g = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = xor i32 %i.g, 31
  %i.i = mul nuw nsw i32 %i.h, 9
  %i.j = add nuw nsw i32 %i.i, 73
  %i.k = lshr i32 %i.j, 6
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.m) ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.r, 1
  %i.t = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.u = xor i32 %i.t, 31
  %i.v = mul nuw nsw i32 %i.u, 9
  %i.w = add nuw nsw i32 %i.v, 73
  %i.x = lshr i32 %i.w, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add i64 %i.q, %i.c
  %i.aa = add i64 %i.z, %i.l
  %i.ab = add i64 %i.aa, %i.y
  ret i64 %i.ab
}

declare noundef i32 @_ZNK6google8protobuf8internal12MapFieldBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 2, !tbaa !79
  switch i8 %i.b, label %bb.m [
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 10, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 14, label %bb.b
    i8 5, label %bb.d
    i8 3, label %bb.e
    i8 13, label %bb.f
    i8 4, label %bb.g
    i8 17, label %bb.h
    i8 18, label %bb.i
    i8 9, label %bb.j
    i8 7, label %bb.o
    i8 6, label %bb.k
    i8 15, label %bb.o
    i8 16, label %bb.k
    i8 8, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 1538) #27
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 11, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK6google8protobuf6MapKey13GetInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.e = or i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 73
  %i.k = lshr i64 %i.j, 6
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef i64 @_ZNK6google8protobuf6MapKey13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.m = or i64 %i.l, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZNK6google8protobuf6MapKey14GetUInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.t = or i32 %i.s, 1
  %i.u = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.t, i1 true)
  %i.v = xor i32 %i.u, 31
  %i.w = mul nuw nsw i32 %i.v, 9
  %i.x = add nuw nsw i32 %i.w, 73
  %i.y = lshr i32 %i.x, 6
  %i.z = zext nneg i32 %i.y to i64
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.aa = tail call noundef i64 @_ZNK6google8protobuf6MapKey14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.ab = or i64 %i.aa, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ah = tail call noundef i32 @_ZNK6google8protobuf6MapKey13GetInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.ai = shl i32 %i.ah, 1
  %i.aj = ashr i32 %i.ah, 31
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = or i32 %i.ak, 1
  %i.am = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %i.an = xor i32 %i.am, 31
  %i.ao = mul nuw nsw i32 %i.an, 9
  %i.ap = add nuw nsw i32 %i.ao, 73
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.as = tail call noundef i64 @_ZNK6google8protobuf6MapKey13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.at = shl i64 %i.as, 1
  %i.au = ashr i64 %i.as, 63
  %i.av = xor i64 %i.at, %i.au
  %i.aw = or i64 %i.av, 1
  %i.ax = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true)
  %i.ay = xor i64 %i.ax, 63
  %i.az = mul nuw nsw i64 %i.ay, 9
  %i.ba = add nuw nsw i64 %i.az, 73
  %i.bb = lshr i64 %i.ba, 6
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bc = tail call { i64, ptr } @_ZNK6google8protobuf6MapKey14GetStringValueEv(ptr noundef nonnull align 8 dereferenceable(20) %1)
  %i.bd = extractvalue { i64, ptr } %i.bc, 0      ; 2 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = or i32 %i.be, 1
  %i.bg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 31
  %i.bi = mul nuw nsw i32 %i.bh, 9
  %i.bj = add nuw nsw i32 %i.bi, 73
  %i.bk = lshr i32 %i.bj, 6
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = add i64 %i.bd, %i.bl
  br label %bb.o

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 1565) #27
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 15, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.n

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.m
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit8 unwind label %bb.n

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit8: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  unreachable

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ %i.r, %bb.e ], [ %i.z, %bb.f ], [ %i.ag, %bb.g ], [ %i.ar, %bb.h ], [ %i.bb, %bb.i ], [ %i.bm, %bb.j ], [ 1, %bb.l ], [ 8, %bb.k ], [ 4, %bb.a ], [ 4, %bb.a ]
  ret i64 %.0
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare void @_ZNK6google8protobuf8internal12MapFieldBase13ConstMapBeginEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6google8protobuf8internal12MapFieldBase11ConstMapEndEPNS0_16ConstMapIteratorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE(i8 %.2.val, ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  switch i8 %.2.val, label %bb.p [
    i8 10, label %bb.b
    i8 5, label %bb.d
    i8 3, label %bb.e
    i8 13, label %bb.f
    i8 4, label %bb.g
    i8 17, label %bb.h
    i8 18, label %bb.i
    i8 9, label %bb.j
    i8 12, label %bb.k
    i8 14, label %bb.l
    i8 11, label %bb.m
    i8 7, label %bb.r
    i8 6, label %bb.n
    i8 15, label %bb.r
    i8 16, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.r
    i8 8, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 1573) #27
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 11, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK6google8protobuf16MapValueConstRef13GetInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.c = or i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.k = or i64 %i.j, 1
  %i.l = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = mul nuw nsw i64 %i.m, 9
  %i.o = add nuw nsw i64 %i.n, 73
  %i.p = lshr i64 %i.o, 6
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.q = tail call noundef i32 @_ZNK6google8protobuf16MapValueConstRef14GetUInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.r = or i32 %i.q, 1
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = mul nuw nsw i32 %i.t, 9
  %i.v = add nuw nsw i32 %i.u, 73
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef14GetUInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.z = or i64 %i.y, 1
  %i.aa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 73
  %i.ae = lshr i64 %i.ad, 6
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  %i.af = tail call noundef i32 @_ZNK6google8protobuf16MapValueConstRef13GetInt32ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %i.ag = shl i32 %i.af, 1
  %i.ah = ashr i32 %i.af, 31
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = or i32 %i.ai, 1
  %i.ak = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aj, i1 true)
  %i.al = xor i32 %i.ak, 31
  %i.am = mul nuw nsw i32 %i.al, 9
  %i.an = add nuw nsw i32 %i.am, 73
  %i.ao = lshr i32 %i.an, 6
  %i.ap = zext nneg i32 %i.ao to i64
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.aq = tail call noundef i64 @_ZNK6google8protobuf16MapValueConstRef13GetInt64ValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %i.ar = shl i64 %i.aq, 1
  %i.as = ashr i64 %i.aq, 63
  %i.at = xor i64 %i.ar, %i.as
  %i.au = or i64 %i.at, 1
  %i.av = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = mul nuw nsw i64 %i.aw, 9
  %i.ay = add nuw nsw i64 %i.ax, 73
  %i.az = lshr i64 %i.ay, 6
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.ba = tail call { i64, ptr } @_ZNK6google8protobuf16MapValueConstRef14GetStringValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.bb = extractvalue { i64, ptr } %i.ba, 0      ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = or i32 %i.bc, 1
  %i.be = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bd, i1 true)
  %i.bf = xor i32 %i.be, 31
  %i.bg = mul nuw nsw i32 %i.bf, 9
  %i.bh = add nuw nsw i32 %i.bg, 73
  %i.bi = lshr i32 %i.bh, 6
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = add i64 %i.bb, %i.bj
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.bl = tail call { i64, ptr } @_ZNK6google8protobuf16MapValueConstRef14GetStringValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.bm = extractvalue { i64, ptr } %i.bl, 0      ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = or i32 %i.bn, 1
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bo, i1 true)
  %i.bq = xor i32 %i.bp, 31
  %i.br = mul nuw nsw i32 %i.bq, 9
  %i.bs = add nuw nsw i32 %i.br, 73
  %i.bt = lshr i32 %i.bs, 6
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add i64 %i.bm, %i.bu
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bw = tail call noundef i32 @_ZNK6google8protobuf16MapValueConstRef12GetEnumValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.bx = or i32 %i.bw, 1
  %i.by = sext i32 %i.bx to i64
  %i.bz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = xor i64 %i.bz, 63
  %i.cb = mul nuw nsw i64 %i.ca, 9
  %i.cc = add nuw nsw i64 %i.cb, 73
  %i.cd = lshr i64 %i.cc, 6
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.ce = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf16MapValueConstRef15GetMessageValueEv(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !187
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.ce), !inline_history !232 ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = or i32 %i.cj, 1
  %i.cl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ck, i1 true)
  %i.cm = xor i32 %i.cl, 31
  %i.cn = mul nuw nsw i32 %i.cm, 9
  %i.co = add nuw nsw i32 %i.cn, 73
  %i.cp = lshr i32 %i.co, 6
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add i64 %i.ci, %i.cq
  br label %bb.r

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 1605) #27
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 15, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.p
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit13 unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit13: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.r:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.p, %bb.e ], [ %i.x, %bb.f ], [ %i.ae, %bb.g ], [ %i.ap, %bb.h ], [ %i.az, %bb.i ], [ %i.bk, %bb.j ], [ %i.bv, %bb.k ], [ %i.cd, %bb.l ], [ %i.cr, %bb.m ], [ 1, %bb.o ], [ 8, %bb.n ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ]
  ret i64 %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection15GetExtensionSetERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf8internal12ExtensionSet22GetMessageByteSizeLongEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN6google8protobuf8internal24ComputeUnknownFieldsSizeERKNS1_16InternalMetadataEmPNS1_10CachedSizeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.a ]
  %i.f = tail call noundef i64 @_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i)
  %i.g = add i64 %i.f, %1                         ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  %i.j = load atomic i32, ptr %2 monotonic, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  store atomic i32 %i.h, ptr %2 monotonic, align 4
  br label %_ZNK6google8protobuf8internal10CachedSize3SetEi.exit

_ZNK6google8protobuf8internal10CachedSize3SetEi.exit: ; preds = %bb.c, %bb.d
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal12FieldSkipperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal27UnknownFieldSetFieldSkipperD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

declare { i64, i8 } @_ZN6google8protobuf2io16CodedInputStream20ReadVarint64FallbackEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian64FallbackEPm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream26ReadLittleEndian32FallbackEPj(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Descriptor34FindExtensionRangeContainingNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream8ReadCordEPN4absl12lts_202505124CordEi(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream27ReadVarintSizeAsIntFallbackEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal10WireFormat16MessageSetParser12ParseElementEPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !46
  store i8 0, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %.thread222

.thread222:                                       ; preds = %.thread222.backedge, %bb.a
  %.0144 = phi ptr [ %1, %bb.a ], [ %.0144.be, %.thread222.backedge ] ; 4 uses
  %.055 = phi i32 [ 0, %bb.a ], [ %.055.be, %.thread222.backedge ] ; 10 uses
  %.048 = phi i32 [ 0, %bb.a ], [ %.048.be, %.thread222.backedge ] ; 6 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !106
  %i.z = load ptr, ptr %2, align 8, !tbaa !110
  %i.aa = icmp ult ptr %.0144, %i.z
  br i1 %i.aa, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread155, label %bb.b, !prof !20

bb.b:                                             ; preds = %.thread222
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.ac = ptrtoint ptr %.0144 to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32                  ; 3 uses
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !112
  %i.ah = icmp eq i32 %i.ag, %i.af
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp sgt i32 %i.af, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  %or.cond.i.i = select i1 %i.ai, i1 %i.al, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0144
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
end_hunk_3
