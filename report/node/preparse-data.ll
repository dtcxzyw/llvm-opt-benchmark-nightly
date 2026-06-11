inline.NumInlined: 927
inline.NumDeleted: 551
begin_hunk_0_@_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej:bb.a
  %masksel = select i1 %.not, i8 0, i8 -128
  %.0 = or disjoint i8 %masksel, %i.c
  %i.e = load ptr, ptr %0, align 8
  %i.f = load i32, ptr %i.a, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.a, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 %.0, ptr %i.j, align 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !9

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder8ByteData10WriteUint8Eh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) initializes((16, 17)) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8
  %i.e = sext i32 %i.c to i64
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 %1, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder8ByteData12WriteQuarterEh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %0, i8 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i8 0, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = add i8 %i.b, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i8 [ %i.k, %bb.c ], [ 3, %bb.b ] ; 2 uses
  store i8 %storemerge, ptr %i.a, align 8
  %i.l = shl i8 %storemerge, 1
  %i.m = zext i8 %1 to i32
  %i.n = zext nneg i8 %i.l to i32
  %i.o = shl i32 %i.m, %i.n
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1       ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = trunc i32 %i.o to i8
  %i.y = or i8 %i.w, %i.x
  store i8 %i.y, ptr %i.v, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder18DataGatheringScope20SetSkippableFunctionEPNS0_16DeclarationScopeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %3, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = or i8 %i.k, 2
  store i8 %i.l, ptr %i.j, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19PreparseDataBuilder17HasInnerFunctionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(77) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal19PreparseDataBuilder7HasDataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(77) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 3
  %i.d = icmp eq i8 %i.c, 2
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19PreparseDataBuilder14ScopeNeedsDataEPNS0_5ScopeE(ptr noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN2v88internal5Scope18AsDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 126
  %i.f = load i8, ptr %i.e, align 2
  %i.g = and i8 %i.f, -2
  %i.h = icmp ne i8 %i.g, 4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 16
  %.not25 = icmp eq i16 %i.k, 0
  br i1 %.not25, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.019.027 = phi ptr [ %i.u, %bb.e ], [ %i.l, %bb.d ]
  %i.p = load ptr, ptr %.sroa.019.027, align 8    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load i16, ptr %i.q, align 8              ; 2 uses
  %i.s = and i16 %i.r, 15
  %i.t = icmp samesign ult i16 %i.s, 13
  br i1 %i.t, label %switch.hole_check, label %bb.e

bb.e:                                             ; preds = %switch.hole_check, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.028 = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not29 = icmp eq ptr %.028, null
  br i1 %.not29, label %.loopexit, label %.lr.ph31

bb.f:                                             ; preds = %.lr.ph31
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %.0 = load ptr, ptr %i.x, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph31, !llvm.loop !11

.lr.ph31:                                         ; preds = %.thread, %bb.f
  %.030 = phi ptr [ %.0, %bb.f ], [ %.028, %.thread ] ; 2 uses
  %i.y = tail call noundef zeroext i1 @_ZN2v88internal19PreparseDataBuilder14ScopeNeedsDataEPNS0_5ScopeE(ptr noundef nonnull %.030) ; 3 uses
  br i1 %i.y, label %.loopexit, label %bb.f

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = and i16 %i.r, 15
  %switch.shifted = lshr i16 7711, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %switch.hole_check, %bb.f, %.lr.ph31, %.thread, %bb.b
  %.5 = phi i1 [ %i.h, %bb.b ], [ %i.y, %bb.f ], [ false, %.thread ], [ %i.y, %.lr.ph31 ], [ true, %switch.hole_check ]
  ret i1 %.5
}

