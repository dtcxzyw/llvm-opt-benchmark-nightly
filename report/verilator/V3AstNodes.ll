Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12AstNodeDType9widthPow2Ev:bb.a
bb.j:                                             ; preds = %bb.i
  %i.l = icmp samesign ugt i32 %i.b, 4194304
  br i1 %i.l, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = icmp samesign ugt i32 %i.b, 2097152
  br i1 %i.m, label %bb.b, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = icmp samesign ugt i32 %i.b, 1048576
  br i1 %i.n, label %bb.b, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = icmp samesign ugt i32 %i.b, 524288
  br i1 %i.o, label %bb.b, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = icmp samesign ugt i32 %i.b, 262144
  br i1 %i.p, label %bb.b, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = icmp samesign ugt i32 %i.b, 131072
  br i1 %i.q, label %bb.b, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = icmp samesign ugt i32 %i.b, 65536
  br i1 %i.r, label %bb.b, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = icmp samesign ugt i32 %i.b, 32768
  br i1 %i.s, label %bb.b, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = icmp samesign ugt i32 %i.b, 16384
  br i1 %i.t, label %bb.b, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.u = icmp samesign ugt i32 %i.b, 8192
  br i1 %i.u, label %bb.b, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.v = icmp samesign ugt i32 %i.b, 4096
  br i1 %i.v, label %bb.b, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.w = icmp samesign ugt i32 %i.b, 2048
  br i1 %i.w, label %bb.b, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.x = icmp samesign ugt i32 %i.b, 1024
  br i1 %i.x, label %bb.b, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.y = icmp samesign ugt i32 %i.b, 512
  br i1 %i.y, label %bb.b, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.z = icmp samesign ugt i32 %i.b, 256
  br i1 %i.z, label %bb.b, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aa = icmp samesign ugt i32 %i.b, 128
  br i1 %i.aa, label %bb.b, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ab = icmp samesign ugt i32 %i.b, 64
  br i1 %i.ab, label %bb.b, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ac = icmp samesign ugt i32 %i.b, 32
  br i1 %i.ac, label %bb.b, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ad = icmp samesign ugt i32 %i.b, 16
  br i1 %i.ad, label %bb.b, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ae = icmp samesign ugt i32 %i.b, 8
  br i1 %i.ae, label %bb.b, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.af = icmp samesign ugt i32 %i.b, 4
  br i1 %i.af, label %bb.b, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ag = icmp samesign ugt i32 %i.b, 2
  br i1 %i.ag, label %bb.b, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ah = icmp eq i32 %i.b, 2
  br i1 %i.ah, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.b
  %spec.select = phi i32 [ %i.d, %bb.b ], [ 1, %bb.af ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK12AstNodeDType13isLiteralTypeEv(ptr noundef nonnull align 8 dereferenceable(162) %0) #3 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.p, %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit ] ; 3 uses
  %i.a = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %.tr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.b, align 8, !tbaa !62
  %i.c = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 74
  br i1 %i.c, label %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPKT_PKT0_.exit, label %bb.c

_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %.sroa.0.0.copyload.i = load i8, ptr %i.d, align 4, !tbaa !178 ; 2 uses
  %i.e = icmp ult i8 %.sroa.0.0.copyload.i, 27
  br i1 %i.e, label %switch.lookup, label %_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit

bb.c:                                             ; preds = %tailrecurse, %bb.b
  %i.f = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %.tr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 4 uses
  %.not.i13 = icmp eq ptr %i.f, null
  br i1 %.not.i13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.0.0.copyload.i.i.i14 = load i16, ptr %i.g, align 8, !tbaa !62
  %i.h = icmp eq i16 %.sroa.0.0.copyload.i.i.i14, 99
  br i1 %i.h, label %_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit, label %bb.e

_ZN7AstNode4castI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %bb.d
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(176) %i.f), !inline_history !1203 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(162) %i.l), !inline_history !1203
  br label %tailrecurse

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %.tr, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %.not.i16 = icmp eq ptr %i.q, null
  br i1 %.not.i16, label %_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.0.0.copyload.i.i.i17 = load i16, ptr %i.r, align 8, !tbaa !62
  %i.s = icmp eq i16 %.sroa.0.0.copyload.i.i.i17, 100
  br i1 %i.s, label %_ZN7AstNode4castI14AstStructDType12AstNodeDTypeEEPKT_PKT0_.exit, label %_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit

_ZN7AstNode4castI14AstStructDType12AstNodeDTypeEEPKT_PKT0_.exit: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 204
  %i.u = load i8, ptr %i.t, align 4, !tbaa !406, !range !149, !noundef !150
  %i.v = trunc nuw i8 %i.u to i1
  br label %_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit

switch.lookup:                                    ; preds = %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPKT_PKT0_.exit
  %switch.cast = zext nneg i8 %.sroa.0.0.copyload.i to i27
  %switch.downshift = lshr i27 -33452082, %switch.cast
  %switch.masked = trunc i27 %switch.downshift to i1
  br label %_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit

_ZNK14VBasicDTypeKwd13isLiteralTypeEv.exit:       ; preds = %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPKT_PKT0_.exit, %switch.lookup, %bb.f, %bb.e, %_ZN7AstNode4castI14AstStructDType12AstNodeDTypeEEPKT_PKT0_.exit
  %.2 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %bb.f ], [ %i.v, %_ZN7AstNode4castI14AstStructDType12AstNodeDTypeEEPKT_PKT0_.exit ], [ false, %bb.e ], [ false, %_ZN7AstNode4castI13AstBasicDType12AstNodeDTypeEEPKT_PKT0_.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK14VBasicDTypeKwd13isLiteralTypeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !474     ; 2 uses
  %i.b = icmp ult i8 %i.a, 27
  %switch.cast = zext nneg i8 %i.a to i27
  %switch.downshift = lshr i27 -33452082, %switch.cast
  %switch.masked = trunc i27 %switch.downshift to i1
  %.0 = select i1 %i.b, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17AstNodeArrayDType6basicpEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(162) %i.d)
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN11AstArraySel9baseFrompEP7AstNodeb(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not107 = icmp eq ptr %0, null
  br i1 %.not107, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge, label %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph

_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph: ; preds = %bb.a
  br i1 %1, label %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, label %bb.b

_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a:    ; preds = %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph, %.backedge.a
  %.0108 = phi ptr [ %.0.be.a, %.backedge.a ], [ %0, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0108, i64 64
  %.sroa.0.0.copyload.i.i.i.a = load i16, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i.a, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit.us [
    i16 279, label %.backedge.sink.split.a
    i16 246, label %.backedge.sink.split.a
    i16 280, label %.backedge.sink.split.a
    i16 281, label %.backedge.sink.split.a
    i16 153, label %.backedge.sink.split.a
    i16 185, label %.backedge.sink.split.a
    i16 104, label %.backedge.sink.split.a
  ]

_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit.us: ; preds = %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a
  %2 = add i16 %.sroa.0.0.copyload.i.i.i.a, -294
  %spec.select.i.i.us = icmp ult i16 %2, 4
  br i1 %spec.select.i.i.us, label %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit.us, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge

_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit.us: ; preds = %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit.us
  %3 = getelementptr inbounds nuw i8, ptr %.0108, i64 48
  %4 = load ptr, ptr %3, align 8, !tbaa !165      ; 2 uses
  %.not21.us = icmp eq ptr %4, null
  br i1 %.not21.us, label %.backedge.sink.split.a, label %.backedge.a

.backedge.sink.split.a:                           ; preds = %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit.us, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0108, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.backedge.a

.backedge.a:                                      ; preds = %.backedge.sink.split.a, %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit.us
  %.0.be.a = phi ptr [ %4, %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit.us ], [ %i.c, %.backedge.sink.split.a ] ; 2 uses
  %.not.a = icmp eq ptr %.0.be.a, null
  br i1 %.not.a, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge, label %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.a, !llvm.loop !1204

bb.b:                                             ; preds = %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph, %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit
  %.077 = phi ptr [ %.0.be, %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit ], [ %0, %_ZN7AstNode2isI11AstArraySelS_EEbPKT0_.exit.lr.ph ] ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %.077, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %5, align 8, !tbaa !62 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit [
    i16 279, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit
    i16 246, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit
    i16 280, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit
    i16 281, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit
    i16 104, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit
  ]

_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit:     ; preds = %bb.b, %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit, %bb.b, %bb.b, %bb.b, %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %.077, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  br label %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit

_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit:         ; preds = %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit, %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit
  %.0.be = phi ptr [ %i.g, %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit ], [ %7, %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit ] ; 2 uses
  %i.d = icmp eq ptr %.0.be, null
  br i1 %i.d, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge, label %bb.b, !llvm.loop !1204

_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit:    ; preds = %bb.b
  %i.e = add i16 %.sroa.0.0.copyload.i.i.i, -294
  %spec.select.i.i = icmp ult i16 %i.e, 4
  br i1 %spec.select.i.i, label %_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit, label %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge

_ZN7AstNode2asI13AstNodePreSelS_EEPT_PT0_.exit:   ; preds = %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.077, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_.exit, label %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit

_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit._crit_edge: ; preds = %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit, %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit, %.backedge.a, %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit.us, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.0108, %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit.us ], [ null, %.backedge.a ], [ %.077, %_ZN7AstNode2isI13AstNodePreSelS_EEbPKT0_.exit ], [ null, %_ZN7AstNode2isI9AstAttrOfS_EEbPKT0_.exit ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI11AstArraySelS_EEbPKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 279
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI11AstArraySelS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 279
  br i1 %.not6, label %.critedge, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI6AstSelS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 246
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI6AstSelS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 246
  br i1 %.not6, label %.critedge, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI11AstAssocSelS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 280
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI11AstAssocSelS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 280
  br i1 %.not6, label %.critedge, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI14AstWildcardSelS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 281
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI14AstWildcardSelS_EEPT_PT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 281
  br i1 %.not6, label %.critedge, label %bb.c, !prof !98

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1761, i32 noundef 1063) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1762)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !62
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1763)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #35
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI12AstMemberSelS_EEbPKT0_(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 153
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN15AstRandSequenceC2ERKS_:bb.a
  store i64 %i.m, ptr %i.g, align 8, !tbaa !74
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !74
  store i8 %i.o, ptr %i.n, align 1, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.p, ptr %i.q, align 8, !tbaa !73
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.y = load i64, ptr %i.x, align 8, !tbaa !73   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.y, ptr %i.a, align 8, !tbaa !89
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.d
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc10 unwind label %bb.h   ; 2 uses

.noexc10:                                         ; preds = %.noexc.i9
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !75
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !74
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc10, %bb.d
  %i.ac = phi ptr [ %i.aa, %.noexc10 ], [ %i.v, %bb.d ] ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i8
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !74
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i8
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !73
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !392
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !392
  ret void

bb.h:                                             ; preds = %.noexc.i9
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !74
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI11AstTraceIncS_EEPKT_PKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplI13AstNodeVarRefLb0EZNK10AstAssignW15isTimingControlEvEUlPKS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %.ptr106 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !588
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr106, align 16, !tbaa !588
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr106, %bb.b ], [ %.0.idx.sroa.gep113, %bb.c ], [ %.ptr106, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !62
  %i.g = add i16 %.sroa.0.0.copyload.i.i.i, -369
  %spec.select.i.i = icmp ult i16 %i.g, 2
  br i1 %spec.select.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i.i24.i = load i8, ptr %i.h, align 8, !tbaa !442
  %i.i = add i8 %.sroa.0.0.copyload.i.i24.i, -1
  %spec.select.i.i.i = icmp ult i8 %i.i, 2
  br i1 %spec.select.i.i.i, label %.split, label %.preheader

.split:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !375
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  %.not93 = icmp eq ptr %i.m, null
  br i1 %.not93, label %.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit63

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.o, ptr %.0.idx.sroa.phi, align 8, !tbaa !588
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.idx = phi i64 [ %.0.idx, %bb.f ], [ %.0.add, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !164  ; 2 uses
  %.not21.i = icmp eq ptr %i.q, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.q, ptr %.4.ptr, align 8, !tbaa !588
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.5.idx = phi i64 [ %.4.idx, %bb.h ], [ %.4.add, %bb.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %.not22.i = icmp eq ptr %i.s, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.s, ptr %.5.ptr, align 8, !tbaa !588
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6.idx = phi i64 [ %.5.idx, %bb.j ], [ %.5.add, %bb.k ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.l
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.u, ptr %.6.ptr, align 8, !tbaa !588
  br label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.e, %bb.l, %.split
  %.1.ph.idx = phi i64 [ %.0.idx, %.split ], [ %.0.idx, %bb.e ], [ %.6.idx, %bb.l ] ; 2 uses
  %i.v = icmp samesign ugt i64 %.1.ph.idx, 16
  br i1 %i.v, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit63, !prof !2200

.lr.ph.preheader:                                 ; preds = %.preheader.thread, %.preheader
  %.1.ph.idx126 = phi i64 [ %.6.add, %.preheader.thread ], [ %.1.ph.idx, %.preheader ]
  %.1.ph.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.ph.idx126
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.035102 = phi ptr [ %.136, %.backedge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.037101 = phi ptr [ %.138, %.backedge ], [ %.ptr106, %.lr.ph.preheader ] ; 3 uses
  %.039100 = phi i64 [ %.140, %.backedge ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.sroa.071.099 = phi ptr [ %.sroa.071.1, %.backedge ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.198 = phi ptr [ %.1.be, %.backedge ], [ %.1.ph.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.198, i64 -8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !588  ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.198, i64 -24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !588  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.w, %.035102
  br i1 %.not46, label %bb.o, label %bb.m, !prof !98

bb.m:                                             ; preds = %.lr.ph
  %i.ac = shl i64 %.039100, 1                     ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 2305843009213693951
  %i.ae = shl i64 %.039100, 4
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #37
          to label %bb.n unwind label %bb.aa      ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.ah = ptrtoint ptr %i.w to i64
  %i.ai = ptrtoint ptr %.037101 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.037101, i64 -16
  %i.al = add i64 %i.aj, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ak, i64 %i.al, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.071.099, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.071.099) #34
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -40
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.287 = phi ptr [ %i.w, %.lr.ph ], [ %i.an, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.071.1 = phi ptr [ %.sroa.071.099, %.lr.ph ], [ %i.ag, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.140 = phi i64 [ %.039100, %.lr.ph ], [ %i.ac, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.037101, %.lr.ph ], [ %i.am, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.136 = phi ptr [ %.035102, %.lr.ph ], [ %i.ap, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87 ; 2 uses
  %.not47 = icmp eq ptr %i.ar, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.287, i64 8
  store ptr %i.ar, ptr %.287, align 8, !tbaa !588
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.287, %bb.o ], [ %i.as, %bb.p ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.at, align 8, !tbaa !62
  %i.au = add i16 %.sroa.0.0.copyload.i.i.i50, -369
  %spec.select.i.i51 = icmp ult i16 %i.au, 2
  br i1 %spec.select.i.i51, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %.sroa.0.0.copyload.i.i24.i57 = load i8, ptr %i.av, align 8, !tbaa !442
  %i.aw = add i8 %.sroa.0.0.copyload.i.i24.i57, -1
  %spec.select.i.i.i58 = icmp ult i8 %i.aw, 2
  br i1 %spec.select.i.i.i58, label %.split88, label %.backedge

.split88:                                         ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !375
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %.not94 = icmp eq ptr %i.ba, null
  br i1 %.not94, label %.backedge, label %.split88._crit_edge

.backedge:                                        ; preds = %bb.r, %bb.y, %.split88, %bb.z
  %.1.be = phi ptr [ %.3, %.split88 ], [ %i.bn, %bb.z ], [ %.10, %bb.y ], [ %.3, %bb.r ] ; 2 uses
  %i.bb = icmp ugt ptr %.1.be, %.138
  br i1 %i.bb, label %.lr.ph, label %.split88._crit_edge, !prof !726, !llvm.loop !2199

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !165 ; 2 uses
  %.not.i52 = icmp eq ptr %i.bd, null
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.bd, ptr %.3, align 8, !tbaa !588
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.8 = phi ptr [ %.3, %bb.s ], [ %i.be, %bb.t ]  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !164 ; 2 uses
  %.not21.i53 = icmp eq ptr %i.bg, null
  br i1 %.not21.i53, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.bg, ptr %.8, align 8, !tbaa !588
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.9 = phi ptr [ %.8, %bb.u ], [ %i.bh, %bb.v ]  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 2 uses
  %.not22.i54 = icmp eq ptr %i.bj, null
  br i1 %.not22.i54, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.bj, ptr %.9, align 8, !tbaa !588
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.10 = phi ptr [ %.9, %bb.w ], [ %i.bk, %bb.x ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %.not23.i55 = icmp eq ptr %i.bm, null
  br i1 %.not23.i55, label %.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bm, ptr %.10, align 8, !tbaa !588
  br label %.backedge

bb.aa:                                            ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.not.i60 = icmp eq ptr %.sroa.071.099, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %.sroa.071.099) #34
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.aa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.bo

.split88._crit_edge:                              ; preds = %.backedge, %.split88
  %.lcssa = phi i1 [ true, %.split88 ], [ false, %.backedge ] ; 2 uses
  %.not.i61 = icmp eq ptr %.sroa.071.1, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit63, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i62

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i62: ; preds = %.split88._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.071.1) #34
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit63

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit63: ; preds = %.preheader, %.split, %.split88._crit_edge, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i62
  %.292 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i62 ], [ %.lcssa, %.split88._crit_edge ], [ true, %.split ], [ false, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i1 %.292
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConst11AstNodeExprEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstIface13AstNodeModuleEEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

declare void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(112)) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9ExecMTask13v3RttiClassIdEv() #4 comdat align 2 {
bb.a:
  ret i64 ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64)
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #28

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !861
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !530
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !537
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !861
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #32
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !530
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !529    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !540  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !536
  store ptr %i.w, ptr %3, align 8, !tbaa !536
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !540
  store ptr %3, ptr %i.x, align 8, !tbaa !536
  br label %_ZNSt10_HashtableIPK8AstConstSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSD_10_Hash_nodeISB_Lb0EEE.exit

end_hunk_1