declare noundef ptr @_ZN2v88internal5Scope18AsDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal19PreparseDataBuilder28SaveDataForSkippableFunctionEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(77) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.g = trunc i32 %.06.i to i8
  %i.h = and i8 %i.g, 127
  %i.i = lshr i32 %.06.i, 7                       ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.h
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = load i32, ptr %i.f, align 8              ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.f, align 8
  %i.m = sext i32 %i.k to i64
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %.0.i, ptr %i.o, align 1
  br i1 %.not.i, label %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit, label %bb.b, !llvm.loop !9

_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.r = load i32, ptr %i.q, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit
  %.06.i17 = phi i32 [ %i.r, %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit ], [ %i.u, %bb.c ] ; 2 uses
  %i.s = trunc i32 %.06.i17 to i8
  %i.t = and i8 %i.s, 127
  %i.u = lshr i32 %.06.i17, 7                     ; 2 uses
  %.not.i18 = icmp eq i32 %i.u, 0                 ; 2 uses
  %masksel.i19 = select i1 %.not.i18, i8 0, i8 -128
  %.0.i20 = or disjoint i8 %masksel.i19, %i.t
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load i32, ptr %i.f, align 8              ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.f, align 8
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %.0.i20, ptr %i.aa, align 1
  br i1 %.not.i18, label %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit21, label %bb.c, !llvm.loop !9

_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit21: ; preds = %bb.c
  store i8 0, ptr %i.p, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 3
  %i.ae = icmp eq i8 %i.ad, 2                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ag, %i.ai                ; 2 uses
  %i.ak = zext i1 %i.ae to i32
  %i.al = select i1 %i.aj, i32 2, i32 0
  %2 = shl i32 %i.ag, 2
  %i.am = and i32 %2, 262140
  %3 = or disjoint i32 %i.am, %i.ak
  %4 = or disjoint i32 %3, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit21
  %.06.i22 = phi i32 [ %4, %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit21 ], [ %i.ap, %bb.d ] ; 2 uses
  %i.an = trunc i32 %.06.i22 to i8
  %i.ao = and i8 %i.an, 127
  %i.ap = lshr i32 %.06.i22, 7                    ; 2 uses
  %.not.i23.a = icmp eq i32 %i.ap, 0              ; 2 uses
  %masksel.i24.a = select i1 %.not.i23.a, i8 0, i8 -128
  %.0.i25.a = or disjoint i8 %masksel.i24.a, %i.ao
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = load i32, ptr %i.f, align 8             ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.f, align 8
  %i.at = sext i32 %i.ar to i64
  %i.au = load ptr, ptr %i.aq, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 %.0.i25.a, ptr %i.av, align 1
  br i1 %.not.i23.a, label %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit26, label %bb.d, !llvm.loop !9

_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit26: ; preds = %bb.d
  store i8 0, ptr %i.p, align 8
  br i1 %i.aj, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit26
  %i.aw = load i32, ptr %i.ah, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i27 = phi i32 [ %i.aw, %bb.e ], [ %i.az, %bb.f ] ; 2 uses
  %i.ax = trunc i32 %.06.i27 to i8
  %i.ay = and i8 %i.ax, 127
  %i.az = lshr i32 %.06.i27, 7                    ; 2 uses
  %.not.i28 = icmp eq i32 %i.az, 0                ; 2 uses
  %masksel.i29 = select i1 %.not.i28, i8 0, i8 -128
  %.0.i30 = or disjoint i8 %masksel.i29, %i.ay
  %i.ba = load ptr, ptr %i.c, align 8
  %i.bb = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.f, align 8
  %i.bd = sext i32 %i.bb to i64
  %i.be = load ptr, ptr %i.ba, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 %.0.i30, ptr %i.bf, align 1
  br i1 %.not.i28, label %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit31, label %bb.f, !llvm.loop !9

_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit31: ; preds = %bb.f
  store i8 0, ptr %i.p, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit31, %_ZN2v88internal19PreparseDataBuilder8ByteData13WriteVarint32Ej.exit26
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bh = load i32, ptr %i.bg, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.06.i32 = phi i32 [ %i.bh, %bb.g ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bi = trunc i32 %.06.i32 to i8
  %i.bj = and i8 %i.bi, 127
  %i.bk = lshr i32 %.06.i32, 7                    ; 2 uses
  %.not.i33 = icmp eq i32 %i.bk, 0                ; 2 uses
  %masksel.i34 = select i1 %.not.i33, i8 0, i8 -128
  %.0.i35 = or disjoint i8 %masksel.i34, %i.bj
  %i.bl = load ptr, ptr %i.c, align 8
  %i.bm = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.f, align 8
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %i.bl, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %.0.i35, ptr %i.bq, align 1
  br i1 %.not.i33, label %_ZN2v88internal19PreparseDataBuilder8ByteData12WriteQuarterEh.exit, label %bb.h, !llvm.loop !9

_ZN2v88internal19PreparseDataBuilder8ByteData12WriteQuarterEh.exit: ; preds = %bb.h
  store i8 0, ptr %i.p, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = and i16 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = lshr i16 %i.bv, 4
  %i.bx = and i16 %i.bw, 2
  %i.by = or disjoint i16 %i.bx, %i.bt
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = load i32, ptr %i.f, align 8             ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.f, align 8
  %i.cc = sext i32 %i.ca to i64
  %i.cd = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 0, ptr %i.ce, align 1
  store i8 3, ptr %i.p, align 8
  %i.cf = load ptr, ptr %i.c, align 8
  %i.cg = load i32, ptr %i.f, align 8
  %i.ch = load ptr, ptr %i.cf, align 8
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1     ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1
  %.tr = trunc nuw nsw i16 %i.by to i8
  %i.cm = shl nuw i8 %.tr, 6
  %i.cn = or i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.ck, align 1
  ret i1 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal19PreparseDataBuilder23SaveScopeAllocationDataEPNS0_16DeclarationScopeEPNS0_6ParserE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(77) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 2
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1824 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = mul i64 %i.i, 21                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1832
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = sub i64 %i.p, %i.s                       ; 2 uses
  %.not.i = icmp ult i64 %i.t, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.u = sub nuw i64 %i.j, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.v, i64 noundef %i.u, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.pre = load i64, ptr %i.h, align 8
  br label %_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm.exit

_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm.exit: ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.i, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8              ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %.not1213 = icmp eq i64 %i.w, 0
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZN2v88internal19PreparseDataBuilder8ByteData7ReserveEm.exit
  %i.aa = load i8, ptr %i.b, align 4
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.014 = phi ptr [ %i.x, %.lr.ph ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %.014, align 8
  %i.ad = call noundef zeroext i1 @_ZN2v88internal19PreparseDataBuilder28SaveDataForSkippableFunctionEPS1_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef %i.ac)
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.z, align 8
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.ag, %i.y
  br i1 %.not12, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %._crit_edge
  %i.ah = call noundef zeroext i1 @_ZN2v88internal19PreparseDataBuilder14ScopeNeedsDataEPNS0_5ScopeE(ptr noundef %1)
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal19PreparseDataBuilder16SaveDataForScopeEPNS0_5ScopeE(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load i32, ptr %i.q, align 8             ; 2 uses
  %.not.i.i = icmp eq i32 %i.ak, -1
  br i1 %.not.i.i, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #19
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = sext i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, 7
  %i.an = and i64 %i.am, -8                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = sub i64 %i.ap, %i.ar
  %i.at = icmp ugt i64 %i.an, %i.as
  br i1 %i.at, label %bb.l, label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 noundef %i.an) #18
  %.pre.i.i.i = load i64, ptr %i.aq, align 8
  br label %_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit

_ZN2v88internal19PreparseDataBuilder8ByteData8FinalizeEPNS0_4ZoneE.exit: ; preds = %bb.k, %bb.l
  %i.au = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = add i64 %i.au, %i.an
end_hunk_0
